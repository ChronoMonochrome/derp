object MyF8_4: TMyF8_4
  Left = 0
  Top = 0
  Caption = #1044#1077#1084#1086#1085#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1087#1088#1080#1084#1077#1088' 8_4'
  ClientHeight = 121
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 57
    Height = 13
    Caption = 'ComboBox1'
  end
  object Label2: TLabel
    Left = 159
    Top = 8
    Width = 57
    Height = 13
    Caption = 'ComboBox2'
  end
  object Button1: TButton
    Left = 8
    Top = 90
    Width = 33
    Height = 25
    Caption = 'Exit'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 47
    Top = 90
    Width = 91
    Height = 25
    Caption = 'Dropped/Down'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 27
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = #1043#1091#1087#1072#1072' '#1047#1048'_201'
  end
  object ComboBox2: TComboBox
    Left = 159
    Top = 27
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = #1043#1088#1091#1087#1087#1072' '#1047#1048'_301'
  end
end
