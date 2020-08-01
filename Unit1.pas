unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, jpeg,
  DB, DBTables;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label40: TLabel;
    SpeedButton6: TSpeedButton;
    Label41: TLabel;
    Label42: TLabel;
    SpeedButton7: TSpeedButton;
    Label22: TLabel;
    SpeedButton1: TSpeedButton;
    Label23: TLabel;
    SpeedButton2: TSpeedButton;
    Label24: TLabel;
    Label28: TLabel;
    SpeedButton16: TSpeedButton;
    Timer1: TTimer;
    SpeedButton9: TSpeedButton;
    SpeedButton23: TSpeedButton;
    Label45: TLabel;
    SpeedButton26: TSpeedButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    DataSource2: TDataSource;
    Query2: TQuery;
    SpeedButton8: TSpeedButton;
    Label10: TLabel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);

    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);




    procedure SpeedButton6Click(Sender: TObject);

    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);











    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);


    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);


    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton28Click(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);










  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, IranDate, Fsiconst, Strings, Unit10, Unit11, Unit14, Unit3,
  Unit4, Unit5;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
var
  i:integer;
  s,s1,s2:String;
begin
//DBEdit1.Enabled:=False;
//DBEdit2.Enabled:=False;
//DBEdit3.Enabled:=False;
//DBEdit4.Enabled:=False;
//DBEdit5.Enabled:=False;
//DBEdit12.Enabled:=False;
//DBEdit13.Enabled:=False;
//DBEdit14.Enabled:=False;
//Edit1.SetFocus;
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

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
SpeedButton13.Caption:=TimeToStr(Time)
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
If MessageDlg('¬Ì« »—«Ì –ŒÌ—Â «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
begin
DM.Code.Post;
DM.Code.Refresh;
end;
end;


procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
If MessageDlg('¬Ì« »—«Ì Õ‹–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
DM.Code.Delete;
DM.Code.Refresh;
end;

procedure TForm1.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then DBEdit2.SetFocus;
end;

procedure TForm1.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then DBEdit3.SetFocus;
end;

procedure TForm1.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then DBEdit4.SetFocus;
end;

procedure TForm1.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then DBEdit5.SetFocus;
end;





procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
DBGrid1.DataSource.DataSet:=DM.Code;
Dm.Code.Filtered:=False;
Dm.Code.First;
end;



procedure TForm1.SpeedButton16Click(Sender: TObject);
begin
DBGrid1.DataSource.DataSet:=DM.Code;
Dm.Code.IndexName:='Code';
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
DBGrid1.DataSource.DataSet:=DM.Code;
Dm.Code.IndexName:='Fname';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
DBGrid1.DataSource.DataSet:=DM.Code;
Dm.Code.IndexName:='Vahed';
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
DBGrid1.DataSource.DataSet:=DM.Code;
Dm.Code.IndexName:='Shakhe';
end;


procedure TForm1.SpeedButton25Click(Sender: TObject);
var
a,s:Integer;
begin
a:=DM.CodeCode.AsInteger;
s:=DM.GrohCode.AsInteger;
if(s=a)then
begin
MessageDlg('·ÿ›« «» œ« ‘Œ’ „Ê—œ ‰Ÿ— —« «“ ÃœÊ· Å—”‰· Õ–› ‰„«∆Ìœ',mterror,[mbok],0);
end else
begin
If MessageDlg('¬Ì« »—«Ì Õ‹–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
DM.Groh.Delete;
DM.Groh.Refresh;
end;
end;
procedure TForm1.SpeedButton26Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
end;




procedure TForm1.Edit2Change(Sender: TObject);
begin
DBGrid1.DataSource.DataSet:=Form1.Query1;
Query1.Close;
Query1.SQL[2]:='where Fname like ''%'+Edit2.Text+'%''';
Query1.Open;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
//DBGrid1.DataSource.DataSet:=Form1.Query1;
//Query1.Close;
//Query1.SQL[2]:='where Vahed like ''%'+Edit3.Text+'%''';
//Query1.Open;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
//DBGrid1.DataSource.DataSet:=Form1.Query1;
//Query1.Close;
//Query1.SQL[2]:='where Shakhe like ''%'+Edit4.Text+'%''';
//Query1.Open;
end;



procedure TForm1.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
DM.Code.Insert;
DBEdit1.SetFocus;
end;
if key=VK_F8 then
begin
Form1.Close;
end;
end;

procedure TForm1.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
DM.Code.Insert;
DBEdit1.SetFocus;
end;
if key=VK_F8 then
begin
Form1.Close;
end;
end;

procedure TForm1.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
DM.Code.Insert;
DBEdit1.SetFocus;
end;
if key=VK_F8 then
begin
Form1.Close;
end;
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
DM.Code.Insert;
DBEdit1.SetFocus;
end;
if key=VK_F8 then
begin
Form1.Close;
end;
end;

procedure TForm1.SpeedButton28Click(Sender: TObject);
begin
Form1.Close;
end;











procedure TForm1.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
SpeedButton3Click(self);
end;








procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
DM.Code.Insert;
DBEdit1.SetFocus;
end;

procedure TForm1.SpeedButton23Click(Sender: TObject);
begin
DM.Code.Edit;
DM.Code.Refresh;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBGrid1.DataSource.DataSet:=DM.Code;
if Edit4.Text='' then
begin
DM.Code.Filtered:=False;
dm.Code.Filter:='Vahed='+QuotedStr(edit3.Text);
DM.Code.Filtered:=True;
end else
begin
DM.Code.Filtered:=False;
dm.Code.Filter:='Vahed='+QuotedStr(edit3.Text)+'and Shakhe='+QuotedStr(edit4.Text);
DM.Code.Filtered:=True;
end;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBGrid1.DataSource.DataSet:=DM.Code;
if Edit3.Text='' then
begin
DM.Code.Filtered:=False;
dm.Code.Filter:='Shakhe='+QuotedStr(edit4.Text);
DM.Code.Filtered:=True;
end else
begin
DM.Code.Filtered:=False;
dm.Code.Filter:='Shakhe='+QuotedStr(edit4.Text)+'and Vahed='+QuotedStr(edit3.Text);
DM.Code.Filtered:=True;
end;
end;
procedure TForm1.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
If MessageDlg('¬Ì« »—«Ì –ŒÌ—Â «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
begin
DM.Code.Post;
DM.Code.Refresh;
end;
end;
if key=VK_F7 then
begin
If MessageDlg('¬Ì« »—«Ì Õ‹–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
DM.Code.Delete;
DM.Code.Refresh;
end;
if key=VK_F6 then
begin
DM.Code.Insert;
DBEdit1.SetFocus;
end;
if key=VK_F8 then
begin
Form1.Close;
end;
end;

procedure TForm1.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
If MessageDlg('¬Ì« »—«Ì –ŒÌ—Â «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
begin
DM.Code.Post;
DM.Code.Refresh;
end;
end;
if key=VK_F7 then
begin
If MessageDlg('¬Ì« »—«Ì Õ‹–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
DM.Code.Delete;
DM.Code.Refresh;
end;
if key=VK_F6 then
begin
DM.Code.Insert;
DBEdit1.SetFocus;
end;
if key=VK_F8 then
begin
Form1.Close;
end;
end;

procedure TForm1.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
If MessageDlg('¬Ì« »—«Ì –ŒÌ—Â «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
begin
DM.Code.Post;
DM.Code.Refresh;
end;
end;
if key=VK_F7 then
begin
If MessageDlg('¬Ì« »—«Ì Õ‹–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
DM.Code.Delete;
DM.Code.Refresh;
end;
if key=VK_F6 then
begin
DM.Code.Insert;
DBEdit1.SetFocus;
end;
if key=VK_F8 then
begin
Form1.Close;
end;
end;

procedure TForm1.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
If MessageDlg('¬Ì« »—«Ì –ŒÌ—Â «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
begin
DM.Code.Post;
DM.Code.Refresh;
end;
end;
if key=VK_F7 then
begin
If MessageDlg('¬Ì« »—«Ì Õ‹–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
DM.Code.Delete;
DM.Code.Refresh;
end;
if key=VK_F6 then
begin
DM.Code.Insert;
DBEdit1.SetFocus;
end;
if key=VK_F8 then
begin
Form1.Close;
end;
end;

procedure TForm1.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
If MessageDlg('¬Ì« »—«Ì –ŒÌ—Â «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
begin
DM.Code.Post;
DM.Code.Refresh;
end;
end;
if key=VK_F7 then
begin
If MessageDlg('¬Ì« »—«Ì Õ‹–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
DM.Code.Delete;
DM.Code.Refresh;
end;
if key=VK_F6 then
begin
DM.Code.Insert;
DBEdit1.SetFocus;
end;
if key=VK_F8 then
begin
Form1.Close;
end;
end;

procedure TForm1.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F7 then
begin
If MessageDlg('¬Ì« »—«Ì Õ‹–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
DM.Code.Delete;
DM.Code.Refresh;
end;
if key=VK_F6 then
begin
DM.Code.Insert;
DBEdit1.SetFocus;
end;
if key=VK_F8 then
begin
Form1.Close;
end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  DM.Code.Filtered:=False;
  DM.Code.Filter:='Code='+QuotedStr(edit1.Text);
  DM.Code.Filtered:=True;
end;
end;

end.
