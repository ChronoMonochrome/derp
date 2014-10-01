object MyF8_6: TMyF8_6
  Left = 0
  Top = 0
  Caption = #1044#1077#1084#1086#1085#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1087#1088#1080#1084#1077#1088' 8_6'
  ClientHeight = 294
  ClientWidth = 478
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
    Width = 19
    Height = 13
    Caption = 'Ms1'
  end
  object Label2: TLabel
    Left = 168
    Top = 8
    Width = 19
    Height = 13
    Caption = 'Ms2'
  end
  object Label3: TLabel
    Left = 296
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Ms2-Ms1'
  end
  object ListBox1: TListBox
    Left = 8
    Top = 27
    Width = 121
    Height = 206
    ItemHeight = 13
    TabOrder = 0
  end
  object ListBox2: TListBox
    Left = 296
    Top = 27
    Width = 171
    Height = 206
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 9
    Top = 261
    Width = 33
    Height = 25
    Caption = 'Exit'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 48
    Top = 261
    Width = 81
    Height = 25
    Caption = 'Ms2 - Ms1'
    TabOrder = 3
    OnClick = Button3Click
  end
  object ListBox3: TListBox
    Left = 160
    Top = 27
    Width = 121
    Height = 206
    ItemHeight = 13
    TabOrder = 4
  end
end
