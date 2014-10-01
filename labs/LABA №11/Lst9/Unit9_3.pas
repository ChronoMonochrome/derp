unit Unit9_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMF9_3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  const y=3.15; //�������� ��������
  var
  MF9_3: TMF9_3;
  b1:real; n:Integer;
implementation

{$R *.dfm}
function Power1(N1:real;P1:Integer):real;  //����������� �������
  var i:Integer; a1:real; //��������� ���������� �������  Power1
  begin  //������ ���� �������
    a1:= N1;
    for i := 1 to P1-1 do   a1:= a1*N1;  //����� �����
    Power1:=a1;
  end;        //����� �������
procedure TMF9_3.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TMF9_3.Button2Click(Sender: TObject);  //���������� � �������
var b1:real; n:Integer;
begin
  b1:= StrToFloat(Edit1.Text);
  n := StrToInt(Edit2.Text);
  b1:=Power1(b1,n)+y; //����� �������
  Label3.Caption := '�����  '+Edit1.Text+' � ������� '+Edit2.Text+' + (y = '
  + FloatToStr(y)+ ') = '+FormatFloat('0.00',b1);
end;

procedure TMF9_3.FormCreate(Sender: TObject);
begin
Edit1.Text:='2,137';
Edit2.Text:='5';
end;

end.
