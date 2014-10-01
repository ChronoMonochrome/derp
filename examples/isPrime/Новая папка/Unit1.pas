unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
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

procedure TForm1.Button1Click(Sender: TObject);
var
n:integer;
d:integer;
r:integer;
begin
n:=StrToInt(Edit1.text);
d:=2;
     repeat
       r:=n mod d;
       if r<>0 then  d:=d+1;
     until r=0;
     label2.caption:=Edit1.text;
     if d=n
     then label2.caption:=label2.caption +'-обычное число.'
     else label2.caption:=label2.caption +'-простое число.'
end;

end.


