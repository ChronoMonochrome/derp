object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 380
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 336
    Width = 10
    Height = 13
    Caption = 'IP'
  end
  object Label2: TLabel
    Left = 560
    Top = 195
    Width = 14
    Height = 13
    Caption = 'Ip:'
  end
  object Label3: TLabel
    Left = 560
    Top = 232
    Width = 23
    Height = 13
    Caption = 'Nick:'
  end
  object Memo1: TMemo
    Left = 24
    Top = 16
    Width = 521
    Height = 273
    TabOrder = 0
  end
  object Button1: TButton
    Left = 560
    Top = 54
    Width = 145
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1095#1072#1090
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 560
    Top = 85
    Width = 145
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100' '#1095#1072#1090
    Enabled = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 295
    Width = 433
    Height = 21
    TabOrder = 3
  end
  object Button3: TButton
    Left = 470
    Top = 295
    Width = 75
    Height = 21
    Caption = #1054#1090#1086#1089#1083#1072#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 560
    Top = 116
    Width = 145
    Height = 25
    Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 560
    Top = 147
    Width = 145
    Height = 25
    Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100#1089#1103
    Enabled = False
    TabOrder = 6
    OnClick = Button5Click
  end
  object Edit2: TEdit
    Left = 584
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '127.0.0.1'
  end
  object Edit3: TEdit
    Left = 589
    Top = 229
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'Chrono'
  end
  object Memo2: TMemo
    Left = 560
    Top = 277
    Width = 145
    Height = 89
    TabOrder = 9
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 777
    ServerType = stNonBlocking
    OnClientRead = ServerSocket1ClientRead
    Left = 560
    Top = 16
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 777
    OnRead = ClientSocket1Read
    Left = 592
    Top = 16
  end
end
