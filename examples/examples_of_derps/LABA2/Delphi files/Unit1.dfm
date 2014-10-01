object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1080#1103' 2'
  ClientHeight = 459
  ClientWidth = 530
  Color = clActiveCaption
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
    Left = 304
    Top = 24
    Width = 103
    Height = 22
    Caption = #1050#1086#1079#1083#1086#1074' '#1042'.'#1040'.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 46
    Width = 236
    Height = 15
    Caption = #1047#1072#1076#1072#1085#1080#1077' 1. '#1042#1099#1095#1080#1089#1083#1077#1085#1080#1077' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1090#1086#1074#1072#1088#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 67
    Width = 86
    Height = 19
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 148
    Top = 69
    Width = 34
    Height = 16
    Caption = #1062#1077#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 259
    Top = 69
    Width = 69
    Height = 16
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 32
    Top = 136
    Width = 211
    Height = 15
    Caption = #1047#1072#1076#1072#1085#1080#1077' 2. '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1086#1084'.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 32
    Top = 168
    Width = 47
    Height = 15
    Caption = #1064#1080#1088#1080#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 225
    Top = 168
    Width = 43
    Height = 15
    Caption = #1042#1099#1089#1086#1090#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 240
    Width = 174
    Height = 15
    Caption = #1047#1072#1076#1072#1085#1080#1077'  3. '#1056#1072#1073#1086#1090#1072' '#1089' '#1092#1088#1077#1081#1084#1072#1084#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 32
    Top = 92
    Width = 81
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 148
    Top = 91
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 259
    Top = 91
    Width = 89
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 386
    Top = 92
    Width = 75
    Height = 25
    Caption = #1056#1072#1089#1095#1077#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 402
    Top = 421
    Width = 75
    Height = 25
    Caption = 'EXIT'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 32
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '550'
    OnChange = Edit4Change
  end
  object Edit5: TEdit
    Left = 225
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '550'
    OnChange = Edit5Change
  end
  object UpDown1: TUpDown
    Left = 153
    Top = 200
    Width = 16
    Height = 21
    Associate = Edit4
    Min = 500
    Max = 800
    Position = 550
    TabOrder = 7
  end
  object UpDown2: TUpDown
    Left = 346
    Top = 200
    Width = 16
    Height = 21
    Associate = Edit5
    Min = 500
    Max = 800
    Position = 550
    TabOrder = 8
  end
  inline Frame21: TFrame2
    Left = 8
    Top = 259
    Width = 235
    Height = 192
    TabOrder = 9
    ExplicitLeft = 8
    ExplicitTop = 259
    ExplicitWidth = 235
    ExplicitHeight = 192
    inherited Edit1: TEdit
      Top = 35
      ExplicitTop = 35
    end
    inherited Button1: TButton
      Top = 62
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Frame21Button1Click
      ExplicitTop = 62
    end
    inherited Memo1: TMemo
      Top = 93
      ExplicitTop = 93
    end
  end
end
