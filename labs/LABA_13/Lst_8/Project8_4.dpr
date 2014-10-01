program Project8_4;

uses
  Forms,
  Unit8_4 in 'Unit8_4.pas' {MyF8_4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyF8_4, MyF8_4);
  Application.Run;
end.
