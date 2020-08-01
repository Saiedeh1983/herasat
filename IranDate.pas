Unit IranDate;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;
type RecDate = record
  Day  : Word;
  Mon  : Word;
  Year : Word;
end;
const FARSI   = 1;
const ENGLISH = 0;
const MIN_DATE = 1900;
const MAX_DATE = 2025;
Const FMon : Array[1..12] Of Word = (31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29);
Const EMon : Array[1..12] Of Word = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
{------------------------------------------------------------------------------}
Function  _DATE_Leap(Y : Word; Language : Integer) : Boolean;
Procedure DATE_ToEnglish(Var d : RecDate);
Procedure DATE_Str(d : RecDate; Var Str : String; Language : Integer);
Procedure DATE_Str_Sp(d : RecDate; Var Str : String; Language : Integer);
Function _DATE_StringToDate(d : String) : RecDate;
Function DateToFarsi(InputDate : TDatetime):string;
Function FARSIDATE_TO_ENGLISHDATE(FarsiDate:String):String;
{------------------------------------------------------------------------------}
implementation

uses Unit1;
{------------------------------------------------------------------------------}
Procedure DateInit(Var d : RecDate);
Begin
  d.Day  := 0;
  d.Mon  := 0;
  d.Year := 0;
End;
{------------------------------------------------------------------------------}
Function _DATE_Leap(Y : Word; Language : Integer) : Boolean;
Begin
  if (Language = FARSI)   and (Y < 100) Then
    y := y + (1300 + 621)
  Else if (Language = FARSI)   and (Y > 100) Then
    y := y + 621;
  if (Language = ENGLISH) and (y < 100) Then
    y := y + 1900;
  if (Language = ENGLISH) and (y = 0)   Then
    y := y + 2000;
  _DATE_Leap := IsLeapYear(y);
End;
{------------------------------------------------------------------------------}
Function DATE_Comp(d1, d2 : RecDate) : Integer;
Begin
   if (d1.Year Mod 100 = d2.Year Mod 100) and (d1.Mon = d2.Mon) Then
   Begin
     DATE_Comp := d1.Day - d2.Day;
     Exit;
   End
   Else if (d1.Year Mod 100 = d2.Year Mod 100) and (d1.Day = d2.Day) Then
   Begin
     DATE_Comp := d1.Mon - d2.Mon;
     Exit;
   End
   Else
     DATE_Comp := d1.Year - d2.Year;
End;
{------------------------------------------------------------------------------}
Function _DATE_MonthLength(year, mon, Language : Integer) : Integer;
Begin
   if(Language = FARSI) and (_DATE_Leap(year, Language)= True) and (Mon = 11) Then
   Begin
     _DATE_MonthLength := 30;
     Exit;
   End
   Else if (Language = FARSI) Then
   Begin
     _DATE_MonthLength := FMon[Mon];
     Exit;
   End;
   if(Language = ENGLISH) and (_DATE_Leap(year, Language)= True) and (Mon = 2) Then
   Begin
     _DATE_MonthLength := 29;
     Exit;
   End
   Else if(Language = ENGLISH) Then
   Begin
     _DATE_MonthLength := EMon[Mon];
     Exit;
   End;
   _DATE_MonthLength := -1;
End;
{------------------------------------------------------------------------------}
Function _DATE_PassedDaysOfYear(d : RecDate;Language : Integer) : Integer;
Var
   Day, Cnt : Integer;
Begin
   Day := 0; Cnt := 1;
   While Cnt < d.Mon do
   Begin
     Day := Day + _DATE_MonthLength(d.Year, Cnt, Language);
     Inc(Cnt);
   End;
   _DATE_PassedDaysOfYear :=  Day + d.Day;
