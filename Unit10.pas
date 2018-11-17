unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm10 = class(TForm)
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
  Form10: TForm10;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
form2.show;
form10.close;
end;

procedure TForm10.Button2Click(Sender: TObject);
var
n,res:real;

begin
n:=strtofloat(Edit1.text);
res:=0;

if combobox1.text='Miligrama(mg)' then
  begin
    if combobox2.text='Miligrama(mg)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Grama(g)' then
      res:=n*(0.001)
    else
    if combobox2.text='Quilograma(kg)' then
      res:=n*(0.00001)
    else
    if combobox2.text='Tonelada(t)' then
      res:=n*(0.000000001)
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Grama(g)' then
  begin
    if combobox2.text='Grama(g)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Miligrama(mg)' then
      res:=n*(100)
    else
    if combobox2.text='Quilograma(kg)' then
      res:=n*(0.001)
    else
    if combobox2.text='Tonelada(t)' then
      res:=n*(0.000001)
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Quilograma(kg)' then
  begin
    if combobox2.text='Quilograma(kg)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Miligrama(mg)' then
      res:=n*(1000000)
    else
    if combobox2.text='Grama(g)' then
      res:=n*(1000)
    else
    if combobox2.text='Tonelada(t)' then
      res:=n*(0.001)
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Tonelada(t)' then
  begin
    if combobox2.text='Tonelada(t)' then
      begin
        showmessage('Operação inválida. Escolha outra opção de conversão.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Miligrama(mg)' then
      res:=n*(1000000000)
    else
    if combobox2.text='Grama(g)' then
      res:=n*(1000000)
    else
    if combobox2.text='Quilograma(kg)' then
      res:=n*(1000)
  end;
    Label3.caption:=floattostr(res);

end;

procedure TForm10.Button3Click(Sender: TObject);
begin
edit1.text:=inttostr(0);
label3.caption:=inttostr(0);
end;

end.
