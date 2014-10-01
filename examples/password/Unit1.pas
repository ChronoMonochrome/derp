unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    MaskEdit1: TMaskEdit;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n, l:integer;
  parol:string;
implementation

{$R *.dfm}

procedure TForm1.LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  key:=#0;
  MaskEdit1.SetFocus;
end;
if (key<'а') or (key>'я') then  key:=#0;
end;



procedure TForm1.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  key:=#0;
  LabeledEdit1.SetFocus;
end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
n:=n+1;
if n>=6 then close;
repeat
  if (parol<>(LabeledEdit1.Text+MaskEdit1.Text)) and (n<=5) then
  begin
    Label1.Caption:=Concat('Пароль не верен. Повторите ввод. Попытка № ', IntToStr(n));
    Label2.Caption:=Concat('У вас еще ', IntToStr(6-n), ' попытки');
    l:=1;
    LabeledEdit1.Text:='';
  end
  else begin
    Label1.Caption:='Пароль верен. Добро пожаловать!';
    Label2.Caption:='';
    n:=1;
    l:=0;
  end;
until (l=0) or (l=1);
end;


procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
begin
LabeledEdit1.PasswordChar:=#0;
MaskEdit1.PasswordChar:=#0;
end
else
begin
LabeledEdit1.PasswordChar:='*';
MaskEdit1.PasswordChar:='*';
end;
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
n:=1;
parol:='абвdefghi';
end;

end.
