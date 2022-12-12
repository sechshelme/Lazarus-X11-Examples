
unit Xfuncproto;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xfuncproto.h
  The following command line parameters were used:
    /usr/include/X11/Xfuncproto.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xfuncproto.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XFUNCPROTO_H_}
{$define _XFUNCPROTO_H_}  
{$ifndef NeedFunctionPrototypes}

  const
    NeedFunctionPrototypes = 1;    
{$endif}

{$ifndef NeedVarargsPrototypes}

  const
    NeedVarargsPrototypes = 1;    
{$endif}

{$if NeedFunctionPrototypes}
{$ifndef NeedNestedPrototypes}

  const
    NeedNestedPrototypes = 1;    
{$endif}

{$ifndef _Xconst}
(* error 
#define _Xconst const
in define line 47 *)
{$endif}


{$if !defined(NARROWPROTO) && \}
(* error 
    (defined(__linux__) || defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__))
in define line 53 *)
{$endif}
{$ifndef FUNCPROTO}

    const
      FUNCPROTO = 15;      
{$endif}
{$ifndef NeedWidePrototypes}
{$ifdef NARROWPROTO}

    const
      NeedWidePrototypes = 0;      
{$else}


    const
      NeedWidePrototypes = 1;      
{$endif}
{$endif}

{$endif}

{$ifndef _XFUNCPROTOBEGIN}
{$if defined(__cplusplus) || defined(c_plusplus) /* for C++ V2.0 */}
(* error 
#define _XFUNCPROTOBEGIN extern "C" {	/* do not leave open across includes */

in define line 71 *)
(* error 
#define _XFUNCPROTOEND }
in define line 72 *)
{$else}
{$define _XFUNCPROTOBEGIN}    
{$define _XFUNCPROTOEND}    
{$endif}
{$endif}


{$ifndef __has_attribute}


    function __has_attribute(x : longint) : longint;    

{$endif}
{$ifndef __has_feature}


  function __has_feature(x : longint) : longint;  

{$endif}
{$ifndef __has_extension}


  function __has_extension(x : longint) : longint;  

{$endif}

{$if __has_attribute(__sentinel__) || (defined(__GNUC__) && (__GNUC__ >= 4))}

  function _X_SENTINEL(x : longint) : longint;  

{$else}
(* error 
# define _X_SENTINEL(x)
in define line 94 *)
{$endif}


{$if (__has_attribute(visibility) || (defined(__GNUC__) && (__GNUC__ >= 4))) \}
(* error 
    && !defined(__CYGWIN__) && !defined(__MINGW32__)
in define line 100 *)

    function _X_HIDDEN : longint; { return type might be wrong }

  function _X_INTERNAL : longint; { return type might be wrong }

{$else defined(__SUNPRO_C) && (__SUNPRO_C >= 0x550)}

const
  _X_EXPORT = __global;  
  _X_HIDDEN = __hidden;  
  _X_INTERNAL = __hidden;  
{$else}

{$define _X_EXPORT}
{$define _X_HIDDEN}
{$define _X_INTERNAL}
{$endif}



{$if defined(__GNUC__) && ((__GNUC__ * 100 + __GNUC_MINOR__) >= 303)}

function _X_LIKELY(x : longint) : longint;

function _X_UNLIKELY(x : longint) : longint;

{$else}


function _X_LIKELY(x : longint) : longint;

function _X_UNLIKELY(x : longint) : longint;

{$endif}


{$if __has_attribute(__cold__) || \}
(* error 
    (defined(__GNUC__) && ((__GNUC__ * 100 + __GNUC_MINOR__) >= 403)) /* 4.3+ */

in define line 127 *)
{$else}

{$define _X_COLD}    
{$endif}

{$if __has_attribute(deprecated) \}
(* error 
    || (defined(__GNUC__) && ((__GNUC__ * 100 + __GNUC_MINOR__) >= 301)) \
in define line 136 *)
{$else}

{$define _X_DEPRECATED}    
{$endif}

{$if __has_extension(attribute_deprecated_with_message) || \}
(* error 
                (defined(__GNUC__) && ((__GNUC__ >= 5) || ((__GNUC__ == 4) && (__GNUC_MINOR__ >= 5))))
in define line 144 *)
{$else}

    function _X_DEPRECATED_MSG(_msg : longint) : longint;    

{$endif}

