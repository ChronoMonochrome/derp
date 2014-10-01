program Factorial;

uses
  Forms,
  Unit1 in 'Unit1.pas' {fmExample};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, fmExample);
  Application.Run;
end.

