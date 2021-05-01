object Form9: TForm9
  Left = 0
  Top = 0
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
      ActiveCard = RetirarCard
      Caption = 'PrincipalCardPane'
      TabOrder = 0
      object PagarCard: TCard
        Left = 1
        Top = 1
        Width = 448
        Height = 344
        Caption = 'Pagar'
        CardIndex = 0
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = -87
        ExplicitTop = -23
        ExplicitWidth = 367
        ExplicitHeight = 275
        object PagarBtn: TButton
          Left = 156
          Top = 185
          Width = 113
          Height = 41
          Cursor = crHandPoint
          Caption = 'Pagar'
          TabOrder = 0
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
      end
      object RetirarCard: TCard
        Left = 1
        Top = 1
        Width = 448
        Height = 344
        Caption = 'Retirar'
        CardIndex = 1
        TabOrder = 1
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
        object Button1: TButton
          Left = 160
          Top = 176
          Width = 121
          Height = 49
          Cursor = crHandPoint
          Caption = 'Button1'
          TabOrder = 1
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
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 185
        ExplicitHeight = 41
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
      end
    end
  end
end
