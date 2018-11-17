unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, DBCtrls, jpeg, ExtCtrls;

type
  TForm4 = class(TForm)
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
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
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
form2.show;
form4.close;
end;

procedure TForm4.Button2Click(Sender: TObject);
var
n,res:real;
begin
n:=strtofloat(Edit1.text);
res:=0;

if combobox1.text='Metro(m)' then
  begin
    if combobox2.text='Metro(m)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Centímetro(cm)' then
      res:=n*(100)
    else
    if combobox2.text='Milímetro(mm)' then
      res:=n*(1000)
    else
    if combobox2.text='Quilômetro(km)' then
      res:=n*(0.001)
    else
    if combobox2.text='Milha(mil)' then
      res:=n*(0.000621371192)
    else
    if combobox2.text='Polegada(in)' then
      res:=n*(39.3700787);
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Centímetro(cm)' then
  begin
    if combobox2.text='Centímetro(cm)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Metro(m)' then
      res:=n*(0.01)
    else
    if combobox2.text='Milímetro(mm)' then
      res:=n*(10)
    else
    if combobox2.text='Quilômetro(km)' then
      res:=n*(0.00001)
    else
    if combobox2.text='Milha(mil)' then
      res:=n*(0.00000621371192)
    else
    if combobox2.text='Polegada(in)' then
      res:=n*(0.393700787)
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Milímetro(mm)' then
  begin
    if combobox2.text='Milímetro(mm)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Metro(m)' then
      res:=n*(0.001)
    else
    if combobox2.text='Centímetro(cm)' then
      res:=n*(0.1)
    else
    if combobox2.text='Quilômetro(km)' then
      res:=n*(0.000001)
    else
    if combobox2.text='Milha(mil)' then
      res:=n*(0.000000621371192)
    else
    if combobox2.text='Polegada(in)' then
      res:=n*(0.0393700787)
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Quilômetro(km)' then
  begin
    if combobox2.text='Quilômetro(km)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Metro(m)' then
      res:=n*(1000)
    else
    if combobox2.text='Centímetro(cm)' then
      res:=n*(100000)
    else
    if combobox2.text='Milímetro(mm)' then
      res:=n*(1000000)
    else
    if combobox2.text='Milha(mil)' then
      res:=n*(0.621371192)
    else
    if combobox2.text='Polegada(in)' then
      res:=n*(39370.0787);
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Milha(mil)' then
  begin
  if combobox2.text='Milha(mil)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Metro(m)' then
      res:=n*(1609.344)
    else
    if combobox2.text='Centímetro(cm)' then
      res:=n*(160934.4)
    else
    if combobox2.text='Milímetro(mm)' then
      res:=n*(1609344)
    else
    if combobox2.text='Quilômetro(km)' then
      res:=n*(1.609344)
    else
    if combobox2.text='Polegada(in)' then
      res:=n*(63360);
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Polegada(in)' then
  begin
  if combobox2.text='Polegada(in)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Metro(m)' then
      res:=n*(0.0254)
    else
    if combobox2.text='Centímetro(cm)' then
      res:=n*(2.54)
    else
    if combobox2.text='Milímetro(mm)' then
      res:=n*(25.4)
    else
    if combobox2.text='Quilômetro(km)' then
      res:=n*(0.0000254)
    else
    if combobox2.text='Milha(mil)' then
      res:=n*(0.0000157828283);
  end;
    Label3.caption:=floattostr(res);


end;

procedure TForm4.Button3Click(Sender: TObject);
begin
edit1.text:=inttostr(0);
label3.caption:=inttostr(0);
end;

end.
