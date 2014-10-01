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
    BitBtn1: TBitBtn;
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
    ListBox1.Items.Add('Иванов В.А.');
    ListBox1.Items.Add('Петров Л.И.');
    ListBox1.Items.Add('Сидров И.К.');
    ListBox1.Items.Add('Зайцев Д.Я.');
    ListBox1.Items.Add('Борисов В.В.');

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
    end;

end.
