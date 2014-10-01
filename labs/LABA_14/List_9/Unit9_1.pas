unit Unit9_1;   //������ �����������

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyF11_1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const n=255;
var
  MyF11_1: TMyF11_1;
  Ms1,Ms2:array [word] of word;   // �������� ���� ��������
  i,j:Word;
  m,k:Word;   // m - ������������� �����, � - ���������� ������� �����
implementation

{$R *.dfm}

procedure TMyF11_1.Button1Click(Sender: TObject);  //�����
begin
Close;
end;

procedure TMyF11_1.Button2Click(Sender: TObject);
begin
m:=StrToInt(Edit1.Text);   //������������� �����
if m>65535 then  m:=65535; //������������ ����� ������ ������� ����������
for i := 2 to m do
begin
Ms1[i]:=i;       //�������� ������� �������� ������� ��������� � ��� ������. �
Ms2[i]:=0;      //�������� ������ ������
end;

j:=2; k:=0;
repeat       //�������� ���� � ������������
  while (Ms1[j]=0) and (j<m) do j:=J+1;//���� Ms1[j]=0 � j<m -�� ���� ����������

 if Ms1[j]>0 then
   begin
     k:=k+1;
     Ms2[k-1]:=j;  //������� ������� ����� j � ������ Ms2
   end;
  i:=j;
  while i<=m do  //�������� � ������� Ms1 ��� �������� � ������� �������� j
    begin
      Ms1[i]:=0;
      i:=i+j;    //��������� ������� ����� ������� j
    end;
    j:=j+1;
until j>m;    // ������� ������ �� ��������� ����� repeet
ComboBox1.Clear; //�������� ������
for i:=0  to k-1 do
ComboBox1.Items.Add (IntToStr(Ms2[i])); //���������� ��� ������� ����� ��
                                        //�������  Ms2 � ComboBox1
end;

procedure TMyF11_1.FormCreate(Sender: TObject);
var i:integer;
begin
  Edit1.Text:= '100';
  ComboBox1.Style:=csSimple; //��������� ��������� ������
  ComboBox1.Height:=163;     //��� ������ � ��������
end;
end.
