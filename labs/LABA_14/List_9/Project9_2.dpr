program Project9_2;

uses
  Forms,
  Unit9_2 in 'Unit9_2.pas' {MForm11_2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMForm11_2, MForm11_2);
  Application.Run;
end.
