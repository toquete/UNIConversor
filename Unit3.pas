unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    ComboBox1: TComboBox;
    Label2: TLabel;
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
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
form2.show;
form3.close;
end;

procedure TForm3.Button2Click(Sender: TObject);
var
n,res:real;
begin
n:=strtofloat(Edit1.text);
res:=0;

if combobox1.text='Metro Quadrado(m²)' then
  begin
  if combobox2.text='Metro Quadrado(m²)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Centímetro Quadrado(cm²)' then
      res:=n*(10.000)
    else
    if combobox2.text='Quilômetro Quadrado(km²)' then
      res:=n*(0.000001)
    else
    if combobox2.text='Hectare(ha)' then
      res:=n*(0.0001)
  else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Centímetro Quadrado(cm²)' then
  begin
  if combobox2.text='Centímetro Quadrado(cm²)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Metro Quadrado(m²)' then
      res:=n*(0.0001)
    else
    if combobox2.text='Quilômetros Quadrado(km²)' then
      res:=n*(0.0000000001)
    else
    if combobox2.text='Hectare(ha)' then
      res:=n*(0.00000001)
  else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Quilômetro Quadrado(km²)' then
  begin
  if combobox2.text='Quilômetro Quadrado(km²)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Centímetro Quadrado(cm²)' then
      res:=n*(10000000000)
    else
    if combobox2.text='Metro Quadrado(m²)' then
      res:=n*(1000000)
    else
    if combobox2.text='Hectare(ha)' then
      res:=n*(100)
  else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Hectare(ha)' then
   begin
    if combobox2.text='Hectare(ha)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
      end;
    if combobox2.Text='Centímetro Quadrado(cm²)' then
      res:=n*(10000000)
    else
    if combobox2.text='Metro Quadrado(m²)' then
      res:=n*(10000)
    else
    if combobox2.text='Quilômetro Quadrado(km²)' then
      res:=n*(0.01)
    else
    end;
    Label3.caption:=floattostr(res);

end;

procedure TForm3.Button3Click(Sender: TObject);
begin
edit1.text:=inttostr(0);
label3.caption:=inttostr(0);
end;

end.
