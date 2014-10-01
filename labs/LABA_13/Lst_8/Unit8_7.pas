unit Unit8_7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMF8_7 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MF8_7: TMF8_7;
  Ms1,Ms2:array [1..10] of Integer;  //Два массива из 10 элементов типа Integer
implementation

{$R *.dfm}

procedure TMF8_7.Button1Click(Sender: TObject);
begin
Close;
end;
           //СОРТИРОВКА МАССИВА МЕТОДОМ ВЫБОРА
procedure TMF8_7.Button2Click(Sender: TObject); //Сортировка по возростанию
var i,j,k:Integer;
begin
  for i := 1 to Length(Ms1) do         //Внешний цикл
    begin
      for k := i to Length(Ms1) - 1 do //Вложенный цикл
        begin
          j:=Ms1[i];
          if j>Ms1[k+1] then  //Сортировка по возрастанию
            begin
              Ms1[i]:=Ms1[k+1];  //Если  j>Ms1[k+1], то Ms1[i] и Ms1[k+1]
              Ms1[k+1]:=j;       //меняем местами
            end;
        end;
      end;
for i := 1 to Length(Ms1) do  //Отсортированные значения Ms1 по возростанию
 ListBox2.Items[i-1]:=IntToStr(Ms1[i]);//помещаем в список  ListBox2

end;
          //СОРТИРОВКА МАССИВА МЕТОДОМ ОБМЕНА
procedure TMF8_7.Button3Click(Sender: TObject);  //Сортировка по убыванию
var i,j,k:Integer;
begin
for i := Length(Ms1) downto  1 do  //Внешний цикл
  begin
    for k:=2 to i do  //Вложенный цикл
      begin
        j:=Ms1[k-1];
        if j<Ms1[k] then  //Сортировка по убыванию
          begin
            Ms1[k-1]:=Ms1[k]; //Если  j<Ms1[k+1], то Ms1[i] и Ms1[k+1]
            Ms1[k]:=j;        //меняем местами
          end;
      end;

  end;
for i := 1 to Length(Ms1) do           //Отсортированные значения Ms1 по
 ListBox2.Items[i-1]:=IntToStr(Ms1[i]);//убыванию помещаем в список  ListBox2

 end;

procedure TMF8_7.FormCreate(Sender: TObject);
var i:Integer;
begin

ListBox1.MultiSelect:=True;
ListBox1.Items[0]:='7'; ListBox1.Items[1]:='3';
ListBox1.Items[2]:='14'; ListBox1.Items[3]:='251';
ListBox1.Items[4]:='7'; ListBox1.Items[5]:='13';
ListBox1.Items[6]:='114'; ListBox1.Items[7]:='51';
ListBox1.Items[8]:='4'; ListBox1.Items[9]:='151';

for i := 0 to ListBox1.Count - 1 do    //Содержимое списка ListBox1 помещаем в
Ms1[i+1]:=StrToInt(ListBox1.Items[i]); //массив  Ms1

end;

end.
