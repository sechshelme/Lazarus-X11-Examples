
unit Xw32defs;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xw32defs.h
  The following command line parameters were used:
    /usr/include/X11/Xw32defs.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xw32defs.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{$ifndef _XW32DEFS_H}
{$define _XW32DEFS_H}  
{$ifdef __GNUC__ /* mingw is more close to unix than msvc */}
{$if !defined(__daddr_t_defined)}

  type
    caddr_t = ^char;
{$endif}

  const
    lstat = stat;    
{$else}

  type
    caddr_t = ^char;

  const
    access = _access;    
    alloca = _alloca;    
    chdir = _chdir;    
    chmod = _chmod;    
    close = _close;    
    creat = _creat;    
    dup = _dup;    
    dup2 = _dup2;    
    environ = _environ;    
    execl = _execl;    
    execle = _execle;    
    execlp = _execlp;    
    execlpe = _execlpe;    
    execv = _execv;    
    execve = _execve;    
    execvp = _execvp;    
    execvpe = _execvpe;    
    fdopen = _fdopen;    
    fileno = _fileno;    
    fstat = _fstat;    
    getcwd = _getcwd;    
    getpid = _getpid;    
    hypot = _hypot;    
    isascii = __isascii;    
    isatty = _isatty;    
    lseek = _lseek;    
    mkdir = _mkdir;    
    mktemp = _mktemp;    
    open = _open;    
    putenv = _putenv;    
    read = _read;    
    rmdir = _rmdir;    

  function sleep(x : longint) : longint;  

  const
    stat = _stat;    
    sys_errlist = _sys_errlist;    
    sys_nerr = _sys_nerr;    
    umask = _umask;    
    unlink = _unlink;    
    write = _write;    
    random = rand;    
    srandom = srand;    
    O_RDONLY = _O_RDONLY;    
    O_WRONLY = _O_WRONLY;    
    O_RDWR = _O_RDWR;    
    O_APPEND = _O_APPEND;    
    O_CREAT = _O_CREAT;    
    O_TRUNC = _O_TRUNC;    
    O_EXCL = _O_EXCL;    
    O_TEXT = _O_TEXT;    
    O_BINARY = _O_BINARY;    
    O_RAW = _O_BINARY;    
    S_IFMT = _S_IFMT;    
    S_IFDIR = _S_IFDIR;    
    S_IFCHR = _S_IFCHR;    
    S_IFREG = _S_IFREG;    
    S_IREAD = _S_IREAD;    
    S_IWRITE = _S_IWRITE;    
    S_IEXEC = _S_IEXEC;    
    F_OK = 0;    
    X_OK = 1;    
    W_OK = 2;    
    R_OK = 4;    
{$endif}

{$endif}

implementation

  function sleep(x : longint) : longint;
  begin
    sleep:=Sleep(x*1000);
  end;


end.
