object MyForm8_1: TMyForm8_1
  Left = 0
  Top = 0
  Caption = #1044#1077#1084#1086#1085#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1087#1088#1080#1084#1077#1088' '#8470'8_1'
  ClientHeight = 308
  ClientWidth = 370
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
  object Button1: TButton
    Left = 8
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Clear Memo1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Button2: TButton
    Left = 170
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 192
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 257
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Load'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 89
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Memo1: TMemo
    Left = 170
    Top = 64
    Width = 162
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
  end
  object Button6: TButton
    Left = 8
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Sel'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 89
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Pos'
    TabOrder = 8
    OnClick = Button7Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'Edit2'
  end
  object Button8: TButton
    Left = 170
    Top = 216
    Width = 75
    Height = 25
    Caption = 'ClipBoard'
    TabOrder = 10
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 257
    Top = 216
    Width = 75
    Height = 25
    Caption = 'ReadOnly'
    TabOrder = 11
    OnClick = Button9Click
  end
end
