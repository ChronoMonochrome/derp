unit Unit8_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyForm8_3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MyForm8_3: TMyForm8_3;

implementation

{$R *.dfm}

procedure TMyForm8_3.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TMyForm8_3.Button2Click(Sender: TObject);
var i:integer;
begin
for i:=0 to ListBox1.Items.Count-1 do
if ListBox1.Selected[i] then
  begin
    ListBox1.Selected[i]:= False;
    ListBox2.Items[i]:= '*******';
    ListBox2.Selected[i]:= True;
  end;
end;

procedure TMyForm8_3.Button3Click(Sender: TObject);
begin
  Label1.Caption:=ListBox1.Items[ListBox2.ItemIndex];
  ListBox2.Selected[ListBox2.ItemIndex]:= False;
end;

procedure TMyForm8_3.FormCreate(Sender: TObject);
var i:integer;
begin
ListBox1.Items.Add ('Иванов');
ListBox1.Items.Add ('Петов');
ListBox1.Items.Add ('Сидоров');
ListBox1.Items.Add ('Стариков');
ListBox1.Items.Add ('Троянов');
ListBox1.Items.Add ('Батурин');
ListBox1.Items.Add ('Мусов');
ListBox1.Items.Add ('Терехов');

ListBox1.MultiSelect:=True;

ListBox2.MultiSelect:=True;
for i:=0 to ListBox1.Items.Count-1 do //Копирование  ListBox1 в ListBox2
ListBox2.Items.Add(ListBox1.Items[i]);

ListBox2.Columns:=2;
end;

end.
