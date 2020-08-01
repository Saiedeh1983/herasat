unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm21 = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton8: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    Image1: TImage;
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

uses Fsiconst, IranDate, Strings, Unit1, Unit10, Unit11, Unit12, Unit13,
  Unit14, Unit15, Unit16, Unit17, Unit18, Unit19, Unit2, Unit20, Unit3,
  Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm21.SpeedButton8Click(Sender: TObject);
begin
Form21.Close;
end;

procedure TForm21.SpeedButton3Click(Sender: TObject);
begin
If MessageDlg('¬Ì« »—«Ì –ŒÌ—Â «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
DM.Pass.Post;
DM.Pass.Refresh;
end;

procedure TForm21.SpeedButton5Click(Sender: TObject);
begin
If MessageDlg('¬Ì« »—«Ì Õ‹–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtWarning,[mbYes,mbNo],0)=mrYes then
DM.Pass.Delete;
DM.Pass.Refresh;
end;

procedure TForm21.SpeedButton4Click(Sender: TObject);
begin
DM.Pass.Insert;
DBEdit1.SetFocus;
end;

procedure TForm21.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TForm21.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit2.SetFocus;
end;

procedure TForm21.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton3Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;

procedure TForm21.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F7 then
begin
SpeedButton4Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton5Click(Self);
end;
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;
procedure TForm21.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F8 then
begin
SpeedButton8Click(Self);
end;
end;
end.
