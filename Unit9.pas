unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm9 = class(TForm)
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
  Form9: TForm9;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
form2.show;
form9.close;
end;

procedure TForm9.Button2Click(Sender: TObject);
var
n,res:real;

begin
n:=strtofloat(Edit1.text);
res:=0;

if combobox1.text='Metro por Segundo(m/s)' then
  begin
    if combobox2.text='Metro por Segundo(m/s)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Quilômetro por Hora(km/h)' then
      res:=n*(3.6)
    else
    if combobox2.text='Milha por Hora(Mph)' then
      res:=n*(2.23693629)
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Quilômetro por Hora(km/h)' then
  begin
    if combobox2.text='Quilômetro por Hora(km/h)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Metro por Segundo(m/s)' then
      res:=n/(3.6)
    else
    if combobox2.text='Milha por Hora(Mph)' then
      res:=n*(0.621371192)
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Milha por Hora(Mph)' then
  begin
    if combobox2.text='Milha por Hora(Mph)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Metro por Segundo(m/s)' then
      res:=n*(0.44704)
    else
    if combobox2.text='Quilômetro por Hora(km/h)' then
      res:=n*(1.609344)
  end;
    Label3.caption:=floattostr(res);

end;

procedure TForm9.Button3Click(Sender: TObject);
begin
edit1.text:=inttostr(0);
label3.caption:=inttostr(0);
end;

end.
