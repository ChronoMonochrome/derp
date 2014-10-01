object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 459
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbOutput: TLabel
    Left = 263
    Top = 351
    Width = 144
    Height = 13
    Caption = #1042#1077#1088#1093#1085#1080#1081' '#1087#1088#1077#1076#1077#1083' '#1089#1083#1091#1095'. '#1095#1080#1089#1077#1083
  end
  object Label1: TLabel
    Left = 31
    Top = 351
    Width = 79
    Height = 13
    Caption = #1053#1080#1078#1085#1080#1081' '#1087#1088#1077#1076#1077#1083
  end
  object mmOutput: TMemo
    Left = 48
    Top = 32
    Width = 535
    Height = 313
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object bbRun: TBitBtn
    Left = 48
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 1
    OnClick = bbRunClick
  end
  object bbCancel: TBitBtn
    Left = 152
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = bbCancelClick
  end
  object Edit1: TEdit
    Left = 31
    Top = 370
    Width = 129
    Height = 21
    TabOrder = 3
    Text = '1'
  end
  object edInput: TEdit
    Left = 263
    Top = 370
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '10'
  end
end
