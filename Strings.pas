
{*******************************************************}
{                                                       }
{       Turbo Pascal Runtime Library                    }
{       ShortString Handling Unit                            }
{                                                       }
{       Copyright (C) 1990,92 Borland International     }
{                                                       }
{*******************************************************}

unit Strings;

interface

const
  EmptyStr: ShortString = '';
  NullStr: PShortString = @EmptyStr;

function IIF(B: Boolean; S1, S2: ShortString): ShortString;
function SIsNumber(S: ShortString): Boolean;
function SIsLatin(S: ShortString): Boolean;
function StringCodeCode(S: ShortString; FirstChar: Byte): ShortString;
function StringDeCodeCode(S: ShortString; FirstChar: Byte): ShortString;
procedure BufWin95(P: PChar; W: Word);
procedure UnBufWin95(P: PChar; W: Word);
function WIN95(S: ShortString): ShortString;
function UnWIN95(S: ShortString): ShortString;
function RToL(S: ShortString): ShortString;
function BILayout(S: ShortString): ShortString;
function StrLen(Str: PChar): Integer;

function SCPad(S: ShortString; Width: Byte; FillChar: Char): ShortString;

{ SRPad pads S from right with an adequate number of FillChars  }
{ while ensuring that the length of the resulting ShortString is not }
{ greater than Width. If the initial length of the ShortString is    }
{ equal to or greater than Width S is output intact.            }

function SRPad(S: ShortString; Width: Byte; FillChar: Char): ShortString;

{ SRPad pads S from left with an adequate number of FillChars   }
{ while ensuring that the length of the resulting ShortString is not }
{ greater than Width. If the initial length of the ShortString is    }
{ equal to or greater than Width S is output intact.            }

function SLPad(S: ShortString; Width: Byte; FillChar: Char): ShortString;

{ SReplicate concatenates the character C Count times and       }
{ outputs the resulting ShortString.                                 }

function SReplicate(C : Char; Count: Byte): ShortString;

function SConvert(S: ShortString; C : Char; R : Char): ShortString;

{ SLen returns the length of the ShortString S.                      }

function SUpper(S: ShortString): ShortString;

{ Returns the passed ShortString with all characters lowercased.     }

function SLower(S: ShortString): ShortString;

function SReverse(S: ShortString): ShortString;

{ Returns true if the first Count characters of the two passed  }
{ strings are equal, false otherwise. It is case sensitive.     }

function SIsBlank(S: ShortString): Boolean;

function SRTrim(S: ShortString): ShortString;

function SLTrim(S: ShortString): ShortString;

function SAllTrim(S: ShortString): ShortString;

function Delimit(S: ShortString): ShortString;

function UnDelimit(S: ShortString): ShortString;

function WNToA(N: LongInt): ShortString;

function StringCode(S: ShortString): ShortString;

function StringDeCode(S: ShortString): ShortString;

procedure AssignStr( var  P: PShortString;  const  S:  Shortstring );
procedure DisposeStr( P: PShortString);
function NewStr( S: ShortString):PShortString;

function SStripS(S : String; C: string): String;
function SStrip(S : ShortString; C: Char): ShortString;
              
function Win98(S: String): String;

function MakeNewID : string;
function DateRev( DateStr : string) : string;

procedure InitConstUChar;

implementation

uses Fsiconst, SysUtils, windows;

function DateRev( DateStr : string) : string;
  function ReverseDate(S: String): String;
  var
    C: Integer;
  begin
    Result := '';
    C := Pos('/', S);
    while C > 0 do
    begin
      Result := '/'+Copy(S, 1, C-1)+Result;
      S := Copy(S, C+1, Length(S));
      C := Pos('/', S);
    end;
    Result := S+Result;
  end;
var
  DateStrLen, Counter, F, C: Integer;
