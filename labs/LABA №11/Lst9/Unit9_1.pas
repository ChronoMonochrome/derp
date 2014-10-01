unit Unit9_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyF9_1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
			Cafedra = record
			Ident: word;					//Шифр
			SrName, Name, ScName: string [20];	//ФИО
			Data: integer;					//Год рождения
			Standing: byte;				//Стаж работы
			Salary: real;				//Зарплата
end;
var
  MyF9_1: TMyF9_1;
  Labor: Cafedra;
implementation

{$R *.dfm}

procedure TMyF9_1.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TMyF9_1.Button2Click(Sender: TObject);
begin
	with	 Labor	do
	   begin
        Edit1.Text:= SrName + '  '+ Name[1]+'.'+ ScName[1]+'.';
        Edit2.Text:=IntToStr(Ident+35);
        Edit3.Text:= IntToStr(Standing + 2);
        Edit4.Text:= FloatToStr(Salary*12/1000+3000)+ '  тыс. руб.';
        Edit5.Text:= FloatToStr(Salary + 550);
      end;

end;

procedure TMyF9_1.FormCreate(Sender: TObject);

begin
Labor.Ident:= 1213;	//Инициализация записи
Labor.SrName:='Иванов';
Labor.Name:='Иван';
Labor.ScName:='Петрович';
Labor.Standing:=15;
Labor.Salary:=12500;

Edit1.Text:= Labor.SrName + '  '+ Labor.Name; //Вывод значений
Edit2.Text:=IntToStr(Labor.Ident);
Edit3.Text:= IntToStr(Labor.Standing);
Edit4.Text:= FloatToStr(Labor.Salary*12/1000)+ '  тыс. руб.';
Edit5.Text:= FloatToStr(Labor.Salary);

end;

end.
