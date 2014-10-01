program Project4_2;

uses
  Forms,
  Unit4_2 in 'Unit4_2.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  //Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
