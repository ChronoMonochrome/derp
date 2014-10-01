unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
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

function getn(i:Integer):Integer;
var
s:String;
n,k:Integer;
begin
  s:=IntToStr(i);
  n:=0;
  for k := 1 to Length(s) do
    n:=n+StrToInt(s[k]);
  getn:=n;
end;





procedure TForm1.Button1Click(Sender: TObject);
var k,nn,i,j,m1,m2,t:Integer;
    p:bool;
    ps:array [0..6541] of Integer;
begin
         m1:=StrToInt(Edit1.Text);
         m2:=StrToInt(Edit2.Text);
         nn:=0;
         j:=0;
         k:=1 ;
         ps[0]:=2;
         for t := 1 to 6541 do ps[t]:=1;
         for i := 3 to m2-1 do
            begin
              p:=true;
              j:=0;
              while ((j<k) and p) do
                  begin
                    p:=p and ((i mod ps[j])<>0);
                    j:=j+1;
                  end;
              if p then
                  begin
                    ps[k]:=i;
                    k:=k+1;
                    if (getn(i)>getn(nn)) and (i>m1) then nn:=i;

                  end;

            end;
  Label3.Caption:=IntToStr(nn);

end;

end.
