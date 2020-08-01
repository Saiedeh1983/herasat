unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBCtrls, Mask, Buttons, ExtCtrls, DB,
  DBTables, jpeg;

type
  TForm5 = class(TForm)
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    Label25: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    SpeedButton10: TSpeedButton;
    Label26: TLabel;
    Label27: TLabel;
    SpeedButton11: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Label38: TLabel;
    Label39: TLabel;
    Saeed: TLabel;
    Mori: TLabel;
    SpeedButton27: TSpeedButton;
    Label47: TLabel;
    Label48: TLabel;
    SpeedButton28: TSpeedButton;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit18: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBGrid2: TDBGrid;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label40: TLabel;
    SpeedButton6: TSpeedButton;
    Label45: TLabel;
    SpeedButton26: TSpeedButton;
    Label10: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Timer1: TTimer;
    DataSource1: TDataSource;
    Query1: TQuery;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    sa: TLabel;
    mo: TLabel;
    Label4: TLabel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton15Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Fsiconst, IranDate, Strings, Unit1, Unit2, Unit3, Unit4, Unit6, Unit7,
  Unit8, Unit9;

{$R *.dfm}

procedure TForm5.FormShow(Sender: TObject);
var
  i:integer;
  s,s1,s2:String;
begin
        Form1.Caption:='  '+DateToFarsi(date)+'                                                            ...:::(( ãæÈÇíÜÜÜÜÜÜÜÜá ÇíÝÜÜÜÜÜÜÜÜÜÜá  )):::...'+'                                                                        '+DateToStr(date);
   i:=DayOfWeek(date);
   s:=DateToFarsi(date);
   s1:=copy(s,6,2);
   case StrToInt(s1) of   
     1:s2:='ÝÑæÑÏíä';
     2:s2:='ÇÑÏíÈåÔÊ';
     3:s2:='ÎÑÏÇÏ';
     4:s2:='ÊíÑ';
     5:s2:='ãÑÏÇÏ';
     6:s2:='ÔåÑíæÑ';
     7:s2:='ãåÑ';
     8:s2:='ÂÈÇä';
     9:s2:='ÂÐÑ';
     10:s2:='Ïí';
     11:s2:='Èåãä';
     12:s2:='ÇÓÝäÏ';
   end;
   case i of
      6:SpeedButton12.Caption:='ÌãÚå'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
      7:SpeedButton12.Caption:='ÔäÈå'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
      1:SpeedButton12.Caption:='íß ÔäÈå'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
      2:SpeedButton12.Caption:='Ïæ ÔäÈå'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
      3:SpeedButton12.Caption:='Óå ÔäÈå'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
      4:SpeedButton12.Caption:='åÇÑ ÔäÈå'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
      5:SpeedButton12.Caption:='äÌ ÔäÈå'+'  '+copy(s,9,2)+'  '+s2+'  '+copy(s,1,4);
   end;
end;


procedure TForm5.SpeedButton28Click(Sender: TObject);
begin
Form5.Close;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
SpeedButton13.Caption:=TimeToStr(time())
end;

procedure TForm5.Edit1Change(Sender: TObject);
begin
DBGrid1.DataSource.DataSet:=Form5.Query1;
Query1.Close;
Query1.SQL[2]:='where Code like ''%'+Edit1.Text+'%''';
Query1.Open;
end;

procedure TForm5.Edit2Change(Sender: TObject);
begin
DBGrid1.DataSource.DataSet:=Form5.Query1;
Query1.Close;
Query1.SQL[2]:='where Fname like ''%'+Edit2.Text+'%''';
Query1.Open;
end;

