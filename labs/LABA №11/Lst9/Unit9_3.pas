unit Unit9_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMF9_3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  const y=3.15; //Описание констант
  var
  MF9_3: TMF9_3;
  b1:real; n:Integer;
implementation

{$R *.dfm}
function Power1(N1:real;P1:Integer):real;  //Определение функции
  var i:Integer; a1:real; //Локальные переменные функции  Power1
  begin  //Начало тела функции
    a1:= N1;
    for i := 1 to P1-1 do   a1:= a1*N1;  //Конец цикла
    Power1:=a1;
  end;        //Конец функции
procedure TMF9_3.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TMF9_3.Button2Click(Sender: TObject);  //Возведение в степень
var b1:real; n:Integer;
begin
  b1:= StrToFloat(Edit1.Text);
  n := StrToInt(Edit2.Text);
  b1:=Power1(b1,n)+y; //Вызов функции
  Label3.Caption := 'Число  '+Edit1.Text+' в степени '+Edit2.Text+' + (y = '
  + FloatToStr(y)+ ') = '+FormatFloat('0.00',b1);
end;

procedure TMF9_3.FormCreate(Sender: TObject);
begin
Edit1.Text:='2,137';
Edit2.Text:='5';
end;

end.
