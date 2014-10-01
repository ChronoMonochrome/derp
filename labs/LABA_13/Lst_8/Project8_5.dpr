program Project8_5;

uses
  Forms,
  Unit8_5 in 'Unit8_5.pas' {MyF8_5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyF8_5, MyF8_5);
  Application.Run;
end.
