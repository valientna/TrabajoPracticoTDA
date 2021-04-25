object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Ejercicio 3'
  ClientHeight = 463
  ClientWidth = 802
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
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 802
    Height = 463
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'Suma y Multiplicacion'
      '...'
      '...')
    TabIndex = 0
    OnChange = TabControl1Change
    object Panel2: TPanel
      Left = 4
      Top = 31
      Width = 794
      Height = 428
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel2'
      Color = clWhite
      Ctl3D = True
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
    end
    object Panel1: TPanel
      Left = 4
      Top = 31
      Width = 794
      Height = 428
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 1
      object CardPanel1: TCardPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 788
        Height = 422
        Align = alClient
        ActiveCard = Card1
        AutoSize = True
        BevelOuter = bvNone
        Caption = 'CardPanel1'
        TabOrder = 0
        object Card1: TCard
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 782
          Height = 416
          Caption = 'Card1'
          CardIndex = 0
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 0
          object Label1: TLabel
            Left = 385
            Top = 195
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
          object Label4: TLabel
            Left = 25
            Top = 245
            Width = 141
            Height = 20
            Caption = 'N'#176' de Filas y Columnas'
          end
          object StringGrid1: TStringGrid
            Left = 25
            Top = 56
            Width = 265
            Height = 105
            BevelOuter = bvNone
            ColCount = 4
            FixedCols = 0
            RowCount = 4
            FixedRows = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
            TabOrder = 0
          end
          object StringGrid2: TStringGrid
            Left = 385
            Top = 56
            Width = 265
            Height = 105
            BevelOuter = bvNone
            ColCount = 4
            FixedCols = 0
            RowCount = 4
            FixedRows = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
            TabOrder = 1
          end
          object StringGrid3: TStringGrid
            Left = 385
            Top = 232
            Width = 265
            Height = 105
            BevelOuter = bvNone
            ColCount = 4
            FixedCols = 0
            RowCount = 4
            FixedRows = 0
            TabOrder = 2
          end
          object NroRowsAndColsEdit: TEdit
            Left = 172
            Top = 237
            Width = 61
            Height = 28
            MaxLength = 2
            NumbersOnly = True
            TabOrder = 3
            Text = '4'
          end
          object Button1: TButton
            Left = 25
            Top = 271
            Width = 208
            Height = 41
            Caption = 'Setear Filas y Columnas'
            TabOrder = 4
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 25
            Top = 336
            Width = 112
            Height = 25
            Caption = 'Cargar Random'
            TabOrder = 5
            OnClick = CargarRandomBtnClick
          end
          object SumarBtn: TButton
            Left = 25
            Top = 376
            Width = 75
            Height = 25
            Caption = 'Sumar'
            TabOrder = 6
            OnClick = SumarBtnClick
          end
          object Button4: TButton
            Left = 215
            Top = 376
            Width = 75
            Height = 25
            Caption = 'Limpiar'
            TabOrder = 7
            OnClick = Button4Click
          end
          object CargarManualBtn: TButton
            Left = 172
            Top = 336
            Width = 116
            Height = 25
            Caption = 'Cargar Manual'
            TabOrder = 8
            OnClick = CargarManualBtnClick
          end
          object MultiplicarBtn: TButton
            Left = 120
            Top = 376
            Width = 75
            Height = 25
            Caption = 'Multiplicar'
            TabOrder = 9
            OnClick = MultiplicarBtnClick
          end
        end
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
        OnClick = Salir1Click
      end
    end
    object a1: TMenuItem
      Caption = 'Forms'
      object Principal1: TMenuItem
        Caption = 'Principal'
      end
      object N1: TMenuItem
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
    object Items1: TMenuItem
      Caption = 'Operaciones Matriz'
      object SetearFilasyColumnas1: TMenuItem
        Caption = 'Setear Filas y Columnas'
        OnClick = SetearFilasyColumnas1Click
      end
      object CargarMatriz1: TMenuItem
        Caption = 'Cargar Matriz'
        OnClick = CargarMatriz1Click
      end
      object SumarMatriz1: TMenuItem
        Caption = 'Sumar Matriz'
        OnClick = SumarMatriz1Click
      end
      object LimpiarMatriz1: TMenuItem
        Caption = 'Limpiar Matriz'
        OnClick = LimpiarMatriz1Click
      end
    end
  end
end
