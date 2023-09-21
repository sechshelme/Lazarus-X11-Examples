// Number of frames that we will capture.
#define NUM_FRAME_CAPTURES 200
#define MMAP_BUFFERS 3

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/time.h>
#include <sys/mman.h>
#include <linux/videodev2.h>
#include <libv4l2.h>
#include <GL/gl.h>
#include <GL/glu.h>
#include <GL/glut.h>
struct v4l2_capability cap;
struct v4l2_cropcap cropcap;
struct v4l2_crop crop;
struct v4l2_format fmt;
struct v4l2_queryctrl qmt;
struct SwsContext *img_convert_ctx;
struct timeval tv;

// https://github.com/torvalds/linux/blob/master/include/uapi/linux/videodev2.h
// https://www.linuxquestions.org/questions/showthread.php?p=6193756#post6193756

int gl_width, gl_height;
GLubyte *myimage; // RGB image [width *height 3]
// unsigned char *scaled; // [width *height *3];
int src_linesize[ 4], dst_linesize[4];
uint8_t *src_data[4], *dst_data[4];
int ret;
char rgb1[ 4], rgb2[ 4];

// Wrapper around v4l2_ioctl for programming the video device,
// that automatically retries the USB request if something
// unintentionally aborted the request.
int xioctl(int fh, int request, void *arg)
{
    int r;
    do
    {
        r = ioctl(fh, request, arg);
    }
    while (r == -1 && ((errno == EINTR) || (errno == EAGAIN)));
    return r;
}

void init(void)
{
    glClearColor (0.0, 0.0, 0.0, 0.0);
    glShadeModel(GL_FLAT);
    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
}

void display( )
{
    glClear(GL_COLOR_BUFFER_BIT);
//   glRasterPos2i(0, 0);
    glDrawPixels(gl_width, gl_height, GL_RGB,
                 GL_UNSIGNED_BYTE, myimage);
    glFlush();
}

//
// conversion routine for YUV422
// getting FFMPEG to work correctly is a pain, so I am going to try
// the direct approach
//

void YUV_to_Bitmap( int y, int u, int v, char *bm)
{
    int r,g,b, yy;

    yy = y;
    // u and v are +-0.5
    u -= 128;
    v -= 128;

    // Conversion
    r = y + 1.370705 * v;
    g = y - 0.698001 * v - 0.337633 * u;
    b = y + 1.732446 * u;


    // Clamp to 0..1
    if (r < 0) r = 0;
    if (g < 0) g = 0;
    if (b < 0) b = 0;
    if (r > 255) r = 255;
    if (g > 255) g = 255;
    if (b > 255) b = 255;
    bm[ 0] = r;
    bm[ 1] = g;
    bm[ 2] = b;
    bm[ 3] = 0;
}

void Convert422( unsigned char *yuyv, unsigned char rgb1[ 4], unsigned char rgb2[ 4])
{
    int  y1,y2,u,v;
    char b[ 4];

    // Extract yuv components
    y1  = yuyv[0];
    u = yuyv[1];
    y2  = yuyv[2];
    v = yuyv[3];

    // yuv to rgb
    YUV_to_Bitmap(y1,u,v, b);
    rgb1[ 0] = b[ 0];
    rgb1[ 1] = b[ 1];
    rgb1[ 2] = b[ 2];
    YUV_to_Bitmap(y2,u,v, b);
    rgb2[ 0] = b[ 0];
    rgb2[ 1] = b[ 1];
    rgb2[ 2] = b[ 2];
}


