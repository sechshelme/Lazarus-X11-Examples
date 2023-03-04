unit Common;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;
         type
  TListMacro = record
    old, new: string;
  end;
  TListMacros = array of TListMacro;

const
//  HeaderPath = '/usr/include/gtk-4.0/';
  HeaderPath =  '/usr/include/X11/';

  HeaderDespPath = '/tmp/Xaw-Konverter-header/';
  PackageDirectory='Xaw';

  //  HeaderMask = 'gtkb*.h';

  //HeaderMask = 'gtke*.h';
  //    HeaderMask = 'gdkt*.h';
  HeaderMask = '*.h';
  HeaderMask4 = '*.h';



implementation

end.

