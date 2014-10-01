unit Unit9_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm17 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Label3: TLabel;
    Button2: TButton;
    Label4: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type    //Описание типа вложенной записи
  Date=record        //Дата рождения (вложенная запись)
    Day:1..31;         //День
    Manth:1..12;       //Месяц
    Year:1908..2010;   //Год
end;

type     //Описание типа вложенной записи
  Money=record  //Ежемесячная зарплата  (вложенная запись)
    Janury,February,Mart,Apr:real; //Зарплата за январь-апрель
  end;

type    //Описание основной записи
Cafedra=record //Данные о сотруднике (основная запись)
  Ident:Word;                     //Код
  SrName,Name,ScName:string[20];  //ФИО
  BirtDate:Date;                  //Дата рождения
  Standing:byte;//Стаж работы
  Salary:Money;//Средняя работа
end;

var
  Form17: TForm17;
  Labor1,Labor2:Cafedra;  //Записи типа Cafedra
  i,j,m:Integer;
  Srz:real;
  Srn:string[20];

implementation

{$R *.dfm}

procedure TForm17.Button1Click(Sender: TObject);  //ВЫХОД
begin
  Close;
end;

procedure TForm17.Button2Click(Sender: TObject);   //РАСЧЕТ
begin
 Label4.Caption:=' ';  Label3.Caption:=' ';//Очистка компонентов Label3 и Label4
 if Edit1.Text=Labor1.SrName then  m:=1 //Идентификация запроса по фамилии
 else
      begin
         if Edit1.Text=Labor2.SrName then  m:=2
         else m:=0;
       end;

  case m of   //Если m = 1 - Иванов. Если m = 2 - Петров. Если m = 0 - чужой
   1: Srz:=(Labor1.Salary.Janury+Labor1.Salary.February+Labor1.Salary.Mart)/3.0;
   2: Srz:=(Labor2.Salary.Janury+Labor2.Salary.February+Labor2.Salary.Mart)/3.0;
   0: Label4.Caption:=
            'Уваж. тов.  '+Edit1.Text+'  Вашей фамилии нет в нашем списке';
  end;
  if m<>0 then  Label3.Caption:=  //Ср. зарплата за месяц в I квартале
  'Ув. тов. '+Edit1.Text+' Ваша ср. зарплата за I кв.= '
  +FormatFloat('0000.00',Srz)+' руб.';
end;

procedure TForm17.FormCreate(Sender: TObject);  // Инициализация
  begin
    Labor1.SrName:= 'Иванов';
    With Labor1.Salary do // Зарплата Иванова за 4 месмяца
      begin
        Janury:=13250; February:=13500; Mart:=14100; Apr:=14500;
    end;

    Labor2.SrName:= 'Петров';
    With Labor2.Salary do // Зарплата Петрова за 4 месмяца
      begin
        Janury:=15200; February:=14350; Mart:=16100; Apr:=15200;
    end;
  end;
end.
