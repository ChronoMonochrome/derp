unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMn = set of char;
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject;var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Mn1:TMn;

implementation

{$R *.dfm}

procedure TForm1.FormCreate (Sender: Tobject);  //Инициализация
begin

Mn1 := [' ',char(9),'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',',','.','!','?',':',';','-'];
end;

function getn(text:String):Integer;
var
  n,i:Integer;
  p:Bool;
  c:Char;
begin
    n:=0;
    p:=false;
    for I := 0 to Length(text) do
    begin
        c:= text[i] ;
        if (((c='?') or (c='.') or (c='!') or (c=';')) and p) then
          begin
           n:=n+1;
           p:=false;
          end
        else p:=true;


    end;
    getn:=n;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit2.Text:=IntToStr(getn(Edit1.Text));
end;

procedure TForm1.Edit1KeyPress(Sender:TObject;var Key: Char);
begin
  Mn1 := [' ',char(9),'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',',','.','!','?',':',';','-'];
  if (Key in Mn1) then else Key:=#0;
end;



end.