End;
{------------------------------------------------------------------------------}
Procedure DATE_Str(d : RecDate; Var Str : String; Language : Integer);
Begin
   Str := '';
   if Language = FARSI Then
   Begin
     if (d.Day < 10) and (d.Mon > 10) Then
       Str := Str + '0' + Inttostr(d.Day)+'/'+Inttostr(d.Mon)+'/'+Inttostr(d.Year - 1300)
     else if (d.Mon < 10) and (d.Day > 10) Then
       Str := Str + Inttostr(d.Day)+'/0'+Inttostr(d.Mon)+'/'+Inttostr(d.Year - 1300);
     if (d.Mon < 10) and (d.Day < 10) Then
       Str := Str + '0' + Inttostr(d.Day)+'/0'+Inttostr(d.Mon)+'/'+Inttostr(d.Year - 1300);
     if (d.Mon >= 10) and (d.Day >= 10) Then
       Str := Str + Inttostr(d.Day)+'/'+Inttostr(d.Mon)+'/'+Inttostr(d.Year - 1300);
   End
   Else if Language = ENGLISH Then
   Begin
     if (d.Day < 10) and (d.Mon > 10) Then
       Str := Str + '0' + Inttostr(d.Day)+'/'+Inttostr(d.Mon)+'/'+Inttostr(d.Year)
     else if (d.Mon < 10) and (d.Day > 10) Then
       Str := Str + Inttostr(d.Day)+'/0'+Inttostr(d.Mon)+'/'+Inttostr(d.Year);
     if (d.Mon < 10) and (d.Day < 10) Then
       Str := Str + '0' + Inttostr(d.Day)+'/0'+Inttostr(d.Mon)+'/'+Inttostr(d.Year);
     if (d.Mon >= 10) and (d.Day >= 10) Then
       Str := Str + Inttostr(d.Day)+'/'+Inttostr(d.Mon)+'/'+Inttostr(d.Year);
   End;
End;
{------------------------------------------------------------------------------}
Procedure DATE_Str_Sp(d : RecDate; Var Str : String; Language : Integer);
Begin
   Str := '';
   if Language = FARSI Then
   Begin
     if (d.Day < 10) and (d.Mon >= 10) Then
       Str := Str + Inttostr(d.Year) + '/' + Inttostr(d.Mon)+'/0'+ Inttostr(d.Day)
     else if (d.Mon < 10) and (d.Day >= 10) Then
       Str := Str + Inttostr(d.Year)+'/0'+Inttostr(d.Mon)+'/'+Inttostr(d.Day);
     if (d.Mon < 10) and (d.Day < 10) Then
       Str := Str + Inttostr(d.Year)+'/0'+Inttostr(d.Mon)+'/0'+Inttostr(d.Day);
     if (d.Mon >= 10) and (d.Day >= 10) Then
       Str := Str + Inttostr(d.Year)+'/'+Inttostr(d.Mon)+'/'+Inttostr(d.Day);
   End
   Else if Language = ENGLISH Then
   Begin
     if (d.Day < 10) and (d.Mon >= 10) Then
       Str := Str + Inttostr(d.Year) + '/' + Inttostr(d.Mon)+'/0'+ Inttostr(d.Day)
     else if (d.Mon < 10) and (d.Day >= 10) Then
       Str := Str + Inttostr(d.Year)+'/0'+Inttostr(d.Mon)+'/'+Inttostr(d.Day);
     if (d.Mon < 10) and (d.Day < 10) Then
       Str := Str + Inttostr(d.Year)+'/0'+Inttostr(d.Mon)+'/0'+Inttostr(d.Day);
     if (d.Mon >= 10) and (d.Day >= 10) Then
       Str := Str + Inttostr(d.Year)+'/'+Inttostr(d.Mon)+'/'+Inttostr(d.Day);
   End;
End;
{------------------------------------------------------------------------------}
Function _DATE_StringToDate(d : String) : RecDate;
Var
   ChDate : RecDate;
Begin
   ChDate.Day := strtoint(Copy(d,1,2));
   ChDate.Mon := strtoint(Copy(d,4,2));
   ChDate.Year:= strtoint(Copy(d,7,4));
   _DATE_StringToDate := ChDate;
End;
{------------------------------------------------------------------------------}
Function _DATE_DateOfPassedDays(Var d : RecDate;Day, Language : Integer) : RecDate;
Var
  Cnt : Integer;