procedure TForm5.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
DBGrid1.DataSource.DataSet:=DM.Code;
if Edit4.Text='' then
begin
DM.Code.Filtered:=False;
dm.Code.Filter:='Vahed='+QuotedStr(edit3.Text);
DM.Code.Filtered:=True;
end else
begin
DM.Code.Filtered:=False;
dm.Code.Filter:='Vahed='+QuotedStr(edit3.Text)+'and Shakhe='+QuotedStr(edit4.Text);
DM.Code.Filtered:=True;
end;
end;
end;
procedure TForm5.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
DBGrid1.DataSource.DataSet:=DM.Code;
if Edit3.Text='' then
begin
DM.Code.Filtered:=False;
dm.Code.Filter:='Shakhe='+QuotedStr(edit4.Text);
DM.Code.Filtered:=True;
end else
begin
DM.Code.Filtered:=False;
dm.Code.Filter:='Shakhe='+QuotedStr(edit4.Text)+'and Vahed='+QuotedStr(edit3.Text);
DM.Code.Filtered:=True;
end;
end;
 end;
procedure TForm5.SpeedButton26Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
end;

procedure TForm5.SpeedButton6Click(Sender: TObject);
begin
Dm.Code.Filtered:=False;
Dm.Code.First
end;

procedure TForm5.Edit3Enter(Sender: TObject);
begin
DBGrid1.DataSource.DataSet:=DM.Code;
end;

procedure TForm5.Edit4Enter(Sender: TObject);
begin
DBGrid1.DataSource.DataSet:=DM.Code;
end;

procedure TForm5.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
DM.Code.FindKey([dbedit12.text]);
DBEdit7.SetFocus;
end;
end;

procedure TForm5.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
begin
if key=#13 then
begin
DM.Code.FindKey([dbedit13.text]);
DBEdit7.SetFocus;
end;
end;
end;

procedure TForm5.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
begin
if key=#13 then
begin
DM.Code.FindKey([dbedit14.text]);
DBEdit7.SetFocus;
end;
 end;
end;

procedure TForm5.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then DBEdit6.SetFocus;
end;

procedure TForm5.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then DBEdit9.SetFocus;
end;

procedure TForm5.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then DBEdit8.SetFocus;
end;

procedure TForm5.DBEdit8KeyPress(Sender: TObject; var Key: Char);
var
a,b,c,d,g,k,i,m,h:Integer;
begin
if key=#13 then
begin
a:=StrToInt(DBEdit6.Text);
b:=StrToInt(DBEdit7.Text);
c:=StrToInt(DBEdit8.Text);
d:=StrToInt(DBEdit9.Text);
g:=b*60+a;
k:=d*60+c;
i:=k-g;
if(i>=60) then
begin
m:=i mod 60;
h:=i div 60;
end else
begin
m:=i mod 60;
end;
DBEdit10.Text:=IntToStr(m);
DBEdit11.Text:=IntToStr(h);
DBComboBox1.SetFocus;
end;
end;

procedure TForm5.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit15.SetFocus;
end;

procedure TForm5.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit16.SetFocus;
end;

procedure TForm5.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  DM.Groh.Filtered:=False;
  dm.Groh.Filter:='Date_month='+QuotedStr(DBEdit16.Text)+'and Code='+QuotedStr(DBEdit12.Text);;
  DM.Groh.Filtered:=True;
DBEdit17.SetFocus;
end;
end;
procedure TForm5.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
 SpeedButton10Click(self);
end;

procedure TForm5.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
Edit12.SetFocus;
end;

procedure TForm5.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
if edit11.Text='' then
begin
  DM.Personal.Filtered:=False;
  DM.Personal.Filter:='Date_year='+QuotedStr(edit12.Text);
  DM.Personal.Filtered:=True;
end else
begin
  DM.Personal.Filtered:=False;
  DM.Personal.Filter:='Date_month='+QuotedStr(edit11.Text)+'and Date_year='+QuotedStr(edit12.Text);
  DM.Personal.Filtered:=True;
  end;
   end;
   end;

procedure TForm5.SpeedButton10Click(Sender: TObject);
label aaaa;
var
s,ss,www,ttt:string;
   i,j,n:Integer;
   ii,jj,nn:Integer;
   iii,jjj,nnn:Integer;
   iiii,jjjj,nnnn:Integer;
   rr:array[1..10]of Integer;
   ww:array[1..10]of Integer;
   sa3:array[1..10]of Integer;
   mo3:array[1..10]of Integer;
