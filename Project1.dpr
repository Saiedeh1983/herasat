program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {DM: TDataModule},
  IranDate in 'IranDate.pas',
  Fsiconst in 'Fsiconst.pas',
  Strings in 'Strings.pas',
  Unit3 in 'Unit3.pas' {Q_Code: TQuickRep},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {Q_personal: TQuickRep},
  Unit8 in 'Unit8.pas' {Fo_Main},
  Unit9 in 'Unit9.pas' {Form9},
  Unit10 in 'Unit10.pas' {Q_groh: TQuickRep},
  Unit11 in 'Unit11.pas' {Form11},
  Unit12 in 'Unit12.pas' {Fo_P_New},
  Unit13 in 'Unit13.pas' {Fo_P_Ma},
  Unit14 in 'Unit14.pas' {Fo_P_old},
  Unit15 in 'Unit15.pas' {Q_new: TQuickRep},
  Unit16 in 'Unit16.pas' {Form16},
  Unit17 in 'Unit17.pas' {Q_mal: TQuickRep},
  Unit18 in 'Unit18.pas' {Form18},
  Unit19 in 'Unit19.pas' {Q_old: TQuickRep},
  Unit20 in 'Unit20.pas' {Form20},
  Unit21 in 'Unit21.pas' {Form21},
  Unit22 in 'Unit22.pas' {Fo_Msa},
  Unit23 in 'Unit23.pas' {Fo_Pass};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFo_P_old, Fo_P_old);
  Application.CreateForm(TFo_Msa, Fo_Msa);
  Application.CreateForm(TFo_Main, Fo_Main);
  Application.CreateForm(TFo_P_New, Fo_P_New);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TQ_Code, Q_Code);
  Application.CreateForm(TQ_personal, Q_personal);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TQ_groh, Q_groh);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TFo_P_Ma, Fo_P_Ma);
  Application.CreateForm(TQ_new, Q_new);
  Application.CreateForm(TForm16, Form16);
  Application.CreateForm(TQ_mal, Q_mal);
  Application.CreateForm(TForm18, Form18);
  Application.CreateForm(TQ_old, Q_old);
  Application.CreateForm(TForm20, Form20);
  Application.CreateForm(TForm21, Form21);
  Application.CreateForm(TFo_Pass, Fo_Pass);
  Application.Run;

  end.
