unit Unit8_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Fr8_1;

type
  TForm17 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Frame8_11: TFrame8_1;
    procedure Frame8_11Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

procedure TForm17.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TForm17.Button2Click(Sender: TObject);
begin
  ScrollBox1.ScrollInView (CheckBox3);
end;

procedure TForm17.FormCreate(Sender: TObject);
begin
RadioButton3.Checked:=True;
CheckBox2.Checked:=True;
Panel1.Alignment:=taLeftJustify;
Panel1.BevelOuter:=  bvRaised;
Panel1.BevelWidth:=5;
Panel2.Alignment:=taCenter;
Panel2.BevelOuter:=  bvLowered ;
Panel2.BevelWidth:=3;
end;

procedure TForm17.Frame8_11Button1Click(Sender: TObject);
begin
ScrollBox1.ScrollInView (CheckBox5);
end;

end.
