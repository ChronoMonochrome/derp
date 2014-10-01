unit Unit9_5;

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
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const c1:real=15.3; b2:real=1.3;
var
  MyForm9_5: TMyForm9_5;
  n1:Integer;
implementation

{$R *.dfm}
                // Начало определения процедуры
procedure Proc_1(a1:real;b2:integer; Str1:String;var Str2:String);
var a2:real;
begin         //Начало тела процедуры
  a2:=StrToFloat(Str1);
  b2:=b2+12;
  a1:=(a2+b2+16)/c1;
  Str2:=FormatFloat('0.00',a1);
end;          //Конец тела процедуры

procedure TMyForm9_5.Button2Click(Sender: TObject);
var Str:String; a1:real;
begin
n1:=6; a1:=15.21;
Proc_1(a1,n1,Edit2.Text,Str);
Edit1.Text:=Str;
Edit3.Text:= Formatfloat('0.00',a1);
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
