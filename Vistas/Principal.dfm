object PrincipalForm: TPrincipalForm
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 294
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Narrow'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 423
    Height = 294
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 8
    ExplicitWidth = 434
    object Label1: TLabel
      Left = 28
      Top = 32
      Width = 82
      Height = 25
      Caption = 'Ejercicio 1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 148
      Top = 32
      Width = 82
      Height = 25
      Caption = 'Ejercicio 2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 271
      Top = 32
      Width = 82
      Height = 25
      Caption = 'Ejercicio 3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object EjercicioUnoBtn: TButton
      Left = 28
      Top = 63
      Width = 82
      Height = 34
      Caption = 'Ejercicio 1'
      TabOrder = 0
      OnClick = EjercicioUnoBtnClick
    end
    object EjercicioDosBtn: TButton
      Left = 148
      Top = 63
      Width = 82
      Height = 34
      Caption = 'Ejercicio 2'
      TabOrder = 1
      OnClick = EjercicioDosBtnClick
    end
    object EjercicioTresBtn: TButton
      Left = 271
      Top = 63
      Width = 82
      Height = 34
      Caption = 'Ejercicio 3'
      TabOrder = 2
      OnClick = EjercicioTresBtnClick
    end
    object SalirBtn: TButton
      Left = 128
      Top = 199
      Width = 129
      Height = 57
      Caption = 'Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = SalirBtnClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 416
    Top = 152
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
        OnClick = Salir1Click
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
      object Cuatro1: TMenuItem
        Caption = 'Ejercicio Cuatro'
        OnClick = Cuatro1Click
      end
      object EjercicioCinco1: TMenuItem
        Caption = 'Ejercicio Cinco'
        OnClick = EjercicioCinco1Click
      end
      object EjercicioSeis1: TMenuItem
        Caption = 'Ejercicio Seis'
        OnClick = EjercicioSeis1Click
      end
      object EjercicioSiete1: TMenuItem
        Caption = 'Ejercicio Siete'
        OnClick = EjercicioSiete1Click
      end
      object EjercicioOcho1: TMenuItem
        Caption = 'Ejercicio Ocho'
        OnClick = EjercicioOcho1Click
      end
      object EjercicioNueve1: TMenuItem
        Caption = 'Ejercicio Nueve'
        OnClick = EjercicioNueve1Click
      end
    end
  end
end
