object Form1: TForm1
  Left = 304
  Top = 193
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1086#1080#1089#1082' '#1092#1072#1081#1083#1072
  ClientHeight = 414
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 72
    Width = 30
    Height = 16
    Caption = #1055#1072#1087#1082#1072
  end
  object Label2: TLabel
    Left = 8
    Top = 16
    Width = 281
    Height = 41
    AutoSize = False
    Caption = 
      #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1072#1090#1072#1083#1086#1075', '#1079#1072#1076#1072#1081#1090#1077' '#1080#1084#1103' '#1092#1072#1081#1083#1072' '#1080#1083#1080' '#1084#1072#1089#1082#1091' '#1080' '#1097#1077#1083#1082#1085#1080#1090#1077' '#1085#1072' '#1082#1085#1086#1087 +
      #1082#1077' '#1053#1072#1081#1090#1080'.'
    WordWrap = True
  end
  object Label3: TLabel
    Left = 8
    Top = 104
    Width = 34
    Height = 16
    Caption = #1060#1072#1081#1083
  end
  object Label4: TLabel
    Left = 16
    Top = 384
    Width = 289
    Height = 17
    AutoSize = False
  end
  object Edit1: TEdit
    Left = 56
    Top = 96
    Width = 161
    Height = 24
    AutoSelect = False
    TabOrder = 1
    Text = '*.bmp'
  end
  object Memo1: TMemo
    Left = 16
    Top = 168
    Width = 289
    Height = 201
    TabStop = False
    ScrollBars = ssBoth
    TabOrder = 2
    WordWrap = False
  end
  object Button1: TButton
    Left = 56
    Top = 136
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 56
    Top = 64
    Width = 161
    Height = 24
    AutoSelect = False
    TabOrder = 0
    Text = 'c:\'
  end
  object Button2: TButton
    Left = 224
    Top = 64
    Width = 75
    Height = 25
    Caption = #1054#1073#1079#1086#1088
    TabOrder = 4
    OnClick = Button2Click
  end
end