int main(int argc, char **argv)
{
    char *device_name, code[5];
    int i, j, k, r, posX = 100, posY = 100, pix_bytes, iframe, buffer_index, fd;
    struct v4l2_buffer buf;
    struct timeval tv;
    unsigned char *cur_buff;
    device_name = "/dev/video0"; // future option: include in argv
    // Open the device
    fd = open(device_name, O_RDWR | O_NONBLOCK, 0);
    if (fd < 0)
    {
        printf("Failed to open device\n");
        exit(EXIT_FAILURE);
    }
// ok, we have the input device, so now lets intialize the gl stuff
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);


    if (-1 == xioctl(fd, VIDIOC_QUERYCAP, &cap))
    {
        printf("ERROR: %s\n", strerror(errno));
        exit(EXIT_FAILURE);
    }

    if((cap.capabilities & 1) != 1)
    {
        printf("ERROR: This app cannot deal with device other than V4L2_CAP_VIDEO_CAPTURE ");
        for(i=31; i> -1; i--)
        {
            printf("%d", (cap.capabilities >>i) &1);
            if(!(i % 8))printf(" ");
        }
        printf("\n");
        exit(0);
    }
    // see https://www.kernel.org/doc/html/v5.3/media/uapi/v4l/vidioc-querycap.html#c.v4l2_capability
    // for other/additional capabilityes.


    // poll fd for device format
    fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE; // == 1
    if(-1 == xioctl(fd, VIDIOC_G_FMT, &fmt))
    {
        printf("ERROR getting info from %s\n", device_name);
        return 1;
    }

    // convert littleendian __u32 to string
    code[3] = fmt.fmt.pix.pixelformat >>24;
    code[2] = fmt.fmt.pix.pixelformat >>16 & 255;
    code[1] = fmt.fmt.pix.pixelformat >>8 & 255;
    code[0] = fmt.fmt.pix.pixelformat & 255;
    code[4] = 0;
    printf("%s data: bytes/line = %d; width = %d, height = %d image size = %d; format = 0x%x = %s\n", device_name, fmt.fmt.pix.bytesperline, fmt.fmt.pix.width, fmt.fmt.pix.height, fmt.fmt.pix.sizeimage, fmt.fmt.pix.pixelformat, code);
//
// check that the format of the pixels is "YUYV" == format = 0x56595559 = YUYV
//
    if ( strcmp( "YUYV", code) != 0)
    {
        fmt.fmt.pix.pixelformat = 'V' << 24;
        fmt.fmt.pix.pixelformat += 'Y' << 16;
        fmt.fmt.pix.pixelformat += 'U' << 8;
        fmt.fmt.pix.pixelformat += 'Y';
        printf("new format = 0x%x\n", (j = fmt.fmt.pix.pixelformat));

        fmt.fmt.pix.bytesperline = pix_bytes * fmt.fmt.pix.width;
        if(-1 == xioctl(fd, VIDIOC_S_FMT, &fmt))
        {
            printf("ERROR resetting the device\n");
            exit(-10);
        }
        if((r= -1) == xioctl(fd, VIDIOC_G_FMT, &fmt))
        {
            printf("ERROR getting info from %s\n", device_name);
            return 1;
        }
        code[3] = fmt.fmt.pix.pixelformat >>24;
        code[2] = fmt.fmt.pix.pixelformat >>16 & 255;
        code[1] = fmt.fmt.pix.pixelformat >>8 & 255;
        code[0] = fmt.fmt.pix.pixelformat & 255;
        code[4] = 0;
        printf("%s data reset format: bytes/line = %d; width = %d, height = %d image size = %d; format = %s\n", device_name, fmt.fmt.pix.bytesperline, fmt.fmt.pix.width, fmt.fmt.pix.height, fmt.fmt.pix.sizeimage, code);
        if(fmt.fmt.pix.pixelformat != j)
        {
            printf("line 232 OOPS! r=%d\n", r);
            exit(1);
        }
        pix_bytes = 4;
    }

    pix_bytes = fmt.fmt.pix.sizeimage / (fmt.fmt.pix.width * fmt.fmt.pix.height);
    printf("line 236 bytes per pixel = %d\n", pix_bytes);
    myimage = malloc(fmt.fmt.pix.height *fmt.fmt.pix.width *4);
