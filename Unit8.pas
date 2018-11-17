unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm8 = class(TForm)
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
  Form8: TForm8;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
form2.show;
form8.close;
end;

procedure TForm8.Button2Click(Sender: TObject);
var
n,res:real;
begin
n:=strtofloat(Edit1.text);
res:=0;

if combobox1.text='Celsius(°C)' then
  begin
    if combobox2.text='Celsius(°C)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
      end;
    if combobox2.text='Fahrenheit(°F)' then
      res:=(n*1.8)+32
    else
    if combobox2.Text='Kelvin(K)' then
      res:=n+273
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Fahrenheit(°F)' then
  begin
    if combobox2.text='Fahrenheit(°F)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
      end;
    if combobox2.Text='Celsius(°C)' then
      res:=(n-32)/(1.8)
    else
    if combobox2.text='Kelvin(K)' then
      res:=(n+459.67)/(1.8)
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Kelvin(K)' then
  begin
    if combobox2.text='Kelvin(K)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
      end;
    if combobox2.Text='Celsius(°C)' then
      res:=n-273
    else
    if combobox2.text='Fahrenheit(°F)' then
      res:=(n*1.8)-(459.67)
    else
  end;
    Label3.caption:=floattostr(res);

end;


procedure TForm8.Button3Click(Sender: TObject);
begin
edit1.text:=inttostr(0);
label3.caption:=inttostr(0);
end;

end.
