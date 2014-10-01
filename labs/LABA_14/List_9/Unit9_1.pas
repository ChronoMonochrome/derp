unit Unit9_1;   //РЕШЕТО ЭРАСТРОФЕНА

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyF11_1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const n=255;
var
  MyF11_1: TMyF11_1;
  Ms1,Ms2:array [word] of word;   // Описание двух массивов
  i,j:Word;
  m,k:Word;   // m - анализируемое число, к - количество простых чисел
implementation

{$R *.dfm}

procedure TMyF11_1.Button1Click(Sender: TObject);  //Выход
begin
Close;
end;

procedure TMyF11_1.Button2Click(Sender: TObject);
begin
m:=StrToInt(Edit1.Text);   //Анализируемое число
if m>65535 then  m:=65535; //Максимальное число членов массива ограничено
for i := 2 to m do
begin
Ms1[i]:=i;       //Значение каждого элемента массива совпадает с его порядк. №
Ms2[i]:=0;      //Обнулить второй массив
end;

j:=2; k:=0;
repeat       //Основной цикл с постусловием
  while (Ms1[j]=0) and (j<m) do j:=J+1;//Если Ms1[j]=0 и j<m -то цикл продолжать

 if Ms1[j]>0 then
   begin
     k:=k+1;
     Ms2[k-1]:=j;  //Занести простое число j в массив Ms2
   end;
  i:=j;
  while i<=m do  //Обнулить в массиве Ms1 все элементы с числами кратными j
    begin
      Ms1[i]:=0;
      i:=i+j;    //Следующее простое число кратное j
    end;
    j:=j+1;
until j>m;    // Условие выхода из основного цикла repeet
ComboBox1.Clear; //Очистить список
for i:=0  to k-1 do
ComboBox1.Items.Add (IntToStr(Ms2[i])); //Переписать все простые числа из
                                        //массива  Ms2 в ComboBox1
end;

procedure TMyF11_1.FormCreate(Sender: TObject);
var i:integer;
begin
  Edit1.Text:= '100';
  ComboBox1.Style:=csSimple; //Постоянно раскрытый список
  ComboBox1.Height:=163;     //Его ширина в пикселах
end;
end.
