unit Unit9_4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm17 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation
{$R *.dfm}
// �������� � ���������  Mes1 (��� TEdit - ������������ ��������), ������� �
//������� m ������ n �������� s
procedure VstSimv (s:char; n,m: String; var Mes1:TEdit);
var i,j,k:integer; Str,Str1:string;  //����������� ��������� ����������
begin
  Str:='';
  j:= StrToInt(n); //���������� ����������� �������� s

  for i := 1 to  j do  Str:=Str+s;
  k:= StrToInt(m); //����� ������� � ���������, ���� ����������� ������� s
  Str1:=Mes1.Text;
  Insert(Str,Str1,k);  //�������� �������
  Mes1.Text:=Str1;
end;
procedure TForm17.Button2Click(Sender: TObject); //��������
begin
//Edit2.Text - �������������� ���������; Edit4.Text[1] - ������ - �����������
//Edit3.Text - ���-�� ����������� �������� s; Edit1.Text - � ������� � ���������
   VstSimv(Edit4.Text[1],Edit3.Text,Edit1.Text,Edit2); {�������� ������� -
   ������.� ������. }
end;

procedure TForm17.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
