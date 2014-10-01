program Project4_2;

uses
  Forms,
  Unit4_2.dcu in 'Unit4_2.dcu.pas' {MyF4_2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyF4_2, MyF4_2);
  Application.Run;
end.
