unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, jpeg, ExtCtrls;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    SpeedButton9: TSpeedButton;
    FontDialog1: TFontDialog;
    Label1: TLabel;
    Image1: TImage;
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Fsiconst, IranDate, Strings, Unit1, Unit2, Unit3;

{$R *.dfm}

procedure TForm4.SpeedButton9Click(Sender: TObject);
begin
 if FontDialog1.Execute then
 Q_Code.QRLabel4.Font := FontDialog1.Font;
Q_Code.QRLabel4.Caption:=Edit1.Text;
Q_Code.QRLabel3.Caption:=Form1.SpeedButton12.Caption;
Q_Code.QRLabel2.Caption:=Form1.SpeedButton13.Caption;
Q_Code.Preview;
Form4.Close;
end;

end.
