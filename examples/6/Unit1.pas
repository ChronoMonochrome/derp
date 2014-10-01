unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
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
const znaki='.!?';
var a: string;
b, i: integer;
begin
b:=0;
a:=Edit1.Text;
if length(a)<=60 then
begin
for i := 1 to length(a) do
if Pos(a[i], znaki)=1 then
b:=b+1;
Label2.Caption:=a + 'Количество предложений в тексте = '+IntToStr(b);
end
else
Label2.Caption:='Введите корректное число символов';
end;
end.
