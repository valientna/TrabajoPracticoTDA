object Form3: TForm3
  Left = 293
  Top = 110
  Caption = 'Ejercicio 3'
  ClientHeight = 526
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Narrow'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 693
    Height = 526
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'Suma y Multiplicacion'
      'Escalar')
    TabIndex = 0
    OnChange = TabControl1Change
    ExplicitHeight = 520
    object Panel2: TPanel
      Left = 4
      Top = 31
      Width = 685
      Height = 491
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      Ctl3D = True
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
      ExplicitHeight = 485
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 693
    Height = 526
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitHeight = 520
    object CardPanel1: TCardPanel
      Left = 0
      Top = 0
      Width = 693
      Height = 526
      Align = alClient
      ActiveCard = Card1
      AutoSize = True
      BevelOuter = bvNone
      Caption = 'CardPanel1'
      TabOrder = 0
      ExplicitHeight = 520
      object Card1: TCard
        Left = 0
        Top = 0
        Width = 693
        Height = 526
        Caption = 'Card1'
        CardIndex = 0
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitHeight = 520
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
          Width = 74
          Height = 23
          Caption = 'Matriz Uno'
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
          Width = 73
          Height = 23
          Caption = 'Matriz Dos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 25
          Top = 201
          Width = 141
          Height = 20
          Caption = 'N'#176' de Filas y Columnas'
        end
        object editar1Lbl: TLabel
          Left = 385
          Top = 352
          Width = 4
          Height = 20
        end
        object editar2Lbl: TLabel
          Left = 385
          Top = 378
          Width = 4
          Height = 20
        end
        object editar3Lbl: TLabel
          Left = 385
          Top = 404
          Width = 4
          Height = 20
        end
        object editar4Lbl: TLabel
          Left = 385
          Top = 430
          Width = 4
          Height = 20
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
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Pitch = fpFixed
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          ParentFont = False
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
          Top = 198
          Width = 61
          Height = 28
          MaxLength = 2
          NumbersOnly = True
          TabOrder = 3
          Text = '4'
        end
        object Button1: TButton
          Left = 25
          Top = 232
          Width = 208
          Height = 41
          Caption = 'Setear Filas y Columnas'
          TabOrder = 4
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 25
          Top = 297
          Width = 112
          Height = 25
          Caption = 'Cargar Random'
          Enabled = False
          TabOrder = 5
          OnClick = CargarRandomBtnClick
        end
        object SumarBtn: TButton
          Left = 25
          Top = 347
          Width = 75
          Height = 25
          Caption = 'Sumar'
          Enabled = False
          TabOrder = 6
          OnClick = SumarBtnClick
        end
        object Button4: TButton
          Left = 215
          Top = 347
          Width = 75
          Height = 25
          Caption = 'Limpiar'
          Enabled = False
          TabOrder = 7
          OnClick = Button4Click
        end
        object CargarManualBtn: TButton
          Left = 172
          Top = 297
          Width = 118
          Height = 25
          Caption = 'Cargar Manual'
          Enabled = False
          TabOrder = 8
          OnClick = CargarManualBtnClick
        end
        object MultiplicarBtn: TButton
          Left = 120
          Top = 347
          Width = 75
          Height = 25
          Caption = 'Multiplicar'
          Enabled = False
          TabOrder = 9
          OnClick = MultiplicarBtnClick
        end
        object MainAndOppositeDiagonalDiagonalBtn: TButton
          Left = 25
          Top = 392
          Width = 200
          Height = 25
          Caption = 'Diagonales Principal y Opuesta'
          Enabled = False
          TabOrder = 10
          OnClick = MainAndOppositeDiagonalDiagonalBtnClick
        end
        object SumRowsAndColsBtn: TButton
          Left = 25
          Top = 430
          Width = 200
          Height = 25
          Caption = 'Suma Fila y Columna Maxima'
          Enabled = False
          TabOrder = 11
          OnClick = SumRowsAndColsBtnClick
        end
        object EscalarM1Btn: TButton
          Left = 25
          Top = 480
          Width = 75
          Height = 25
          Caption = 'Escalar M1'
          Enabled = False
          TabOrder = 12
          OnClick = EscalarM1BtnClick
        end
        object EscalarM2Btn: TButton
          Left = 120
          Top = 480
          Width = 75
          Height = 25
          Caption = 'Escalar M2'
          Enabled = False
          TabOrder = 13
          OnClick = EscalarM2BtnClick
        end
        object Edit1: TEdit
          Left = 215
          Top = 478
          Width = 61
          Height = 28
          Enabled = False
          MaxLength = 2
          TabOrder = 14
          Text = '2'
          OnKeyPress = Edit1KeyPress
          OnKeyUp = Edit1KeyUp
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
  end
end
