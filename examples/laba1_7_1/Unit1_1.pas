unit Unit1_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
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
  i,m,n:Integer;
  Str1,Simv,K:String;
begin
Alfav:='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZàáâãäå¸æçèéêëìíîïğñòóôõö÷øùúûüışÿÀÁÂÃÄÅ¨ÆÇÈÉÊËÌÍÎÏĞÑÒÓÔÕÖ×ØÙÚÛÜİŞß0123456789 .,!';
K:=Edit2.Text;
Edit4.Clear;
ListBox1.Clear;
Str1:=Edit3.Text;
for i := 1 to Length(Edit3.Text)  do
begin
   Simv:=Str1[i];
   m:=Pos(Simv,Alfav);
   n:=Pos(K[i mod(6)],Alfav); //ğåàëèçàöèÿ f(K)
   // ñäâèã ğàâåí ïîçèöèè òåêóùåãî ñèìâîëà â àëôàâèòå.
   n:=n mod (13);
   // ñäâèã îãğàíè÷åí äî 13
   m:=m-n+132;
   m:=m mod(132);
   Simv:=Alfav[m];
   //Listbox1.Items.Add(Simv);
   Listbox1.Items[i-1]:=Simv;
   Edit4.Text:=Concat(Edit4.Text+Simv);
end;


end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i,m,n:Integer;
  Str1,Simv,K:String;
begin
Alfav:='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZàáâãäå¸æçèéêëìíîïğñòóôõö÷øùúûüışÿÀÁÂÃÄÅ¨ÆÇÈÉÊËÌÍÎÏĞÑÒÓÔÕÖ×ØÙÚÛÜİŞß0123456789 .,!';
K:=Edit2.Text;
Edit5.Clear;
ListBox1.Clear;
Str1:=Edit4.Text;
for i := 1 to Length(Edit4.Text)  do
begin
   Simv:=Str1[i];
   n:=Pos(K[i mod(6)],Alfav) mod(13);
   m:=Pos(Simv,Alfav);
   m:=m+n;
   m:=m mod(132);
   if m=0 then m:=132;
   Simv:=Alfav[m];
   //Listbox1.Items.Add(Simv);
   Listbox1.Items[i-1]:=Simv;
   Edit5.Text:=Concat(Edit5.Text+Simv);
end;


end;
end.
