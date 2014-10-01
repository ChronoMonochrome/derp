unit Unit4_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  chislo,a,b,c,d,e:real;

implementation

{$R *.dfm}


procedure TForm5.Button1Click(Sender: TObject);
begin
chislo:=StrToFloat(Edit1.Text);

  a:=Int(chislo/10000);
  b:=Frac(Int(chislo/1000)/10)*10;
  c:=Frac(Int(chislo/100)/10)*10;
  d:=Frac(Int(chislo/10)/10)*10;
  e:=Frac(chislo/10)*10;
  
  if abs(a+b+c-d*e)<1e-15 then Label2.Caption:='Cумма трех первых цифр заданного пятизначного числа равна произведению  двух его последних цифр'
  else  Label2.Caption:='сумма трех первых цифр заданного пятизначного числа не равна произведению  двух его последних цифр';





end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Close;
end;

end.

