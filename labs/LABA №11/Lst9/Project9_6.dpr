program Project9_6;

uses
  Forms,
  Unit9_6.dcu in 'Unit9_6.dcu.pas' {MForm9_6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMForm9_6, MForm9_6);
  Application.Run;
end.
