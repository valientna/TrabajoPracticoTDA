object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 88
    Top = 70
    Width = 313
    Height = 75
    Caption = 'opetaciones'
    TabOrder = 0
  end
  object Rbsumar: TRadioButton
    Left = 112
    Top = 88
    Width = 51
    Height = 17
    Caption = 'sumar'
    Checked = True
    TabOrder = 1
    TabStop = True
  end
  object Rbrestar: TRadioButton
    Left = 199
    Top = 88
    Width = 58
    Height = 17
    Caption = 'restar'
    TabOrder = 2
  end
  object Rbmultiplicar: TRadioButton
    Left = 296
    Top = 88
    Width = 65
    Height = 17
    Caption = 'multiplicar'
    TabOrder = 3
  end
  object Rbdividir: TRadioButton
    Left = 112
    Top = 111
    Width = 51
    Height = 17
    Caption = 'dividir'
    TabOrder = 4
  end
  object Rbpotencia: TRadioButton
    Left = 199
    Top = 111
    Width = 58
    Height = 17
    Caption = 'potencia'
    TabOrder = 5
  end
  object Rbcomparar: TRadioButton
    Left = 296
    Top = 111
    Width = 65
    Height = 17
    Caption = 'comparar'
    TabOrder = 6
  end
  object Button1: TButton
    Left = 88
    Top = 166
    Width = 75
    Height = 25
    Caption = 'resolver'
    TabOrder = 7
    OnClick = Button1Click
  end
end
