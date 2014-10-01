unit Unit3_5_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type

			Student = record
			Familiya, Imya, Otchestvo: string [20];	//ФИО
			Date: string[10];					//Год рождения
      Pol: string[1]; // пол: м/ж
			Dolzh: string[20];				//Должность
			Zvanie: string[20];					//Звание
      Group: integer; //номер группы
      Otsenka1,Otsenka2,Otsenka3:integer; // оценки
			end;

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    EFamiliya: TEdit;
    EImya: TEdit;
    Label4: TLabel;
    EOtchestvo: TEdit;
    EGroup: TEdit;
    Label3: TLabel;
    EDate: TEdit;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EPol: TEdit;
    Label8: TLabel;
    Button2: TButton;
    Button3: TButton;
    Label9: TLabel;
    Memo1: TMemo;
    //procedure Memo1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    //procedure ComboBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Sidorov,Petrov,Ivanov : Student; //Структурированные переменные типа Student


implementation

{$R *.dfm}
procedure TForm1.FormCreate(Sender: TObject);
begin
     Memo1.Clear;
     with Ivanov do
     begin
          Imya:='Елена';
          Familiya:='Иванова';
          Otchestvo:='Федоровна';
          Pol:='Ж';
          Date:='3.2.1994';
          Group:=101;
          Otsenka1:=4;
          Otsenka2:=4;
          Otsenka3:=5;
     end;
     with Petrov do
     begin
          Imya:='Ирина';
          Familiya:='Петрова';
          Otchestvo:='Антоновна';
          Pol:='Ж';
          Date:='2.12.1993';
          Group:=201;
          Otsenka1:=4;
          Otsenka2:=3;
          Otsenka3:=5;
     end;
     with Sidorov do
     begin
          Imya:='Владимир';
          Familiya:='Сидоров';
          Otchestvo:='Николаенко';
          Pol:='М';
          Date:='3.2.1992';
          Group:=301;
          Otsenka1:=5;
          Otsenka2:=5;
          Otsenka3:=5;
     end;
end;



procedure TForm1.Button1Click(Sender: TObject);
var i,p,s:bool;
    loosers:String[200];
begin
      loosers:='';
      with Ivanov do
      begin
           i:=((Pol='Ж') and (Otsenka1>3)and (Otsenka2>3) and (Otsenka3>3));
      end;
      with Petrov do
      begin
           p:=((Pol='Ж') and (Otsenka1>3)and (Otsenka2>3) and (Otsenka3>3));
      end;
      with Sidorov do
      begin
           s:=((Pol='Ж') and (Otsenka1>3)and (Otsenka2>3) and (Otsenka3>3));
      end;
      if i then loosers:=loosers+'Иванова, ';
      if p then loosers:=loosers+'Петрова, ';
      if s then loosers:=loosers+'Сидоров, ';
      Memo1.Text:=loosers;

end;

procedure TForm1.Button2Click(Sender: TObject);
var current:Student;
begin
     if (ComboBox1.ItemIndex=0) then current:=Ivanov
     else if (ComboBox1.ItemIndex=1) then current:=Petrov
     else if (ComboBox1.ItemIndex=2) then current:=Sidorov;
      with current do
      begin
          EImya.Text:=Imya;
          EFamiliya.Text:=Familiya;
          EOtchestvo.Text:=Otchestvo;
          EPol.Text:=Pol;
          EDate.Text:=Date;
          EGroup.Text:=IntToStr(Group);
          Edit2.Text:=IntToStr(Otsenka1);
          Edit3.Text:=IntToStr(Otsenka2);
          Edit4.Text:=IntToStr(Otsenka3);
      end;

end;


procedure TForm1.Button3Click(Sender: TObject);
var current:Student;
begin
     if (ComboBox1.ItemIndex=0) then current:=Ivanov
     else if (ComboBox1.ItemIndex=1) then current:=Petrov
     else if (ComboBox1.ItemIndex=2) then current:=Sidorov;
      with current do
      begin
          Imya:=EImya.Text;
          Familiya:=EFamiliya.Text;
          Otchestvo:=EOtchestvo.Text;
          Pol:=EPol.Text;
          Date:=EDate.Text;
          Group:=StrToInt(EGroup.Text);
          Otsenka1:=StrToInt(Edit2.Text);
          Otsenka2:=StrToInt(Edit3.Text);
          Otsenka3:=StrToInt(Edit4.Text);
      end;
     if (ComboBox1.ItemIndex=0) then Ivanov:=current
     else if (ComboBox1.ItemIndex=1) then Petrov:=current
     else if (ComboBox1.ItemIndex=2) then Sidorov:=current;
end;



end.
