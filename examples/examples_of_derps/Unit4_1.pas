unit Unit4_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Edit1: TEdit;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
Listbox1.Items.Add(Edit1.Text);
Edit1.Text:= '';
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Listbox1.Sorted := True;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
Listbox1.Clear;
Listbox1.Sorted := False;

end;

procedure TForm5.Button4Click(Sender: TObject);
begin
Close; 
end;

end.
