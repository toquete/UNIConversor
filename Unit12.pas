unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, DBCtrls, ExtCtrls, ADODB;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    Label6: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    Query1: TADOQuery;
    Query2: TADOQuery;
    Query3: TADOQuery;
    Query4: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
form1.show;
form12.Close;
end;

procedure TForm12.DBLookupComboBox1Click(Sender: TObject);
var
x:integer;
begin

 // showmessage('aqui1');
  query2.Active:=false;
  query2.close;
  query2.SQL.clear;
 // showmessage('aqui2');
  query2.sql.add('select codigo_categoria from categoria where nome like ''%'+ dblookupcombobox1.Text +'%'';');
  query2.Open;
  query2.active:=true;
  query2.First;
  label6.Caption := (query2.fieldbyname('codigo_categoria').asstring);

  x:=strtoint(label6.Caption);

 // showmessage('aqui3');
  query3.Active:=false;
  query3.close;
  query3.SQL.clear;
 // showmessage('aqui4');
  query3.sql.add('select distinct entrada from formula where codcategoria= '+''''+ inttostr(x) +''''+';');
//  showmessage('aqui5');
  query3.Open;
  query3.active:=true;
  combobox1.clear;
  query3.First;
  while not query3.Eof do
    begin
       combobox1.Items.add(query3.fieldbyname('entrada').asstring);
       query3.Next;
    end;

  query4.Active:=false;
  query4.close;
  query4.SQL.clear;
  query4.sql.add('select distinct saida from formula where codcategoria='+''''+ inttostr(x) +''''+';');
  query4.Open;
  query4.active:=true;
  combobox2.clear;
  query4.First;
  while not query4.Eof do
    begin
       combobox2.Items.add(query4.fieldbyname('saida').asstring);
       query4.Next;
    end;

end;

procedure TForm12.Button3Click(Sender: TObject);
begin
ComboBox1.clear;
combobox2.Clear;
DBLookupComboBox1.KeyValue:= '';
end;

procedure TForm12.ComboBox2Change(Sender: TObject);
begin

if combobox1.text='Metro Quadrado (m²)' then
  begin
    if combobox2.text='Metro Quadrado (m²)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Centímetro Quadrado (cm²)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\1.bmp');
    if combobox2.text='Quilômetro Quadrado (km²)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\2.bmp');
    if combobox2.text='Hectare (ha)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\99.bmp');
  end;

if combobox1.text='Centímetro Quadrado (cm²)' then
  begin
    if combobox2.text='Centímetro Quadrado (cm²)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Metro Quadrado (m²)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\3.bmp');
    if combobox2.text='Quilômetro Quadrado (km²)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\4.bmp');
    if combobox2.text='Hectare (ha)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\100.bmp');
  end;

if combobox1.text='Quilômetro Quadrado (km²)' then
  begin
    if combobox2.text='Quilômetro Quadrado (km²)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Metro Quadrado (m²)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\5.bmp');
    if combobox2.text='Centímetro Quadrado (cm²)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\6.bmp');
    if combobox2.text='Hectare (ha)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\101.bmp');
  end;

if combobox1.text='Hectare (ha)' then
  begin
    if combobox2.text='Hectare (ha)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Metro Quadrado (m²)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\102.bmp');
    if combobox2.text='Centímetro Quadrado (cm²)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\103.bmp');
    if combobox2.text='Quilômetro Quadrado (km²)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\104.bmp');
  end;

if combobox1.text='Metro (m)' then
  begin
    if combobox2.text='Metro (m)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Centímetro (cm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\7.bmp');
    if combobox2.text='Milímetro (mm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\8.bmp');
    if combobox2.text='Quilômetro (km)' then
      image1.picture.loadfromfile('C:\TCC\UNIConversor\img\9.bmp');
    if combobox2.Text='Milha (mi)' then
      image1.Picture.loadfromfile('C:\TCC\UNIConversor\img\10.bmp');
    if combobox2.Text='Polegada (in)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\11.bmp');
  end;

if combobox1.text='Centímetro (cm)' then
  begin
    if combobox2.text='Centímetro (cm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Metro (m)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\12.bmp');
    if combobox2.text='Milímetro (mm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\13.bmp');
    if combobox2.text='Quilômetro (km)' then
      image1.picture.loadfromfile('C:\TCC\UNIConversor\img\14.bmp');
    if combobox2.Text='Milha (mi)' then
      image1.Picture.loadfromfile('C:\TCC\UNIConversor\img\15.bmp');
    if combobox2.Text='Polegada (in)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\16.bmp');
  end;

