inherited frmEditInvoiceDetail: TfrmEditInvoiceDetail
  Caption = 'Details wijzigen'
  ClientHeight = 237
  ClientWidth = 437
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ExplicitWidth = 445
  ExplicitHeight = 264
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 158
    Width = 437
    ExplicitTop = 158
    ExplicitWidth = 437
  end
  inherited pnlLabels: TPanel
    Width = 204
    Height = 158
    Color = 60138
    ExplicitWidth = 204
    ExplicitHeight = 158
    object Label2: TLabel
      Left = 45
      Top = 24
      Width = 65
      Height = 13
      Caption = 'Omschrijving:'
    end
    object Label3: TLabel
      Left = 45
      Top = 84
      Width = 24
      Height = 13
      Caption = 'Prijs:'
    end
    object Label4: TLabel
      Left = 45
      Top = 54
      Width = 35
      Height = 13
      Caption = 'Aantal:'
    end
    object Label5: TLabel
      Left = 45
      Top = 114
      Width = 38
      Height = 13
      Caption = 'Bedrag:'
    end
  end
  inherited pnlFields: TPanel
    Left = 204
    Height = 158
    Color = 9895948
    ExplicitLeft = 204
    ExplicitHeight = 158
    object edtProductName: TEdit
      Left = 20
      Top = 16
      Width = 139
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Omschrijving'
      TabOrder = 0
      OnExit = edtProductNameExit
      OnKeyUp = edtProductNameKeyUp
    end
    object edtPrice: THCurrencyEdit
      Left = 20
      Top = 76
      Width = 139
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Prijs'
      TabOrder = 1
      OnExit = edtPriceExit
      Alignment = taRightJustify
      MinValue = -99999.000000000000000000
      MaxValue = 999999.000000000000000000
    end
    object edtAmount: THFloatEdit
      Left = 20
      Top = 46
      Width = 139
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Aantal'
      FloatFormat = '0.00'
      TabOrder = 2
      OnExit = edtPriceExit
      NumberOfDecimals = 2
      Alignment = taRightJustify
      MaxValue = 999999.000000000000000000
      AllowNull = False
    end
    object edtTotal: THCurrencyEdit
      Left = 20
      Top = 106
      Width = 139
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Bedrag'
      ReadOnly = True
      TabOrder = 3
      Alignment = taRightJustify
      MinValue = -9999999.000000000000000000
      MaxValue = 999999.000000000000000000
    end
    object lbxProducts: TListBox
      Left = 20
      Top = 34
      Width = 139
      Height = 68
      ItemHeight = 13
      TabOrder = 5
      Visible = False
      OnDblClick = lbxProductsDblClick
      OnKeyUp = lbxProductsKeyUp
    end
    object ckbSaveProduct: TCheckBox
      Left = 20
      Top = 136
      Width = 137
      Height = 17
      Caption = 'Sla product op'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  inherited CurrQuery: TADOQuery
    Left = 0
    Top = 0
  end
end
