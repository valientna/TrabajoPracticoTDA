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
    Left = 104
    Top = 48
    Width = 313
    Height = 75
    Caption = 'Operaciones'
    Columns = 3
    Items.Strings = (
      'Suma'
      'Resta'
      'Multiplicar'
      'Dividir'
      'Potencia'
      'Comparar')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 88
    Top = 166
    Width = 75
    Height = 25
    Caption = 'resolver'
    TabOrder = 1
    OnClick = Button1Click
  end
end
