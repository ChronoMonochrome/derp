object Form17: TForm17
  Left = 0
  Top = 0
  Caption = #1044#1077#1084'. '#1087#1088#1080#1084#1077#1088' '#8470'8_1.  '#1043#1088#1091#1087#1072'. '#1055#1072#1085#1077#1083#1100'. '#1054#1073#1083#1072#1089#1090#1100' '#1087#1088#1086#1082#1088#1091#1090#1082#1080'. '#1060#1092#1088#1077#1081#1084'.'
  ClientHeight = 212
  ClientWidth = 485
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 97
    Height = 137
    Caption = #1043#1088#1091#1087#1087#1072' '#8470'1'
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 3
      Top = 16
      Width = 113
      Height = 17
      Caption = 'RadioButton1'
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 3
      Top = 39
      Width = 113
      Height = 17
      Caption = 'RadioButton2'
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 3
      Top = 62
      Width = 113
      Height = 17
      Caption = 'RadioButton3'
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 3
      Top = 96
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 3
    end
    object CheckBox2: TCheckBox
      Left = 3
      Top = 119
      Width = 97
      Height = 17
      Caption = 'CheckBox2'
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 111
    Top = 8
    Width = 82
    Height = 33
    Caption = #1055#1072#1085#1077#1083#1100' '#8470'1'
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 111
    Top = 70
    Width = 82
    Height = 41
    Caption = 'Panel2'
    TabOrder = 2
  end
  object ScrollBox1: TScrollBox
    Left = 208
    Top = 8
    Width = 193
    Height = 41
    TabOrder = 3
    object CheckBox3: TCheckBox
      Left = 5
      Top = 5
      Width = 97
      Height = 17
      Caption = 'CheckBox3'
      TabOrder = 0
    end
    object CheckBox4: TCheckBox
      Left = 96
      Top = 5
      Width = 97
      Height = 17
      Caption = 'CheckBox4'
      TabOrder = 1
    end
    object CheckBox5: TCheckBox
      Left = 179
      Top = 5
      Width = 97
      Height = 17
      Caption = 'CheckBox5'
      TabOrder = 2
    end
  end
  object Button1: TButton
    Left = 224
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 326
    Top = 79
    Width = 75
    Height = 25
    Caption = 'ScrolBox1_3'
    TabOrder = 5
    OnClick = Button2Click
  end
  inline Frame8_11: TFrame8_1
    Left = 40
    Top = 154
    Width = 370
    Height = 58
    TabOrder = 6
    TabStop = True
    ExplicitLeft = 40
    ExplicitTop = 154
    inherited Button1: TButton
      Left = 264
      OnClick = Frame8_11Button1Click
      ExplicitLeft = 264
    end
  end
end
