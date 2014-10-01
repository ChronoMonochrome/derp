// ����� ����� � ��������� �������� � ��� ������������
// ������������ ����������� ��������� Find.
unit FindFile_;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  FileCtrl;

type
  TForm1 = class(TForm)
    Edit1: TEdit;       // ��� ������
    Edit2: TEdit;       // ��� ������
    Memo1: TMemo;       // ��������� ������
    Button1: TButton;   // ������ �����
    Button2: TButton;   // ������ �����
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
   FileName: string;  // ��� ��� ����� �������� �����
   cDir: string;
   n: integer;       // ���-�� ������, ��������������� �������

// ����� ����� � ������� ��������
procedure Find;
var
   SearchRec: TSearchRec; // ���������� � ����� ��� ��������
begin
   GetDir(0,cDir); // �������� ��� �������� ��������
   if cDir[length(cDir)] <> '\' then cDir := cDir+'\';

   if FindFirst(FileName, faAnyFile,SearchRec) = 0 then
       repeat
          if (SearchRec.Attr and faAnyFile) = SearchRec.Attr then
             begin
               Form1.Memo1.Lines.Add(cDir +  SearchRec.Name);
               n := n + 1;
             end;
        until FindNext(SearchRec) <> 0;

       // ��������� ������������ �������� ��������

       { ���� �� ������������ ��������� ��������, ��
         ������ faAnyFile ����� ������ faDidertory.
         ��� ����������� ���, ��� �������� SearchRec.Attr
         ��� �������� �������� ����� faDirectory (16),
         ��� Program Files - faDirectory+faReadOnly (17),
         � ��� �������� Windows - faDirectory+faSysFile (20).
        }

       if FindFirst('*', faAnyFile, SearchRec) = 0 then
          repeat
              if (SearchRec.Attr and faDirectory) = faDirectory then
                    // �������� .. � . ���� ��������,
                    // �� � ��� ������� �� ���� !!!
                    if SearchRec.Name[1] <> '.' then
                       begin
                         // Form1.Memo1.Lines.Add('>>>>'+SearchRec.Name);
                         ChDir(SearchRec.Name);// ����� � �������
                         Find; // ��������� ����� � �����������
                         ChDir('..');// ����� �� ��������
                         //Form1.Memo1.Lines.Add('<<<<'+SearchRec.Name);
                       end;
          until FindNext(SearchRec) <> 0;
end;


// ������ �� ������ �����
procedure TForm1.Button1Click(Sender: TObject);
begin
        if not DirectoryExists(Edit2.Text) then
        begin
            ShowMessage('������� ������ �������.');
            Edit2.SetFocus;
            exit;
        end;

        Button1.Enabled := False;
        Label4.Caption := '';
        Label4.Repaint;
        Memo1.Clear;             // �������� ���� Memo1
        Label4.Caption := '';
        FileName := Edit1.Text;  // ��� ������
        cDir := Edit2.Text;      // ��� ������
        n:=0;                    // ���-�� ��������� ������
        ChDir(cDir);             // ����� � ������� ������ ������
        Find;                    // ������ �����
        if n = 0 then
           ShowMessage('������, ��������������� �������� ������ ���.')
        else Label4.Caption := '������� ������:' + IntToStr(n);
        Button1.Enabled := True;
end;

// ���������� �������, ��������� �������������
function GetPath(mes: string):string;
var
  Root: string;      // �������� �������
  pwRoot : PWideChar;
  Dir: string;
begin
  Root := ''; // �������� ������� - ����� ������� ����
  GetMem(pwRoot, (Length(Root)+1) * 2);
  pwRoot := StringToWideChar(Root,pwRoot,MAX_PATH*2);
  if SelectDirectory(mes, pwRoot, Dir)
     then
          if length(Dir) = 2  // ������������ ������ �������� �������
              then GetPath := Dir+'\'
              else GetPath := Dir
     else
          GetPath := '';
end;

// ������ �� ������ �����
procedure TForm1.Button2Click(Sender: TObject);
var
  Path: string;
begin
  Path := GetPath('�������� �����');
  if Path <> ''
     then Edit2.Text := Path;
end;

end.
