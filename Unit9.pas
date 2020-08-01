unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm9 = class(TForm)
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
  Form9: TForm9;

implementation

uses Fsiconst, IranDate, Strings, Unit1, Unit2, Unit3, Unit4, Unit5, Unit6,
  Unit7, Unit8;

{$R *.dfm}

procedure TForm9.SpeedButton9Click(Sender: TObject);
begin
 if FontDialog1.Execute then
Q_personal.QRLabel4.Font := FontDialog1.Font;
Q_personal.QRLabel4.Caption:=Edit1.Text;
Q_personal.QRLabel3.Caption:=Form5.SpeedButton12.Caption;
Q_personal.QRLabel2.Caption:=Form5.SpeedButton13.Caption;
Q_personal.Preview;
Form9.Close;
end;

end.
