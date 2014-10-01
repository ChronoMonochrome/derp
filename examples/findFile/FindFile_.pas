// Поиск файла в указанном каталоге и его подкаталогах
// используется рекурсивная процедура Find.
unit FindFile_;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  FileCtrl;

type
  TForm1 = class(TForm)
    Edit1: TEdit;       // что искать
    Edit2: TEdit;       // где искать
    Memo1: TMemo;       // результат поиска
    Button1: TButton;   // кнопка Поиск
    Button2: TButton;   // кнопка Папка
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
   FileName: string;  // имя или маска искомого файла
   cDir: string;
   n: integer;       // кол-во файлов, удовлетворяющих запросу

// поиск файла в текущем каталоге
procedure Find;
var
   SearchRec: TSearchRec; // информация о файле или каталоге
begin
   GetDir(0,cDir); // получить имя текущего каталога
   if cDir[length(cDir)] <> '\' then cDir := cDir+'\';

   if FindFirst(FileName, faAnyFile,SearchRec) = 0 then
       repeat
          if (SearchRec.Attr and faAnyFile) = SearchRec.Attr then
             begin
               Form1.Memo1.Lines.Add(cDir +  SearchRec.Name);
               n := n + 1;
             end;
        until FindNext(SearchRec) <> 0;

       // обработка подкаталогов текущего каталога

       { Если не обрабатывать системные каталоги, то
         вместо faAnyFile можно задать faDidertory.
         Это объясняется тем, что значение SearchRec.Attr
         для обычного каталога равно faDirectory (16),
         для Program Files - faDirectory+faReadOnly (17),
         а для каталога Windows - faDirectory+faSysFile (20).
        }

       if FindFirst('*', faAnyFile, SearchRec) = 0 then
          repeat
              if (SearchRec.Attr and faDirectory) = faDirectory then
                    // каталоги .. и . тоже каталоги,
                    // но в них входить не надо !!!
                    if SearchRec.Name[1] <> '.' then
                       begin
                         // Form1.Memo1.Lines.Add('>>>>'+SearchRec.Name);
                         ChDir(SearchRec.Name);// войти в каталог
                         Find; // выполнить поиск в подкаталоге
                         ChDir('..');// выйти из каталога
                         //Form1.Memo1.Lines.Add('<<<<'+SearchRec.Name);
                       end;
          until FindNext(SearchRec) <> 0;
end;


// щелчок на кнопке Поиск
procedure TForm1.Button1Click(Sender: TObject);
begin
        if not DirectoryExists(Edit2.Text) then
        begin
            ShowMessage('Каталог указан неверно.');
            Edit2.SetFocus;
            exit;
        end;

        Button1.Enabled := False;
        Label4.Caption := '';
        Label4.Repaint;
        Memo1.Clear;             // очистить поле Memo1
        Label4.Caption := '';
        FileName := Edit1.Text;  // что искать
        cDir := Edit2.Text;      // где искать
        n:=0;                    // кол-во найденных файлов
        ChDir(cDir);             // войти в каталог начала поиска
        Find;                    // начать поиск
        if n = 0 then
           ShowMessage('Файлов, удовлетворяющих критерию поиска нет.')
        else Label4.Caption := 'Найдено файлов:' + IntToStr(n);
        Button1.Enabled := True;
end;

// возвращает каталог, выбранный пользователем
function GetPath(mes: string):string;
var
  Root: string;      // корневой каталог
  pwRoot : PWideChar;
  Dir: string;
begin
  Root := ''; // корневой каталог - папка Рабочий стол
  GetMem(pwRoot, (Length(Root)+1) * 2);
  pwRoot := StringToWideChar(Root,pwRoot,MAX_PATH*2);
  if SelectDirectory(mes, pwRoot, Dir)
     then
          if length(Dir) = 2  // пользователь выбрал корневой каталог
              then GetPath := Dir+'\'
              else GetPath := Dir
     else
          GetPath := '';
end;

// щелчок на кнопке Папка
procedure TForm1.Button2Click(Sender: TObject);
var
  Path: string;
begin
  Path := GetPath('Выберите папку');
  if Path <> ''
     then Edit2.Text := Path;
end;

end.