p,y,d,k,q,w,e,r,f,g,h,u,l,ff,vv:Integer;
bb1,bb2,cc1,cc2,dd1,dd2:Integer;
dd,hh,mmm,hhh:String;
sa1,sa2,mo1,mo2:String;
begin
If MessageDlg('ÂíÇ ÈÑÇí ÐÎíÑå ÇØáÇÚÇÊ ãØãÆä åÓÊíÏ¿',mtWarning,[mbYes,mbNo],0)=mrYes then
begin
p:=DM.GrohK_Time_M.AsInteger;
k:=DM.GrohK_Time_H.AsInteger;
if StrToInt(DBEdit7.Text)>23then
begin
MessageDlg('ÓÇÚÊ æÇÑÏ äíÓÊ',mterror,[mbok],0);
DBEdit7.SetFocus;
 goto aaaa;

end else
if StrToInt(DBEdit9.Text)>23then
begin
MessageDlg('ÓÇÚÊ æÇÑÏ äíÓÊ',mterror,[mbok],0);
DBEdit9.SetFocus;
 goto aaaa;

end else
if StrToInt(DBEdit6.Text)>59then
begin
MessageDlg('ÏÞíÞå æÇÑÏ äíÓÊ',mterror,[mbok],0);
DBEdit6.SetFocus;
 goto aaaa;

end else
if StrToInt(DBEdit8.Text)>59then
begin
MessageDlg('ÏÞíÞå æÇÑÏ äíÓÊ',mterror,[mbok],0);
DBEdit8.SetFocus;
 goto aaaa;

end else
if StrToInt(DBEdit15.Text)>31then
begin
MessageDlg('ÑæÒ æÇÑÏ äíÓÊ',mterror,[mbok],0);
DBEdit15.SetFocus;
 goto aaaa;

