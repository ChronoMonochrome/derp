program Project8_1;

uses
  Forms,
  Unit8_1 in 'Unit8_1.pas' {Form17},
  Fr8_1 in 'Fr8_1.pas' {Frame8_1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm17, Form17);
  Application.Run;
end.
