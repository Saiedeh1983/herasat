unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls;

type
  TFo_Main = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N8: TMenuItem;
    N18: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    Image1: TImage;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fo_Main: TFo_Main;

implementation

uses Fsiconst, IranDate, Strings, Unit1, Unit10, Unit11, Unit2, Unit3,
  Unit4, Unit5, Unit6, Unit7, Unit9, Unit12, Unit13, Unit14, Unit15, Unit16,
  Unit17, Unit18, Unit19, Unit20, Unit21, Unit22, Unit23;

{$R *.dfm}

procedure TFo_Main.N3Click(Sender: TObject);
begin
Form1.ShowModal;
end;

procedure TFo_Main.N4Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TFo_Main.N7Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TFo_Main.N10Click(Sender: TObject);
begin
Fo_Msa.Close;
Fo_Pass.Close;
Fo_Main.Close;

end;

procedure TFo_Main.N15Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TFo_Main.N16Click(Sender: TObject);
begin
Form1.ShowModal;
end;

procedure TFo_Main.N19Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TFo_Main.N14Click(Sender: TObject);
begin
Fo_Main.Close;
end;

procedure TFo_Main.N21Click(Sender: TObject);
begin
Fo_P_New.ShowModal;
end;

procedure TFo_Main.N23Click(Sender: TObject);
begin
Fo_P_Ma.ShowModal;
end;

procedure TFo_Main.N22Click(Sender: TObject);
begin
Fo_P_old.ShowModal;
end;

procedure TFo_Main.N8Click(Sender: TObject);
begin
Fo_P_New.ShowModal;
end;

procedure TFo_Main.N18Click(Sender: TObject);
begin
Fo_P_Ma.ShowModal;
end;

procedure TFo_Main.N24Click(Sender: TObject);
begin
Fo_P_old.ShowModal;
end;

procedure TFo_Main.N26Click(Sender: TObject);
begin
Form21.ShowModal;
end;

procedure TFo_Main.FormCreate(Sender: TObject);
begin
Windows.ActivateKeyboardLayout(HKL_NEXT,KLF_ACTIVATE);
end;

procedure TFo_Main.N28Click(Sender: TObject);
begin

   If MessageDlg(' E:\Herasat ¬Ì« „«Ì· »Â  ÂÌÂ «ÿ·«⁄«  Å‘ Ì»«‰ Â” Ìœø „”Ì— ',mtInformation,[mbYes,mbNo],0)=mrYes then
    begin
     MkDir('E:\Herasat');
     DM.Database1.Connected:=False;
     CopyFile('C:\Program Files\Zahir\Herasat\Herasat.mdb','E:\Herasat\Herasat.mdb',false);
     DM.Database1.Connected:=True;
     DM.Groh.Active:=True;
     DM.Code.Active:=True;
     DM.Pass.Active:=True;
     DM.Personal.Active:=True;
     DM.Car_ghadem.Active:=True;
     DM.Car_Mamol.Active:=True;
     DM.Car_New.Active:=True;
     DM.T_Msa.Active:=True;
    end;
end;

procedure TFo_Main.N29Click(Sender: TObject);
begin
 If MessageDlg('¬Ì« »—«Ì «‰ ﬁ«· «ÿ·«⁄«  »Â »—‰«„Â „ÿ„∆‰ Â” Ìœø',mtInformation,[mbYes,mbNo],0)=mrYes then
    begin
     DM.Database1.Connected:=False;
     CopyFile('E:\Herasat\Herasat.mdb','C:\Program Files\Zahir\Herasat\Herasat.mdb',false);
     DM.Database1.Connected:=True;
     DM.Groh.Active:=True;
     DM.Code.Active:=True;
     DM.Pass.Active:=True;
     DM.Personal.Active:=True;
     DM.Car_ghadem.Active:=True;
     DM.Car_Mamol.Active:=True;
     DM.Car_New.Active:=True;
     DM.T_Msa.Active:=True;
   end;

end;

end.
 