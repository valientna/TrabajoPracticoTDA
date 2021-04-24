object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 211
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 113
    Top = 129
    Width = 102
    Height = 20
    Caption = 'Su resultado es: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 232
    Top = 129
    Width = 7
    Height = 20
    Caption = '?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
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
  object Button2: TButton
    Left = 280
    Top = 166
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object MainMenu1: TMainMenu
    Left = 472
    Top = 184
    object Archivo1: TMenuItem
      Caption = 'Archivo'
      object N2: TMenuItem
        Caption = '....'
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object Salir1: TMenuItem
        Caption = 'Salir'
      end
    end
    object a1: TMenuItem
      Caption = 'Forms'
      object Principal1: TMenuItem
        Caption = 'Principal'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object EjercicioUno1: TMenuItem
        Caption = 'Ejercicio Uno'
        OnClick = EjercicioUno1Click
      end
      object EjercicioDos1: TMenuItem
        Caption = 'Ejercicio Dos'
        OnClick = EjercicioDos1Click
      end
      object EjercicioTres1: TMenuItem
        Caption = 'Ejercicio Tres'
        OnClick = EjercicioTres1Click
      end
      object EjercicioCuatro1: TMenuItem
        Caption = 'Ejercicio Cuatro'
        OnClick = EjercicioCuatro1Click
      end
      object EjercicioCinco1: TMenuItem
        Caption = 'Ejercicio Cinco'
        OnClick = EjercicioCinco1Click
      end
      object EjercicioSeis1: TMenuItem
        Caption = 'Ejercicio Seis'
      end
      object EjercicioSiete1: TMenuItem
        Caption = 'Ejercicio Siete'
      end
      object EjercicioOcho1: TMenuItem
        Caption = 'Ejercicio Ocho'
      end
      object EjercicioNueve1: TMenuItem
        Caption = 'Ejercicio Nueve'
      end
    end
  end
end
