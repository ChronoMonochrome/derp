unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
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
var a1,a2,b1,b2,c1,c2,y,x,D:real;
    answer:string[100];
begin
  a1:=StrToFloat(Edit1.Text);
  b1:=StrToFloat(Edit2.Text);
  c1:=StrToFloat(Edit3.Text);
  a2:=StrToFloat(Edit4.Text);
  b2:=StrToFloat(Edit5.Text);
  c2:=StrToFloat(Edit6.Text);
  answer:='';
  D:=a1*b2-b1*a2;
  if D=0 then
    begin
      if ((a1=0) and (b1=0) and (c1<>0))or((a2=0) and (b2=0)and (c2<>0))then
           answer:='Одна или обе прямые не существуют'
       else answer:='Прямые паралелльны или совпадают';
    end
  else
  begin

      x:=(c1*b2-b1*c2)/D;
      y:=(a1*c2-c1*a2)/D;
      answer:='x='+FloatToStr(x)+'; y='+FloatToStr(y);
  end;
  //answer:=FloatToStr(abs(D));
  Label7.Caption:=answer;
end;

end.
