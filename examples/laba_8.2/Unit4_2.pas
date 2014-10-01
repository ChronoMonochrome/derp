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
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  chislo,a,b,c,d:real;

implementation

{$R *.dfm}


procedure TForm5.Button1Click(Sender: TObject);
begin
chislo:=StrToFloat(Edit1.Text);

  a:=Int(chislo/1000);
  b:=Frac(Int(chislo/100)/10)*10;
  c:=Frac(Int(chislo/10)/10)*10;
  d:=Frac(chislo/10)*10;
if (a+b)=(c+d) then Label1.Caption:='Сумма первых двух цифр равна сумме последних двух'
else  Label1.Caption:='Сумма первых двух цифр не равна сумме последних двух';





end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Close;
end;

end.

