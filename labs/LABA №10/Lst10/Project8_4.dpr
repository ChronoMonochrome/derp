program Project8_4;

uses
  Forms,
  Unit8_4.dcu in 'Unit8_4.dcu.pas' {MyForm8_4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyForm8_4, MyForm8_4);
  Application.Run;
end.
