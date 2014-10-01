unit Unit8_4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyF8_4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MyF8_4: TMyF8_4;

implementation

{$R *.dfm}

procedure TMyF8_4.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TMyF8_4.Button2Click(Sender: TObject);
begin
if ComboBox1.DroppedDown =False then  ComboBox1.DroppedDown :=True
else  ComboBox1.DroppedDown :=False;
end;

procedure TMyF8_4.FormCreate(Sender: TObject);
var i:integer;
begin
  ComboBox1.Items.Add ('Иванов');
  ComboBox1.Items.Add ('Петов');
  ComboBox1.Items.Add ('Сидоров');
  ComboBox1.Items.Add ('Стариков');
  ComboBox1.Items.Add ('Троянов');
  ComboBox1.Items.Add ('Батурин');
  ComboBox1.DropDownCount:= 3;

  ComboBox2.Style:=csSimple;
  ComboBox2.Height:=100;

  for i:=0 to ComboBox1.Items.Count-1 do //Копирование  ListBox1 в ListBox2
    ComboBox2.Items.Add(ComboBox1.Items[i]);
  end;

end.
