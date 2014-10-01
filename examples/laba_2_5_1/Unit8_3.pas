unit Unit8_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TMyForm8_3 = class(TForm)
    Left: TButton;
    Right: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button2: TButton;
    procedure ComboBox2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure RightClick(Sender: TObject);
    procedure LeftClick(Sender: TObject);
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
var List: TStrings;
var i,c:Integer;
var s:String;
begin
  List := TStringList.Create;
  for i := 0 to ListBox1.Items.Count - 1 do
  begin
  c:=ord(ListBox1.Items[i][1]);
  if ((c>96) and (c<123)) then
      List.Add(ListBox1.Items[i]);
  end;
  List.SaveToFile('List1.txt');
  List.Destroy();
end;

procedure TMyForm8_3.Button2Click(Sender: TObject);
var List1: TStrings;
var i,c:Integer;
var s:String;
begin
  List1 := TStringList.Create;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
  c:=ord(ListBox2.Items[i][1]);
  if ((c>96) and (c<123)) then
      List1.Add(ListBox2.Items[i]);
  end;
  List1.SaveToFile('List2.txt');
  List1.Destroy();
end;

procedure TMyForm8_3.ComboBox1Change(Sender: TObject);
var i:Integer;
begin
      Combobox1.Clear;
      Combobox1.Items:=Listbox1.Items;
end;

procedure TMyForm8_3.ComboBox2Change(Sender: TObject);
var i:Integer;
begin
      Combobox2.Clear;
      Combobox2.Items:=Listbox2.Items;
end;

procedure TMyForm8_3.FormCreate(Sender: TObject);
  begin
    //Îòêëş÷èòü ñîğòèğîâêó ıëåìåíòîâ
    ListBox1.Sorted := False;
    ListBox2.Sorted := False;

    //Âêëş÷èòü âîçìîæíîñòü ìíîæåñòâåííîãî âûáîğà ıëåìåíòîâ
    ListBox1.MultiSelect:= True;
    ListBox2.MultiSelect:= True;

    //Ğàçğåøèòü âûáîğ ıëåìåíòîâ ñ ïîìîùüş êëàâèàòóğû
    ListBox1.ExtendedSelect := True;
    ListBox2.ExtendedSelect := True;

    //Çàïîëíèòü äàííûìè ïåğâûé ñïèñîê
    ListBox1.Clear;
    ListBox1.Items.Add('table');
    ListBox1.Items.Add('phone');
    ListBox1.Items.Add('Pen');
    ListBox1.Items.Add('Pencil');
    ListBox1.Items.Add('note');

    //Î÷èñòèòü âòîğîé ñïèñîê
    ListBox2.Clear;

    //Ğàçğåøèòü îïåğàöèş ïî àâòîìàòè÷åñêîìó ïåğåìåùåíèş
    //ıëåìåíòîâ ñ ïîìîùüş ìûøè
    ListBox1.DragMode := dmAutomatic;
    ListBox2.DragMode := dmAutomatic;
    end;

procedure TMyForm8_3.LeftClick(Sender: TObject);
  var i:integer;
    begin
      for i := ListBox2.Items.Count - 1 downto 0 do
      if ListBox2.Selected[i] then
        begin
          ListBox1.Items.Add(ListBox2.Items[i]);
          ListBox2.Items.Delete(i);
        end;
    Combobox1.Items:=Listbox1.Items;
    Combobox2.Items:=Listbox2.Items;
    end;

procedure TMyForm8_3.ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
   Left.Click;
end;

procedure TMyForm8_3.ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
    if Source = ListBox2 then Accept := True else Accept := False;
end;

procedure TMyForm8_3.ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
    Right.Click;
end;

procedure TMyForm8_3.ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
    if Source = ListBox1 then Accept := True else Accept := False;
end;

procedure TMyForm8_3.RightClick(Sender: TObject);
    var i:integer;
    begin
      for i := ListBox1.Items.Count - 1 downto 0 do
      if ListBox1.Selected[i] then
        begin
          ListBox2.Items.Add(ListBox1.Items[i]);
          ListBox1.Items.Delete(i);
        end;
    Combobox1.Items:=Listbox1.Items;
    Combobox2.Items:=Listbox2.Items;
    end;

end.
