program Project4_1;

uses
  Forms,
  Unit4_1 in 'Unit4_1.pas' {MyForm4_1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyForm4_1, MyForm4_1);
  Application.Run;
end.
