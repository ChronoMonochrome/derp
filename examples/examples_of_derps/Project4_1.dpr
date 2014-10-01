program Project4_1;

uses
  Forms,
  Unit4_1 in 'Unit4_1.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
