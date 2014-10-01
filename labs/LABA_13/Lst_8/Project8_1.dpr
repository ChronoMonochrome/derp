program Project8_1;

uses
  Forms,
  Unit8_1 in 'Unit8_1.pas' {MyForm8_1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyForm8_1, MyForm8_1);
  Application.Run;
end.
