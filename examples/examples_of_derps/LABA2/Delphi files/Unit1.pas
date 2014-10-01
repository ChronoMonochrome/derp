unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Unit2;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    Frame21: TFrame2;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Frame21Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  	//��������� ���������� ��� ����������, ���� � ���������
  	KolS, CenaS, StoimS: string;
  	//������������� ���������� ��� ����������, ���� � ���������
  	KolInt, CenaInt, StoimInt: integer;
begin
//��������� �� ���� ���������� �������� ������ ��� ��������� ��������
  	KolS := Edit1.Text;
  		//��������� �� ���� ���� �������� ������ ��� ��������� ��������
  	CenaS := Edit2.Text;

     //����������� ���������� �������� � �������������
  	KolInt := StrToInt(KolS);
 	  CenaInt := StrToInt(CenaS);

    	//��������� ��������� �� �������
  	StoimInt := KolInt * CenaInt;

       		//���������� �������� �������� ��������� ����������� � ����������
 	 StoimS := IntToStr(StoimInt);

   	//���������� �������� ������� � ���� ���������
  	Edit3.Text := StoimS;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
form1.Width := StrToInt(Edit4.Text);
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
form1.Height := StrToInt(Edit5.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Form1.Caption:= '������������ ������ �2';
end;

procedure TForm1.Frame21Button1Click(Sender: TObject);
var s: string;
begin
//��������� ��������� ��������� ������. 
 	s:=Frame21.Edit1.Text; 
  Frame21.Memo1.Lines.Add(s);
 	Frame21.Edit1.Text := '';


end;

end.
