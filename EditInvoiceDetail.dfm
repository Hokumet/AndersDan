inherited frmEditInvoiceDetail: TfrmEditInvoiceDetail
  Caption = 'frmEditInvoiceDetail'
  ClientHeight = 267
  ClientWidth = 437
  KeyPreview = True
  OldCreateOrder = False
  ExplicitWidth = 445
  ExplicitHeight = 294
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 188
    Width = 437
    ExplicitTop = 188
    ExplicitWidth = 437
  end
  inherited pnlLabels: TPanel
    Width = 204
    Height = 188
    ExplicitWidth = 204
    ExplicitHeight = 188
    object Label1: TLabel
      Left = 80
      Top = 24
      Width = 45
      Height = 13
      Caption = 'Artikel id:'
    end
    object Label2: TLabel
      Left = 80
      Top = 56
      Width = 63
      Height = 13
      Caption = 'Artikel naam:'
    end
    object Label3: TLabel
      Left = 80
      Top = 88
      Width = 24
      Height = 13
      Caption = 'Prijs:'
    end
    object Label4: TLabel
      Left = 80
      Top = 120
      Width = 35
      Height = 13
      Caption = 'Aantal:'
    end
    object Label5: TLabel
      Left = 80
      Top = 152
      Width = 34
      Height = 13
      Caption = 'Totaal:'
    end
  end
  inherited pnlFields: TPanel
    Left = 204
    Height = 188
    ExplicitLeft = 204
    ExplicitHeight = 188
    object edtProductId: TEdit
      Left = 16
      Top = 16
      Width = 139
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'ProductId'
      TabOrder = 0
      OnKeyUp = edtProductIdKeyUp
    end
    object edtProductName: TEdit
      Left = 16
      Top = 48
      Width = 139
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'ProductNaam'
      TabOrder = 1
      OnExit = edtProductNameExit
      OnKeyUp = edtProductNameKeyUp
    end
    object edtPrice: THCurrencyEdit
      Left = 16
      Top = 85
      Width = 139
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Prijs'
      TabOrder = 2
      OnExit = edtPriceExit
      Alignment = taRightJustify
      MinValue = -99999.000000000000000000
      MaxValue = 999999.000000000000000000
    end
    object edtAmount: THFloatEdit
      Left = 16
      Top = 112
      Width = 139
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Aantal'
      FloatFormat = '0.'
      TabOrder = 3
      OnExit = edtPriceExit
      NumberOfDecimals = 0
      Alignment = taRightJustify
      MaxValue = 999999.000000000000000000
      AllowNull = False
    end
    object edtTotal: THCurrencyEdit
      Left = 16
      Top = 139
      Width = 139
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Totaal'
      ReadOnly = True
      TabOrder = 4
      Alignment = taRightJustify
      MinValue = -9999999.000000000000000000
      MaxValue = 999999.000000000000000000
    end
    object lbxProducts: TListBox
      Left = 16
      Top = 36
      Width = 139
      Height = 73
      ItemHeight = 13
      TabOrder = 5
      Visible = False
      OnDblClick = lbxProductsDblClick
      OnKeyUp = lbxProductsKeyUp
    end
  end
end
