object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Ejercicio 3'
  ClientHeight = 380
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Narrow'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object CardPanel1: TCardPanel
    Left = 0
    Top = 0
    Width = 741
    Height = 380
    Align = alClient
    ActiveCard = Card1
    BevelOuter = bvNone
    Caption = 'CardPanel1'
    TabOrder = 0
    ExplicitLeft = 256
    ExplicitTop = 24
    ExplicitWidth = 300
    ExplicitHeight = 200
    object Card1: TCard
      Left = 0
      Top = 0
      Width = 741
      Height = 380
      Caption = 'Card1'
      CardIndex = 0
      TabOrder = 0
      ExplicitLeft = 57
      ExplicitTop = 41
      ExplicitWidth = 298
      ExplicitHeight = 198
      object Label1: TLabel
        Left = 308
        Top = 177
        Width = 70
        Height = 23
        Caption = 'Resultado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 25
        Top = 16
        Width = 70
        Height = 23
        Caption = 'Resultado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 385
        Top = 16
        Width = 70
        Height = 23
        Caption = 'Resultado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object StringGrid1: TStringGrid
        Left = 25
        Top = 56
        Width = 265
        Height = 105
        ColCount = 4
        FixedCols = 0
        RowCount = 4
        FixedRows = 0
        TabOrder = 0
      end
      object StringGrid2: TStringGrid
        Left = 385
        Top = 56
        Width = 265
        Height = 105
        ColCount = 4
        FixedCols = 0
        RowCount = 4
        FixedRows = 0
        TabOrder = 1
      end
      object StringGrid3: TStringGrid
        Left = 209
        Top = 224
        Width = 265
        Height = 105
        ColCount = 4
        FixedCols = 0
        RowCount = 4
        FixedRows = 0
        TabOrder = 2
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 704
    Top = 352
    object Archivo1: TMenuItem
      Caption = 'Archivo'
      object Salir1: TMenuItem
        Caption = 'Salir'
      end
    end
    object a1: TMenuItem
      Caption = 'Forms'
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
      end
      object Cuatro1: TMenuItem
        Caption = 'Ejercicio Cuatro'
      end
      object EjercicioCinco1: TMenuItem
        Caption = 'Ejercicio Cinco'
      end
    end
    object Items1: TMenuItem
      Caption = 'Matriz'
      object CargarMatriz1: TMenuItem
        Caption = 'Cargar Matriz'
      end
      object SumarMatriz1: TMenuItem
        Caption = 'Sumar Matriz'
      end
    end
  end
end
