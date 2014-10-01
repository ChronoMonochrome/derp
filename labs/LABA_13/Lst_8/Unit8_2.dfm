object MyF8_2: TMyF8_2
  Left = 0
  Top = 0
  Caption = #1044#1077#1084#1086#1085#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1087#1088#1080#1084#1077#1088'8_2'
  ClientHeight = 142
  ClientWidth = 339
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
    Left = 16
    Top = 8
    Width = 60
    Height = 13
    Caption = 'Columns = 0'
  end
  object Label2: TLabel
    Left = 160
    Top = 8
    Width = 57
    Height = 13
    Caption = 'Columns =2'
  end
  object ListBox1: TListBox
    Left = 8
    Top = 27
    Width = 121
    Height = 46
    ItemHeight = 13
    TabOrder = 0
  end
  object ListBox2: TListBox
    Left = 160
    Top = 27
    Width = 171
    Height = 46
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 98
    Width = 33
    Height = 25
    Caption = 'Exit'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 47
    Top = 98
    Width = 50
    Height = 25
    Caption = 'TopIndex'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 103
    Top = 98
    Width = 42
    Height = 25
    Caption = 'Select'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 151
    Top = 98
    Width = 75
    Height = 25
    Caption = 'Item/Index'
    TabOrder = 5
    OnClick = Button4Click
  end
end
