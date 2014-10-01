unit Unit9_6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyForm9_5 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit3: TEdit;
    Label4: TLabel;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const c1:real=2.0; b2:real=1.3;
var
  MyForm9_5: TMyForm9_5;
  n1:Integer;
implementation

{$R *.dfm}
                // Начало определения процедуры
procedure Proc_1(a1:real;b2:integer; E2:TEdit; var E1:TEdit;var L4:Tlabel);
var a2:real; //Label4:Tlabel;
begin         //Начало тела процедуры
  a2:=StrToFloat(E2.Text);
  b2:=b2+12;
  a1:=(a1+a2+b2+16)/c1;
  E1.Text:=FormatFloat('0.00',a1);
  L4.Caption:='a1=15.21 (знач. не меняется)';
end;          //Конец тела процедуры

                // Начало определения процедуры
procedure Proc_2(var a1:real;b2:integer; E2:TEdit; var E1:TEdit;var L4:Tlabel);
var a2:real;
begin         //Начало тела процедуры
  a2:=StrToFloat(E2.Text);
  b2:=b2+12;
  a1:=(a1+a2+b2+16)/c1;
  E1.Text:=FormatFloat('0.00',a1);
  L4.Caption:='a1 = Edit1 - значение изменилось';
end;          //Конец тела процедуры

procedure TMyForm9_5.Button2Click(Sender: TObject);
var a1:real;
begin
n1:=6; a1:=15.21;
Proc_1(a1,n1,Edit2,Edit1,Label4);
Edit3.Text:= FormatFloat('0.00',a1);
end;

procedure TMyForm9_5.Button3Click(Sender: TObject);
var a1:real;
begin
n1:=6; a1:=15.21;
Proc_2(a1,n1,Edit2,Edit1,Label4);
Edit3.Text:= FormatFloat('0.00',a1);
end;

procedure TMyForm9_5.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if (((Key<'0')or(Key>'9')) and (Key<>',')) then
   begin
     Key:=#0;
     Label3.Caption:=('Не допустимый для ввода символ');
   end
 else Label3.Caption:='';
end;

procedure TMyForm9_5.Button1Click(Sender: TObject);
begin
Close;
end;
end.
