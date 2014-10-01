unit DLLFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TDLLForm = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    CallForm: THandle; //���������� ���������� �����
  public
    { Public declarations }

  end;

  // ���������� �������������� �����������
  function ShowModalForm: Integer;
  procedure ShowForm(Appl, Form: THandle);
  procedure FreeForm;

var
  DLLForm: TDLLForm;

implementation

{$R *.DFM}

function ShowModalForm: Integer;
// ��������� �����
begin
  DllForm := TDllForm.Create(Application);
  Result := DLLForm.ShowModal;
  DLLForm.Free;
end;

procedure ShowForm(Appl, Form: THandle);
// ����������� �����
begin
  Application.Handle := Appl;  // ������ ������� Application
  DllForm := TDllForm.Create(Application);
  DllForm.CallForm := Form;
  DLLForm.Show
end;

procedure FreeForm;
// ����������� �����
begin
  DLLForm.Free
end;

procedure TDLLForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CallForm<>0 then
    SendMessage(CallForm, wm_User, 0, 0)
end;

end.