end else
if  StrToInt(DBEdit16.Text)>12 then
begin
MessageDlg('ãÇå æÇÑÏ äíÓÊ',mterror,[mbok],0);
DBEdit16.SetFocus;
goto aaaa;
end else
if  StrToInt(DBEdit17.Text)>86 then
begin
MessageDlg('ÓÇá æÇÑÏ äíÓÊ',mterror,[mbok],0);
DBEdit17.SetFocus;
goto aaaa;
end else
begin
DM.Personal.Post;
DM.Personal.Refresh;
y:=p+DM.PersonalJam_Times_Gh_M.AsInteger;
d:=k+DM.PersonalJam_Times_Gh_H.AsInteger;
q:=DM.GrohDate_month.AsInteger;
w:=StrToInt(DBEdit16.Text);
e:=DM.GrohDate_year.AsInteger;
r:=StrToInt(DBEdit17.Text);
ff:=StrToInt(DBEdit1.Text);
vv:=DM.GrohCode.AsInteger;
if(w>q)or(r>e) or (ff<>vv)then
begin
y:=StrToInt(DBEdit10.Text);
d:=StrToInt(DBEdit11.Text);;
DM.Groh.Insert;
DM.GrohTime_M.AsInteger:=y;
DM.GrohTime_h.AsInteger:=d;
DM.GrohCode.AsInteger:=StrToInt(DBEdit1.Text);
DM.GrohName.AsString:=DBEdit2.Text;
DM.GrohFname.AsString:=DBEdit3.Text;
DM.GrohVahed.AsString:=DBEdit4.Text;
DM.GrohShakhe.AsString:=DBEdit5.Text;
DM.GrohDate_day.AsString:=DBEdit15.Text;
DM.GrohDate_month.AsString:=DBEdit16.Text;
DM.GrohDate_year.AsString:=DBEdit17.Text;
DM.Groh.Post;
DM.Groh.Refresh;
end else
begin
DM.Groh.Edit;
DM.GrohTime_M.AsInteger:=y;
DM.GrohTime_h.AsInteger:=d;
DM.GrohCode.AsInteger:=StrToInt(DBEdit1.Text);
DM.GrohName.AsString:=DBEdit2.Text;
DM.GrohFname.AsString:=DBEdit3.Text;
DM.GrohVahed.AsString:=DBEdit4.Text;
DM.GrohShakhe.AsString:=DBEdit5.Text;
DM.GrohShakhe.AsString:=DBEdit5.Text;
DM.GrohDate_day.AsString:=DBEdit15.Text;
DM.GrohDate_month.AsString:=DBEdit16.Text;
DM.GrohDate_year.AsString:=DBEdit17.Text;
DM.Groh.Post;
DM.Groh.Refresh;
end;
begin
f:=DM.GrohTime_M.AsInteger;
g:=DM.GrohTime_h.AsInteger;
h:=g*60+f;
u:=h mod 60;
l:=h div 60;
DM.Groh.Edit;
DM.GrohK_Time_M.AsInteger:=u;
DM.GrohK_Time_H.AsInteger:=l;
DM.Groh.Post;
DM.Groh.Refresh;
end;
begin
dd:=DM.GrohK_Time_M.AsString;
hh:=DM.GrohK_Time_H.AsString;
    Saeed.Caption:='';
   s:='';
   i:=0;n:=0;
   n:=StrToInt(dd);
   while n>0 do
    begin
     i:=i+1;
     rr[i]:=n mod 10;
     n:=n div 10;
    end;
     for j:=1 to i do
      if j mod 3=0 then
       begin
         Saeed.Caption:=inttostr(rr[j])+Saeed.Caption;
         if i<>j then
          Saeed.Caption:=','+Saeed.Caption;
        end
       else
         Saeed.Caption:=inttostr(rr[j])+Saeed.Caption;
 Saeed.Caption:=WNToA(strtoint(dd))+'ÏÞíÞå';
    end;
    begin
    mori.Caption:='';
   ss:='';
   ii:=0;nn:=0;
   nn:=StrToInt(hh);
   while nn>0 do
    begin
     ii:=ii+1;
     ww[ii]:=nn mod 10;
     nn:=nn div 10;
    end;
     for jj:=1 to ii do
      if jj mod 3=0 then
       begin
         Mori.Caption:=inttostr(ww[jj])+Mori.Caption;
         if ii<>jj then
          Mori.Caption:=','+Mori.Caption;
        end
       else
         Mori.Caption:=inttostr(ww[jj])+Mori.Caption;
  Mori.Caption:=WNToA(strtoint(hh))+'ÓÇÚÊ'
    end;
    begin
    mmm:=Saeed.Caption;
    hhh:=Mori.Caption;
    DM.Groh.Edit;
    dm.GrohT_M.AsString:=mmm;
    DM.GrohT_H.AsString:=hhh;
    DM.Groh.Post;
    DM.Groh.Refresh;
end;
  end;
/////////////////////////////////////////////////////////
  begin
sa1:=DBEdit10.Text;
mo1:=DBEdit11.Text;
    sa.Caption:='';
   www:='';
   iii:=0;nnn:=0;
   nnnn:=StrToInt(sa1);
   while nnn>0 do
    begin
     iii:=iii+1;
     sa3[iii]:=nnn mod 10;
     nnn:=nnn div 10;
    end;
     for jjj:=1 to iii do
      if jjj mod 3=0 then
       begin
         Sa.Caption:=inttostr(sa3[jjj])+Sa.Caption;
         if iii<>jjj then
          Sa.Caption:=','+Sa.Caption;
        end
       else
         Sa.Caption:=inttostr(sa3[jjj])+Sa.Caption;
 Sa.Caption:=WNToA(strtoint(sa1))+'ÏÞíÞå';
    end;
    begin
    mo.Caption:='';
   ttt:='';
   iiii:=0;nnnn:=0;
   nnnn:=StrToInt(mo1);
   while nnnn>0 do
    begin
     iiii:=iiii+1;
     mo3[iiii]:=nnnn mod 10;
     nnnn:=nnnn div 10;
    end;
     for jjjj:=1 to iiii do
      if jjjj mod 3=0 then
       begin
         Mo.Caption:=inttostr(mo3[jjjj])+Mo.Caption;
         if iiii<>jjjj then
          Mo.Caption:=','+Mo.Caption;
        end
       else
         Mo.Caption:=inttostr(mo3[jjjj])+Mo.Caption;
  Mo.Caption:=WNToA(strtoint(mo1))+'ÓÇÚÊ'
    end;
    begin
    sa2:=Sa.Caption;
    mo2:=Mo.Caption;
    DM.Personal.Edit;
    dm.PersonalT_M.AsString:=sa2;
    DM.PersonalT_H.AsString:=mo2;
    DM.Personal.Post;
    DM.Personal.Refresh;
