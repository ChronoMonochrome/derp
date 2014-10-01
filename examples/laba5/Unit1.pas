unit Unit1;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;




implementation
{$R *.DFM}
procedure TForm1.Button1Click(Sender: TObject);
var
    n: integer; 
    d: integer; 
    r: integer;
begin
    n:=StrToInt(Edit1.text);
    d := 2;
    repeat
        r := n mod d;
        if r <> 0
            then d := d + 1;
    until r = 0;
    label2.caption:=Edit1.text;
    if d = n
        then label2.caption:=label2.caption +  ' Ц простое число.'
	else label2.caption:=label2.caption +' Ц обычное число.' ;
end;
end.
