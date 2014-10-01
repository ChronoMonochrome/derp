program FindFile;

uses
  Forms,
  FindFile_ in 'C:\Documents and Settings\Студент\My Documents\Новая папка\FindFile_.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Поиск файла';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
