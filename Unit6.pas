unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, jpeg;

type
  TForm6 = class(TForm)
    SpeedButton8: TSpeedButton;
    SpeedButton22: TSpeedButton;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    SpeedButton17: TSpeedButton;
    Label32: TLabel;
    SpeedButton18: TSpeedButton;
    Label33: TLabel;
    SpeedButton19: TSpeedButton;
    Label35: TLabel;
    Label43: TLabel;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton29: TSpeedButton;
    DBGrid3: TDBGrid;
    Label36: TLabel;
    Label37: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    SpeedButton30: TSpeedButton;
    Label56: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Timer1: TTimer;
    Image1: TImage;
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Fsiconst, IranDate, Strings, Unit2, Unit3, Unit4, Unit5, Unit10,
  Unit7, Unit8, Unit9, Unit11;

{$R *.dfm}

procedure TForm6.SpeedButton8Click(Sender: TObject);
begin
Form6.Close;
end;

procedure TForm6.FormShow(Sender: TObject);
var
  i:integer;
  s,s1,s2:String;
begin
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

procedure TForm6.Timer1Timer(Sender: TObject);
begin
SpeedButton13.Caption:=TimeToStr(time())
end;

procedure TForm6.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
Edit8.SetFocus;
end;

procedure TForm6.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
if edit7.Text='' then
begin
DM.Groh.Filtered:=False;
  DM.Groh.Filter:='Date_year='+QuotedStr(edit8.Text);
  DM.Groh.Filtered:=True;
end else
begin
  DM.Groh.Filtered:=False;
  DM.Groh.Filter:='Date_month='+QuotedStr(edit7.Text)+'and Date_year='+QuotedStr(edit8.Text);
  DM.Groh.Filtered:=True;
  end;
   end;
   end;

procedure TForm6.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
if (edit7.Text='') and (Edit8.Text='')then
begin
DM.Groh.Filtered:=False;
  DM.Groh.Filter:='Code='+QuotedStr(edit9.Text);
  DM.Groh.Filtered:=True;
end else
begin
  DM.Groh.Filtered:=False;
  DM.Groh.Filter:='Code='+QuotedStr(edit9.Text)+'and Date_month='+QuotedStr(edit7.Text)+'and Date_year='+QuotedStr(edit8.Text);
  DM.Groh.Filtered:=True;
  end;
   end;
   end;

procedure TForm6.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
if (edit7.Text='') and (Edit8.Text='')then
begin
DM.Groh.Filtered:=False;
  DM.Groh.Filter:='Fname='+QuotedStr(edit10.Text);
  DM.Groh.Filtered:=True;
end else
begin
  DM.Groh.Filtered:=False;
  DM.Groh.Filter:='Fname='+QuotedStr(edit10.Text)+'and Date_month='+QuotedStr(edit7.Text)+'and Date_year='+QuotedStr(edit8.Text);
  DM.Groh.Filtered:=True;
  end;
   end;
   end;

procedure TForm6.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
if (edit7.Text='') and (Edit8.Text='')then
begin
DM.Groh.Filtered:=False;
  DM.Groh.Filter:='Vahed='+QuotedStr(edit5.Text);
  DM.Groh.Filtered:=True;
end else
begin
  DM.Groh.Filtered:=False;
  DM.Groh.Filter:='Vahed='+QuotedStr(edit5.Text)+'and Date_month='+QuotedStr(edit7.Text)+'and Date_year='+QuotedStr(edit8.Text);
  DM.Groh.Filtered:=True;
  end;
   end;
   end;

procedure TForm6.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
if (edit7.Text='') and (Edit8.Text='')then
begin
DM.Groh.Filtered:=False;
  DM.Groh.Filter:='Shakhe='+QuotedStr(edit6.Text);
  DM.Groh.Filtered:=True;
end else
begin
  DM.Groh.Filtered:=False;
  DM.Groh.Filter:='Shakhe='+QuotedStr(edit6.Text)+'and Date_month='+QuotedStr(edit7.Text)+'and Date_year='+QuotedStr(edit8.Text);
  DM.Groh.Filtered:=True;
  end;
   end;
   end;

procedure TForm6.SpeedButton29Click(Sender: TObject);
begin
DM.Groh.Edit;
DM.Groh.Refresh;
end;


procedure TForm6.SpeedButton20Click(Sender: TObject);
begin
DBGrid3.DataSource.DataSet:=DM.Groh;
Dm.Groh.IndexName:='Code';
end;

procedure TForm6.SpeedButton17Click(Sender: TObject);
begin
DBGrid3.DataSource.DataSet:=DM.Groh;
Dm.Groh.IndexName:='Fname';
end;

procedure TForm6.SpeedButton18Click(Sender: TObject);
begin
 DBGrid3.DataSource.DataSet:=DM.Groh;
Dm.Groh.IndexName:='Vahed';
end;

procedure TForm6.SpeedButton19Click(Sender: TObject);
begin
DBGrid3.DataSource.DataSet:=DM.Groh;
Dm.Groh.IndexName:='Shakhe';
end;

procedure TForm6.SpeedButton21Click(Sender: TObject);
begin
DBGrid3.DataSource.DataSet:=DM.Groh;
Dm.Groh.Filtered:=False;
Dm.Groh.First;
end;

procedure TForm6.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F8 then
begin
Form6.Close;
end;
end;

procedure TForm6.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=VK_F8 then
begin
Form6.Close;
end;
end;

procedure TForm6.SpeedButton22Click(Sender: TObject);
begin
Form11.ShowModal;
end;

procedure TForm6.SpeedButton30Click(Sender: TObject);
begin
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';
Edit8.Text:='';
Edit9.Text:='';
Edit10.Text:='';
end;

procedure TForm6.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F8 then
begin
Form6.Close;
end;
end;

procedure TForm6.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F8 then
begin
Form6.Close;
end;
end;

procedure TForm6.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F8 then
begin
Form6.Close;
end;
end;

procedure TForm6.Edit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F8 then
begin
Form6.Close;
end;
end;

procedure TForm6.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F8 then
begin
Form6.Close;
end;
end;

procedure TForm6.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F8 then
begin
Form6.Close;
end;
end;

end.
