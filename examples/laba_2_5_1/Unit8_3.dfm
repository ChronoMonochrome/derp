object MyForm8_3: TMyForm8_3
  Left = 0
  Top = 0
  Caption = #1044#1077#1084#1086#1085#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1087#1088#1080#1084#1077#1088' 8_3'
  ClientHeight = 219
  ClientWidth = 462
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
    Left = 64
    Top = 64
    Width = 88
    Height = 13
    Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1089#1087#1080#1089#1086#1082
  end
  object Label2: TLabel
    Left = 344
    Top = 64
    Width = 87
    Height = 13
    Caption = #1048#1090#1086#1075#1086#1074#1099#1081' '#1089#1087#1080#1089#1086#1082
  end
  object Left: TButton
    Left = 200
    Top = 96
    Width = 75
    Height = 25
    Caption = '<--------'
    TabOrder = 0
    OnClick = LeftClick
  end
  object Right: TButton
    Left = 200
    Top = 152
    Width = 75
    Height = 25
    Caption = '-------->'
    TabOrder = 1
    OnClick = RightClick
  end
  object ListBox1: TListBox
    Left = 48
    Top = 96
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 2
    OnDragDrop = ListBox1DragDrop
    OnDragOver = ListBox1DragOver
  end
  object ListBox2: TListBox
    Left = 325
    Top = 96
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 3
    OnDragDrop = ListBox2DragDrop
    OnDragOver = ListBox2DragOver
  end
  object Button1: TButton
    Left = 64
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 64
    Top = 8
    Width = 75
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
    Items.Strings = (
      'table'
      'phone'
      'Pen'
      'Pencil'
      'note')
  end
  object ComboBox2: TComboBox
    Left = 346
    Top = 8
    Width = 71
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'ComboBox2'
    OnChange = ComboBox2Change
  end
  object Button2: TButton
    Left = 346
    Top = 35
    Width = 71
    Height = 25
    Caption = 'Button2'
    TabOrder = 7
    OnClick = Button2Click
  end
end
