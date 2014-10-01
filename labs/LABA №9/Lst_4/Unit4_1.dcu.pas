unit Unit4_1.dcu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm17 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;
  X1,X2:real;
  str1:string;
  a,b,c:Real;
  i:Integer;

implementation

{$R *.dfm}

procedure TForm17.Button1Click(Sender: TObject);
begin

   a:=StrToFloat(Edit1.Text);
   b:=StrToFloat(Edit2.Text);
   c:=StrToFloat(Edit3.Text);

   X1:=(-b+Sqrt(Sqr(b)-4*a*c)/(2*a));
   X2:=(-b-Sqrt(Sqr(b)-4*a*c)/(2*a));

   Label7.Caption:=FloatToStr(X1);
   Label8.Caption:=FloatToStr(X2);
end;

procedure TForm17.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
