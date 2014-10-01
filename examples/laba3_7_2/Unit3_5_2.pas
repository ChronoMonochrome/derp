unit Unit3_5_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type

			Prepod = record
			Familiya, Imya, Otchestvo: string [20];	//ФИО
			Date: integer;					//Год рождения
      Pol: string[1]; // пол: м/ж
			Uch: string[20];					//Звание
      Rang: string[20]; //должность
      Money: integer;//зарплата
			end;

  TForm1 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    EFamiliya: TEdit;
    EImya: TEdit;
    Label4: TLabel;
    EOtchestvo: TEdit;
    ERang: TEdit;
    EDate: TEdit;
    Label5: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EPol: TEdit;
    Label8: TLabel;
    Button2: TButton;
    Button3: TButton;
    EUch: TEdit;
    Label3: TLabel;
    EMoney: TEdit;
    Label9: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    //procedure Memo1Change(Sender: TObject);

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
  Sidorov,Petrov,Ivanov : Prepod; //Структурированные переменные типа Prepod


implementation

{$R *.dfm}
procedure TForm1.FormCreate(Sender: TObject);
begin
     //Memo1.Clear;
     with Ivanov do
     begin
          Imya:='Александр';
          Familiya:='Иванов';
          Otchestvo:='Федорович';
          Pol:='М';
          Date:=1954;
          Rang:='учитель';
          Uch:='доцент';
          Money:=17500;
     end;
     with Petrov do
     begin
          Imya:='Иван';
          Familiya:='Петров';
          Otchestvo:='Антонович';
          Pol:='М';
          Date:=1983;
          Rang:='учитель';
          Uch:='не доцент';
          Money:=5500;
     end;
     with Sidorov do
     begin
          Imya:='Владимир';
          Familiya:='Сидоров';
          Otchestvo:='Николаенко';
          Pol:='М';
          Date:=1974;
          Rang:='учитель';
          Uch:='не доцент';
          Money:=5500;
     end;
end;



procedure TForm1.Button1Click(Sender: TObject);
var loosers:String[200];
begin
      loosers:='';
      if (not ( Ivanov.Uch='доцент') ) and (Ivanov.Money<=6000) then
      loosers:=loosers+'Иванов, ' ;
      if (not ( Petrov.Uch='доцент') ) and (Petrov.Money<=6000) then
      loosers:=loosers+'Петров, ';
      if (not ( Sidorov.Uch='доцент') ) and (Sidorov.Money<=6000) then
      loosers:=loosers+'Сидоров, ';


     // if i=1 then loosers:=loosers+'Иванов, ';
      //if p=1 then loosers:=loosers+'Петров, ';
      //if s=1 then loosers:=loosers+'Сидоров, ';
      Memo1.Text:=loosers;

end;

procedure TForm1.Button2Click(Sender: TObject);
var current:Prepod;
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
          EDate.Text:=IntToStr(Date);
          ERang.Text:=Rang;
          EMoney.Text:=IntToStr(Money);
          EUch.Text:=Uch;
      end;

end;


procedure TForm1.Button3Click(Sender: TObject);
var current:Prepod;
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
          Date:=StrToInt(EDate.Text);
          Rang:=ERang.Text;
          Money:=StrToInt(EMoney.Text);
          Uch:=EUch.Text;
      end;
     if (ComboBox1.ItemIndex=0) then Ivanov:=current
     else if (ComboBox1.ItemIndex=1) then Petrov:=current
     else if (ComboBox1.ItemIndex=2) then Sidorov:=current;
end;



end.
