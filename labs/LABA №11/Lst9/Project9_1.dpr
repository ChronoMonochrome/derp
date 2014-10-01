program Project9_1;

uses
  Forms,
  Unit9_1 in 'Unit9_1.pas' {MyF9_1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyF9_1, MyF9_1);
  Application.Run;
end.
