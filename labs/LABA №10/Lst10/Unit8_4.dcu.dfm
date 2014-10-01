object MyForm8_4: TMyForm8_4
  Left = 0
  Top = 0
  Caption = #1044#1048#1053#1040#1052#1048#1063#1045#1057#1050#1048#1045' '#1052#1040#1057#1057#1048#1042#1067' ('#1044#1077#1084'. '#1087#1088'. '#8470'8_4)'
  ClientHeight = 196
  ClientWidth = 356
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
    Top = 8
    Width = 129
    Height = 13
    Caption = #1056#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100' '#1084#1072#1089#1089#1080#1074#1072' Ms1'
  end
  object Label2: TLabel
    Left = 24
    Top = 54
    Width = 129
    Height = 13
    Caption = #1056#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100' '#1084#1072#1089#1089#1080#1074#1072' Ms2'
  end
  object Label3: TLabel
    Left = 33
    Top = 122
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 33
    Top = 135
    Width = 3
    Height = 13
  end
  object Label5: TLabel
    Left = 200
    Top = 2
    Width = 116
    Height = 13
    Caption = 'Ms1                          Ms2'
  end
  object Edit1: TEdit
    Left = 58
    Top = 27
    Width = 30
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 24
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Ms1'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 58
    Top = 73
    Width = 30
    Height = 21
    TabOrder = 3
    Text = 'Edit2'
  end
  object ListBox1: TListBox
    Left = 184
    Top = 21
    Width = 57
    Height = 97
    ItemHeight = 13
    TabOrder = 4
  end
  object ListBox2: TListBox
    Left = 280
    Top = 21
    Width = 57
    Height = 97
    ItemHeight = 13
    TabOrder = 5
  end
  object Button3: TButton
    Left = 232
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Ms2'
    TabOrder = 6
    OnClick = Button3Click
  end
end
