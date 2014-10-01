object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 282
  ClientWidth = 418
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
    Left = 16
    Top = 16
    Width = 20
    Height = 13
    Caption = 'a = '
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 20
    Height = 13
    Caption = 'b = '
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 19
    Height = 13
    Caption = 'c = '
  end
  object Label4: TLabel
    Left = 16
    Top = 168
    Width = 26
    Height = 13
    Caption = 'X1 = '
  end
  object Label5: TLabel
    Left = 16
    Top = 200
    Width = 26
    Height = 13
    Caption = 'X2 = '
  end
  object Label6: TLabel
    Left = 56
    Top = 168
    Width = 3
    Height = 13
  end
  object Label7: TLabel
    Left = 56
    Top = 200
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 56
    Top = 13
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 56
    Top = 45
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 56
    Top = 72
    Width = 89
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 120
    Width = 145
    Height = 25
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100' x2 + bx +c'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 272
    Top = 195
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 4
    OnClick = Button2Click
  end
end
