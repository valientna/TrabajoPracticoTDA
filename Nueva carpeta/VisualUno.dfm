object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 463
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 41
    Top = 48
    Width = 24
    Height = 13
    Caption = '____'
  end
  object Label1: TLabel
    Left = 112
    Top = 48
    Width = 24
    Height = 13
    Caption = '____'
  end
  object RadioGroup1: TRadioGroup
    Left = 224
    Top = 8
    Width = 313
    Height = 75
    Caption = 'opetaciones'
    Columns = 3
    Items.Strings = (
      'sumar'
      'restar'
      'multiplicar'
      'dividir'
      'potencia'
      'comparar')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 240
    Width = 75
    Height = 25
    Caption = 'resolver'
    TabOrder = 1
    OnClick = Button1Click
  end
  object TEnumerador1: TEdit
    Left = 40
    Top = 29
    Width = 25
    Height = 21
    TabOrder = 2
  end
  object TEdenominador1: TEdit
    Left = 41
    Top = 67
    Width = 25
    Height = 21
    TabOrder = 3
  end
  object Button2: TButton
    Left = 24
    Top = 105
    Width = 57
    Height = 25
    Caption = 'cargar1'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 41
    Top = 168
    Width = 248
    Height = 41
    Lines.Strings = (
      '')
    TabOrder = 5
  end
  object Button3: TButton
    Left = 112
    Top = 105
    Width = 57
    Height = 25
    Caption = 'cargar2'
    TabOrder = 6
    OnClick = Button3Click
  end
  object TEnumerador2: TEdit
    Left = 112
    Top = 29
    Width = 24
    Height = 21
    TabOrder = 7
  end
  object TEdenominador2: TEdit
    Left = 112
    Top = 67
    Width = 24
    Height = 21
    TabOrder = 8
  end
end
