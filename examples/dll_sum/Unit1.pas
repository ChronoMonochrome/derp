unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function Minus(A,B:Integer): Integer; External 'DLLMinus.dll';
function Plus(A,B:Integer): Integer; External 'DLLPlus.dll';

procedure TForm1.Button1Click(Sender: TObject);
begin
Edit3.Text:=IntToStr(Plus(strtoint(Edit1.Text),strtoint(Edit2.Text)));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit3.Text:=IntToStr(Minus(strtoint(Edit1.Text),strtoint(Edit2.Text)));
end;

end.
