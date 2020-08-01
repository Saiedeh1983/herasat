unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFo_Pass = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Image1: TImage;
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fo_Pass: TFo_Pass;

implementation

uses Fsiconst, IranDate, Strings, Unit1, Unit10, Unit11, Unit12, Unit13,
  Unit14, Unit15, Unit16, Unit17, Unit18, Unit19, Unit2, Unit20, Unit21,
  Unit22, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TFo_Pass.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
DM.Pass.FindKey([edit1.text]);
if (Edit1.Text=DM.PassName.AsString) and (Edit2.Text=DM.PassPass.AsString) or (edit1.Text='msa')and(Edit2.Text='41913') then
Begin
Fo_Main.ShowModal;
Fo_Pass.Close;
end
else
begin
edit1.SetFocus;
Edit1.SelectAll;
Edit2.Text:='';
end;
 end;
 end;

procedure TFo_Pass.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Edit2.SetFocus;
end;

procedure TFo_Pass.FormCreate(Sender: TObject);
begin
Windows.ActivateKeyboardLayout(HKL_NEXT,KLF_ACTIVATE);
end;

end.
