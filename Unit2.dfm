object DM: TDM
  OldCreateOrder = False
  Left = 178
  Top = 163
  Height = 240
  Width = 669
  object D_Groh: TDataSource
    DataSet = Groh
    Left = 24
    Top = 87
  end
  object D_Code: TDataSource
    DataSet = Code
    Left = 98
    Top = 88
  end
  object D_Pass: TDataSource
    DataSet = Pass
    Left = 172
    Top = 89
  end
  object D_Personal: TDataSource
    DataSet = Personal
    Left = 246
    Top = 89
  end
  object Groh: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'Herasat'
    IndexFieldNames = 'Code'
    TableName = 'Groh'
    Left = 24
    Top = 24
    object GrohCode: TIntegerField
      FieldName = 'Code'
    end
    object GrohName: TStringField
      FieldName = 'Name'
    end
    object GrohFname: TStringField
      FieldName = 'Fname'
      Size = 40
    end
    object GrohVahed: TStringField
      FieldName = 'Vahed'
      Size = 30
    end
    object GrohShakhe: TStringField
      FieldName = 'Shakhe'
      Size = 30
    end
    object GrohK_Time_M: TIntegerField
      FieldName = 'K_Time_M'
    end
    object GrohK_Time_H: TIntegerField
      FieldName = 'K_Time_H'
    end
    object GrohDate_day: TIntegerField
      FieldName = 'Date_day'
    end
    object GrohDate_month: TIntegerField
      FieldName = 'Date_month'
    end
    object GrohDate_year: TIntegerField
      FieldName = 'Date_year'
    end
    object GrohTime_M: TIntegerField
      FieldName = 'Time_M'
    end
    object GrohTime_h: TIntegerField
      FieldName = 'Time_h'
    end
    object GrohT_M: TStringField
      FieldName = 'T_M'
    end
    object GrohT_H: TStringField
      FieldName = 'T_H'
    end
    object GrohB_kart: TIntegerField
      FieldName = 'B_kart'
    end
    object GrohB_barge: TIntegerField
      FieldName = 'B_barge'
    end
    object GrohB_k_b: TIntegerField
      FieldName = 'B_k_b'
    end
  end
  object Code: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'Herasat'
    TableName = 'Code'
    Left = 98
    Top = 24
    object CodeCode: TIntegerField
      FieldName = 'Code'
    end
    object CodeName: TStringField
      FieldName = 'Name'
    end
    object CodeFname: TStringField
      FieldName = 'Fname'
      Size = 40
    end
    object CodeVahed: TStringField
      FieldName = 'Vahed'
      Size = 30
    end
    object CodeShakhe: TStringField
      FieldName = 'Shakhe'
      Size = 30
    end
  end
  object Pass: TTable
    Active = True
    DatabaseName = 'Herasat'
    TableName = 'Pass'
    Left = 172
    Top = 25
    object PassName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object PassPass: TStringField
      FieldName = 'Pass'
      Size = 30
    end
  end
  object Personal: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'Herasat'
    IndexFieldNames = 'Code'
    MasterFields = 'Code'
    MasterSource = D_Code
    TableName = 'Personal'
    Left = 246
    Top = 25
    object PersonalCode: TIntegerField
      FieldName = 'Code'
    end
    object PersonalTime_EX_M: TIntegerField
      FieldName = 'Time_EX_M'
    end
    object PersonalTime_EX_H: TIntegerField
      FieldName = 'Time_EX_H'
    end
    object PersonalTime_EN_M: TIntegerField
      FieldName = 'Time_EN_M'
    end
    object PersonalTime_EN_H: TIntegerField
      FieldName = 'Time_EN_H'
    end
    object PersonalJam_Times_Gh_M: TIntegerField
      FieldName = 'Jam_Times_Gh_M'
    end
    object PersonalJam_Times_Gh_H: TIntegerField
      FieldName = 'Jam_Times_Gh_H'
    end
    object PersonalKart: TStringField
      FieldName = 'Kart'
      Size = 25
    end
    object PersonalDate_day: TIntegerField
      FieldName = 'Date_day'
    end
    object PersonalDate_month: TIntegerField
      FieldName = 'Date_month'
    end
    object PersonalDate_year: TIntegerField
      FieldName = 'Date_year'
    end
    object PersonalT_M: TStringField
      FieldName = 'T_M'
      Size = 50
    end
    object PersonalT_H: TStringField
      FieldName = 'T_H'
      Size = 50
    end
  end
  object Database1: TDatabase
    AliasName = 'Herasat'
    Connected = True
    DatabaseName = 'Herasat'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME='
      'USER NAME='
      'ODBC DSN=Herasat'
      'OPEN MODE=READ/WRITE'
      'BATCH COUNT=200'
      'LANGDRIVER='
      'MAX ROWS=-1'
      'SCHEMA CACHE DIR='
      'SCHEMA CACHE SIZE=8'
      'SCHEMA CACHE TIME=-1'
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SQLQRYMODE='
      'ENABLE SCHEMA CACHE=FALSE'
      'ENABLE BCD=FALSE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'PASSWORD=214263sa')
    SessionName = 'Default'
    Left = 272
    Top = 152
  end
  object D_Car_ghadem: TDataSource
    DataSet = Car_ghadem
    Left = 321
    Top = 88
  end
  object D_Car_Mamol: TDataSource
    DataSet = Car_Mamol
    Left = 395
    Top = 91
  end
  object D_Car_New: TDataSource
    DataSet = Car_New
    Left = 469
    Top = 92
  end
  object Car_ghadem: TTable
    Active = True
    DatabaseName = 'Herasat'
    TableName = 'Car_ghadem'
    Left = 321
    Top = 25
    object Car_ghademCar_name: TStringField
      FieldName = 'Car_name'
      Size = 25
    end
    object Car_ghademName_ran: TStringField
      FieldName = 'Name_ran'
    end
    object Car_ghademFanme_ran: TStringField
      FieldName = 'Fanme_ran'
      Size = 30
    end
    object Car_ghademHamrah: TStringField
      FieldName = 'Hamrah'
      Size = 255
    end
    object Car_ghademTime_kh_H: TIntegerField
      FieldName = 'Time_kh_H'
    end
    object Car_ghademTime_kh_M: TIntegerField
      FieldName = 'Time_kh_M'
    end
    object Car_ghademTime_vo_H: TIntegerField
      FieldName = 'Time_vo_H'
    end
    object Car_ghademTime_vo_M: TIntegerField
      FieldName = 'Time_vo_M'
    end
    object Car_ghademTime_Kol_H: TIntegerField
      FieldName = 'Time_Kol_H'
    end
    object Car_ghademTime_Kol_M: TIntegerField
      FieldName = 'Time_Kol_M'
    end
    object Car_ghademDate_kh_day: TIntegerField
      FieldName = 'Date_kh_day'
    end
    object Car_ghademDate_kh_mah: TIntegerField
      FieldName = 'Date_kh_mah'
    end
    object Car_ghademDate_kh_yaer: TIntegerField
      FieldName = 'Date_kh_yaer'
    end
    object Car_ghademDate_vo_day: TIntegerField
      FieldName = 'Date_vo_day'
    end
    object Car_ghademDate_vo_mah: TIntegerField
      FieldName = 'Date_vo_mah'
    end
    object Car_ghademDate_vo_yaer: TIntegerField
      FieldName = 'Date_vo_yaer'
    end
    object Car_ghademDate_Kol_day: TIntegerField
      FieldName = 'Date_Kol_day'
    end
    object Car_ghademP_12345: TIntegerField
      FieldName = 'P_12345'
    end
    object Car_ghademP_SH_N: TStringField
      FieldName = 'P_SH_N'
      Size = 25
    end
  end
  object Car_Mamol: TTable
    Active = True
    DatabaseName = 'Herasat'
    TableName = 'Car_Mamol'
    Left = 395
    Top = 25
    object Car_MamolCar_name: TStringField
      FieldName = 'Car_name'
      Size = 25
    end
    object Car_MamolName_ran: TStringField
      FieldName = 'Name_ran'
    end
    object Car_MamolFanme_ran: TStringField
      FieldName = 'Fanme_ran'
      Size = 30
    end
    object Car_MamolHamrah: TStringField
      FieldName = 'Hamrah'
      Size = 255
    end
    object Car_MamolTime_kh_H: TIntegerField
      FieldName = 'Time_kh_H'
    end
    object Car_MamolTime_kh_M: TIntegerField
      FieldName = 'Time_kh_M'
    end
    object Car_MamolTime_vo_H: TIntegerField
      FieldName = 'Time_vo_H'
    end
    object Car_MamolTime_vo_M: TIntegerField
      FieldName = 'Time_vo_M'
    end
    object Car_MamolTime_Kol_H: TIntegerField
      FieldName = 'Time_Kol_H'
    end
    object Car_MamolTime_Kol_M: TIntegerField
      FieldName = 'Time_Kol_M'
    end
    object Car_MamolDate_kh_day: TIntegerField
      FieldName = 'Date_kh_day'
    end
    object Car_MamolDate_kh_mah: TIntegerField
      FieldName = 'Date_kh_mah'
    end
    object Car_MamolDate_kh_yaer: TIntegerField
      FieldName = 'Date_kh_yaer'
    end
    object Car_MamolDate_vo_day: TIntegerField
      FieldName = 'Date_vo_day'
    end
    object Car_MamolDate_vo_mah: TIntegerField
      FieldName = 'Date_vo_mah'
    end
    object Car_MamolDate_vo_yaer: TIntegerField
      FieldName = 'Date_vo_yaer'
    end
    object Car_MamolDate_Kol_day: TIntegerField
      FieldName = 'Date_Kol_day'
    end
    object Car_MamolP_12: TIntegerField
      FieldName = 'P_12'
    end
    object Car_MamolP_char: TStringField
      FieldName = 'P_char'
      Size = 1
    end
    object Car_MamolP_123: TIntegerField
      FieldName = 'P_123'
    end
    object Car_MamolP_SH_N: TStringField
      FieldName = 'P_SH_N'
      Size = 25
    end
  end
  object Car_New: TTable
    Active = True
    DatabaseName = 'Herasat'
    TableName = 'Car_New'
    Left = 469
    Top = 24
    object Car_NewCar_name: TStringField
      FieldName = 'Car_name'
      Size = 25
    end
    object Car_NewName_ran: TStringField
      FieldName = 'Name_ran'
    end
    object Car_NewFanme_ran: TStringField
      FieldName = 'Fanme_ran'
      Size = 30
    end
    object Car_NewHamrah: TStringField
      FieldName = 'Hamrah'
      Size = 255
    end
    object Car_NewTime_kh_H: TIntegerField
      FieldName = 'Time_kh_H'
    end
    object Car_NewTime_kh_M: TIntegerField
      FieldName = 'Time_kh_M'
    end
    object Car_NewTime_vo_H: TIntegerField
      FieldName = 'Time_vo_H'
    end
    object Car_NewTime_vo_M: TIntegerField
      FieldName = 'Time_vo_M'
    end
    object Car_NewTime_Kol_H: TIntegerField
      FieldName = 'Time_Kol_H'
    end
    object Car_NewTime_Kol_M: TIntegerField
      FieldName = 'Time_Kol_M'
    end
    object Car_NewDate_kh_day: TIntegerField
      FieldName = 'Date_kh_day'
    end
    object Car_NewDate_kh_mah: TIntegerField
      FieldName = 'Date_kh_mah'
    end
    object Car_NewDate_kh_yaer: TIntegerField
      FieldName = 'Date_kh_yaer'
    end
    object Car_NewDate_vo_day: TIntegerField
      FieldName = 'Date_vo_day'
    end
    object Car_NewDate_vo_mah: TIntegerField
      FieldName = 'Date_vo_mah'
    end
    object Car_NewDate_vo_yaer: TIntegerField
      FieldName = 'Date_vo_yaer'
    end
    object Car_NewDate_Kol_day: TIntegerField
      FieldName = 'Date_Kol_day'
    end
    object Car_NewP_12: TIntegerField
      FieldName = 'P_12'
    end
    object Car_NewP_char: TStringField
      FieldName = 'P_char'
      Size = 1
    end
    object Car_NewP_123: TIntegerField
      FieldName = 'P_123'
    end
    object Car_NewP_SH_12: TIntegerField
      FieldName = 'P_SH_12'
    end
  end
  object D_Msa: TDataSource
    DataSet = T_Msa
    Left = 544
    Top = 94
  end
  object T_Msa: TTable
    Active = True
    DatabaseName = 'Herasat'
    TableName = 'A_Msa'
    Left = 544
    Top = 27
    object T_Msacode: TIntegerField
      FieldName = 'code'
    end
    object T_Msadecode: TIntegerField
      FieldName = 'decode'
    end
  end
end
