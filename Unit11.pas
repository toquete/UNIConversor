unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm11 = class(TForm)
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
  Form11: TForm11;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
begin
form2.show;
form11.Close;
end;

procedure TForm11.Button2Click(Sender: TObject);
var
n,res:real;
begin
n:=strtofloat(Edit1.text);
res:=0;

if combobox1.text='Metro C�bico(m�)' then
  begin
    if combobox2.text='Metro C�bico(m�)' then
      begin
        showmessage('Opera��o inv�lida. Escolha outra op��o de convers�o.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Cent�metro C�bico(cm�)' then
      res:=n*(1000000)
    else
    if combobox2.text='Litro(L)' then
      res:=n*(1000)
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Cent�metro C�bico(cm�)' then
  begin
    if combobox2.text='Cent�metro C�bico(cm�)' then
      begin
        showmessage('Opera��o inv�lida. Escolha outra op��o de convers�o.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Metro C�bico(m�)' then
      res:=n*(0.000001)
    else
    if combobox2.text='Litro(L)' then
      res:=n*(0.001)
    else
  end;
    Label3.caption:=floattostr(res);

if combobox1.text='Litro(L)' then
  begin
    if combobox2.text='Litro(L)' then
      begin
        showmessage('Opera��o inv�lida. Escolha outra op��o de convers�o.');
        edit1.text:=inttostr(0);
        label3.caption:=inttostr(0);
        end;
    if combobox2.Text='Metro C�bico(m�)' then
      res:=n*(0.001)
    else
    if combobox2.text='Cent�metro C�bico(cm�)' then
      res:=n*(1000)
    else
  end;
    Label3.caption:=floattostr(res);
end;

procedure TForm11.Button3Click(Sender: TObject);
begin
edit1.text:=inttostr(0);
label3.caption:=inttostr(0);
end;

end.
