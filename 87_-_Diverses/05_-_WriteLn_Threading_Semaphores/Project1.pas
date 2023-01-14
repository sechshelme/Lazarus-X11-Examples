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
  pthreads;

type
  PThread = ^TThread;

  TThread = record
    Thread: pthread_t;
    index: integer;
  end;
var
  Thread: array[0..1000000] of TThread;
  mutex: pthread_mutex_t;
  Ende: boolean = False;
  i: integer;

  mySem: TSemaphore;

  procedure wait;
  var
    rem, Req: timespec;
  begin
    Req.tv_nsec := 10000000;
    Req.tv_sec := 0;
    fpNanoSleep(@Req, @rem);
  end;

  function thread_function(para1: pointer): Pointer; cdecl;
  var
    Thread: TThread;
  begin
    Thread := PThread(para1)^;
    repeat
      sem_wait(@mySem);
      //      pthread_mutex_lock(@mutex);
      Write(Thread.index, ' ');
      sem_post(@mySem);
      //            wait;
      //    pthread_mutex_unlock(@mutex);
      //        wait;
    until Ende;
    Result := nil;
  end;

begin
  sem_init(@mySem, 10,1);
  for i := 0 to Length(Thread) - 1 do begin
    Thread[i].index := i;
    pthread_create(@Thread[i].Thread, nil, @thread_function, @Thread[i]);
  end;
  ReadLn;
  Ende := True;
  for i := 0 to Length(Thread) - 1 do begin
    pthread_join(Thread[i].Thread, nil);
  end;
  sem_destroy(@mySem);
end.
