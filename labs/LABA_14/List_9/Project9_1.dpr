program Project9_1;

uses
  Forms,
  Unit9_1 in 'Unit9_1.pas' {MyF11_1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyF11_1, MyF11_1);
  Application.Run;
end.
