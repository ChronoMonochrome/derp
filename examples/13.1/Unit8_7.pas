unit Unit8_7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMF8_7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    //procedure Button5Click(Sender: TObject);
    //procedure Button4Click(Sender: TObject);
    //procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MF8_7: TMF8_7;
  Ms1:array [1..24] of Integer;
  Ms2:array [1..30] of Integer;
implementation

{$R *.dfm}

procedure TMF8_7.Button1Click(Sender: TObject);
begin
Close;
end;
           //ÑÎĞÒÈĞÎÂÊÀ ÄÈÍÀÌÈ×ÅÑÊÎÃÎ ÌÀÑÑÈÂÀ 6x4 ÌÅÒÎÄÎÌ ÂÛÁÎĞÀ
procedure TMF8_7.Button2Click(Sender: TObject); //Ñîğòèğîâêà ïî âîçğîñòàíèş
var i,j,k:Integer;
   p:String;
   // m: array [0..4,0..4] of Integer;
    //n: array [0..24] of Integer;
begin
        // for I := 0 to 24 do
        // begin
        //      m[i mod(5)][i div 5]:=StrToInt(Listbox1.Items[i]);
        // end;
         for I := 0 to 4 do
         begin
           for j := 0 to 4 do
           begin
                //p:=Listbox2.Items[i*4+j];
                Listbox2.Items[i*5+j]:=Listbox1.Items[j*5+i];
                //Listbox1.Items[j*4+i]:=p;
           end;
         end;

    //Listbox2.Items:=n;

end;


procedure TMF8_7.FormCreate(Sender: TObject);
var i:Integer;
begin

ListBox1.MultiSelect:=True;
//ListBox1.Items[0]:='7'; ListBox1.Items[1]:='3';
//ListBox1.Items[2]:='14'; ListBox1.Items[3]:='251';
//ListBox1.Items[4]:='7'; ListBox1.Items[5]:='13';
//ListBox1.Items[6]:='114'; ListBox1.Items[7]:='51';
//ListBox1.Items[8]:='4'; ListBox1.Items[9]:='151';



end;

end.
