unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i,max,min,min_s,max_s,k:Integer
begin
max:=0;
min:=0;
for I := 0 to 20 do
	begin
		if Listbox1.Items[i]>max then 
			begin
			max:=Listbox1.Items[i];
			max_s:=i div 7;
			end;
		if Listbox1.Items[i]<min then 
			begin
			min:=Listbox1.Items[i];
			min_s:=i div 7;
			end;
	end;
for i:=0 to 6 do
begin
	p:=ListBox2.Items[min_s*7+i];
	ListBox2.Items[min_s*7+i]:=ListBox2.Items[max_s*7+i];
	ListBox2.Items[max_s*7+i]:=p;
end;


end;

end.
