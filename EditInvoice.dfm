inherited frmEditInvoice: TfrmEditInvoice
  ActiveControl = btnReset
  Align = alClient
  Caption = 'Factuur bekijken / wijzigen'
  ClientHeight = 781
  ClientWidth = 1261
  KeyPreview = True
  WindowState = wsMaximized
  ExplicitWidth = 1269
  ExplicitHeight = 808
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 702
    Width = 1261
    ExplicitTop = 702
    ExplicitWidth = 1261
  end
  inherited pnlLabels: TPanel
    Width = 1028
    Height = 702
    Alignment = taLeftJustify
    ExplicitWidth = 1028
    ExplicitHeight = 702
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1028
      Height = 93
      Align = alTop
      BorderStyle = bsSingle
      TabOrder = 0
      object Label1: TLabel
        Left = 41
        Top = 24
        Width = 82
        Height = 13
        Caption = 'Factuur nummer:'
      end
      object Label2: TLabel
        Left = 41
        Top = 54
        Width = 74
        Height = 13
        Caption = 'Factuur datum:'
      end
      object dtpInvoiceDate: TDateTimePicker
        Left = 251
        Top = 46
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'FactuurDatum'
        Date = 41806.949831111110000000
        Time = 41806.949831111110000000
        TabOrder = 0
      end
      object edtInvoiceNr: TEdit
        Left = 251
        Top = 16
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'FactuurNr'
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 633
      Width = 1028
      Height = 69
      Align = alBottom
      BorderStyle = bsSingle
      TabOrder = 1
      object Label3: TLabel
        Left = 41
        Top = 32
        Width = 34
        Height = 13
        Caption = 'Totaal:'
      end
      object edtTotal: THCurrencyEdit
        Left = 251
        Top = 24
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Totaal'
        TabOrder = 0
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object ckbInvoice: TCheckBox
        Left = 528
        Top = 24
        Width = 145
        Height = 17
        HelpType = htKeyword
        HelpKeyword = 'Offerte'
        Caption = 'Zet om naar ene factuur'
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 93
      Width = 1028
      Height = 540
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 2
      inline frameInvoiceDetails: TfrAncestor
        Left = 1
        Top = 1
        Width = 1022
        Height = 534
        Align = alClient
        Color = 2068964
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1022
        ExplicitHeight = 534
        inherited lblTitel: TLabel
          Width = 1022
        end
        inherited Panel1: TPanel
          Top = 469
          Width = 1022
          ExplicitTop = 469
          ExplicitWidth = 1022
          inherited btnNew: TButton
            OnClick = frameInvoiceDetailsbtnNewClick
          end
          inherited btnEdit: TButton
            OnClick = frameInvoiceDetailsbtnEditClick
          end
        end
        inherited lvwItems: TListView
          Width = 1022
          Height = 456
          ExplicitWidth = 1022
          ExplicitHeight = 456
        end
      end
    end
  end
  inherited pnlFields: TPanel
    Left = 1028
    Height = 702
    Alignment = taRightJustify
    ExplicitLeft = 1028
    ExplicitHeight = 702
  end
  inherited CurrQuery: TADOQuery
    Left = 8
    Top = 8
  end
end
