program Project4_3;

uses
  Forms,
  Unit4_3 in 'Unit4_3.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
