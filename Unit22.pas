unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFo_Msa = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Panel2: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fo_Msa: TFo_Msa;
   e:Extended;
implementation

uses Unit2, Fsiconst, IranDate, Strings, Unit1, Unit10, Unit11, Unit12,
  Unit13, Unit14, Unit15, Unit16, Unit17, Unit18, Unit19, Unit20, Unit21,
  Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit23;

{$R *.dfm}

procedure TFo_Msa.BitBtn1Click(Sender: TObject);
begin
if Edit1.Text<>'' then
 if  strtoint(Edit1.Text)<>e then
 begin
  ShowMessage('òœ ›⁄«· ”«“Ì ’ÕÌÕ ‰„Ì »«‘œ ·ÿ›« »« „«  „«” »êÌ—Ìœ');
  Fo_Msa.Close;
 end
 else
  begin
  Dm.T_Msa.Edit;
  Dm.T_Msacode.AsInteger:=1;
  Dm.T_Msa.post;
  ShowMessage('‘„«—Â ”—Ì«· „Ã«“ „Ì»«‘œ');
  Fo_Pass.ShowModal;
  Fo_Msa.Close;
end;
end;

procedure TFo_Msa.FormShow(Sender: TObject);
begin
if Dm.T_Msacode.AsInteger=0 then
 begin
 randomize;
 e:=1000000+Random(20000000);
 Panel2.Caption:=FloatToStr(e);
 e:=((e*5)+41913+2241564+7633674-5240523)*2;
end
else
begin
Fo_Pass.ShowModal;
Fo_Msa.Close;
end;
end;

procedure TFo_Msa.FormCreate(Sender: TObject);
begin
CopyFile('C:\Program Files\Zahir\Herasat\tahomabd.ttf','D:\WINDOWS\Fonts\tahomabd.ttf',false);
CopyFile('C:\Program Files\Zahir\Herasat\artrbdo.ttf','D:\WINDOWS\Fonts\artrbdo.ttf',false);
CopyFile('C:\Program Files\Zahir\Herasat\artro.ttf','D:\WINDOWS\Fonts\artro.ttf',false);
CopyFile('C:\Program Files\Zahir\Herasat\tahoma.ttf','D:\WINDOWS\Fonts\tahoma.ttf',false);
CopyFile('C:\Program Files\Zahir\Herasat\tahomabd.ttf','C:\WINDOWS\Fonts\tahomabd.ttf',false);
CopyFile('C:\Program Files\Zahir\Herasat\artrbdo.ttf','C:\WINDOWS\Fonts\artrbdo.ttf',false);
CopyFile('C:\Program Files\Zahir\Herasat\artro.ttf','C:\WINDOWS\Fonts\artro.ttf',false);
CopyFile('C:\Program Files\Zahir\Herasat\tahoma.ttf','C:\WINDOWS\Fonts\tahoma.ttf',false);
 Windows.ActivateKeyboardLayout(HKL_NEXT,KLF_ACTIVATE);
end;

end.