end;
  end;
  begin
  bb1:=DM.GrohB_k_b.AsInteger;
    cc1:=DM.GrohB_kart.AsInteger;
      dd1:=DM.GrohB_barge.AsInteger;
  DM.Groh.Edit;
 if DBComboBox1.ItemIndex=0 then
 begin
   bb2:=bb1+1;
   DM.GrohB_k_b.AsInteger:=bb2;
   DM.Groh.Post;
   DM.Groh.Refresh;
 end else
if DBComboBox1.ItemIndex=1 then
 begin
   cc2:=cc1+1;
   DM.GrohB_kart.AsInteger:=cc2;
   DM.Groh.Post;
   DM.Groh.Refresh;
 end else
if DBComboBox1.ItemIndex=2 then
 begin
   dd2:=dd1+1;
   DM.GrohB_barge.AsInteger:=dd2;
   DM.Groh.Post;
   DM.Groh.Refresh;
end;
end;
aaaa:
end;
procedure TForm5.SpeedButton11Click(Sender: TObject);
begin
SpeedButton10.Enabled:=True;
DM.Personal.Insert;
DBEdit7.SetFocus;
end;

procedure TForm5.SpeedButton27Click(Sender: TObject);
var
a,o,d,f,g,h,p,k,l:Integer;
s,ss:string;
   i,j,n:Integer;
   ii,jj,nn:Integer;
   rr:array[1..10]of Integer;
   ww:array[1..10]of Integer;
dd,hh,mmm,hhh:String;
bb1,bb2,cc1,cc2,dd1,dd2:Integer;
begin
If MessageDlg('ÂíÇ ÈÑÇí ÍÜÐÝ ÇØáÇÚÇÊ ãØãÆä åÓÊíÏ¿',mtWarning,[mbYes,mbNo],0)=mrYes then
begin
a:=StrToInt(DBEdit10.Text);
o:=StrToInt(DBEdit11.Text);
d:=o*60+a;
DM.Groh.Filtered:=False;
dm.Groh.Filter:='Date_month='+QuotedStr(DBEdit16.Text)+'and Code='+QuotedStr(DBEdit12.Text);;
DM.Groh.Filtered:=True;
f:=dm.GrohK_Time_M.AsInteger;
g:=dm.GrohK_Time_H.AsInteger;
h:=g*60+f;
p:=h-d;
k:=p mod 60;
l:=p div 60;
DM.Groh.Edit;
DM.GrohK_Time_M.AsInteger:=k;
DM.GrohK_Time_H.AsInteger:=l;
DM.Groh.Post;
DM.Groh.Refresh;
 begin
  bb1:=DM.GrohB_k_b.AsInteger;
    cc1:=DM.GrohB_kart.AsInteger;
      dd1:=DM.GrohB_barge.AsInteger;
