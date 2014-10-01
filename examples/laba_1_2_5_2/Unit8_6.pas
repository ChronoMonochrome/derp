unit Unit8_6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyF8_6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Button3: TButton;
    ListBox3: TListBox;
    Label3: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const n=5;
var
  MyF8_6: TMyF8_6;
  //Set1:set of 1..5;
  Mn1,Mn2,Mn3:set of Char;
  //Ms1:array [1..8] of Word;
  //Ms2:array [1..12] of Word;
implementation

{$R *.dfm}

procedure TMyF8_6.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TMyF8_6.Button3Click(Sender: TObject);
var
    i:Integer;
    c:Char;
    //Set1:=[1,2,3,4,5,6,7,8];
begin
  Mn1:=['a','e','z','i','b','i','e','t'];
  Mn2:=['b','r','s','r','a','y','v','z','o','u','t','5'];
  Mn3:=Mn2-Mn1;
  for i := 0 to 255 do
  begin
          c:= char(i);
          if (c in Mn1) then ListBox1.Items.Add(IntToStr(ord(c)));
          if (c in Mn2) then ListBox3.Items.Add(IntToStr(ord(c)));
          if (c in Mn3) then ListBox2.Items.Add(IntToStr(ord(c)));
          
  end;

end;

procedure TMyF8_6.FormCreate(Sender: TObject);
var i:Integer;
begin


//ListBox1.MultiSelect:=True;
//ListBox2.Columns:=2;
end;

end.
