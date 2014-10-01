unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    Label1: TLabel;
    ServerSocket1: TServerSocket;
    Button4: TButton;
    Button5: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    ClientSocket1: TClientSocket;
    Memo2: TMemo;
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);

      procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Nick:string;
  isClient,isServer:bool;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 Label1.Caption:='IP: '+ServerSocket1.Socket.LocalAddress; //IP-адрес компьютера
 Nick:=Edit3.Text;
 Memo2.Lines.add(nick);
 ServerSocket1.Active:=True; //¬ключить серверный сокет
 isServer:=true;
 isClient:=false;
 if not  Button2.enabled then
      begin
       Button1.Enabled:=false;
       Button2.Enabled:=true;
       Button4.Enabled:=false;
       Button5.Enabled:=false;
      end;
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
 ServerSocket1.Active:=False;
 ServerSocket1.Close;   //«авершение работы сокета
 isServer:=false;
  if not  Button1.enabled then
      begin
        Button1.Enabled:=true;
        Button2.Enabled:=false;
        Button4.Enabled:=true;
        Button5.Enabled:=false;
      end;
      Memo2.Lines.clear;
end;


procedure TForm1.Button3Click(Sender: TObject);
var
 i:integer;
 s:string;
begin
 s:= Edit3.Text+'>>>'+Edit1.Text;
 ClientSocket1.Socket.SendText(s);
 Memo1.Lines.Add(s);
 for i:=0 to ServerSocket1.Socket.ActiveConnections-1 do
 ServerSocket1.Socket.Connections[i].SendText(Edit1.Text); // отослать текст из Edit1
end;



procedure TForm1.Button4Click(Sender: TObject);
begin
  isClient:=true;
  isServer:=false;
  Button1.Enabled:=false;
  Button2.Enabled:=false;
  Button4.Enabled:=false;
  Button5.Enabled:=true;
  if not ClientSocket1.Active then
  begin
    ClientSocket1.Address:=Edit2.Text; //«адать IP-адрес из Edit2
    ClientSocket1.Active:=True;             //начать работу
  end;
end;



procedure TForm1.Button5Click(Sender: TObject);
begin
  isClient:=false;
  ClientSocket1.Active:=False;
  ClientSocket1.Close;
   Button1.Enabled:=true;
  Button2.Enabled:=false;
  Button4.Enabled:=true;
  Button5.Enabled:=false;
end;


procedure TForm1.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
begin
 Memo1.Lines.Add(Socket.ReceiveText);//полученный текст добавить в Memo1
end;
procedure TForm1.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  s:string;
  i:integer;
begin
  if isServer then
    begin
  s:=Socket.ReceiveText; //получить  строку мообщени€
  Memo1.Lines.Add(s);  //добавить сообщение в многострочное поле
  end;
  if isclient then
   begin
       for i:=0 to ServerSocket1.Socket.ActiveConnections-1 do
       begin
        if ServerSocket1.Socket.Connections[i].SocketHandle <> Socket.SocketHandle then
        ServerSocket1.Socket.Connections[i].SendText(s); // отослать прин€тое сообщение остальным
       end;
   end;
end; 

//—обытие  OnClientRead возникает при поступлении от ClientSocket сообщени€ или данных




end.