DM.Groh.Edit;
if (DBEdit18.Text='ÈÏæä ˜ÇÑÊ æ ÈÏæä ÈÑå')then
begin
bb2:=bb1-1;
DM.GrohB_k_b.AsInteger:=bb2;
end else
if (DBEdit18.Text='ÈÜÜÜÜÜÜÜÜÏæä ˜ÜÜÜÜÜÜÜÇÑÊ')then
begin
cc2:=cc1-1;
DM.GrohB_kart.AsInteger:=cc2;
end else
if (DBEdit18.Text='ÈÜÜÜÜÜÜÜÜÏæä ÈÑÜÜÜÜÜÜÜÜå')then
begin
dd2:=dd1-1;
DM.GrohB_barge.AsInteger:=dd2;
end;
begin
DM.Groh.Post;
DM.Groh.Refresh;
end;
//.................................
dd:=DM.GrohK_Time_M.AsString;
hh:=DM.GrohK_Time_H.AsString;
    Saeed.Caption:='';
   s:='';
   i:=0;n:=0;
   n:=StrToInt(dd);
   while n>0 do
    begin
     i:=i+1;
     rr[i]:=n mod 10;
     n:=n div 10;
    end;
     for j:=1 to i do
      if j mod 3=0 then
       begin
         Saeed.Caption:=inttostr(rr[j])+Saeed.Caption;
         if i<>j then
          Saeed.Caption:=','+Saeed.Caption;
        end
       else
         Saeed.Caption:=inttostr(rr[j])+Saeed.Caption;
 Saeed.Caption:=WNToA(strtoint(dd))+'ÏÞíÞå';
    begin
    mori.Caption:='';
   ss:='';
   ii:=0;nn:=0;
   nn:=StrToInt(hh);
   while nn>0 do
    begin
     ii:=ii+1;
     ww[ii]:=nn mod 10;
     nn:=nn div 10;
    end;
     for jj:=1 to ii do
      if jj mod 3=0 then
       begin
         Mori.Caption:=inttostr(ww[jj])+Mori.Caption;
         if ii<>jj then
          Mori.Caption:=','+Mori.Caption;
        end
       else
         Mori.Caption:=inttostr(ww[jj])+Mori.Caption;
  Mori.Caption:=WNToA(strtoint(hh))+'ÓÇÚÊ'
    end;
    begin
    mmm:=Saeed.Caption;
    hhh:=Mori.Caption;
    DM.Groh.Edit;
    dm.GrohT_M.AsString:=mmm;
    DM.GrohT_H.AsString:=hhh;
    DM.Groh.Post;
    DM.Groh.Refresh;
end;
DM.Personal.Delete;
DM.Personal.Refresh;


if(DM.GrohK_Time_M.AsInteger=0)and(DM.GrohK_Time_H.AsInteger=0)and(DM.GrohB_k_b.AsInteger=0)and(DM.GrohB_barge.AsInteger=0)and(DM.GrohB_kart.AsInteger=0)then
begin
DM.Groh.Delete;
DM.Groh.Refresh;
end;
end;
end;
end;

procedure TForm5.SpeedButton14Click(Sender: TObject);
begin
SpeedButton10.Enabled:=False;
DM.Personal.Edit;
DM.Personal.Refresh;
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
Dm.Personal.Filtered:=False;
Dm.Personal.First
end;

procedure TForm5.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton10Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton27Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;

procedure TForm5.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton10Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton27Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;


procedure TForm5.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton10Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton27Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;


procedure TForm5.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton10Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton27Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;


procedure TForm5.DBComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton10Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton27Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;


procedure TForm5.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton10Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton27Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;


procedure TForm5.DBEdit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton10Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton27Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;


procedure TForm5.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F5 then
begin
SpeedButton10Click(Self);
end;
if key=VK_F7 then
begin
SpeedButton27Click(Self);
end;
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;


procedure TForm5.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;


procedure TForm5.SpeedButton15Click(Sender: TObject);
begin
Form9.ShowModal;
end;

procedure TForm5.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;

procedure TForm5.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;

procedure TForm5.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;

procedure TForm5.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;

procedure TForm5.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;

procedure TForm5.Edit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;

procedure TForm5.Edit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;

procedure TForm5.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F6 then
begin
SpeedButton11Click(Self);
end;
if key=VK_F8 then
begin
Form5.Close;
end;
end;

end.
