object Form9: TForm9
  Left = 390
  Top = 165
  Caption = 'Ejercicio 9'
  ClientHeight = 346
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Narrow'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 572
    Height = 346
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PrincipalCardPane: TCardPanel
      Left = 122
      Top = 0
      Width = 450
      Height = 346
      Align = alClient
      ActiveCard = PagarCard
      Caption = 'PrincipalCardPane'
      TabOrder = 0
      object PagarCard: TCard
        Left = 1
        Top = 1
        Width = 448
        Height = 344
        Caption = 'Pagar'
        CardIndex = 0
        ParentBackground = False
        TabOrder = 0
        object Label4: TLabel
          Left = 184
          Top = 8
          Width = 79
          Height = 32
          Caption = 'Pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 16
          Top = 113
          Width = 119
          Height = 20
          Caption = 'Cantidad de billetes'
        end
        object Label6: TLabel
          Left = 16
          Top = 59
          Width = 87
          Height = 20
          Caption = 'Tipo de Billete'
        end
        object Label7: TLabel
          Left = 16
          Top = 146
          Width = 213
          Height = 20
          Caption = #191'Desea ingresar mas de un billete?'
        end
        object PagarBtn: TButton
          Left = 84
          Top = 185
          Width = 113
          Height = 41
          Cursor = crHandPoint
          Caption = 'Pagar'
          TabOrder = 0
          OnClick = PagarBtnClick
        end
        object MemoPagar: TMemo
          Left = 0
          Top = 255
          Width = 448
          Height = 89
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alBottom
          BevelKind = bkSoft
          CharCase = ecLowerCase
          Lines.Strings = (
            'memo1')
          ScrollBars = ssVertical
          TabOrder = 1
        end
        object SalirDePagarBtn: TButton
          Left = 236
          Top = 185
          Width = 113
          Height = 41
          Cursor = crHandPoint
          Caption = 'Salir'
          TabOrder = 2
          OnClick = SalirDePagarBtnClick
        end
        object BilleteEdit1: TEdit
          Left = 200
          Top = 110
          Width = 61
          Height = 28
          MaxLength = 3
          NumbersOnly = True
          TabOrder = 3
          Text = '0'
        end
        object BilleteEdit2: TEdit
          Left = 340
          Top = 110
          Width = 58
          Height = 28
          Enabled = False
          MaxLength = 3
          NumbersOnly = True
          TabOrder = 4
          Text = '0'
        end
        object BilleteComboBox1: TComboBox
          Left = 200
          Top = 56
          Width = 57
          Height = 28
          ItemIndex = 9
          TabOrder = 5
          Text = 'Elija'
          Items.Strings = (
            '1'
            '2'
            '5'
            '10'
            '20'
            '50'
            '100'
            '500'
            '1000'
            'Elija')
        end
        object MasDeUnBilleteSwitch1: TToggleSwitch
          Left = 267
          Top = 144
          Width = 73
          Height = 22
          StateCaptions.CaptionOn = 'Si'
          StateCaptions.CaptionOff = 'No'
          TabOrder = 6
          OnClick = MasDeUnBilleteSwitch1Click
        end
        object BilleteComboBox2: TComboBox
          Left = 340
          Top = 56
          Width = 57
          Height = 28
          Enabled = False
          ItemIndex = 9
          TabOrder = 7
          Text = 'Elija'
          Items.Strings = (
            '1'
            '2'
            '5'
            '10'
            '20'
            '50'
            '100'
            '500'
            '1000'
            'Elija')
        end
      end
      object RetirarCard: TCard
        Left = 1
        Top = 1
        Width = 448
        Height = 344
        Caption = 'Retirar'
        CardIndex = 1
        TabOrder = 1
        object Label2: TLabel
          Left = 32
          Top = 96
          Width = 298
          Height = 29
          Caption = 'Ingrese el monto que desea retirar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 145
          Top = 32
          Width = 146
          Height = 31
          Caption = 'Obtener Vuelto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object MemoRetirar: TMemo
          Left = 0
          Top = 255
          Width = 448
          Height = 89
          Align = alBottom
          BevelKind = bkSoft
          Lines.Strings = (
            'MemoRetirar')
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object RetirarBtn: TButton
          Left = 72
          Top = 168
          Width = 121
          Height = 49
          Cursor = crHandPoint
          Caption = 'Retirar Dinero'
          TabOrder = 1
          OnClick = RetirarBtnClick
        end
        object SalirDeRetirarBtn: TButton
          Left = 240
          Top = 168
          Width = 121
          Height = 49
          Cursor = crHandPoint
          Caption = 'Salir'
          TabOrder = 2
          OnClick = SalirDeRetirarBtnClick
        end
        object RetirarEdit: TEdit
          Left = 344
          Top = 100
          Width = 73
          Height = 28
          NumbersOnly = True
          TabOrder = 3
          Text = '0'
        end
      end
      object BienvenidoCard: TCard
        Left = 1
        Top = 1
        Width = 448
        Height = 344
        Caption = 'Bienvenido'
        CardIndex = 2
        Color = clHighlightText
        ParentBackground = False
        TabOrder = 2
        object Label1: TLabel
          Left = 144
          Top = 162
          Width = 154
          Height = 32
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Bienvenido!'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object OpcionesCardPane: TCardPanel
      Left = 0
      Top = 0
      Width = 122
      Height = 346
      Align = alLeft
      ActiveCard = OpcionesCard
      BevelOuter = bvLowered
      Caption = 'OpcionesCardPane'
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object OpcionesCard: TCard
        Left = 1
        Top = 1
        Width = 120
        Height = 344
        BevelInner = bvSpace
        BevelOuter = bvSpace
        Caption = 'Opciones'
        CardIndex = 0
        Color = clHighlightText
        ParentBackground = False
        TabOrder = 0
        object RetirarDeLaCajaBtn: TButton
          AlignWithMargins = True
          Left = -2
          Top = 152
          Width = 121
          Height = 42
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Retirar'
          TabOrder = 1
          OnClick = RetirarDeLaCajaBtnClick
        end
        object PagarACajaBtn: TButton
          AlignWithMargins = True
          Left = -1
          Top = 72
          Width = 120
          Height = 41
          Cursor = crHandPoint
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Pagar'
          TabOrder = 0
          OnClick = PagarACajaBtnClick
        end
        object CuentaBtn: TButton
          AlignWithMargins = True
          Left = -1
          Top = 232
          Width = 120
          Height = 41
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Estado de Cuenta'
          TabOrder = 2
          OnClick = CuentaBtnClick
        end
        object PrincipalBtn: TButton
          AlignWithMargins = True
          Left = -1
          Top = -1
          Width = 120
          Height = 41
          Cursor = crHandPoint
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Ejercicio 9'
          Font.Charset = ANSI_CHARSET
          Font.Color = clOlive
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = PrincipalBtnClick
        end
        object SalirDeForm: TButton
          AlignWithMargins = True
          Left = -1
          Top = 303
          Width = 120
          Height = 41
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Salir de Ejercicio'
          TabOrder = 4
          OnClick = SalirDeFormClick
        end
      end
    end
  end
end
