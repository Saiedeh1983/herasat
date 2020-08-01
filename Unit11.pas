unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm11 = class(TForm)
    SpeedButton9: TSpeedButton;
    Label1: TLabel;
    Edit1: TEdit;
    FontDialog1: TFontDialog;
    Image1: TImage;
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Fsiconst, IranDate, Strings, Unit1, Unit10, Unit2, Unit3, Unit4, Unit5,
  Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm11.SpeedButton9Click(Sender: TObject);
begin
 if FontDialog1.Execute then
Q_groh.QRLabel4.Font := FontDialog1.Font;
Q_groh.QRLabel4.Caption:=Edit1.Text;
Q_groh.QRLabel3.Caption:=Form6.SpeedButton12.Caption;
Q_groh.QRLabel2.Caption:=Form6.SpeedButton13.Caption;
Q_groh.Preview;
Form11.Close;
end;

end.
