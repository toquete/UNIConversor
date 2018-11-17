unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm7 = class(TForm)
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
  Form7: TForm7;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
form2.show;
form7.Close;
end;

procedure TForm7.Button2Click(Sender: TObject);
var
n,res:real;
begin
n:=strtofloat(Edit1.text);
res:=0;

if combobox1.text='Segundo(s)' then
  begin
    if combobox2.text='Segundo(s)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
      end;
    if combobox2.Text='Minuto(min)' then
      res:=n/60
    else
    if combobox2.text='Hora(h)' then
      res:=n/3600
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Minuto(min)' then
  begin
    if combobox2.text='Minuto(min)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Segundo(s)' then
      res:=n*(60)
    else
    if combobox2.text='Hora(h)' then
      res:=n/60
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Hora(h)' then
  begin
    if combobox2.text='Hora(h)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Segundo(s)' then
      res:=n*(3600)
    else
    if combobox2.text='Minuto(min)' then
      res:=n*(60)
    else
  end;
    Label3.caption:=floattostr(res);
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
edit1.text:=inttostr(0);
label3.caption:=inttostr(0);
end;

end.
