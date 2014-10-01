object MyForm9_5: TMyForm9_5
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072#1083#1100#1085#1099#1077' '#1080' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
  ClientHeight = 134
  ClientWidth = 339
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
    Left = 16
    Top = 8
    Width = 95
    Height = 13
    Caption = 'a1=(a2+b2+16)/c1'
  end
  object Label2: TLabel
    Left = 244
    Top = 8
    Width = 77
    Height = 13
    Caption = 'str1=Edit2.Text'
  end
  object Label3: TLabel
    Left = 16
    Top = 64
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 135
    Top = 8
    Width = 100
    Height = 13
    Caption = 'a1=15.21('#1085#1077' '#1080#1079#1084#1077#1085')'
  end
  object Edit1: TEdit
    Left = 8
    Top = 27
    Width = 103
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 244
    Top = 27
    Width = 87
    Height = 21
    TabOrder = 1
    Text = '151,2'
    OnKeyPress = Edit2KeyPress
  end
  object Button1: TButton
    Left = 8
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Proc_1'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 135
    Top = 27
    Width = 91
    Height = 21
    TabOrder = 4
    Text = 'Edit3'
  end
end
