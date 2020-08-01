unit Fsiconst;

interface

uses WinTypes;

{$DEFINE FARSI}
{$UNDEF Sam95}

const
  BS_RTL_READING     = $2000;
  BS_RIGHT           = $4000;

  CBS_RTL            = $8000;

  DS_RTL             = $8000;
  DS_BIDI_NOICON     = $4000;

  ES_FARSI           = $4000;
  ES_ENGLISH         = ES_FARSI or ES_OEMCONVERT;
  ES_FULLOEMCONVERT  = ES_LOWERCASE or ES_UPPERCASE;
  ES_RTL_READING     = $8000;

  ETO_RTL_READING    = $8000;

  LBS_RTL            = $4000;

  WS_EX_BIDI_NOICON  = $8000;
  WS_EX_BIDI_MENU    = $4000;
  WS_EX_BIDI_SCROLL  = $2000;
  WS_EX_BIDI_CAPTION = $1000;

const
  WM_USER = $0400;
  EM_SETALIGN = WM_USER + $41;

  WM_KEYBOARD_CHANGE = $0370;
  WM_LANGUAGE_CHANGE = $0371;

  KEYB_LATIN = $00000001;
  KEYB_BIDI  = $00000002;

  MB_RTL_READING = $0400;
  MB_FARSI_BUTTONS = $0800;

  BS_LEFTTEXT	    = $00000020;

  BIDI_CLASS_DEFAULT       = 0;
  BIDI_CLASS_L             = 1;
  BIDI_CLASS_R             = 2;
  BIDI_CLASS_ON            = 3;
  BIDI_CLASS_AN            = 4;
  BIDI_CLASS_EN            = 5;
  BIDI_CLASS_ET            = 6;
  BIDI_CLASS_ES            = 7;
  BIDI_CLASS_CS            = 8;
  BIDI_CLASS_BIDI_EN       = 9;
  BIDI_CLASS_BIDI_L        = 10;
  BIDI_CLASS_LATIN_R       = 11;

  CF_BIDIDIALOG =$80000000;
  CF_ARABICONLY =$20000000;
  CF_USESTYLE   =$00000080;
  CF_INITTOLOGFONTSTRUCT =$00000040;
  BIDI_SYSTEM_FONT         = 17;


  BIDI_RTL_READING         = $0001;
  BIDI_KBD_LANG_RTL        = $0004;
  BIDI_USE_BOUND_FLAGS     = $0004;
  BIDI_BOUND_BEFORE_RTL    = $0008;
  BIDI_BOUND_AFTER_RTL     = $0010;
  BIDI_FINAL_ZWJ           = $0010;
  BIDI_LIGATURE_SYSTEM     = $0000;
  BIDI_2_LIG_ON            = $0020;
  BIDI_NUMERIC_OVERRIDE    = $0040;
  BIDI_GENERATE_RUNS       = $0001;
  BIDI_GENERATE_EXISTENCE  = $0000;
  BIDI_LOGICAL_ORDER       = $0040;
  BIDI_VISUAL_ORDER        = $0000;
  BIDI_NEUTRAL_OVERRIDE    = $0080;
  BIDI_ALIGN_LEFT          = $0000;
  BIDI_ALIGN_RIGHT         = $0080;
  BIDI_3_LIG_ON            = $0120;
  BIDI_LIGATURES_OFF       = $0100;
  BIDI_SYMM_SWAP_OFF       = $0200;
  BIDI_BASELINE_ALIGN      = $0400;
  BIDI_DISPLAY_ZWG         = $0800;
  BIDI_NUMERICS_SYSTEM     = $0000;
  BIDI_NUMERICS_EUROPEAN   = $1000;
  BIDI_NUMERICS_ARABIC     = $2000;
  BIDI_NUMERICS_CONTEXT    = $3000;
  BIDI_HIDE_ZWG            = $4000;
  BIDI_ZWG_SYSTEM          = $0000;
  BIDI_NUMERICS_MASK       = $3000;
  BIDI_LIGATURE_MASK       = $0120;
  BIDI_ZWG_MASK            = $4800;
  BIDI_EXACT_EXT           = $0002;
  BIDI_ALL_FLAGS           = $0002;
  BIDI_NOZWG               = $0004;

  BIDI_SHORT_KASHIDA_INFO  = $0400;
  BIDI_LONG_KASHIDA_INFO   = $0080;
  BIDI_USE_LONG_KASHIDA    = 1;
  BIDI_USE_SHORT_KASHIDA   = 0;
  BIDI_FORCE_NUM_FORM      = $0001;

  BIDI_LATIN_ONLY          = $0001;
  BIDI_BIDI_ONLY           = $0002;
  BIDI_WEAK_ONLY           = $0004;
  BIDI_START_RTL           = $0008;
  BIDI_END_RTL             = $0010;

  BIDI_DEFAULT             = (BIDI_LIGATURE_SYSTEM or BIDI_NUMERICS_SYSTEM or BIDI_ZWG_SYSTEM);


  GATT_DIACRITIC           = $0001;
  GATT_ABOVE_BASE          = $0002;
  GATT_BELOW_BASE          = $0004;
  GATT_HI_GLYPH            = $0008;
  GATT_LO_GLYPH            = $0010;
  GATT_NO_DIACRITIC        = $0020;
  GATT_MIDDLE_DIACRITIC    = $0040;
  GATT_2_CHAR_LIG          = $0080;
  GATT_3_CHAR_LIG          = $0100;
  GATT_RIGHT_CONNECT       = $0200;
  GATT_NO_GLYPH            = $0400;
  GATT_GHOST_GLYPH         = $0800;

  GATT_TYPE                = $F000;

  GATT_ARABIC_SPACE        = $1000;
  GATT_LATIN_SPACE         = $2000;
  GATT_KASHIDA_TYPE        = $3000;
  GATT_BA_TYPE             = $4000;
  GATT_RA_TYPE             = $5000;
  GATT_SEEN_TYPE           = $6000;
  GATT_HA_TYPE             = $7000;
  GATT_ALEF_TYPE           = $8000;
  GATT_ARABIC_ALPHA        = $9000;
  GATT_NUMBER_TYPE         = $A000;
  GATT_ZWG_TYPE            = $B000;

  BIDI_EXTEND_SPACES       = $0001;
  BIDI_COUNT_SPACES        = $0002;

  KP_ARABIC_SPACE          = 1;
  KP_LATIN_SPACE           = 2;
  KP_CONNECT               = 3;
  KP_RA_BA                 = 4;
  KP_ALEF                  = 5;
  KP_HA                    = 6;
  KP_SEEN                  = 7;
  KP_KASHIDA               = 8;

const
  IsWin95 = True;

function WIN95(S: String): String;

implementation

uses Messages, WinProcs;

function WIN95(S: String): String;
var
  I: Integer;
begin
  Result := S;
  for I := 1 to Length(Result) do
      if Result[I] = #236 then Result[I] := #237;
end;
end.




