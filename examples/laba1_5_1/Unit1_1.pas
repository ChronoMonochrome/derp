unit Unit1_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ListBox1: TListBox;
    Label1: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Alfav: String;
implementation

{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i,m,n,napravlenie,chet:Integer;
  Str1,Simv,K:String;
begin
Alfav:='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 .,!';
K:=Edit2.Text;
Edit4.Clear;
ListBox1.Clear;
n:=StrToInt(Edit1.Text);
Str1:=Edit3.Text;
for i := 1 to Length(Edit3.Text)  do
begin
   Simv:=Str1[i];
   chet:=Pos(K[i mod(5)],Alfav) mod(2);
   if chet=0 then napravlenie:=1
   else napravlenie:=-1;
   m:=Pos(Simv,Alfav);
   m:=m+napravlenie*n;
   m:=m mod(66);
   if m=0 then m:=66;
   Simv:=Alfav[m];
   //Listbox1.Items.Add(Simv);
   Listbox1.Items[i-1]:=Simv;
   Edit4.Text:=Concat(Edit4.Text+Simv);
end;


end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i,m,n,napravlenie,chet:Integer;
  Str1,Simv,K:String;
begin
Alfav:='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 .,!';
K:=Edit2.Text;
Edit5.Clear;
ListBox1.Clear;
n:=StrToInt(Edit1.Text);
Str1:=Edit4.Text;
for i := 1 to Length(Edit4.Text)  do
begin
   Simv:=Str1[i];
   chet:=Pos(K[i mod(5)],Alfav) mod(2);
   if chet=0 then napravlenie:=1
   else napravlenie:=-1;
   m:=Pos(Simv,Alfav);
   m:=m-napravlenie*n+66;
   m:=m mod(66);
   Simv:=Alfav[m];
   //Listbox1.Items.Add(Simv);
   Listbox1.Items[i-1]:=Simv;
   Edit5.Text:=Concat(Edit5.Text+Simv);
end;


end;
end.