begin
  if (Pos( '/', DateStr) = 0) then
  begin
    Result  := DateStr;
    exit;
  end;
  DateStrLen := Length(DateStr);
  Counter := 1;
  F  := 0;
  Result  := '';
  while Counter <= (DateStrLen+1) do
  begin
    if F = 0 then
    begin
      if DateStr[Counter] in ['0'..'9'] then
        F := Counter;
    end
    else
      if (F <> 0) and ((Counter > DateStrLen) or not (DateStr[Counter] in ['0'..'9','/'])) then
      begin
        if Pos('/', Copy(DateStr, F, Counter-F)) > 0 then
        begin
          DateStr :=
            Copy(DateStr, 1, F-1)+ReverseDate(Copy(DateStr, F, Counter-F))+
            Copy(DateStr, Counter, DateStrLen);
        end;
        F := 0;
      end;
    Inc(Counter);
  end;
  Result := DateStr;
end;

function MakeNewID : string;
var
  iNow : Integer;
  rNo  : string;
begin
  iNow := GetTickCount;
  rNo := IntToStr(Random(99999));
  Result := '9' + IntToStr(iNow) + rNo;
  Result := Copy(Result, 1, 12);
end;

procedure InitConstUChar;
const                        //#237, #223
  ss2000 : array[1..2] of char=('Ì', 'ﬂ');
  uss2000: array[1..2] of char=(#204, #169);
  wss2000: array[1..2] of char=(#237, #223);

  ss98  : array[1..2] of char=('Ì', 'ﬂ');
  wuss98 : array[1..2] of char=(#0, #0);
  wss98  : array[1..2] of char=('Ì', 'ﬂ');
var
  S: String;
  C: array[0..3] of char;
  W: PWideChar;
begin
  if wuss98[1] = #0 then
  begin
    W := @C;

    S := ss2000[1];
    StringToWideChar(S, W, 2);
//    wuss98[1] := c[0];
    S := WideCharToString(W);
//    ss98[1] := S[1];

    S := ss2000[2];
    StringToWideChar(S, W, 2);
//    wuss98[2] := c[0];
    S := WideCharToString(W);
//    ss98[2] := S[1];

    c[0] := uss2000[1];
    //c[1] := #6;
    c[2] := #0;
    S := WideCharToString(W);
//    wss2000[1] := S[1];

    c[0] := uss2000[2];
    //c[1] := #6;
    c[2] := #0;
    S := WideCharToString(W);
//    wss2000[2] := S[1];

    c[0] := wuss98[1];
    //c[1] := #6;
    c[2] := #0;
    S := WideCharToString(W);
//    wss98[1] := S[1];

    c[0] := wuss98[2];
    //c[1] := #6;
    c[2] := #0;
    S := WideCharToString(W);
//    wss98[2] := S[1];

    w := nil;
  end;
end;

function Win98(S: String): String;
var
  L: Integer;
begin
  Result := S;
  //if wuss98[1] = #0 then InitConstUChar;
  //if (wss2000[1] = ss2000[1]) and (wss2000[2] = ss2000[2]) then Exit;
  if (Win32Platform <> VER_PLATFORM_WIN32_WINDOWS) then exit;
  L := Length(Result);
  while L > 0 do
  begin
    {if (wss2000[1] <> ss2000[1]) and (Result[L] = wss2000[1]) then
      Result[L] := ss2000[1]
    else if (wss2000[2] <> ss2000[2]) and (Result[L] = wss2000[2]) then
      Result[L] := ss2000[2];}
    if Result[L] = #95 then Result[L] := #237;
    Dec(L);
  end;
end;


function SStripS(S : String; C: String): String;
begin
  while Pos(C, S) > 0 do Delete(S, Pos(C, S), Length(C));
  Result := S;
end;

function SStrip(S : ShortString; C: Char): ShortString;
begin
  while Pos(C, S) > 0 do Delete(S, Pos(C, S), 1);
  Result := S;
end;

procedure DisposeStr(P: PShortString);
begin
  if P = Strings.NullStr then exit;
  if P <> nil then FreeMem(P, Length(P^)+1);
  {P := Strings.NullStr;}
end;

function NewStr( S: ShortString):PShortString;
begin
  {if S = '' then Result := @Strings.NullStr;}
  if S = '' then
  begin
    Result := nil;
    exit;
  end;
  GetMem(Result, Length(S)+1);
  Result^ := S;
end;

procedure AssignStr( var  P: PShortString;  const  S:  Shortstring );
begin
  DisposeStr(P);
  if S = '' then P := NullStr
  else P := NewStr(S);
end;


function SIsNumber(S: ShortString): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 1 to Length(S) do
    if S[I] in  ['0'..'9','.'] then
    begin
      Result := True;
      Exit;
    end;
end;

function SIsLatin(S: ShortString): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 1 to Length(S) do
    if S[I] > #127 then
    begin
      Result := False;
      Exit;
    end;
end;

function StringCodeCode(S: ShortString; FirstChar: Byte): ShortString;
const
  IsRunRandomize: Boolean=False;
var
  I, J: Integer;
  B: Boolean;
begin
  if not IsRunRandomize then
  begin
//    IsRunRandomize := True;
    Randomize;
  end;
  if Length(S) > 12 then
    I := Random(3)+ 1
  else if Length(S) > 6 then
    I := Random(5)+ 1
  else if Length(S) > 3 then
    I := Random(6)+ 1
  else I := Random(8)+ 1;
  if (I + Length(S)) < 5 then I := 5 - Length(S);
  J := I;
  B := False;
  while I > 0 do
  begin
    if B then S := Char(I+77) + S
    else S := S+Char(I+77);
    B := not B;
    Dec(I);
  end;
  Result := '$'+Char(J+FirstChar)+StringCode(S);
end;

function StringDeCodeCode(S: ShortString; FirstChar: Byte): ShortString;
var
  I, J: Integer;
  B: Boolean;
begin
  Result := S;
  if (Length(S) <= 2) or (S[1] <> '$') then Exit;
  I := Byte(S[2]) - FirstChar;
  S := StringDeCode(Copy(S,3,255));
  B := False;
  while I > 0 do
  begin
    if B then S := Copy(S,2,255)
    else Dec(Byte(S[0]));
    B := not B;
    Dec(I);
  end;
  Result := S;
end;

const
  FarsiCodes:String[60]=
               {#129#141#142#144#161#171#183#186#187+
               #191#193#194#195#196#197+
               #198#199#200#201#202#203#204#205#206#207+
               #208#209#210#211#212#213#214#215#216#217+
               #218#219#220#221#222#223#225#227+
               #228#229#230#236#237+
               #240#245#246#247#248;}
               #129#141#142#144#161#171#186#187+
               #191#193#194#195#196#197+
               #198#199#200#201#202#203#204#205#206#207+
               #208#209#210#211#212#213#214#215#216#217+
               #218#219#220#221#222#223#225#227+
               #228#229#230#236+
               #240#245#246#247#248;

  LatinCodes:String[100]='01234~!@#$%^'+'NOPQRSTUVWXYZABCDEFGHIJKLM'+
                        'nopqrstuvwxyzabcdefghijklm'+'&*()+-=56789';

function StringCode(S: ShortString): ShortString;
var
  I: Integer;
  B: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
  begin
    if S[I] > #127 then
    begin
      B := Pos(S[I], FarsiCodes);
      if B > 0 then
      begin
        Dec(B);
        B := ((B+I) mod Length(FarsiCodes)) + 1;
        Result := Result+FarsiCodes[B];
      end
      else Result := Result+S[I];
    end
    else
    begin
      B := Pos(S[I], LatinCodes);
      if B > 0 then
      begin
        Dec(B);
        B := ((B+I) mod Length(LatinCodes)) + 1;
        Result := Result+LatinCodes[B];
      end
      else Result := Result+S[I];
    end;
  end;
end;

function StringDeCode(S: ShortString): ShortString;
var
  I: Integer;
  B: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
  begin
    if S[I] > #127 then
    begin
      B := Pos(S[I], FarsiCodes);
      if B > 0 then
      begin
        Dec(B);
        B := (B-I);
        while B < 0 do Inc(B, Length(FarsiCodes));
        B := (B mod Length(FarsiCodes)) + 1;
        Result := Result+FarsiCodes[B];
      end
      else Result := Result+S[I];
    end
    else
    begin
      B := Pos(S[I], LatinCodes);
      if B > 0 then
      begin
        Dec(B);
        B := (B-I);
        while B < 0 do Inc(B, Length(LatinCodes));
        B := (B mod Length(LatinCodes)) + 1;
        Result := Result+LatinCodes[B];
      end
      else Result := Result+S[I];
    end;
  end;
end;

function WIN95(S: ShortString): ShortString;
var
  I: Integer;
begin
  Result := S;
  if IsWin95 then
    for I := 1 to Length(Result) do
      if Result[I] = #236 then Result[I] := #237;
end;

function UnWIN95(S: ShortString): ShortString;
var
  I: Integer;
begin
  Result := S;
  {if IsWin95 then
    for I := 1 to Length(Result) do
      if Result[I] = #237 then Result[I] := #236;}
end;

procedure BufWin95(P: PChar; W: Word);
begin
  if IsWin95 then
    while W > 0 do
    begin
      if (P+W-1)^ = #236 then
        (P+W-1)^ := #237;
      Dec(W);
    end;
end;

procedure UnBufWin95(P: PChar; W: Word);
begin
  {if IsWin95 then
    while W > 0 do
    begin
      if (P+W-1)^ = #237 then (P+W-1)^ := #236;
      Dec(W);
    end;}
end;

{$W-}
{$W+}

function StrLen(Str: PChar): Integer;
begin
  Result := SysUtils.StrLen(Str);
end;

function StrNew(Str: PChar): PChar;
var
  L: Word;
  P: PChar;
begin
  StrNew := nil;
  if (Str <> nil) and (Str^ <> #0) then
  begin
    L := SysUtils.StrLen(Str) + 1;
    GetMem(P, L);
    if P <> nil then StrNew := StrMove(P, Str, L);
  end;
end;

procedure StrDispose(Str: PChar);
begin
  if Str <> nil then FreeMem(Str, StrLen(Str) + 1);
end;

function SCPad(S: ShortString; Width: Byte; FillChar: Char): ShortString;
var
  B: Boolean;
begin
  B := False;
  while Length(S) < Width do
  begin
    if B then S := S + FillChar
    else S := FillChar + S;
    B := not B;
  end;
  Result := S;
end;

function SRPad(S: ShortString; Width:Byte; FillChar: Char): ShortString;
begin
  while Length(S) < Width do S := S + FillChar;
  Result := S;
end;

function SLPad(S: ShortString; Width: Byte; FillChar: Char): ShortString;
begin
  while Length(S) < Width do S := FillChar + S;
  Result := S;
end;

function SConvert(S: ShortString; C : Char; R : Char): ShortString;
var
  I: Integer;
begin
  I := 1;
  for I := 1 to Length(S) do
    if S[I] = C then S[I] := R;
  Result := S;
end;

function SReplicate(C : Char; Count: Byte): ShortString;
begin
  Result := '';
  while Length(Result) < Count do Result := Result + C;
end;

function SUpper(S: ShortString): ShortString;
begin
  Result := UpperCase(S);
end;

function SReverse(S: ShortString): ShortString;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    Result := Result + S[Length(S)- I+1]
end;

function SLower(S: ShortString): ShortString;
begin
  Result := LowerCase(S);
end;

function SIsBlank(S: ShortString): Boolean;
begin
  Result := S = '';
end;

function SRTrim(S: ShortString): ShortString;
begin
  while S[Length(S)] = #32 do Dec(Byte(S[0]));
  Result := S;
end;

function SLTrim(S: ShortString): ShortString;
begin
  while (Length(S) > 0) and (S[1] = #32) do S := Copy(S, 2, Length(S) -1 );
  Result := S;
end;

function SAllTrim(S: ShortString): ShortString;
begin
  Result := SLTrim(SRtrim(S));
end;


function Delimit(S: ShortString): ShortString;
var
  sResult: ShortString;
  I: Integer;
  L: Byte;
begin
  sResult := '';
  L := Length(S);
  for I := Length(S) downto 1 do
    if ((L - I) mod 3 <> 0) or (I = L) then
      sResult := S[I] + '' + sResult
    else
      sResult := S[I] + ThousandSeparator + sResult;
  Delimit := sResult;
end;

function UnDelimit(S: ShortString): ShortString;
begin
  while Pos(ThousandSeparator, S) > 0 do Delete(S, Pos(ThousandSeparator, S), 1);
  UnDelimit := S;
end;

function AdjustFileNameLen(FileName: ShortString; MaxLen: Integer): ShortString;
begin
  if (Length(FileName) > MaxLen) then
  begin
    FileName := Copy(FileName, 1, 3) + '...' +
    Copy(FileName, 3 + Pos('\',Copy(FileName,4,Length(FileName))), Length(FileName));
    while (Length(FileName) > MaxLen) Do
    begin
      if Pos('\',Copy(FileName,8,Length(FileName))) = 0 then
      begin
        AdjustFileNameLen := Copy(FileName, 8, Length(FileName));
        Exit;
      end;
      FileName := Copy(FileName, 1,3)+Copy(FileName,8,Length(FileName));
      FileName := Copy(FileName, 1,3)+'...'+
      Copy(FileName, 3 + Pos('\',Copy(FileName,4,Length(FileName))), Length(FileName));
    end;
  end;
  AdjustFileNameLen := FileName;
end;


function IIF(B: Boolean; S1, S2: ShortString): ShortString;
begin
  if B then IIF := S1 else IIF := S2;
end;

function WNToA(N: LongInt): ShortString;
var
  Strs: array[0..3] of ShortString;
  Vals: array[0..3] of Integer;
  Code: Integer;
  I: Integer;

  function Ones(C: Char): ShortString;
  begin
    case C of
      '0': Ones := '';
      '1': Ones := 'Ìﬂ';
      '2': Ones := 'œÊ';
      '3': Ones := '”Â';
      '4': Ones := 'çÂ«—';
      '5': Ones := 'Å‰Ã';
      '6': Ones := '‘‘';
      '7': Ones := 'Â› ';
      '8': Ones := 'Â‘ ';
      '9': Ones := '‰Â';
    else
      Result := '';
    end;
    Result := Result + ' ';
  end;

  function TenOnes(C: Char): ShortString;
  begin
    case C of
      '1': TenOnes := 'Ì«“œÂ';
      '2': TenOnes := 'œÊ«“œÂ';
      '3': TenOnes := '”Ì“œÂ';
      '4': TenOnes := 'çÂ«—œÂ';
      '5': TenOnes := 'Å«‰“œÂ';
      '6': TenOnes := '‘«‰“œÂ';
      '7': TenOnes := 'Â›œÂ';
      '8': TenOnes := 'ÂÌÃœÂ';
      '9': TenOnes := '‰Ê“œÂ';
    else
      Result := '';
    end;
    Result := Result + ' ';
  end;

  function Tens(C: Char): ShortString;
  begin
    case C of
      '0': Tens := '';
      '2': Tens :=  '»Ì” ';
      '3': Tens :=  '”Ì';
      '4': Tens :=  'çÂ·';
      '5': Tens :=  'Å‰Ã«Â';
      '6': Tens :=  '‘’ ';
      '7': Tens :=  'Â› «œ';
      '8': Tens :=  'Â‘ «œ';
      '9': Tens :=  '‰Êœ';
    else
      Result := '';
    end;
    Result := Result + ' ';
  end;

  function Hundreds(C: Char): ShortString;
  begin
    case C of
      '1': Hundreds := 'Ìﬂ’œ';
      '2': Hundreds := 'œÊÌ” ';
      '3': Hundreds := '”Ì’œ';
      '4': Hundreds := 'çÂ«—’œ';
      '5': Hundreds := 'Å«‰’œ';
      '6': Hundreds := '‘‘’œ';
      '7': Hundreds := 'Â› ’œ';
      '8': Hundreds := 'Â‘ ’œ';
      '9': Hundreds := '‰Â’œ';
    else
      Result := '';
    end;
    Result := Result + ' ';
  end;

  function DoNToA(S: ShortString): ShortString;
  begin
    if S[1] = '0' then S := Copy(S, 2, 2);
    if S[1] = '0' then S := Copy(S, 2, 1);
    case Length(S) of
      1: Result := Ones(S[1]);
      2: if (S[1] = '1') and (S[2] = '0') then Result := 'œÂ '
         else
           if S[1] = '1' then Result := TenOnes(S[2])
           else
           begin
             Result := Tens(S[1]);
             if S[2] <> '0' then Result := SRtrim(Result) + ' Ê ' + Ones(S[2]);
           end;
      3: if (S[2]='0') and (S[3]='0') then Result := Hundreds(S[1])
         else
         begin
           Result := Hundreds(S[1]);
           if (S[2] = '1') and (S[3] = '0') then Result := SRtrim(Result)+' Ê œÂ '
           else
             if S[2] = '1' then Result := SRtrim(Result)+ ' Ê '  + TenOnes(S[3])
             else
             begin
               if S[2] <> '0' then Result := SRtrim(Result) + ' Ê ' + Tens(S[2]);
               if S[3] <> '0' then Result := SRtrim(Result) + ' Ê ' + Ones(S[3]);
             end;
         end;
      else
        Result := '';
    end;
  end;
var
  S: ShortString;
begin
  Result := '';
  Str(Abs(N):12, S);
  if SIsBlank(S) then
  begin
    Result := ' ’›—';
    Exit;
  end;
  for I := 0 to 3 do
  begin
    Strs[I] := SLTrim(Copy(S, 12 - ((I+1) * 3) +1, 3));
    Val(Strs[I], Vals[I], Code);
  end;
  if (Strs[0] = '') and (Strs[1] = '') and (Strs[2] = '') and (Strs[3] = '') then
    Exit;
  if (Strs[0] <> '') and (Strs[1] <> '') and
     (Strs[2] <> '') and (Strs[3] <> '') then
    Result := DoNToA(Strs[3]) +
              IIF(Vals[3] = 0, '', '„Ì·Ì«—œ') +
              IIF(Vals[2] = 0, '', ' Ê ') +
              DoNToA(Strs[2]) +
              IIF(Vals[2] = 0, '', '„Ì·ÌÊ‰') +
              IIF(Vals[1] = 0, '', ' Ê ') +
              DoNToA(Strs[1]) +
              IIF(Vals[1] = 0, '', 'Â“«— ') +
              IIF(Vals[0] = 0, '', ' Ê ') +
              DoNToA(Strs[0])
  else
    if (Strs[0] <> '') and (Strs[1] <> '') and
       (Strs[2] <> '') and (Strs[3] = '') then
      Result :=
                DoNToA(Strs[2])+
                IIF(Vals[2] = 0, '', '„Ì·ÌÊ‰') +
                IIF(Vals[1] = 0, '', ' Ê ') +
                DoNToA(Strs[1]) +
                IIF(Vals[1] = 0, '', 'Â“«—') +
                IIF(Vals[0] = 0, '', ' Ê ') +
                DoNToA(Strs[0])
    else
      if (Strs[0] <> '') and (Strs[1] <> '') and
         (Strs[2] = '') and (Strs[3] = '') then
        Result := DoNToA(Strs[1])+
                  IIF(Vals[1] = 0, '', 'Â“«—') +
                  IIF(Vals[0] = 0, '', ' Ê ') +
                  DoNToA(Strs[0])
      else
        if (Strs[0] <> '') and (Strs[1] = '') and
           (Strs[2] = '') and (Strs[3] = '') then
          Result := DoNToA(Strs[0]);
end;

function BILayout(S: ShortString): ShortString;
const
  LatinNumbers = [#48..#57];
  LatinAlphabet = [#65..#90,#97..#122];
  FarsiAlphabet = [#129,#141,#142,#144,#194..#255,#186,#183,#161]-[#215,#247];
  SpecialChars = [#33..#47,#58..#64,#91..#96,#123..#127];
var
  FarsiState: Boolean;
  P, I, K,J: Integer;
  function GetMap(UpOnly: Boolean): Char;
  begin
    if not UpOnly then
      case S[I] of
        '{': Result := '}';
        '}': Result := '{';
        '<': Result := '>';
        '>': Result := '<';
        '(': Result := ')';
        ')': Result := '(';
        '[': Result := '[';
        ']': Result := ']';
        else Result := S[I];
      end
    else Result := S[I];
  end;

begin
  Result := '';
  if S = '' then Exit;
  P := 1;
  I := 1;
  FarsiState := True;
  while I <= Byte(S[0]) do
  begin
    if (S[I] in LatinAlphabet) then
    begin
      P := 1;
      K := I;
      while (K < Byte(S[0])) and not(S[K] in FarsiAlphabet) do Inc(K);
      while (K = 0) or ((K > I) and not(S[K] in (LatinAlphabet+LatinNumbers))) do
        Dec(K);
      while (I <= K) do
      begin
        System.Insert(GetMap(True),Result,P);
        Inc(I);
        Inc(P);
      end;
    end
    else
    begin
      K := Length(Result)+1;
      P := K;
      while (I <= Byte(S[0])) and not(S[I] in LatinAlphabet) do
      begin
        if not (S[I] in LatinNumbers+SpecialChars) then P := Length(Result)+1;
        System.Insert(GetMap(False),Result,P);
        Inc(I);
      end;
      {Result := Copy(Result, 1, K - 1)+ SReverse(Copy(Result, K, 255));}
    end;
  end;
end;

function RToL(S: ShortString): ShortString;
const
  LatinNumbers = [#48..#57];
  LatinAlphabet = [#65..#90,#97..#122];
  FarsiAlphabet = [#158,#129,#141,#142,#144,#194..#255,#186,#183,#161]-[#215,#247];
  SpecialChars = [#33..#47,#58..#64,#91..#96,#123..#127];
var
  FarsiState: Boolean;
  P, I, K,J: Integer;
  function GetMap(UpOnly: Boolean): Char;
  begin
    if not UpOnly then
      case S[I] of
        '{': Result := '}';
        '}': Result := '{';
        '<': Result := '>';
        '>': Result := '<';
        '(': Result := ')';
        ')': Result := '(';
        '[': Result := '[';
        ']': Result := ']';
        else Result := S[I];
      end
    else Result := S[I];
  end;

begin
  Result := '';
  if S = '' then Exit;
  S := #158 + S;
  P := 1;
  I := 1;
  FarsiState := False;
  while I <= Byte(S[0]) do
  begin
    if (S[I] in LatinAlphabet) then
    begin
      FarsiState := False;
      P := 1;
      K := I;
      while (K < Byte(S[0])) and not(S[K] in FarsiAlphabet) do Inc(K);
      while (K = 0) or ((K > I) and not(S[K] in (LatinAlphabet+LatinNumbers))) do Dec(K);
      while (I <= K) do
      begin
        System.Insert(S[I],Result,P);
        Inc(P);
        Inc(I);
      end;
      if (I <= Byte(S[0])) and (S[I] in SpecialChars) then
      begin
        {P := 1;}
        while (I <= Byte(S[0])) and not(S[I] in (FarsiAlphabet+LatinNumbers)) do
        begin
          System.Insert(GetMap(False),Result, P);
          Inc(I);
        end;
      end;
    end
    else
    begin
      FarsiState := False;
      P := 1;
      K := I;
      while (K < Byte(S[0])) and not(S[K] in LatinAlphabet) do Inc(K);
      while (K = 0) or ((K > I) and not(S[K] in (FarsiAlphabet+LatinNumbers))) do Dec(K);
      while (I <= K) do
      begin
        if S[I] in FarsiAlphabet then FarsiState := True;
        System.Insert(S[I],Result,P);
        Inc(I);
        Inc(P);
      end;
      if (I <= Byte(S[0])) and (S[I] in SpecialChars) then
      begin
        {if FarsiState then} P := 1;
        while (I <= Byte(S[0])) and not(S[I] in (FarsiAlphabet+LatinNumbers+LatinAlphabet)) do
        begin
          {if FarsiState then} System.Insert(GetMap(False),Result, P);
          {else
          begin
            System.Insert(GetMap(True),Result, P);
            Inc(P);
          end;}
          Inc(I);
        end;
      end;
    end;
  end;
  I := Pos(#158, Result);
  if (Length(Result) > I) and ((I > 0) and (Result[I+1] in FarsiAlphabet)) then
     Insert(#32, Result,I+1);
end;
end.
