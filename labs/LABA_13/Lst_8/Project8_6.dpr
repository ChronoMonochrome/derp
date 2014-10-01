program Project8_6;

uses
  Forms,
  Unit8_6 in 'Unit8_6.pas' {MyF8_6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyF8_6, MyF8_6);
  Application.Run;
end.
