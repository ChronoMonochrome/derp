unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
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
var x1,x2,x3,y:real;
begin
       x1:=StrToInt(Edit1.Text);
       x2:=StrToInt(Edit2.Text);
       x3:=StrToInt(Edit3.Text);
         if ((x1/x2)>(x3/x1)) then   y:= (x1/x2)
         else y:=x3/x1;
       Label4.Caption:=FloatToStr(y);
end;

end.