{$if __has_attribute(noreturn) \}
(* error 
    || (defined(__GNUC__) && ((__GNUC__ * 100 + __GNUC_MINOR__) >= 205)) \
in define line 153 *)
{$else}
{$define _X_NORETURN}    
{$endif}


{$if __has_attribute(__format__) \}
(* error 
    || defined(__GNUC__) && ((__GNUC__ * 100 + __GNUC_MINOR__) >= 203)
in define line 161 *)
{$else}

(* error 
# define _X_ATTRIBUTE_PRINTF(x,y)
in define line 163 *)
{$endif}

{$if __has_attribute(nonnull) \}
(* error 
    && defined(__STDC_VERSION__) && (__STDC_VERSION__ - 0 >= 199901L) /* C99 */

in define line 171 *)
{$else __has_attribute(nonnull) \}
(* error 
    || defined(__GNUC__) &&  ((__GNUC__ * 100 + __GNUC_MINOR__) >= 303)
in define line 174 *)
{$else defined(__STDC_VERSION__) && (__STDC_VERSION__ - 0 >= 199901L) /* C99 */}
(* error 
#define _X_NONNULL(...)  /* */

in define line 176 *)
{$endif}

{$if __has_attribute(__unused__) \}
(* error 
    || defined(__GNUC__) &&  ((__GNUC__ * 100 + __GNUC_MINOR__) >= 205)
in define line 182 *)
{$else}

{$define _X_UNUSED}    
{$endif}


{$if defined(inline) /* assume autoconf set it correctly */ || \}
(* error 
   (defined(__STDC_VERSION__) && (__STDC_VERSION__ - 0 >= 199901L)) /* C99 */ || \
in define line 193 *)
{$else defined(__GNUC__) && !defined(__STRICT_ANSI__) /* gcc w/C89+extensions */}

    const
      _X_INLINE = __inline__;      
{$else}
{$define _X_INLINE}    
{$endif}


{$ifndef _X_RESTRICT_KYWD}
{$if defined(restrict) /* assume autoconf set it correctly */ || \}
(* error 
    (defined(__STDC_VERSION__) && (__STDC_VERSION__ - 0 >= 199901L) /* C99 */ \

in define line 206 *)
{$else defined(__GNUC__) && !defined(__STRICT_ANSI__) /* gcc w/C89+extensions */}

    const
      _X_RESTRICT_KYWD = __restrict__;      
{$else}
{$define _X_RESTRICT_KYWD}    
{$endif}
{$endif}

{$if __has_attribute(no_sanitize_thread)}

    function _X_NOTSAN : longint; { return type might be wrong }

{$else}
{$define _X_NOTSAN}  
{$endif}


{$if __has_attribute(nonstring)}

  function _X_NONSTRING : longint; { return type might be wrong }

{$else}
{$define _X_NONSTRING}
{$endif}
{$endif}


implementation

    function __has_attribute(x : longint) : longint;
    begin
      __has_attribute:=0;
    end;

  function __has_feature(x : longint) : longint;
  begin
    __has_feature:=0;
  end;

  function __has_extension(x : longint) : longint;
  begin
    __has_extension:=0;
  end;

  function _X_SENTINEL(x : longint) : longint;
  begin
    _X_SENTINEL:=__attribute__(__sentinel__(x));
  end;

    function _X_HIDDEN : longint; { return type might be wrong }
      begin
        _X_HIDDEN:=__attribute__(visibility('hidden'));
      end;

  function _X_INTERNAL : longint; { return type might be wrong }
    begin
      _X_INTERNAL:=__attribute__(visibility('internal'));
    end;

function _X_LIKELY(x : longint) : longint;
begin
  _X_LIKELY:=__builtin_expect( not ( not (x)),1);
end;

function _X_UNLIKELY(x : longint) : longint;
begin
  _X_UNLIKELY:=__builtin_expect( not ( not (x)),0);
end;

function _X_LIKELY(x : longint) : longint;
begin
  _X_LIKELY:=x;
end;

function _X_UNLIKELY(x : longint) : longint;
begin
  _X_UNLIKELY:=x;
end;

    function _X_DEPRECATED_MSG(_msg : longint) : longint;
    begin
      _X_DEPRECATED_MSG:=_X_DEPRECATED;
    end;

    function _X_NOTSAN : longint; { return type might be wrong }
      begin
        _X_NOTSAN:=__attribute__(no_sanitize_thread);
      end;

  function _X_NONSTRING : longint; { return type might be wrong }
    begin
      _X_NONSTRING:=__attribute__(nonstring);
    end;


end.
