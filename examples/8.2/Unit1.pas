unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
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
var a, x, y,z, t, c: integer;
begin
a:=StrToInt(Edit1.Text);
if (a>999) and (a<10000) then
begin
x:=a div 1000;
a:=a mod 1000;
y:=a div 100;
a:=a mod 100;
z:=a div 10;
t:=a mod 10;
if (x+y=z+t) then
label1.Caption:='ñóììà ğàâíà'
else label2.Caption:='íå ğàâíà';
end
else
label2.Caption:='ââåäèòå ïğàâèëüíîå ÷èñëî';
end;
end.
