program Project8_3;

uses
  Forms,
  Unit8_3 in 'Unit8_3.pas' {MyForm8_3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyForm8_3, MyForm8_3);
  Application.Run;
end.
