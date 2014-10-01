unit Unit4_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Label4: TLabel;
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
  x1,x2:real;
  str1,str2:string;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
Label4.Caption :='';
x1:=StrToFloat(Edit1.Text);
x2:=StrToFloat(Edit2.Text);

str1:=FloatToStr(Int(x1/x2));
str2:=FloatToStr(Frac(x1/x2)*x2);

if Frac(x1/x2)=0 then
  label4.Caption:=Concat('Число делится на х2, кратность = ',str1)
  else
   label4.Caption:=Concat('Число не делится на х2, остатокь = ',str2);
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Close;
end;

end.