Begin
   Cnt := 1;
   while Day > _DATE_MonthLength(d.Year, Cnt, Language) Do
   Begin
     Dec(Day,_DATE_MonthLength(d.Year, Cnt, Language));
     Inc(Cnt);
   End;
   if Day <> 0 Then
     d.Mon := Cnt
   Else
     d.Mon := 12;
   if Day <> 0 Then
     d.Day := Day
   Else
     d.Day := _DATE_MonthLength(d.Year ,d.Mon, Language);
   if(d.Mon > 12) Then
   Begin
      Inc(d.Year);
      dec(d.Mon, 12);
   End;
   _DATE_DateOfPassedDays := d;
End;
{------------------------------------------------------------------------------}
Function DateToFarsi(InputDate : TDatetime):string;
Var
  Days : Integer;
  d : RecDate;
  Buf : string;
Begin
   DecodeDate(InputDate,d.year,d.mon,d.day);
   //--------------
   if d.Year < 100 Then
     d.Year := d.Year + 1900
   Else
     d.Year := d.Year + 0;
   Days := _DATE_PassedDaysOfYear(d, ENGLISH) - 79;
   if Days > 0 Then
     d.Year := d.Year - 621
   else
     d.Year := d.Year - 622;
   if(Days < 0) Then
   Begin
     if _DATE_Leap(d.Year, FARSI) = True Then
       Days := Days + 366
     else
       Days := Days + 365;
   End;
   _DATE_DateOfPassedDays(d, Days, FARSI);
   //--------------
   Buf := inttostr(d.year) + '/';
   if d.mon < 10 then
      Buf := Buf + '0' + inttostr(d.mon) + '/'
   else
      Buf := Buf + inttostr(d.mon) + '/';
   if d.day < 10 then
      Buf := Buf + '0' + inttostr(d.day)
   else
      Buf := Buf + inttostr(d.day);
   DateToFarsi := Buf;
End;
{------------------------------------------------------------------------------}
Function _DATE_Inc(Var d : RecDate;Language : Integer) : RecDate;
Begin
   Inc(d.Day);
   if(d.Day > _DATE_MonthLength(d.Year, d.Mon, Language)) Then
   Begin
      d.Day := 1;
      if(d.Mon >= 12) Then
      Begin
	 d.Mon := 1;
	 Inc(d.Year);
      End
      else
	 Inc(d.Mon);
   End;
   _DATE_Inc := d;
End;
{------------------------------------------------------------------------------}
Procedure DATE_ToEnglish(Var d : RecDate);
Var
  td, sd : RecDate;
  Days   : Integer;
Begin
   sd := d;
   if d.Year < 100 Then
     d.Year := d.Year + 1300
   else
     d.Year := d.Year + 0;
   Days := _DATE_PassedDaysOfYear(d, FARSI) - 288;
   inc(d.Year, 621);
   if Days <= 0 Then
     Inc(Days, 365);
   _DATE_DateOfPassedDays(d, Days, ENGLISH);
   td := d;
//   td := DATE_ToFarsi(td);
   while DATE_Comp(td, sd) < 0 do
   Begin
      _DATE_Inc(d, ENGLISH);
      td := d;
//      DATE_ToFarsi(td);
   End;
End;
{------------------------------------------------------------------------------}
Function FARSIDATE_TO_ENGLISHDATE(FarsiDate:String):String;
var
  K,H:RecDate;
  S:String;
