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

Mn1 := [' ',char(10),'0','1','2','3','4','5','6','7','8','9','й','ц','у','к','е','н','г','ш','щ','з','х','х','ъ','ф','ы','в','а','п','р','о','л','д','ж','э','я','ч','с','м','и','т','ь','б','ю','Й','Ц','У','К','Е','Н','Г','Ш','Щ','З','Х','Ъ','Ф','Ы','В','А','П','Р','О','Л','Д','Ж','Э','Я','Ч','С','М','И','Т','Ь','Б','Ю','Ё','ё',',','.','!','?',':',';','-'];
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
        if ((c='?') and p) then
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
  Mn1 := [' ',char(10),'0','1','2','3','4','5','6','7','8','9','й','ц','у','к','е','н','г','ш','щ','з','х','х','ъ','ф','ы','в','а','п','р','о','л','д','ж','э','я','ч','с','м','и','т','ь','б','ю','Й','Ц','У','К','Е','Н','Г','Ш','Щ','З','Х','Ъ','Ф','Ы','В','А','П','Р','О','Л','Д','Ж','Э','Я','Ч','С','М','И','Т','Ь','Б','Ю','Ё','ё',',','.','!','?',':',';','-'];
  if (Key in Mn1) then else Key:=#0;
end;



end.
