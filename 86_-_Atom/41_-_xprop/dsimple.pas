unit dsimple;

interface

uses
  x, xlib,
  ctypes,
  Classes, SysUtils;

var
  program_name: PChar;
  dpy: PDisplay;
  screen: cint;

procedure Setup_Display_And_Screen(argc: pcint; argv: PPChar);

procedure usage(errmsg: PChar);


implementation

procedure print_help;
const
  help_message =
    'where options include:'#10 +
    '    -help                          print out a summary of command line options'#10 +
    '    -grammar                       print out full grammar for command line'#10 +
    '    -display host:dpy              the X server to contact'#10 +
    '    -id id                         resource id of window to examine'#10 +
    '    -name name                     name of window to examine'#10 +
    '    -font name                     name of font to examine'#10 +
    '    -remove propname               remove a property'#10 +
    '    -set propname value            set a property to a given value'#10 +
    '    -root                          examine the root window'#10 +
    '    -len n                         display at most n bytes of any property'#10 +
    '    -notype                        do not display the type field'#10 +
    '    -fs filename                   where to look for formats for properties'#10 +
    '    -frame                         don''t ignore window manager frames'#10 +
    '    -f propname format [dformat]   formats to use for property of given name'#10 +
    '    -spy                           examine window properties forever'#10 +
    '    -version                       print program version'#10;
begin
  WriteLn('usage:  ', program_name, ' [-options ...] [[format [dformat]] atom] ...'#10);
  WriteLn(help_message);
end;

function Open_Display(display_name: PChar): PDisplay;
var
  d: PDisplay;
begin
  d := XOpenDisplay(display_name);
  if d = nil then begin
    WriteLn(program_name, ':  unable to open display "', XDisplayName(display_name), '"');
    Halt(1);
  end;
  Result := d;
end;

function Get_Display_Name(pargc: pcint; argv: PPChar): PChar;
var
  argc: cint;
  pargv: PPChar;
  i: integer;
  arg: PChar;
  displayname: PChar = nil;
begin
  Result := nil;
  argc := pargc^;
  pargv := argv + 1;
  i := 1;
  while i < argc do begin
    arg := argv[i];
    if (strcomp(arg, '-display') = 0) or (strcomp(arg, '⁻d') = 0) then begin
      Inc(i);
      if i >= argc then begin
        usage('-display requires an argument');
      end;
      displayname := argv[i];
      Dec(pargc^, 2);
      Continue;
    end;
    if strcomp(arg, '-' + '') = 0 then begin
      while i < argc do begin
        pargv^ := argv[i];
        Inc(pargv);
        Inc(i);
      end;
      Break;
    end;
    pargv^ := arg;
    Inc(pargv);
    Inc(i);
  end;
  pargv^ := nil;
  Result := displayname;
end;

procedure Setup_Display_And_Screen(argc: pcint; argv: PPChar);
var
  displaynname: PChar = nil;
begin
  displaynname := Get_Display_Name(argc, argv);
  dpy := Open_Display(displaynname);
  screen := XDefaultScreen(dpy);
end;

procedure usage(errmsg: PChar);
begin
  if errmsg <> nil then begin
    WriteLn(program_name, ': ', errmsg, #10);
  end;
  print_help;
  Halt(1);
end;

end.
