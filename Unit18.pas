unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm18 = class(TForm)
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
  Form18: TForm18;

implementation

uses Fsiconst, IranDate, Strings, Unit1, Unit10, Unit11, Unit12, Unit13,
  Unit14, Unit15, Unit16, Unit17, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7,
  Unit8, Unit9;

{$R *.dfm}

procedure TForm18.SpeedButton9Click(Sender: TObject);
begin
 if FontDialog1.Execute then
Q_mal.QRLabel4.Font := FontDialog1.Font;
Q_mal.QRLabel4.Caption:=Edit1.Text;
Q_mal.QRLabel3.Caption:=Fo_P_Ma.SpeedButton12.Caption;
Q_mal.QRLabel2.Caption:=Fo_P_Ma.SpeedButton13.Caption;
Q_mal.Preview;
Form18.Close;
end;

end.
