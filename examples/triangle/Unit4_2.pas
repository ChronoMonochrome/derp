unit Unit4_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
  a,b,c:real;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
a:=StrToFloat(Edit1.Text);
b:=StrToFloat(Edit2.Text);
c:=StrToFloat(Edit3.Text);
if (a>0) then
  begin
      Label6.Caption:='Можно построить треугольник';
      if ((a=b) and (b=c)) then Label7.Caption:='Треугольник равносторонний'
      else if ((a=b) and (b<>c)) or ((b=c) and (c<>a)) or ((c=a) and (a<>b)) then    Label7.Caption:='Треугольник равнобедренный';
      if ((c*c=b*b+a*a) or (a*a=b*b+c*c) or (b*b=c*c+a*a)) then      Label7.Caption:='Треугольник прямоугольный';
  end
else  Label6.Caption:='Нельзя построить треугольник';





//Label6.Caption:=FloatToStr(x);
//Label7.Caption:=FloatToStr(y);
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Close;
end;

end.