if combobox1.text='Milímetro (mm)' then
  begin
    if combobox2.text='Milímetro (mm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Metro (m)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\17.bmp');
    if combobox2.text='Centímetro (cm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\18.bmp');
    if combobox2.text='Quilômetro (km)' then
      image1.picture.loadfromfile('C:\TCC\UNIConversor\img\19.bmp');
    if combobox2.Text='Milha (mi)' then
      image1.Picture.loadfromfile('C:\TCC\UNIConversor\img\20.bmp');
    if combobox2.Text='Polegada (in)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\21.bmp');
  end;

if combobox1.text='Quilômetro (km)' then
  begin
    if combobox2.text='Quilômetro (km)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Metro (m)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\22.bmp');
    if combobox2.text='Centímetro (cm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\23.bmp');
    if combobox2.text='Milímetro (mm)' then
      image1.picture.loadfromfile('C:\TCC\UNIConversor\img\24.bmp');
    if combobox2.Text='Milha (mi)' then
      image1.Picture.loadfromfile('C:\TCC\UNIConversor\img\25.bmp');
    if combobox2.Text='Polegada (in)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\26.bmp');
  end;

if combobox1.text='Milha (mi)' then
  begin
    if combobox2.text='Milha (mi)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Metro (m)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\27.bmp');
    if combobox2.text='Centímetro (cm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\28.bmp');
    if combobox2.text='Milímetro (mm)' then
      image1.picture.loadfromfile('C:\TCC\UNIConversor\img\29.bmp');
    if combobox2.Text='Quilômetro (km)' then
      image1.Picture.loadfromfile('C:\TCC\UNIConversor\img\30.bmp');
    if combobox2.Text='Polegada (in)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\31.bmp');
  end;

if combobox1.text='Polegada (in)' then
  begin
    if combobox2.text='Polegada (in)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Metro (m)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\32.bmp');
    if combobox2.text='Centímetro (cm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\33.bmp');
    if combobox2.text='Milímetro (mm)' then
      image1.picture.loadfromfile('C:\TCC\UNIConversor\img\34.bmp');
    if combobox2.Text='Quilômetro (km)' then
      image1.Picture.loadfromfile('C:\TCC\UNIConversor\img\35.bmp');
    if combobox2.Text='Milha (mi)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\36.bmp');
  end;

if combobox1.Text='Joule por Segundo (J/s)' then
  begin
    if combobox2.text='Joule por Segundo (J/s)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Watt (W)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\37.bmp');
    if combobox2.text='Quilowatt (kW)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\38.bmp');
    if combobox2.Text='Megawatt (MW)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\39.bmp');
    if combobox2.Text='Cavalo-Vapor (hp)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\40.bmp');
  end;

if combobox1.Text='Watt (W)' then
  begin
    if combobox2.text='Watt (W)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Joule por Segundo (J/s)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\41.bmp');
    if combobox2.text='Quilowatt (kW)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\42.bmp');
    if combobox2.Text='Megawatt (MW)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\43.bmp');
    if combobox2.Text='Cavalo-Vapor (hp)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\44.bmp');
  end;

if combobox1.Text='Quilowatt (kW)' then
  begin
    if combobox2.text='Quilowatt (kW)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Joule por Segundo (J/s)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\45.bmp');
    if combobox2.text='Watt (W)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\46.bmp');
    if combobox2.Text='Megawatt (MW)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\47.bmp');
    if combobox2.Text='Cavalo-Vapor (hp)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\48.bmp');
  end;

if combobox1.Text='Megawatt (MW)' then
  begin
    if combobox2.text='Megawatt (MW)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Joule por Segundo (J/s)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\49.bmp');
    if combobox2.text='Watt (W)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\50.bmp');
    if combobox2.Text='Quilowatt (kW)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\51.bmp');
    if combobox2.Text='Cavalo-Vapor (hp)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\52.bmp');
  end;

if combobox1.Text='Cavalo-Vapor (hp)' then
  begin
    if combobox2.text='Cavalo-Vapor (hp)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.text='Joule por Segundo (J/s)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\53.bmp');
    if combobox2.text='Watt (W)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\54.bmp');
    if combobox2.Text='Quilowatt (kW)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\55.bmp');
    if combobox2.Text='Megawatt (MW)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\56.bmp');
  end;

if combobox1.Text='Miligrama (mg)' then
  begin
    if combobox2.Text='Miligrama (mg)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Grama (g)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\57.bmp');
    if combobox2.text='Quilograma (kg)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\58.bmp');
    if combobox2.Text='Tonelada (t)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\59.bmp');
  end;

if combobox1.Text='Grama (g)' then
  begin
    if combobox2.Text='Grama (g)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Miligrama (mg)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\60.bmp');
    if combobox2.text='Quilograma (kg)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\61.bmp');
    if combobox2.Text='Tonelada (t)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\62.bmp');
  end;

