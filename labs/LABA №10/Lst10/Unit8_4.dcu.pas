unit Unit8_4.dcu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyForm8_4 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Label3: TLabel;
    Button3: TButton;
    Label4: TLabel;
    Label5: TLabel;
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
  MyForm8_4: TMyForm8_4;
  i,j: Integer;
  n:Real=0.57;
  Ms1,Ms2:array of real;

implementation

{$R *.dfm}

procedure TMyForm8_4.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TMyForm8_4.Button2Click(Sender: TObject);
begin
SetLength(Ms1,StrToInt(Edit1.Text));
Label3.Caption:='Разм-ть массива Ms1 после кор-вки равна High(Ms1)+1 = '+
IntToStr(High(Ms1)+1);

SetLength(Ms2,StrToInt(Edit2.Text));
Label4.Caption:='Разм-ть массива Ms2 после кор-вки равна High(Ms2)+1 = '+
IntToStr(High(Ms2)+1);

ListBox1.Clear;
for i := 0 to High(Ms1) do
  begin
   Ms1[i]:= Ms2[i]*StrToFloat('1,12');               //Ms1[i] = Ms2[i]*1.12
   ListBox1.Items[i]:=FormatFloat('0.00',Ms2[i]/n);  //ListBox1[i] = Ms2[i]/n
  end;
end;

procedure TMyForm8_4.Button3Click(Sender: TObject);
begin
ListBox2.Clear;
SetLength(Ms2,StrToInt(Edit2.Text));
Label4.Caption:='Разм-ть массива Ms2 после кор-вки равна High(Ms2)+1 = '+
IntToStr(High(Ms2)+1);
for i := 0 to High(Ms2) do
  begin
   ListBox2.Items[i]:=FormatFloat('00.00',Ms2[i]);  //ListBox2[i] = Ms2[i]
  end;
end;

procedure TMyForm8_4.FormCreate(Sender: TObject);
begin
Edit1.Text:='15';
Edit2.Text:='10';

SetLength(Ms2,StrToInt(Edit2.Text));
Ms2[0]:=StrToFloat('1.25');
for i := 1 to Length(Ms2)-1 do
  Ms2[i]:=Ms2[i-1]+StrToFloat('0.03');
end;

end.
