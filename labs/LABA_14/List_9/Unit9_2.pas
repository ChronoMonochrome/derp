unit Unit9_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMForm11_2 = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MForm11_2: TMForm11_2;
  L,i,j,m,n,k:Integer;
  Ms1:array of array of Char;  //Динамический массив
implementation

{$R *.dfm}

procedure TMForm11_2.Button1Click(Sender: TObject);
begin
Close;
end;

function shifr(s:string):string;
var SS:String;
begin
      SS:='';

//Определить количество столбцов и строк динамического массива
    m:=Length(s); //Кол-во символов в исходном тексте
    k:= m div n ;
    j:= m mod n ; //Остаток от деления - есть неполная строка?
    if j<>0 then  k:=k+1;  //k - количество строк в массиве

//Занести в массив исходный текст по строкам
   SetLength(Ms1,k,n);  //Задать параметры динамического массива
   L:=0;
   for i := 0 to k-1 do   //Внеший цикл -  построчное заполнение
     begin
       for j := 0 to n-1 do  //Внутренний цикл - заполнение одной строки
         begin
           L:=L+1;
           if L<Length(s)+1 then  Ms1[i,j]:=s[L]
           else  Ms1[i,j]:= ' '; //заполнить пустые ячейки в  последней  строке
         end;
     end;

//Вывести текст из масива Ms1 в Edit3 по столбцам
    L:=0;
   for i := 0 to n-1 do   //Внешний цикл - вывод по столбцам
     begin
       for j := 0 to k-1 do //Внутренний цикл - вывод одного столбца
       begin
         L:=L+1;  SS:=Concat(SS+Ms1[j,i]);
       end;
     end;
     shifr:=SS;
end;


function deshifr(s:string):String;
var
 SS:String;
begin
//Определить количество столбцов и строк динамического массиве
    m:=Length(s); //Кол-во символов в исходном тексте

    k:= m div n ; //k - количество строк в массиве

//Занести в массив исходный текст по строкам
   SetLength(Ms1,k,n); //Задать параметры динамического массива
   //Edit4.Clear;
   L:=0;
   for i := 0 to n-1 do   //Внеший цикл -  построчное заполнение
     begin
      for j := 0 to k-1 do  //Внутренний цикл - заполнение одной строки
         begin
           L:=L+1;
           Ms1[j,i]:=s[L];
         end;
     end;

//Вывести текст из масива Ms1 в Edit4 по столбцам
    L:=0;
   for i := 0 to k-1 do   //Внешний цикл - вывод по столбцам
     begin
       for j := 0 to n-1 do //Внутренний цикл - вывод одного столбца
       begin
         L:=L+1;
         SS:=Concat(SS+Ms1[i,j]);
       end;

     end;
     deshifr:=SS;
end;




procedure TMForm11_2.Button2Click(Sender: TObject);   //Шифрация
begin
n:=StrToInt(Edit2.Text);
Edit3.Text:=shifr(Edit1.Text);
end;

procedure TMForm11_2.Button3Click(Sender: TObject);   //Дешифрация
begin
n:=StrToInt(Edit2.Text);
Edit4.Text:=deshifr(Edit3.Text);
end;

procedure TMForm11_2.FormCreate(Sender: TObject);
begin
Edit2.Text:='5';
Edit1.Text:='Шифрограмма'
end;

end.
