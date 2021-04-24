object PrincipalForm: TPrincipalForm
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 182
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
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
