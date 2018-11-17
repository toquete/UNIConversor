unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm5 = class(TForm)
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
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
form2.show;
form5.close;
end;

procedure TForm5.Button2Click(Sender: TObject);
var
n,res:real;
begin
n:=strtofloat(Edit1.text);
res:=0;

if combobox1.text='Atmosfera(atm)' then
  begin
    if combobox2.text='Atmosfera(atm)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Pascal(Pa)' then
      res:=n*(101325)
    else
    if combobox2.text='Bar(Bar)' then
      res:=n*(1.01325)
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Pascal(Pa)' then
  begin
    if combobox2.text='Pascal(Pa)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Atmosfera(atm)' then
      res:=n*(0.00000986923267)
    else
    if combobox2.text='Bar(Bar)' then
      res:=n*(0.00001)
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Bar(Bar)' then
  begin
    if combobox2.text='Bar(Bar)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Atmosfera(atm)' then
      res:=n*(0.986923267)
    else
    if combobox2.text='Pascal(Pa)' then
      res:=n*(100000)
    else
  end;
    Label3.caption:=floattostr(res);
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
edit1.text:=inttostr(0);
label3.caption:=inttostr(0);
end;

end.
