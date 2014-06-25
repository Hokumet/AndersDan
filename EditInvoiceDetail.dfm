inherited frmEditInvoiceDetail: TfrmEditInvoiceDetail
  Caption = 'frmEditInvoiceDetail'
  ClientHeight = 183
  ClientWidth = 437
  KeyPreview = True
  OldCreateOrder = False
  ExplicitWidth = 445
  ExplicitHeight = 210
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 104
    Width = 437
    ExplicitTop = 127
    ExplicitWidth = 308
  end
  inherited pnlLabels: TPanel
    Width = 204
    Height = 104
    ExplicitWidth = 75
    ExplicitHeight = 127
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
  end
  inherited pnlFields: TPanel
    Left = 204
    Height = 104
    ExplicitLeft = 75
    ExplicitHeight = 127
    object edtArticleId: TEdit
      Left = 16
      Top = 16
      Width = 121
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'ArtikelId'
      TabOrder = 0
      Text = 'edtArticleId'
    end
    object edtArticleName: TEdit
      Left = 16
      Top = 48
      Width = 121
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'ArtikelNaam'
      TabOrder = 1
      Text = 'edtArticleName'
    end
  end
end