if combobox1.Text='Quilograma (kg)' then
  begin
    if combobox2.Text='Quilograma (kg)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Miligrama (mg)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\63.bmp');
    if combobox2.text='Grama (g)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\64.bmp');
    if combobox2.Text='Tonelada (t)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\65.bmp');
  end;

if combobox1.Text='Tonelada (t)' then
  begin
    if combobox2.Text='Tonelada (t)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Miligrama (mg)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\66.bmp');
    if combobox2.text='Grama (g)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\67.bmp');
    if combobox2.Text='Quilograma (kg)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\68.bmp');
  end;

if combobox1.Text='Atmosfera (atm)' then
  begin
    if combobox2.Text='Atmosfera (atm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Pascal (Pa)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\69.bmp');
    if combobox2.text='Bar (bar)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\70.bmp');
  end;

if combobox1.Text='Atmosfera (atm)' then
  begin
    if combobox2.Text='Atmosfera (atm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Pascal (Pa)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\69.bmp');
    if combobox2.text='Bar (bar)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\70.bmp');
  end;

if combobox1.Text='Pascal (Pa)' then
  begin
    if combobox2.Text='Pascal (Pa)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Atmosfera (atm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\71.bmp');
    if combobox2.text='Bar (bar)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\72.bmp');
  end;

if combobox1.Text='Bar (bar)' then
  begin
    if combobox2.Text='Bar (bar)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Atmosfera (atm)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\73.bmp');
    if combobox2.text='Pascal (Pa)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\74.bmp');
  end;

if combobox1.Text='Celsius (°C)' then
  begin
    if combobox2.Text='Celsius (°C)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Fahrenheit (°F)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\75.bmp');
    if combobox2.text='Kelvin (K)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\76.bmp');
  end;

if combobox1.Text='Fahrenheit (°F)' then
  begin
    if combobox2.Text='Fahrenheit (°F)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Celsius (°C)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\77.bmp');
    if combobox2.text='Kelvin (K)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\78.bmp');
  end;

if combobox1.Text='Kelvin (K)' then
  begin
    if combobox2.Text='Kelvin (K)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Celsius (°C)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\79.bmp');
    if combobox2.text='Fahrenheit (°F)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\80.bmp');
  end;

if combobox1.Text='Segundo (s)' then
  begin
    if combobox2.Text='Segundo (s)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Minuto (min)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\81.bmp');
    if combobox2.text='Hora (h)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\82.bmp');
  end;

if combobox1.Text='Minuto (min)' then
  begin
    if combobox2.Text='Minuto (min)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Segundo (s)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\83.bmp');
    if combobox2.text='Hora (h)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\84.bmp');
  end;

if combobox1.Text='Hora (h)' then
  begin
    if combobox2.Text='Hora (h)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Segundo (s)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\85.bmp');
    if combobox2.text='Minuto (min)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\86.bmp');
  end;

if combobox1.Text='Metro por Segundo (m/s)' then
  begin
    if combobox2.Text='Metro por Segundo (m/s)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Quilômetro por Hora (km/h)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\87.bmp');
    if combobox2.text='Milha por Hora (Mph)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\88.bmp');
  end;

if combobox1.Text='Quilômetro por Hora (km/h)' then
  begin
    if combobox2.Text='Quilômetro por Hora (km/h)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Metro por Segundo (m/s)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\89.bmp');
    if combobox2.text='Milha por Hora (Mph)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\90.bmp');
  end;

if combobox1.Text='Milha por Hora (Mph)' then
  begin
    if combobox2.Text='Milha por Hora (Mph)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Metro por Segundo (m/s)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\91.bmp');
    if combobox2.text='Quilômetro por Hora (km/h)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\92.bmp');
  end;

if combobox1.Text='Metro Cúbico (m³)' then
  begin
    if combobox2.Text='Metro Cúbico (m³)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Centímetro Cúbico (cm³)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\93.bmp');
    if combobox2.text='Litro (L)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\94.bmp');
  end;

if combobox1.Text='Centímetro Cúbico (cm³)' then
  begin
    if combobox2.Text='Centímetro Cúbico (cm³)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Metro Cúbico (m³)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\95.bmp');
    if combobox2.text='Litro (L)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\96.bmp');
  end;

if combobox1.Text='Litro (L)' then
  begin
    if combobox2.Text='Litro (L)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\erro.bmp');
    if combobox2.Text='Metro Cúbico (m³)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\97.bmp');
    if combobox2.text='Centímetro Cúbico (cm³)' then
      image1.Picture.LoadFromFile('C:\TCC\UNIConversor\img\98.bmp');
  end;

end;

end.
