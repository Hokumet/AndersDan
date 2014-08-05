inherited frmEditArticle: TfrmEditArticle
  ActiveControl = pnlFields
  Caption = 'Product bekijken / wijzigen'
  ClientHeight = 150
  ClientWidth = 438
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ExplicitWidth = 446
  ExplicitHeight = 177
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFields: TPanel [0]
    Left = 149
    Width = 289
    Height = 77
    Color = 16291591
    ExplicitLeft = 149
    ExplicitWidth = 289
    ExplicitHeight = 86
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
      Top = 40
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
    Top = 77
    Width = 438
    Height = 73
    ExplicitTop = 77
    ExplicitWidth = 438
    ExplicitHeight = 73
  end
  inherited pnlLabels: TPanel [2]
    Width = 149
    Height = 77
    Color = 60138
    ExplicitWidth = 149
    ExplicitHeight = 86
    object Label2: TLabel
      Left = 41
      Top = 24
      Width = 65
      Height = 13
      Caption = 'Omschrijving:'
    end
    object Label5: TLabel
      Left = 41
      Top = 51
      Width = 24
      Height = 13
      Caption = 'Prijs:'
    end
  end
  inherited CurrQuery: TADOQuery
    Left = 16
    Top = 64
  end
end
