object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 206
  ClientWidth = 492
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
    Left = 320
    Top = 59
    Width = 8
    Height = 13
    Caption = '='
  end
  object Edit1: TEdit
    Left = 32
    Top = 56
    Width = 105
    Height = 21
    TabOrder = 0
    Text = '4'
  end
  object Edit2: TEdit
    Left = 176
    Top = 56
    Width = 105
    Height = 21
    TabOrder = 1
    Text = '3'
  end
  object Edit3: TEdit
    Left = 363
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 32
    Top = 136
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 136
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 4
    OnClick = Button2Click
  end
end
