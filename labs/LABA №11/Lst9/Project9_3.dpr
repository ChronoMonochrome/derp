program Project9_3;

uses
  Forms,
  Unit9_3 in 'Unit9_3.pas' {MF9_3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMF9_3, MF9_3);
  Application.Run;
end.
