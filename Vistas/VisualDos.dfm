object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Ejercicio 2'
  ClientHeight = 457
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel
    Left = 111
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Hasta'
  end
  object Label3: TLabel
    Left = 19
    Top = 191
    Width = 50
    Height = 13
    Caption = 'Separador'
  end
  object Label5: TLabel
    Left = 16
    Top = 62
    Width = 204
    Height = 13
    Caption = 'N'#250'meros del vector separados por espacio'
  end
  object Label6: TLabel
    Left = 120
    Top = 192
    Width = 34
    Height = 13
    Caption = 'Escalar'
  end
  object Label7: TLabel
    Left = 496
    Top = 8
    Width = 82
    Height = 13
    Caption = 'Vector a trabajar'
  end
  object Label8: TLabel
    Left = 615
    Top = 8
    Width = 47
    Height = 13
    Caption = '(de 1 a 3)'
  end
  object Label9: TLabel
    Left = 344
    Top = 298
    Width = 114
    Height = 13
    Caption = 'Tama'#241'o de los vectores'
  end
  object Label4: TLabel
    Left = 224
    Top = 183
    Width = 188
    Height = 13
    Caption = 'Vector a sumar con el vector a trabajar'
  end
  object Label10: TLabel
    Left = 256
    Top = 191
    Width = 108
    Height = 13
    Caption = 'separados por espacio'
  end
  object Memo1: TMemo
    Left = 496
    Top = 40
    Width = 306
    Height = 429
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 201
    Top = 21
    Width = 154
    Height = 28
    Caption = 'Cargar Aleatorios sin repetir'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 24
    Width = 75
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 111
    Top = 24
    Width = 74
    Height = 21
    TabOrder = 3
  end
  object Button2: TButton
    Left = 16
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Sumatoria'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 120
    Top = 152
    Width = 75
    Height = 25
    Caption = 'M'#225'ximo '
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 224
    Top = 152
    Width = 75
    Height = 25
    Caption = 'M'#237'nimo'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 326
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Promedio'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 16
    Top = 237
    Width = 75
    Height = 25
    Caption = 'Intercalar'
    TabOrder = 8
    OnClick = Button6Click
  end
  object Edit3: TEdit
    Left = 16
    Top = 210
    Width = 75
    Height = 21
    TabOrder = 9
  end
  object Edit5: TEdit
    Left = 19
    Top = 81
    Width = 280
    Height = 21
    TabOrder = 10
  end
  object Button7: TButton
    Left = 326
    Top = 79
    Width = 154
    Height = 26
    Caption = 'Cargar manual'
    TabOrder = 11
    OnClick = Button7Click
  end
  object Edit6: TEdit
    Left = 120
    Top = 210
    Width = 75
    Height = 21
    TabOrder = 12
  end
  object Button8: TButton
    Left = 120
    Top = 237
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 13
    OnClick = Button8Click
  end
  object Vector: TEdit
    Left = 584
    Top = 8
    Width = 25
    Height = 21
    MaxLength = 1
    NumbersOnly = True
    TabOrder = 14
    Text = '1'
  end
  object Button9: TButton
    Left = 344
    Top = 344
    Width = 146
    Height = 25
    Caption = 'Setear tama'#241'o del vector'
    TabOrder = 15
    OnClick = Button9Click
  end
  object Edit7: TEdit
    Left = 344
    Top = 317
    Width = 146
    Height = 21
    TabOrder = 16
  end
  object Button10: TButton
    Left = 376
    Top = 22
    Width = 81
    Height = 25
    Caption = 'Mostrar vector'
    TabOrder = 17
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 224
    Top = 237
    Width = 97
    Height = 25
    Caption = 'Sumar vector'
    TabOrder = 18
    OnClick = Button11Click
  end
  object Edit4: TEdit
    Left = 224
    Top = 210
    Width = 266
    Height = 21
    TabOrder = 19
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 424
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
        OnClick = Principal1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object EjercicioUno1: TMenuItem
        Caption = 'Ejercicio Uno'
      end
      object EjercicioDos1: TMenuItem
        Caption = 'Ejercicio Dos'
      end
      object EjercicioTres1: TMenuItem
        Caption = 'Ejercicio Tres'
      end
      object Cuatro1: TMenuItem
        Caption = 'Ejercicio Cuatro'
      end
      object EjercicioCinco1: TMenuItem
        Caption = 'Ejercicio Cinco'
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
