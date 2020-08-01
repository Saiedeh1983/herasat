unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, jpeg;

type
  TFo_P_Ma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton13: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Label11: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label38: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label35: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Label29: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label45: TLabel;
    SpeedButton26: TSpeedButton;
    Label36: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label40: TLabel;
    SpeedButton6: TSpeedButton;
    Label41: TLabel;
    Label42: TLabel;
    SpeedButton7: TSpeedButton;
    Label37: TLabel;
    SpeedButton1: TSpeedButton;
    Label44: TLabel;
    SpeedButton16: TSpeedButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    Timer1: TTimer;
    Image1: TImage;
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit19KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fo_P_Ma: TFo_P_Ma;

implementation

uses Fsiconst, IranDate, Strings, Unit1, Unit10, Unit11, Unit12, Unit14,
  Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit15, Unit16,
  Unit17, Unit18;

{$R *.dfm}

procedure TFo_P_Ma.SpeedButton3Click(Sender: TObject);
label aaaa;
var
s,ss,www,ttt:string;
a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16:Integer;
/////////////////////////////////////////////
begin
If MessageDlg('¬Ì« »—«Ì –ŒÌ—Â «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
begin
if StrToInt(DBEdit9.Text)>23then
begin
MessageDlg('”«⁄  Ê«—œ ‰Ì” ',mterror,[mbok],0);
DBEdit9.SetFocus;
 goto aaaa;

end else
if StrToInt(DBEdit11.Text)>23then
begin
MessageDlg('”«⁄  Ê«—œ ‰Ì” ',mterror,[mbok],0);
DBEdit11.SetFocus;
 goto aaaa;

end else
if StrToInt(DBEdit8.Text)>59then
begin
MessageDlg('œﬁÌﬁÂ Ê«—œ ‰Ì” ',mterror,[mbok],0);
DBEdit8.SetFocus;
 goto aaaa;

end else
if StrToInt(DBEdit10.Text)>59then
begin
MessageDlg('œﬁÌﬁÂ Ê«—œ ‰Ì” ',mterror,[mbok],0);
DBEdit10.SetFocus;
 goto aaaa;

end else
if StrToInt(DBEdit14.Text)>31then
begin
MessageDlg('—Ê“ Ê«—œ ‰Ì” ',mterror,[mbok],0);
DBEdit14.SetFocus;
 goto aaaa;

end else
if  StrToInt(DBEdit15.Text)>12 then
begin
MessageDlg('„«Â Ê«—œ ‰Ì” ',mterror,[mbok],0);
DBEdit15.SetFocus;
goto aaaa;

end else
if  StrToInt(DBEdit16.Text)>86 then
begin
MessageDlg('”«· Ê«—œ ‰Ì” ',mterror,[mbok],0);
DBEdit16.SetFocus;
goto aaaa;

end else
if StrToInt(DBEdit17.Text)>31then
begin
MessageDlg('—Ê“ Ê«—œ ‰Ì” ',mterror,[mbok],0);
DBEdit17.SetFocus;
 goto aaaa;

end else
if StrToInt(DBEdit2.Text)>99then
begin
MessageDlg('Å·«ò Ê«—œ ‰Ì” ',mterror,[mbok],0);
DBEdit2.SetFocus;
 goto aaaa;

end else
if StrToInt(DBEdit4.Text)>999then
begin
MessageDlg('Å·«ò Ê«—œ ‰Ì” ',mterror,[mbok],0);
DBEdit4.SetFocus;
 goto aaaa;

end else
if  StrToInt(DBEdit18.Text)>12 then
begin
MessageDlg('„«Â Ê«—œ ‰Ì” ',mterror,[mbok],0);
DBEdit18.SetFocus;
goto aaaa;

end else
if  StrToInt(DBEdit19.Text)>86 then
begin
MessageDlg('”«· Ê«—œ ‰Ì” ',mterror,[mbok],0);
DBEdit19.SetFocus;
goto aaaa;

end else
begin
DM.Car_Mamol.Post;
DM.Car_Mamol.Refresh;
end;
aaaa:
end;
end;


procedure TFo_P_Ma.DBEdit19KeyPress(Sender: TObject; var Key: Char);
var
x,y,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22:Integer;
begin

if key=#13 then
begin
a1:=StrToInt(DBEdit8.Text);
a2:=StrToInt(DBEdit9.Text);
a3:=StrToInt(DBEdit10.Text);
a4:=StrToInt(DBEdit11.Text);
a5:=StrToInt(DBEdit14.Text);
a6:=StrToInt(DBEdit15.Text);
a7:=StrToInt(DBEdit16.Text);
a8:=StrToInt(DBEdit17.Text);
a9:=StrToInt(DBEdit18.Text);
a10:=StrToInt(DBEdit19.Text);
a11:=a2*60+a1;
a12:=a4*60+a3;

if a12<a11 then
begin
a13:=0;
end else
begin
a13:=a12-a11;
end;


if(a13>=60) then
begin
a15:=a13 mod 60;
a14:=a13 div 60;
end else
begin
a15:=a13 mod 60;
end;

if (a6=a9) and (a7=a10) then
begin
a16:=a8-a5;
end;

if (a7=a10) and (a8=a5) and (a9>a6) then
begin
a16:=(a9-a6)*30;
end;

if (a7=a10) and (a8>a5) and (a9>a6) then
begin
a16:=((a9-a6)*30)+(a8-a5);
end;

if (a7=a10) and (a8<a5) and (a9>a6) then
begin
a16:=((a9-a6)*30)-(a5-a8);
end;

x:=a9-a6;
if a9>7 then
begin
y:=a9-7;
end;

if (a6=1) or (a6=2) or (a6=3) or (a6=4)  or (a6=5) or (a6=6) then
a16:=a16+x-y;
DBEdit12.Text:=IntToStr(a15);
DBEdit13.Text:=IntToStr(a14);
DBEdit20.Text:=IntToStr(a16);
SpeedButton3Click(Self);
end;
end;


procedure TFo_P_Ma.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit2.SetFocus;
end;

procedure TFo_P_Ma.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit3.SetFocus;
end;

procedure TFo_P_Ma.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit4.SetFocus;
end;

procedure TFo_P_Ma.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit5.SetFocus;
end;

procedure TFo_P_Ma.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit6.SetFocus;
end;

procedure TFo_P_Ma.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit7.SetFocus;
end;

procedure TFo_P_Ma.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBMemo1.SetFocus;
end;

procedure TFo_P_Ma.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit9.SetFocus;
end;

procedure TFo_P_Ma.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit8.SetFocus;
end;

procedure TFo_P_Ma.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit14.SetFocus;
end;

procedure TFo_P_Ma.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit15.SetFocus;
end;

procedure TFo_P_Ma.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit16.SetFocus;
end;

procedure TFo_P_Ma.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit11.SetFocus;
end;

procedure TFo_P_Ma.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit10.SetFocus;
end;

procedure TFo_P_Ma.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit17.SetFocus;
end;

procedure TFo_P_Ma.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit18.SetFocus;
end;

procedure TFo_P_Ma.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit19.SetFocus;
end;

procedure TFo_P_Ma.SpeedButton4Click(Sender: TObject);
begin
DM.Car_Mamol.Insert;
DBEdit1.SetFocus;
end;

procedure TFo_P_Ma.SpeedButton23Click(Sender: TObject);
begin
DM.Car_Mamol.Edit;
DM.Car_Mamol.Refresh;
end;

procedure TFo_P_Ma.SpeedButton5Click(Sender: TObject);
begin
If MessageDlg('¬Ì« »—«Ì Õ‹–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
DM.Car_Mamol.Delete;
DM.Car_Mamol.Refresh;
end;

procedure TFo_P_Ma.SpeedButton8Click(Sender: TObject);
begin
Fo_P_Ma.Close;
end;

procedure TFo_P_Ma.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
  DM.Car_Mamol.Filtered:=False;
  dm.Car_Mamol.Filter:='Car_name='+QuotedStr(edit1.Text);
  DM.Car_Mamol.Filtered:=True;
  end;
end;

procedure TFo_P_Ma.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
  DM.Car_Mamol.Filtered:=False;
  dm.Car_Mamol.Filter:='Fanme_ran='+QuotedStr(edit6.Text);
  DM.Car_Mamol.Filtered:=True;
  end;
end;


procedure TFo_P_Ma.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
if (edit7.Text='') and (Edit8.Text='')then
begin
  DM.Car_Mamol.Filtered:=False;
  DM.Car_Mamol.Filter:='Date_kh_yaer='+QuotedStr(edit9.Text);
  DM.Car_Mamol.Filtered:=True;
 end else
begin
if (edit7.Text='')then
begin
  DM.Car_Mamol.Filtered:=False;
  DM.Car_Mamol.Filter:='Date_kh_yaer='+QuotedStr(edit9.Text)+'and Date_kh_mah='+QuotedStr(edit8.Text);
  DM.Car_Mamol.Filtered:=True;
 end else
begin
  DM.Car_Mamol.Filtered:=False;
  DM.Car_Mamol.Filter:='Date_kh_yaer='+QuotedStr(edit9.Text)+'and Date_kh_mah='+QuotedStr(edit8.Text)+'and Date_kh_day='+QuotedStr(edit7.Text);
  DM.Car_Mamol.Filtered:=True;
  end;
  end;
  end;
  end;

procedure TFo_P_Ma.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Edit8.SetFocus;
end;

procedure TFo_P_Ma.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Edit9.SetFocus;
end;

procedure TFo_P_Ma.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Edit3.SetFocus;
end;

procedure TFo_P_Ma.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Edit4.SetFocus;
end;

procedure TFo_P_Ma.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Edit5.SetFocus;
end;

procedure TFo_P_Ma.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
  DM.Car_Mamol.Filtered:=False;
  dm.Car_Mamol.Filter:='P_12='+QuotedStr(Edit2.Text)+'and P_char='+QuotedStr(Edit3.Text)+'and P_123='+QuotedStr(Edit4.Text)+'and P_SH_N='+QuotedStr(Edit5.Text);
  DM.Car_Mamol.Filtered:=True;
  end;
end;

procedure TFo_P_Ma.SpeedButton26Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';
Edit8.Text:='';
Edit9.Text:='';
end;

procedure TFo_P_Ma.SpeedButton16Click(Sender: TObject);
begin
Dm.Car_Mamol.IndexName:='Car_name';
end;

procedure TFo_P_Ma.SpeedButton7Click(Sender: TObject);
begin
Dm.Car_Mamol.IndexName:='Fanme_ran';
end;

procedure TFo_P_Ma.SpeedButton1Click(Sender: TObject);
begin
Dm.Car_Mamol.IndexName:='P_SH_N';
end;

procedure TFo_P_Ma.SpeedButton6Click(Sender: TObject);
begin
Dm.Car_Mamol.Filtered:=False;
Dm.Car_Mamol.First
end;

procedure TFo_P_Ma.FormShow(Sender: TObject);
var
  i:integer;
  s,s1,s2:String;
begin
        Form1.Caption:='  '+DateToFarsi(date)+'                                                            ...:::(( „Ê»«Ì‹‹‹‹‹‹‹‹· «Ì›‹‹‹‹‹‹‹‹‹‹·  )):::...'+'                                                                        '+DateToStr(date);
   i:=DayOfWeek(date);
   s:=DateToFarsi(date);
   s1:=copy(s,6,2);
   case StrToInt(s1) of   
     1:s2:='›—Ê—œÌ‰';
     2:s2:='«—œÌ»Â‘ ';
     3:s2:='Œ—œ«œ';
     4:s2:=' Ì—';
     5:s2:='„—œ«œ';
     6:s2:='‘Â—ÌÊ—';
     7:s2:='„Â—';
     8:s2:='¬»«‰';
     9:s2:='¬–—';
     10:s2:='œÌ';
     11:s2:='»Â„‰';
     12:s2:='«”›‰œ';
   end;
   case i of
      6:SpeedButton12.Caption:='Ã„⁄Â'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
      7:SpeedButton12.Caption:='‘‰»Â'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
      1:SpeedButton12.Caption:='Ìﬂ ‘‰»Â'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
      2:SpeedButton12.Caption:='œÊ ‘‰»Â'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
      3:SpeedButton12.Caption:='”Â ‘‰»Â'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
      4:SpeedButton12.Caption:='çÂ«— ‘‰»Â'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
      5:SpeedButton12.Caption:='Å‰Ã ‘‰»Â'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
   end;
end;



procedure TFo_P_Ma.Timer1Timer(Sender: TObject);
begin
SpeedButton13.Caption:=TimeToStr(time);
end;

procedure TFo_P_Ma.SpeedButton9Click(Sender: TObject);
begin
Form18.ShowModal;
end;

procedure TFo_P_Ma.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBEdit19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TFo_P_Ma.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F7 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

end.
