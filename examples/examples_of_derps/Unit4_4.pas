unit Unit4_4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm17 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;
  X1:real;
  str1:string;

implementation

{$R *.dfm}

procedure TForm17.Button1Click(Sender: TObject);
begin
X1:=StrToFloat(Edit1.Text);
  if X1>0 then
    begin
      str1:=FloatToStr(Sqrt(X1));
      Label3.Caption:=Concat('Число Х1>0, F(x1) = Sqrt(X1) = ',str1)
    end
      else
        if X1<0 then
          begin
            str1:=FloatToStr(Sqrt(Abs(X1)));
            Label3.Caption:=Concat('Число Х1<0, F(x1) = Sqrt(Abs(X1)) = ',str1)
           end
             else   Label3.Caption:=('Число Х1=0, F(x1) = 2')
end;

procedure TForm17.Button2Click(Sender: TObject);
begin
 Close;
end;

end.
