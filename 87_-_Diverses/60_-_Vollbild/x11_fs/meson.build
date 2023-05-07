project('x11_fs', 'c', default_options : ['c_std=c11'])

x11_dep = dependency('x11')

executable('x11_fs', 'main.c', 'window_x11.c', 'log.c',
           dependencies: [x11_dep])
