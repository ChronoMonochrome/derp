unit Unit9_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm17 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Label3: TLabel;
    Button2: TButton;
    Label4: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type    //�������� ���� ��������� ������
  Date=record        //���� �������� (��������� ������)
    Day:1..31;         //����
    Manth:1..12;       //�����
    Year:1908..2010;   //���
end;

type     //�������� ���� ��������� ������
  Money=record  //����������� ��������  (��������� ������)
    Janury,February,Mart,Apr:real; //�������� �� ������-������
  end;

type    //�������� �������� ������
Cafedra=record //������ � ���������� (�������� ������)
  Ident:Word;                     //���
  SrName,Name,ScName:string[20];  //���
  BirtDate:Date;                  //���� ��������
  Standing:byte;//���� ������
  Salary:Money;//������� ������
end;

var
  Form17: TForm17;
  Labor1,Labor2:Cafedra;  //������ ���� Cafedra
  i,j,m:Integer;
  Srz:real;
  Srn:string[20];

implementation

{$R *.dfm}

procedure TForm17.Button1Click(Sender: TObject);  //�����
begin
  Close;
end;

procedure TForm17.Button2Click(Sender: TObject);   //������
begin
 Label4.Caption:=' ';  Label3.Caption:=' ';//������� ����������� Label3 � Label4
 if Edit1.Text=Labor1.SrName then  m:=1 //������������� ������� �� �������
 else
      begin
         if Edit1.Text=Labor2.SrName then  m:=2
         else m:=0;
       end;

  case m of   //���� m = 1 - ������. ���� m = 2 - ������. ���� m = 0 - �����
   1: Srz:=(Labor1.Salary.Janury+Labor1.Salary.February+Labor1.Salary.Mart)/3.0;
   2: Srz:=(Labor2.Salary.Janury+Labor2.Salary.February+Labor2.Salary.Mart)/3.0;
   0: Label4.Caption:=
            '����. ���.  '+Edit1.Text+'  ����� ������� ��� � ����� ������';
  end;
  if m<>0 then  Label3.Caption:=  //��. �������� �� ����� � I ��������
  '��. ���. '+Edit1.Text+' ���� ��. �������� �� I ��.= '
  +FormatFloat('0000.00',Srz)+' ���.';
end;

procedure TForm17.FormCreate(Sender: TObject);  // �������������
  begin
    Labor1.SrName:= '������';
    With Labor1.Salary do // �������� ������� �� 4 �������
      begin
        Janury:=13250; February:=13500; Mart:=14100; Apr:=14500;
    end;

    Labor2.SrName:= '������';
    With Labor2.Salary do // �������� ������� �� 4 �������
      begin
        Janury:=15200; February:=14350; Mart:=16100; Apr:=15200;
    end;
  end;
end.
