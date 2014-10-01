unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.Caption := 'Лабораторная работа № 1. Вариант 12';
Form1.Height := 500;
Form1.Width := 700;
Form1.Color := clCream;
Form1.Hint := 'Эта подсказка к варианту №12!';
Form1.ShowHint := True;
end;

end.
