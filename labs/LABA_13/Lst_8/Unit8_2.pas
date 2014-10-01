unit Unit8_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyF8_2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
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
  MyF8_2: TMyF8_2;

implementation

{$R *.dfm}

procedure TMyF8_2.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TMyF8_2.Button2Click(Sender: TObject);
begin
ListBox1.TopIndex:=3;
ListBox2.TopIndex:=4;
end;

procedure TMyF8_2.Button3Click(Sender: TObject);
begin
ListBox1.MultiSelect:=True;
Label1.Caption:='SelCount = '+IntToStr(ListBox1.SelCount);
end;

procedure TMyF8_2.Button4Click(Sender: TObject);
begin
Label2.Caption:='� ���������� ������ = '+ IntToStr(ListBox2.ItemIndex);
end;

procedure TMyF8_2.FormCreate(Sender: TObject);
begin
ListBox1.Items.Add ('������');
ListBox1.Items.Add ('�����');
ListBox1.Items.Add ('�������');
ListBox1.Items.Add ('��������');
ListBox1.Items.Add ('�������');
ListBox1.Items.Add ('�������');
ListBox1.Items.Add ('�����');
ListBox1.Items.Add ('�������');

ListBox1.Style:= lbOwnerDrawFixed;
ListBox1.ItemHeight:= 15;

ListBox2.Items.Add ('�������');
ListBox2.Items.Add ('�������');
ListBox2.Items.Add ('�����');
ListBox2.Items.Add ('�������');
ListBox2.Items.Add ('������');
ListBox2.Items.Add ('�����');
ListBox2.Items.Add ('�������');
ListBox2.Items.Add ('��������');
ListBox2.Items.Add ('�������');

ListBox2.BorderStyle:= bsNone;
ListBox2.Columns:=2;
end;

end.
