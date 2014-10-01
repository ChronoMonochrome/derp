unit Unit1;

interface



uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;
type
  TForm1= class(TForm)
    bbRun: TBitBtn;
    bbCancel: TBitBtn;
    mmOutput: TMemo;
    lbOutput: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    edInput: TEdit;

    procedure bbCancelClick(Sender: TObject);
    //procedure bbCancelClick(Sender: TObject);
    procedure bbRunClick(Sender: TObject);
    //procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  fmExample: TForm1;

implementation
{$R *.dfm}
procedure TForm1.bbCancelClick(Sender: TObject);
begin
Close;
end;

procedure TForm1.bbRunClick(Sender: TObject);
{Иллюстрация использования открытых массивов: программа выводит в многострочный редактор mmOutput содержимое двух одномерных массивов разной длины с помощью одной процедуры ArrayPrint}
Procedure ArrayPrint(aArray: array of Integer);
var
  k: Integer;
  S: String;
begin
  S := '';
  for k := 0 to High(aArray) do
    S := S + IntToStr(aArray[k]) + ' ';
  mmOutput.Lines.Add(S);
end;
var
 i,int,hlimit,llimit: Integer;
  A: array [-1..2] of Integer;// = (0,1,2,3);
  B: array [5..7] of Integer;// = (4,5,6);
begin
  hlimit:=StrToInt(edInput.Text);
  llimit:=StrToInt(edit1.Text);
  for i := -1 to 2 do
  begin
    int := llimit + Random(hlimit-llimit+1);    // Эти 100 значений дают диапазон 0..99
    A[i]:=int;
  end;
  for i := 5 to 7 do
  begin
    int := llimit + Random(hlimit-llimit+1);    // Эти 100 значений дают диапазон 0..99
    B[i]:=int;
  end;
  ArrayPrint(A);
  ArrayPrint(B);
end;





end.

