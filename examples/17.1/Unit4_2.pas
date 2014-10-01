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
  x1,x2,x3,y1,y2:real;

implementation

{$R *.dfm}
function max(x,y:real):real;
begin
  if x>y then max:=x
  else max:=y;
end;

function min(x,y:real):real;
begin
  if x<y then min:=x
  else min:=y;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
x1:=StrToFloat(Edit1.Text);
x2:=StrToFloat(Edit2.Text);
x3:=StrToFloat(Edit3.Text);
y1:=max(x1+x2,x3+x1);
y2:=min(x1+x2,x3+x1);




Label6.Caption:=FloatToStr(y1);
Label7.Caption:=FloatToStr(y2);
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Close;
end;

end.

