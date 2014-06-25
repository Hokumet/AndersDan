inherited frmEditArticle: TfrmEditArticle
  Caption = 'Artikel bekijken / wijzigen'
  ClientHeight = 365
  ClientWidth = 438
  OldCreateOrder = False
  ExplicitWidth = 446
  ExplicitHeight = 392
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFields: TPanel [0]
    Left = 149
    Width = 289
    Height = 286
    ExplicitLeft = 149
    ExplicitWidth = 289
    ExplicitHeight = 286
    object Edit2: TEdit
      Left = 35
      Top = 21
      Width = 121
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Nr'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 35
      Top = 51
      Width = 238
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Naam'
      TabOrder = 0
    end
    object edtPrijs: THCurrencyEdit
      Left = 35
      Top = 86
      Width = 121
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Prijs'
      TabOrder = 2
      Alignment = taRightJustify
      MaxValue = 999999.000000000000000000
    end
  end
  inherited Panel3: TPanel [1]
    Top = 286
    Width = 438
    ExplicitTop = 286
    ExplicitWidth = 438
  end
  inherited pnlLabels: TPanel [2]
    Width = 149
    Height = 286
    ExplicitWidth = 149
    ExplicitHeight = 286
    object Label2: TLabel
      Left = 41
      Top = 54
      Width = 63
      Height = 13
      Caption = 'Artikel naam:'
    end
    object Label3: TLabel
      Left = 41
      Top = 24
      Width = 75
      Height = 13
      Caption = 'Artikel nummer:'
    end
    object Label5: TLabel
      Left = 41
      Top = 84
      Width = 57
      Height = 13
      Caption = 'Artikel prijs:'
    end
  end
  inherited CurrQuery: TADOQuery
    Left = 32
    Top = 112
  end
end
