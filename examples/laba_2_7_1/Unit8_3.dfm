object MyForm8_3: TMyForm8_3
  Left = 0
  Top = 0
  Caption = #1044#1077#1084#1086#1085#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1087#1088#1080#1084#1077#1088' 8_3'
  ClientHeight = 316
  ClientWidth = 757
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
    Left = 24
    Top = 64
    Width = 88
    Height = 13
    Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1089#1087#1080#1089#1086#1082
  end
  object Label2: TLabel
    Left = 662
    Top = 64
    Width = 87
    Height = 13
    Caption = #1048#1090#1086#1075#1086#1074#1099#1081' '#1089#1087#1080#1089#1086#1082
  end
  object Left: TButton
    Left = 344
    Top = 152
    Width = 75
    Height = 25
    Caption = '<--------'
    TabOrder = 0
    OnClick = LeftClick
  end
  object Right: TButton
    Left = 344
    Top = 208
    Width = 75
    Height = 25
    Caption = '-------->'
    TabOrder = 1
    OnClick = RightClick
  end
  object ListBox1: TListBox
    Left = 24
    Top = 96
    Width = 297
    Height = 193
    ItemHeight = 13
    TabOrder = 2
    OnDragDrop = ListBox1DragDrop
    OnDragOver = ListBox1DragOver
  end
  object ListBox2: TListBox
    Left = 440
    Top = 94
    Width = 309
    Height = 195
    ItemHeight = 13
    TabOrder = 3
    OnDragDrop = ListBox2DragDrop
    OnDragOver = ListBox2DragOver
  end
  object Button1: TButton
    Left = 24
    Top = 33
    Width = 297
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1092#1088#1072#1079#1099' '#1089' '#1076#1074#1091#1084#1103' '#1075#1083#1072#1089#1085#1099#1084#1080' '#1074' '#1089#1083#1086#1074#1077' '#1087#1086#1076#1088#1103#1076
    TabOrder = 4
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 8
    Width = 297
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
    Items.Strings = (
      'this is a simple programm'
      'what doesn'#39't kill me, make me stronger'
      'it'#39's just!'
      'yeeahh!')
  end
end
