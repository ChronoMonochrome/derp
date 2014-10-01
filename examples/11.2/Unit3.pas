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
    //procedure Edit1Change(Sender: TObject);
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

Mn1 := [' ',char(9),'0','1','2','3','4','5','6','7','8','9','a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',',','.','!','?',':',';','-'];
end;

function getn(text:String):String;
var
  n,i,words:Integer;
  p,p1,t:Bool;
  c:Char;
  s:String[255];
begin
    n:=0;
    words:=0;
    p:=false;
    p1:=false;
    t:=true;
    s:='';
    for I := 0 to Length(text) do
    begin
        c:= text[i] ;
        if (((c='?') or (c='.') or (c=';') or (c='!')) and p) then
          begin
           n:=n+1;
           if words=0 then words:=1;

           //words:=words+1;
           if t then
           begin
            words:=words+1;
            t:=false;
           end;

           s:=s+IntToStr(words)+', ';
           words:=0;
           p:=false;
          end
        else
        begin
          if ((c=' ') and (not (text[i-1]='.') or (text[i-1]='?') or (text[i-1]='!') or (text[i-1]=';') )  ) then
              begin
                words:=words+1;
                p1:=false;
              end
          else p1:=true;
          p:=true;
        end;


    end;
    getn:=s;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit2.Text:=getn(Edit1.Text);
end;


procedure TForm1.Edit1KeyPress(Sender:TObject;var Key: Char);
begin
  //Mn1 := [' ',char(10),'0','1','2','3','4','5','6','7','8','9','й','ц','у','к','е','н','г','ш','щ','з','х','х','ъ','ф','ы','в','а','п','р','о','л','д','ж','э','я','ч','с','м','и','т','ь','б','ю','Й','Ц','У','К','Е','Н','Г','Ш','Щ','З','Х','Ъ','Ф','Ы','В','А','П','Р','О','Л','Д','Ж','Э','Я','Ч','С','М','И','Т','Ь','Б','Ю','Ё','ё',',','.','!','?',':',';','-'];
  if (Key in Mn1) then else Key:=#0;
end;



end.
