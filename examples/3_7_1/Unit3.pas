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

function get_longer(s:String):Integer;
var
prep_index,prep_count,i,count,n:Integer;
begin
        prep_index:=0;prep_count:=0;count:=0;n:=0;
        for I := 0 to Length(s)-1 do
        begin
          if not ((s[i]='.') or (s[i]='!') or (s[i]='?') or (s[i]=';')) then
              count:=count+1  //  считаем число знаков в предложении
          else
              begin
                prep_count:=prep_count+1;  //   считаем число предложений
                if count>n then     //если число знаков больше чем в предыдущем наиболее длинном
                    begin
                      n:=count;
                      prep_index:=prep_count;    // запомним индекс самого длинного предложения
                    end;
                count:=0;
              end;
        end;
get_longer:=prep_index;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit2.Text:=IntToStr(get_longer(Edit1.Text));
end;

procedure TForm1.Edit1KeyPress(Sender:TObject;var Key: Char);
begin
  Mn1 := [' ',char(10),'0','1','2','3','4','5','6','7','8','9','й','ц','у','к','е','н','г','ш','щ','з','х','х','ъ','ф','ы','в','а','п','р','о','л','д','ж','э','я','ч','с','м','и','т','ь','б','ю','Й','Ц','У','К','Е','Н','Г','Ш','Щ','З','Х','Ъ','Ф','Ы','В','А','П','Р','О','Л','Д','Ж','Э','Я','Ч','С','М','И','Т','Ь','Б','Ю','Ё','ё',',','.','!','?',':',';','-'];
  if (Key in Mn1) then else Key:=#0;
end;



end.