//    scaled = malloc(fmt.fmt.pix.height *fmt.fmt.pix.width *3);

//
// now we know the size of the window needed to display the output open an image gl window
//
    gl_width = fmt.fmt.pix.width;
    gl_height = fmt.fmt.pix.height;


    glutInitWindowSize( gl_width, gl_height);
    glutInitWindowPosition( 50, 0);
    glutCreateWindow(argv[0]);
    init();
    glutDisplayFunc(display);



    // Set streaming parameters, i.e. frames per second.
    // You'll want to query the device for whether or not it
    // supports setting the frame time, and what possible choices
    // it supports.
    // See http://stackoverflow.com/questions/13981933/v4l2-fcntl-ioctl-vidioc-s-parm-for-setting-fps-and-resolution-of-camera-capture
    /*v4l2_streamparm parm = {};
    parm.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    parm.parm.output.timeperframe.numerator = 1;
    parm.parm.output.timeperframe.denominator = 30;
    xioctl(fd, VIDIOC_S_PARM, &parm);*/

    // Check what format we _actually_ got
    printf("Opened device with format:\n");
    printf("Width: %d\n", fmt.fmt.pix.width);
    printf("Height: %d\n", fmt.fmt.pix.height);
    printf("Pixel format: 0x%x\n", fmt.fmt.pix.pixelformat);

    // Request N buffers that are memory mapped between
    // our application space and the device
    struct v4l2_requestbuffers request;
    request.count = MMAP_BUFFERS;
    request.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    request.memory = V4L2_MEMORY_MMAP;
    xioctl(fd, VIDIOC_REQBUFS, &request);

    int num_buffers = request.count;
    printf("Got %d buffers\n", num_buffers);

    // https://www.kernel.org/doc/html/v5.3/media/uapi/v4l/vidioc-g-fmt.html#c.v4l2_format
    struct v4l2_create_buffers bitmap;
    bitmap.count = 0;
    struct v4l2_format srgb;
    srgb.fmt.pix.width = fmt.fmt.pix.width;
    srgb.fmt.pix.height = fmt.fmt.pix.height;
    srgb.fmt.pix.pixelformat = V4L2_PIX_FMT_RGB332;
    srgb.fmt.pix.field = 0;
    srgb.fmt.pix.bytesperline = fmt.fmt.pix.width *fmt.fmt.pix.height *2;
    bitmap.format = srgb;
    bitmap.memory = V4L2_MEMORY_MMAP;
    for(j=0; j<8; j++) bitmap.reserved[j] = 0;
    r = xioctl(fd, VIDIOC_CREATE_BUFS, &bitmap);
    if(r == -1)printf("ERROR Could not create bitmap: %s\n", strerror(errno));

    struct Buffer
    {
        void *start;
        size_t length;
    } buffers[4];

    // Find out where each requested buffer is located in memory
    // and map them into our application space
    for (int buffer_index = 0; buffer_index < num_buffers; ++buffer_index)
    {
        // struct v4l2_buffer buf;
        buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        buf.memory = V4L2_MEMORY_MMAP;
        buf.index = buffer_index;
        if(-1 == xioctl(fd, VIDIOC_QUERYBUF, &buf))
        {
            printf("ERROR Could not QUERYBUF\n");
            return 1;
        }

        buffers[buffer_index].length = buf.length;
        buffers[buffer_index].start =
            mmap(0 /* start anywhere */,
                 buf.length,
                 PROT_READ | PROT_WRITE /* required */,
                 MAP_SHARED /* recommended */,
                 fd, buf.m.offset);

        if (MAP_FAILED == buffers[buffer_index].start)
        {
            printf("mmap failed %d, %s\n", errno, strerror(errno));
            exit(EXIT_FAILURE);
        }
    }

    // Queue the buffers, i.e. indicate to the device
    // that they are available for writing now.
    for (int i = 0; i < num_buffers; ++i)
    {
        // struct v4l2_buffer buf; - declared at head of main()
        buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        buf.memory = V4L2_MEMORY_MMAP;
        buf.index = i;
        xioctl(fd, VIDIOC_QBUF, &buf);
    }

    // Start streazv4l_buf_type
    enum v4l2_buf_type type;
    type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    xioctl(fd, VIDIOC_STREAMON, &type);
    // https://raspberrypi.stackexchange.com/questions/77070/raspberry-pi-3-and-v4l2-c-capture-code-for-jpegs


    k = (gl_width/2) * gl_height*3;

    // Capture n frames
    for (int iframe = 0; iframe < NUM_FRAME_CAPTURES; iframe++)
    {
        // The device will now output data continuously.
        // We will use the FD_ZERO/FD_SET/select mechanisms
        // to wait until there is data available from the
        // device. We can specify how long we should wait,
        // and timeout if we think too much time has passed.

        fd_set fds;
        r = 0;
        do
        {
            FD_ZERO(&fds);
            FD_SET(fd, &fds);
            tv.tv_sec = 2;
            tv.tv_usec = 0;
            r = select(fd + 1, &fds, NULL, NULL, &tv);
        }
        while ((r == -1 && (errno = EINTR)));

        if (r == -1)
        {
            printf("select failed\n");
            exit(EXIT_FAILURE);
        }
        if(iframe == 0) printf("Frame interval = %d u-seconds/event -> %f fps?\n", tv.tv_usec, 1.0 /tv.tv_usec *1e6);

        // Data has arrived! Let's "dequeue" a buffer to get its data
        xioctl(fd, VIDIOC_DQBUF, &buf);

        // Now we have gotten the data into one of our buffers.
        // buf.index   STREAMONSTREAMON             -> Which mmap'ed buffer is the data located in
        // buffers[buf.index].start -> Where in memory is the data located
        // buf.bytesused            -> Size of data chunk in bytes



        cur_buff = buffers[buf.index].start;

// now we try and convert it to RGB
//	for ( i = 0; i < buf.length; i++) {
//		src_data[ i] = cur_buff[i];
//		};
//	i = sws_scale( img_convert_ctx, cur_buff, src_linesize,
//                     0, gl_height, dst_data,  dst_linesize);
        for ( k = 0; k < gl_height; k++)
        {

            /* Convert the YUVV to RGB and place it in the Gl image buffer and display it */
            for ( i = 0; i < gl_width; i = i + 2 )
            {
                j = ( (gl_height - k) *gl_width + i)* 2;
                if((j > buf.length-2) || (j < 0)) continue;
                Convert422( &cur_buff[j], rgb1, rgb2);
                myimage[gl_width*k*3 + i*3 ] = rgb1[ 0 ];
                myimage[gl_width*k*3 + i*3 + 1 ] = rgb1[ 1 ];
                myimage[gl_width*k*3 + i*3 + 2] = rgb1[ 2 ];
                myimage[gl_width*k*3 + i*3 + 3] = rgb2[ 0 ];
                myimage[gl_width*k*3 + i*3 + 4 ] = rgb2[ 1 ];
                myimage[gl_width*k*3 + i*3 + 5] = rgb2[ 2 ];

                /*       end of convert */


            };
        };

        display();

        // Queue buffer for writing again
        xioctl(fd, VIDIOC_QBUF, &buf);
    }

    // Turn off stream
    type = 1; // == V4L2_BUF_TYPE_VIDEO_CAPTURE;
    xioctl(fd, VIDIOC_STREAMOFF, &type);


    // Unmap buffers
    for (int i = 0; i < num_buffers; ++i)
        munmap(buffers[i].start, buffers[i].length);

    // Tell the device that it can release memory
    request.count = 0;
    request.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    request.memory = V4L2_MEMORY_MMAP;
    xioctl(fd, VIDIOC_REQBUFS, &request);
//    free(scaled);
    free(myimage);

    close(fd);

}
