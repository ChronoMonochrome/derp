program Project7_1;

uses
  Forms,
  Unit7_1 in 'Unit7_1.pas' {Form7_1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm7_1, Form7_1);
  Application.Run;
end.
