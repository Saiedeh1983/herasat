unit Unit2;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM = class(TDataModule)
    D_Groh: TDataSource;
    D_Code: TDataSource;
    D_Pass: TDataSource;
    D_Personal: TDataSource;
    Groh: TTable;
    Code: TTable;
    Pass: TTable;
    Personal: TTable;
    Database1: TDatabase;
    PassName: TStringField;
    PassPass: TStringField;
    D_Car_ghadem: TDataSource;
    D_Car_Mamol: TDataSource;
    D_Car_New: TDataSource;
    Car_ghadem: TTable;
    Car_Mamol: TTable;
    Car_New: TTable;
    D_Msa: TDataSource;
    T_Msa: TTable;
    T_Msacode: TIntegerField;
    T_Msadecode: TIntegerField;
    GrohCode: TIntegerField;
    GrohName: TStringField;
    GrohFname: TStringField;
    GrohVahed: TStringField;
    GrohShakhe: TStringField;
    GrohK_Time_M: TIntegerField;
    GrohK_Time_H: TIntegerField;
    GrohDate_day: TIntegerField;
    GrohDate_month: TIntegerField;
    GrohDate_year: TIntegerField;
    GrohTime_M: TIntegerField;
    GrohTime_h: TIntegerField;
    GrohT_M: TStringField;
    GrohT_H: TStringField;
    GrohB_kart: TIntegerField;
    GrohB_barge: TIntegerField;
    GrohB_k_b: TIntegerField;
    CodeCode: TIntegerField;
    CodeName: TStringField;
    CodeFname: TStringField;
    CodeVahed: TStringField;
    CodeShakhe: TStringField;
    PersonalCode: TIntegerField;
    PersonalTime_EX_M: TIntegerField;
    PersonalTime_EX_H: TIntegerField;
    PersonalTime_EN_M: TIntegerField;
    PersonalTime_EN_H: TIntegerField;
    PersonalJam_Times_Gh_M: TIntegerField;
    PersonalJam_Times_Gh_H: TIntegerField;
    PersonalKart: TStringField;
    PersonalDate_day: TIntegerField;
    PersonalDate_month: TIntegerField;
    PersonalDate_year: TIntegerField;
    PersonalT_M: TStringField;
    PersonalT_H: TStringField;
    Car_ghademCar_name: TStringField;
    Car_ghademName_ran: TStringField;
    Car_ghademFanme_ran: TStringField;
    Car_ghademHamrah: TStringField;
    Car_ghademTime_kh_H: TIntegerField;
    Car_ghademTime_kh_M: TIntegerField;
    Car_ghademTime_vo_H: TIntegerField;
    Car_ghademTime_vo_M: TIntegerField;
    Car_ghademTime_Kol_H: TIntegerField;
    Car_ghademTime_Kol_M: TIntegerField;
    Car_ghademDate_kh_day: TIntegerField;
    Car_ghademDate_kh_mah: TIntegerField;
    Car_ghademDate_kh_yaer: TIntegerField;
    Car_ghademDate_vo_day: TIntegerField;
    Car_ghademDate_vo_mah: TIntegerField;
    Car_ghademDate_vo_yaer: TIntegerField;
    Car_ghademDate_Kol_day: TIntegerField;
    Car_ghademP_12345: TIntegerField;
    Car_ghademP_SH_N: TStringField;
    Car_MamolCar_name: TStringField;
    Car_MamolName_ran: TStringField;
    Car_MamolFanme_ran: TStringField;
    Car_MamolHamrah: TStringField;
    Car_MamolTime_kh_H: TIntegerField;
    Car_MamolTime_kh_M: TIntegerField;
    Car_MamolTime_vo_H: TIntegerField;
    Car_MamolTime_vo_M: TIntegerField;
    Car_MamolTime_Kol_H: TIntegerField;
    Car_MamolTime_Kol_M: TIntegerField;
    Car_MamolDate_kh_day: TIntegerField;
    Car_MamolDate_kh_mah: TIntegerField;
    Car_MamolDate_kh_yaer: TIntegerField;
    Car_MamolDate_vo_day: TIntegerField;
    Car_MamolDate_vo_mah: TIntegerField;
    Car_MamolDate_vo_yaer: TIntegerField;
    Car_MamolDate_Kol_day: TIntegerField;
    Car_MamolP_12: TIntegerField;
    Car_MamolP_char: TStringField;
    Car_MamolP_123: TIntegerField;
    Car_MamolP_SH_N: TStringField;
    Car_NewCar_name: TStringField;
    Car_NewName_ran: TStringField;
    Car_NewFanme_ran: TStringField;
    Car_NewHamrah: TStringField;
    Car_NewTime_kh_H: TIntegerField;
    Car_NewTime_kh_M: TIntegerField;
    Car_NewTime_vo_H: TIntegerField;
    Car_NewTime_vo_M: TIntegerField;
    Car_NewTime_Kol_H: TIntegerField;
    Car_NewTime_Kol_M: TIntegerField;
    Car_NewDate_kh_day: TIntegerField;
    Car_NewDate_kh_mah: TIntegerField;
    Car_NewDate_kh_yaer: TIntegerField;
    Car_NewDate_vo_day: TIntegerField;
    Car_NewDate_vo_mah: TIntegerField;
    Car_NewDate_vo_yaer: TIntegerField;
    Car_NewDate_Kol_day: TIntegerField;
    Car_NewP_12: TIntegerField;
    Car_NewP_char: TStringField;
    Car_NewP_123: TIntegerField;
    Car_NewP_SH_12: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses IranDate, Unit1;

{$R *.dfm}

end.
