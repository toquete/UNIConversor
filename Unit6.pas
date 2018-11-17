unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm6 = class(TForm)
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
form2.show;
form6.Close;
end;

procedure TForm6.Button2Click(Sender: TObject);
var
n,res:real;
begin
n:=strtofloat(Edit1.text);
res:=0;

if combobox1.text='Joule por Segundo(J/s)' then
  begin
  if combobox2.text='Joule por Segundo(J/s)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Watt(W)' then
      res:=n
    else
    if combobox2.text='Quilowatt(kW)' then
      res:=n*(0.001)
    else
    if combobox2.text='Megawatt(MW)' then
      res:=n*(0.000001)
    else
    if combobox2.Text='Cavalo-Vapor(hp)' then
      res:=n*(0.001341)
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Watt(W)' then
  begin
  if combobox2.text='Watt(W)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.text='Joule por Segundo(J/s)' then
      res:=n
    else
    if combobox2.Text='Quilowatt(kW)' then
      res:=n*(0.001)
    else
    if combobox2.text='Megawatt(MW)' then
      res:=n*(0.000001)
    else
    if combobox2.Text='Cavalo-Vapor(hp)' then
      res:=n*(0.001341)
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Quilowatt(kW)' then
  begin
  if combobox2.text='Quilowatt(kW)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.text='Joule por Segundo(J/s)' then
      res:=n*(1000)
    else
    if combobox2.Text='Watt(W)' then
      res:=n*(1000)
    else
    if combobox2.text='Megawatt(MW)' then
      res:=n*(0.000001)
    else
    if combobox2.Text='Cavalo-Vapor(hp)' then
      res:=n*(1.341022)
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Megawatt(MW)' then
  begin
  if combobox2.text='Megawatt(MW)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.text='Joule por Segundo(J/s)' then
      res:=n*(1000000)
    else
    if combobox2.Text='Watt(W)' then
      res:=n*(1000000)
    else
    if combobox2.text='Quilowatt(kW)' then
      res:=n*(1000)
    else
    if combobox2.Text='Cavalo-Vapor(hp)' then
      res:=n*(1341.02209)
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Cavalo-Vapor(hp)' then
  begin
  if combobox2.text='Cavalo-Vapor(hp)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.text='Joule por Segundo(J/s)' then
      res:=n*(745.699872)
    else
    if combobox2.Text='Watt(W)' then
      res:=n*(745.699872)
    else
    if combobox2.text='Quilowatt(kW)' then
      res:=n*(0.7457)
    else
    if combobox2.Text='Megawatt(MW)' then
      res:=n*(0.000746)
    else
  end;
    Label3.caption:=floattostr(res);

end;


procedure TForm6.Button3Click(Sender: TObject);
begin
edit1.text:=inttostr(0);
label3.caption:=inttostr(0);
end;

end.
