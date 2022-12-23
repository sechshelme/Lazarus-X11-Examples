//image image.png
(*
Besser man macht es objektorientiert mit Klassen.
Dies macht es übersichtlicher und ausbaufähiger.
*)
//lineal
//code+
program Project1;

uses
  BaseUnix,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  pthreads,
  GLX,
  GL;

var
//  Mutex,
    CondMutex: PTHREAD_MUTEX_T;
  CondVar: pthread_cond_t;
  Thread1, Thread2: PTHREAD_T;
  i1,i2: Integer;     Ende:Boolean=False;

procedure wait;
var
  rem, Req: timespec;
begin
  Req.tv_nsec := 0;
  Req.tv_sec := 1;
  fpNanoSleep(@Req, @rem);
end;


  function thread_function(_para1:pointer): Pointer; cdecl;
  begin
    repeat

    pthread_mutex_lock(@CondMutex);
    WriteLn(PInteger(_para1)^ );
//    pthread_cond_wait(@CondVar, @CondMutex);
Result:=_para1;
                       //   wait;
    pthread_mutex_unlock(@CondMutex);

          until Ende;
    end;

begin
  {$I-}
//  pthread_mutex_init(@Mutex, nil);
  pthread_mutex_init(@CondMutex, nil);
  pthread_cond_init(@CondVar, nil);
  i1:=1;
  i2:=2;
  pthread_create(@Thread1,nil, @thread_function, @i1);
//  WriteLn(Thread1 );
  pthread_create(@Thread2,nil, @thread_function, @i2);
//  WriteLn(Thread2 );
pthread_cond_broadcast(@CondMutex);
  repeat
//       pthread_mutex_lock(@CondMutex);
//       WriteLn('fdgfd');
       pthread_mutex_unlock(@CondMutex);
       wait;
  until false;

  pthread_join(Thread1,nil);
  pthread_join(Thread2,nil);
end.

