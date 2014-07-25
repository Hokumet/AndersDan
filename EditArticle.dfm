inherited frmEditArticle: TfrmEditArticle
  Caption = 'Product bekijken / wijzigen'
  ClientHeight = 165
  ClientWidth = 438
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ExplicitWidth = 446
  ExplicitHeight = 192
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFields: TPanel [0]
    Left = 149
    Width = 289
    Height = 86
    ExplicitLeft = 149
    ExplicitWidth = 289
    ExplicitHeight = 127
    object Edit1: TEdit
      Left = 16
      Top = 13
      Width = 238
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Omschrijving'
      TabOrder = 0
    end
    object edtPrijs: THCurrencyEdit
      Left = 16
      Top = 43
      Width = 121
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Prijs'
      TabOrder = 1
      Alignment = taRightJustify
      MaxValue = 999999.000000000000000000
    end
  end
  inherited Panel3: TPanel [1]
    Top = 86
    Width = 438
    ExplicitTop = 127
    ExplicitWidth = 438
  end
  inherited pnlLabels: TPanel [2]
    Width = 149
    Height = 86
    ExplicitWidth = 149
    ExplicitHeight = 127
    object Label2: TLabel
      Left = 41
      Top = 21
      Width = 65
      Height = 13
      Caption = 'Omschrijving:'
    end
    object Label5: TLabel
      Left = 41
      Top = 51
      Width = 57
      Height = 13
      Caption = 'Artikel prijs:'
    end
  end
  inherited CurrQuery: TADOQuery
    Left = 16
    Top = 64
  end
end