begin
    K.Year:= strtoint(Copy(FarsiDate,1,4));
    K.Mon := strtoint(Copy(FarsiDate,6,2));
    K.Day := strtoint(Copy(FarsiDate,9,2));
    case K.Mon of
      1:begin
          if (K.Day>=1) and (K.Day<=11) then
            begin
              H.Day:=K.Day+20;
              H.Mon:=K.Mon+2;
              H.Year:=K.Year+621;
            end
          else
            begin
              H.Day:=K.Day-11;
              H.Mon:=K.Mon+3;
              H.Year:=K.Year+621;
            end
        end;

      2:begin
          if (K.Day>=1) and (K.Day<=10) then
            begin
              H.Day:=K.Day+20;
              H.Mon:=K.Mon+2;
              H.Year:=K.Year+621;
            end
          else
            begin
              H.Day:=K.Day-10;
              H.Mon:=K.Mon+3;
              H.Year:=K.Year+621;
            end
        end;

      3:begin
          if (K.Day>=1) and (K.Day<=10) then
            begin
              H.Day:=K.Day+21;
              H.Mon:=K.Mon+2;
              H.Year:=K.Year+621;
            end
          else
            begin
              H.Day:=K.Day-10;
              H.Mon:=K.Mon+3;
              H.Year:=K.Year+621;
            end
        end;

      4:begin
          if (K.Day>=1) and (K.Day<=9) then
            begin
              H.Day:=K.Day+21;
              H.Mon:=K.Mon+2;
              H.Year:=K.Year+621;
            end
          else
            begin
              H.Day:=K.Day-9;
              H.Mon:=K.Mon+3;
              H.Year:=K.Year+621;
            end
        end;

      5:begin
          if (K.Day>=1) and (K.Day<=9) then
            begin
              H.Day:=K.Day+22;
              H.Mon:=K.Mon+2;
              H.Year:=K.Year+621;
            end
          else
            begin
              H.Day:=K.Day-9;
              H.Mon:=K.Mon+3;
              H.Year:=K.Year+621;
            end
        end;
      6:begin
          if (K.Day>=1) and (K.Day<=9) then
            begin
              H.Day:=K.Day+22;
              H.Mon:=K.Mon+2;
              H.Year:=K.Year+621;
            end
          else
            begin
              H.Day:=K.Day-9;
              H.Mon:=K.Mon+3;
              H.Year:=K.Year+621;
            end
        end;
      7:begin
          if (K.Day>=1) and (K.Day<=8) then
            begin
              H.Day:=K.Day+22;
              H.Mon:=K.Mon+2;
              H.Year:=K.Year+621;
            end
          else
            begin
              H.Day:=K.Day-8;
              H.Mon:=K.Mon+3;
              H.Year:=K.Year+621;
            end
        end;
      8:begin
          if (K.Day>=1) and (K.Day<=9) then
            begin
              H.Day:=K.Day+22;
              H.Mon:=K.Mon+2;
              H.Year:=K.Year+621;
            end
          else
            begin
              H.Day:=K.Day-9;
              H.Mon:=K.Mon+3;
              H.Year:=K.Year+621;
            end
        end;
      9:begin
          if (K.Day>=1) and (K.Day<=9) then
            begin
              H.Day:=K.Day+21;
              H.Mon:=K.Mon+2;
              H.Year:=K.Year+621;
            end
          else
            begin
              H.Day:=K.Day-9;
              H.Mon:=K.Mon+3;
              H.Year:=K.Year+621;
            end
        end;
      10:begin
          if (K.Day>=1) and (K.Day<=10) then
            begin
              H.Day:=K.Day+21;
              H.Mon:=K.Mon+2;
              H.Year:=K.Year+621;
            end
          else
            begin
              H.Day:=K.Day-10;
              H.Mon:=K.Mon-9;
              H.Year:=K.Year+622;
            end
        end;
      11:begin
          if (K.Day>=1) and (K.Day<=11) then
            begin
              H.Day:=K.Day+20;
              H.Mon:=K.Mon-10;
              H.Year:=K.Year+622;
            end
          else
            begin
              H.Day:=K.Day-11;
              H.Mon:=K.Mon-9;
              H.Year:=K.Year+622;
            end
        end;
      12:begin
          if (K.Day>=1) and (K.Day<=9) then
            begin
              H.Day:=K.Day+19;
              H.Mon:=K.Mon-10;
              H.Year:=K.Year+622;
            end
          else
            begin
              H.Day:=K.Day-9;
              H.Mon:=K.Mon-9;
              H.Year:=K.Year+622;
            end
        end;
    end;{Case}
  if H.Year<10 then
    S:='0'+IntToStr(H.Year)+'/'
  else
    S:=IntToStr(H.Year)+'/';

  if H.Mon<10 then
    S:=S+'0'+IntToStr(H.Mon)+'/'
  else
    S:=S+IntToStr(H.Mon)+'/';

  if H.Day<10 then
    S:=S+'0'+IntToStr(H.Day)
  else
    S:=S+IntToStr(H.Day);

  FARSIDATE_TO_ENGLISHDATE:=S;
end;
{------------------------------------------------------------------------------}
End.

