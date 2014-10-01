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
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Label6: TLabel;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  x1,x2,x3,y1,tmp:real;

implementation

{$R *.dfm}
function min(a,b,c,d:real):real;
begin
  if a<b then tmp:=a
  else tmp:=b;
  if c<tmp then tmp:=c;
  if d<tmp then tmp:=d;
  min:=tmp;
end;


procedure TForm5.Button1Click(Sender: TObject);
begin
x1:=StrToFloat(Edit1.Text);
x2:=StrToFloat(Edit2.Text);
x3:=StrToFloat(Edit3.Text);
y1:=min(x1-x2,x3+x1,x1,x3*x3);





Label6.Caption:=FloatToStr(y1);

end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Close;
end;

end.

