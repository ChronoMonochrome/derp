unit TTestMainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   procedure WMUser(var Msg: TMessage); message WM_USER;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function ShowModalForm: Integer; External 'DLLWithForm.dll';
procedure ShowForm(Appl, Form: THandle); External 'DLLWithForm.dll';
procedure FreeForm; External 'DLLWithForm.dll';

procedure TForm1.Button1Click(Sender: TObject);
// Модальный вызов
begin
Button2.Enabled := False;
label1.Caption := 'ModalResult = '+IntToStr(ShowModalForm);
label1.Show; // Получаем результаты вызова
Button2.Enabled := True
end;

procedure TForm1.Button2Click(Sender: TObject);
// Немодальный вызов
begin
Button1.Enabled := False;
Button2.Enabled := False;
Button3.Enabled := True;
label1.Hide;
ShowForm(Application.Handle, Self.Handle);
end;

procedure TForm1.Button3Click(Sender: TObject);
// Закрыть форму
begin
Button1.Enabled := True;
Button2.Enabled := True;
Button3.Enabled := False;
end;

procedure TForm1.WMUser(var Msg: TMessage);
begin
Button3.Click
end;

end.
