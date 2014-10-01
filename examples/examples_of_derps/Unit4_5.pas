unit Unit4_5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm17 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;
  y:integer;
 s1:string;
implementation

{$R *.dfm}

procedure TForm17.Button1Click(Sender: TObject);
begin
Label2.Caption:=' ';
s1:=Edit1.Text;
if (s1='monday')   or (s1='Monday')   or (s1='1') then  y:=1   else
if (s1='tuesday')  or (s1='Tuesday')  or (s1='2') then  y:=2   else
if (s1='wednesday')or (s1='Wednesday')or (s1='3') then  y:=3   else
if (s1='thursday') or (s1='Thursday') or (s1='4') then  y:=4   else
if (s1='friday')   or (s1='Friday')   or (s1='5') then  y:=5   else
if (s1='saturday') or (s1='Saturday') or (s1='6') then  y:=6   else
if (s1='sunday')   or (s1='Sunday')   or (s1='7') then  y:=7   else
y:=8;
 case y of
  1:  Label2.Caption:='Понедельник';
  2:  Label2.Caption:=('Вторник');
  3:  Label2.Caption:=('Среда');
  4:  Label2.Caption:=('Четверг');
  5:  Label2.Caption:=('Пятница');
  6:  Label2.Caption:=('Суббота');
  7:  Label2.Caption:=('Воскресенье');
  8:  Label2.Caption:=('Некорректный ввод');
 end;
end;

procedure TForm17.Button2Click(Sender: TObject);
begin
 Close;
end;

end.
