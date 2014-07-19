inherited frmEditInvoiceDetail: TfrmEditInvoiceDetail
  Caption = 'Details wijzigen'
  ClientHeight = 267
  ClientWidth = 437
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
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
      Left = 41
      Top = 24
      Width = 76
      Height = 13
      Caption = 'Artikel Nummer:'
    end
    object Label2: TLabel
      Left = 41
      Top = 54
      Width = 63
      Height = 13
      Caption = 'Artikel naam:'
    end
    object Label3: TLabel
      Left = 41
      Top = 84
      Width = 24
      Height = 13
      Caption = 'Prijs:'
    end
    object Label4: TLabel
      Left = 41
      Top = 114
      Width = 35
      Height = 13
      Caption = 'Aantal:'
    end
    object Label5: TLabel
      Left = 41
      Top = 144
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
    object edtProductNr: TEdit
      Left = 16
      Top = 16
      Width = 139
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'ProductNr'
      TabOrder = 0
      OnKeyUp = edtProductNrKeyUp
    end
    object edtProductName: TEdit
      Left = 16
      Top = 46
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
      Top = 76
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
      Top = 106
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
      Top = 136
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
      Height = 68
      ItemHeight = 13
      TabOrder = 6
      Visible = False
      OnDblClick = lbxProductsDblClick
      OnKeyUp = lbxProductsKeyUp
    end
    object ckbSaveProduct: TCheckBox
      Left = 16
      Top = 166
      Width = 137
      Height = 17
      Caption = 'Sla product op'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
end
