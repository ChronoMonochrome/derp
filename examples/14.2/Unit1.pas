unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  chislo,x,y,z:real;
begin
  chislo:=StrToFloat(Edit1.Text);
  x:=Int(chislo/100);
  y:=Frac(Int(chislo/10)/10);
  z:=Frac(chislo/10);
  if sqr(chislo)>exp(3*ln(x+y+z)) then
    Label2.Caption:='������� ����� ������ ���� ����� ��� ����'
    else
    if sqr(chislo)<exp(3*ln(x+y+z)) then
      Label2.Caption:='������� ����� ������ ���� ����� ��� ����'
      else
      Label2.Caption:='������� ����� ����� ���� ����� ��� ����';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
