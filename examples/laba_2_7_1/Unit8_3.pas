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

function glasn_count(text:String):Integer;
var
  i,k1,k2,n:Integer;
  p:Bool;
begin
    n:=0;
    p:=true;
    for I := 0 to Length(text)-1 do
    begin
        k1:=ord(text[i]);
        k2:=ord(text[i+1]);
        if (((k1=97) or (k1=101) or (k1=105) or (k1=111) or (k1=117) or (k1=121)) and ((k2=97) or (k2=101) or (k2=105) or (k2=111) or (k2=117) or (k2=121))) then
        n:=2;
    end;
     glasn_count:=n;
end;

procedure TMyForm8_3.Button1Click(Sender: TObject);
var i,gc_s:Integer;
var s:String;
begin
  i:=0;
  while i<ListBox1.Items.Count do
  begin
    s:=ListBox1.Items[i];
    gc_s:=glasn_count(s);
    if gc_s>1 then Listbox1.Items.Delete(i)
    else i:=i+1;
  end;

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
      //Combobox1.Clear;
      //Combobox1.Items:=Listbox1.Items;
end;

procedure TMyForm8_3.ComboBox2Change(Sender: TObject);
var i:Integer;
begin
      //Combobox2.Clear;
      //Combobox2.Items:=Listbox2.Items;
end;

procedure TMyForm8_3.FormCreate(Sender: TObject);
  begin
    //Отключить сортировку элементов
    ListBox1.Sorted := False;
    ListBox2.Sorted := False;

    //Включить возможность множественного выбора элементов
    ListBox1.MultiSelect:= True;
    ListBox2.MultiSelect:= True;

    //Разрешить выбор элементов с помощью клавиатуры
    ListBox1.ExtendedSelect := True;
    ListBox2.ExtendedSelect := True;

    //Заполнить данными первый список
    ListBox1.Clear;
    ListBox1.Items:=Combobox1.Items;

    //Очистить второй список
    ListBox2.Clear;

    //Разрешить операцию по автоматическому перемещению
    //элементов с помощью мыши
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
    //Combobox1.Items:=Listbox1.Items;
    //Combobox2.Items:=Listbox2.Items;
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
    //Combobox1.Items:=Listbox1.Items;
    //Combobox2.Items:=Listbox2.Items;
    end;

end.
