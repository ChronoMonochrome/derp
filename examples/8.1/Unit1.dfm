object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 326
  ClientWidth = 525
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
    Left = 48
    Top = 40
    Width = 20
    Height = 13
    Caption = 'X1='
  end
  object Label2: TLabel
    Left = 48
    Top = 78
    Width = 20
    Height = 13
    Caption = 'X2='
  end
  object Label3: TLabel
    Left = 48
    Top = 113
    Width = 20
    Height = 13
    Caption = 'X3='
  end
  object Label4: TLabel
    Left = 48
    Top = 205
    Width = 14
    Height = 13
    Caption = 'Y='
  end
  object Label5: TLabel
    Left = 65
    Top = 205
    Width = 56
    Height = 13
  end
  object Edit1: TEdit
    Left = 88
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 88
    Top = 110
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 352
    Top = 195
    Width = 105
    Height = 35
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 312
    Top = 28
    Width = 185
    Height = 141
    Lines.Strings = (
      #1056#1072#1079#1088#1072#1073#1086#1090#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100#1089#1082#1080#1081' '
      #1080#1085#1090#1077#1088#1092#1077#1081#1089' '#1089' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077#1084' '
      #1082#1086#1084#1087#1086#1085#1077#1085#1090#1086#1074' TEdit, TButton '#1080' '
      'TLabel,   '#1089' '#1087#1086#1084#1086#1097#1100#1102' '#1082#1086#1090#1086#1088#1086#1075#1086' '
      #1086#1089#1091#1097#1077#1089#1090#1074#1083#1103#1077#1090#1089#1103' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1077' '
      #1072#1088#1080#1092#1084#1077#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1074#1099#1088#1072#1078#1077#1085#1080#1103' '#1087#1086' '
      #1092#1086#1088#1084#1091#1083#1077': Y = max(X12/'#1061'2; '
      #1061'33/X1), '#1075#1076#1077' X1, X2, X3 - '#1079#1085#1072#1095#1077#1085#1080#1103' '
      #1074#1077#1097#1077#1089#1090#1074#1077#1085#1085#1099#1093' '#1095#1080#1089#1077#1083', '#1074#1074#1077#1076#1077#1085#1085#1099#1093' '
      #1074' '#1090#1088#1080' '#1090#1077#1082#1089#1090#1086#1074#1099#1093' '#1087#1086#1083#1103'.')
    TabOrder = 4
  end
end
