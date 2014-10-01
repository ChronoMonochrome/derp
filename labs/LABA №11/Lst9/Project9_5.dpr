program Project9_5;

uses
  Forms,
  Unit9_5.dcu in 'Unit9_5.dcu.pas' {MyForm9_5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyForm9_5, MyForm9_5);
  Application.Run;
end.
