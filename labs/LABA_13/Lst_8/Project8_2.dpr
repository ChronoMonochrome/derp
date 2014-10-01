program Project8_2;

uses
  Forms,
  Unit8_2 in 'Unit8_2.pas' {MyF8_2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyF8_2, MyF8_2);
  Application.Run;
end.
