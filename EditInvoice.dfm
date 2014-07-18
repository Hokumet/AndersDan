inherited frmEditInvoice: TfrmEditInvoice
  ActiveControl = btnReset
  Align = alClient
  Caption = 'Factuur bekijken / wijzigen'
  ClientHeight = 565
  ClientWidth = 1070
  KeyPreview = True
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitWidth = 1078
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 486
    Width = 1070
    ExplicitTop = 486
    ExplicitWidth = 1070
    inherited lblAangemaaktOp: TLabel
      Left = 277
      ExplicitLeft = 277
    end
  end
  inherited pnlLabels: TPanel
    Width = 1069
    Height = 486
    Alignment = taLeftJustify
    ExplicitWidth = 1069
    ExplicitHeight = 486
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1069
      Height = 137
      Align = alTop
      BorderStyle = bsSingle
      TabOrder = 0
      object lblNr: TLabel
        Left = 41
        Top = 24
        Width = 82
        Height = 13
        Caption = 'Factuur nummer:'
      end
      object lblDate: TLabel
        Left = 41
        Top = 54
        Width = 74
        Height = 13
        Caption = 'Factuur datum:'
      end
      object Label8: TLabel
        Left = 393
        Top = 24
        Width = 57
        Height = 13
        Caption = 'Klant naam:'
      end
      object Label9: TLabel
        Left = 393
        Top = 54
        Width = 32
        Height = 13
        Caption = 'Adres:'
      end
      object Label10: TLabel
        Left = 393
        Top = 79
        Width = 87
        Height = 13
        Caption = 'Postcode / Plaats:'
      end
      object Label6: TLabel
        Left = 393
        Top = 106
        Width = 84
        Height = 13
        Caption = 'Telefoonnummer:'
      end
      object dtpInvoiceDate: TDateTimePicker
        Left = 169
        Top = 46
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'FactuurDatum'
        Date = 41806.949831111110000000
        Time = 41806.949831111110000000
        TabOrder = 1
      end
      object edtInvoiceNr: TEdit
        Left = 169
        Top = 16
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'FactuurNr'
        Alignment = taRightJustify
        TabOrder = 0
      end
      object edtCustomerName: TEdit
        Left = 521
        Top = 16
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantNaam'
        TabOrder = 2
        OnExit = edtCustomerNameExit
        OnKeyUp = edtCustomerNameKeyUp
      end
      object edtCustomerAddress: TEdit
        Left = 521
        Top = 46
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantAdres'
        TabOrder = 3
      end
      object edtPostCodeCity: TEdit
        Left = 521
        Top = 76
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantPostcodePlaats'
        TabOrder = 4
      end
      object ckbSaveCustomer: TCheckBox
        Left = 781
        Top = 75
        Width = 100
        Height = 17
        HelpType = htKeyword
        HelpKeyword = 'Factuur'
        Caption = 'Sla als klant op'
        TabOrder = 6
        OnClick = ckbSaveCustomerClick
      end
      object edtPhoneNumber: TEdit
        Left = 521
        Top = 98
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantTelefoonnummer'
        TabOrder = 5
        OnExit = edtCustomerNameExit
        OnKeyUp = edtCustomerNameKeyUp
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 384
      Width = 1069
      Height = 102
      Align = alBottom
      BorderStyle = bsSingle
      TabOrder = 1
      object Label3: TLabel
        Left = 41
        Top = 74
        Width = 34
        Height = 13
        Caption = 'Totaal:'
      end
      object Label4: TLabel
        Left = 41
        Top = 44
        Width = 22
        Height = 13
        Caption = 'Btw:'
      end
      object Label5: TLabel
        Left = 41
        Top = 14
        Width = 50
        Height = 13
        Caption = 'Subtotaal:'
      end
      object lblPayed: TLabel
        Left = 393
        Top = 14
        Width = 61
        Height = 13
        Caption = 'Aanbetaling:'
      end
      object lblToBePayed: TLabel
        Left = 393
        Top = 44
        Width = 75
        Height = 13
        Caption = 'Nog te betalen:'
      end
      object lblPayedVia: TLabel
        Left = 699
        Top = 14
        Width = 72
        Height = 13
        Caption = 'Betalings type:'
      end
      object lblToBePayedVia: TLabel
        Left = 699
        Top = 74
        Width = 72
        Height = 13
        Caption = 'Betalings type:'
      end
      object edtTotal: THCurrencyEdit
        Left = 169
        Top = 66
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Totaal'
        ReadOnly = True
        TabOrder = 5
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object ckbInvoice: TCheckBox
        Left = 393
        Top = 70
        Width = 145
        Height = 17
        HelpType = htKeyword
        Caption = 'Zet om naar een factuur'
        TabOrder = 1
      end
      object edtBtw: THCurrencyEdit
        Left = 169
        Top = 36
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Btw'
        ReadOnly = True
        TabOrder = 7
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object edtSubtotal: THCurrencyEdit
        Left = 169
        Top = 6
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Subtotaal'
        ReadOnly = True
        TabOrder = 6
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object edtAanbetaling: THCurrencyEdit
        Left = 521
        Top = 6
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Aanbetaling'
        TabOrder = 0
        OnExit = edtAanbetalingExit
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object edtToBePayed: THCurrencyEdit
        Left = 521
        Top = 36
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'NogTeBetalen'
        TabOrder = 8
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object ckbInvoicePayed: TCheckBox
        Left = 393
        Top = 70
        Width = 145
        Height = 17
        HelpType = htKeyword
        Caption = 'Factuur is betaald'
        TabOrder = 2
        OnClick = ckbInvoicePayedClick
      end
      object cmbToBepayedVia: TComboBox
        Left = 781
        Top = 66
        Width = 145
        Height = 21
        Hint = 'BetalingsTypes'
        HelpType = htKeyword
        HelpKeyword = 'NogTeBetalenVia'
        TabOrder = 4
        TextHint = 'Type'
      end
      object cmbPayedVia: TComboBox
        Left = 777
        Top = 6
        Width = 145
        Height = 21
        Hint = 'BetalingsTypes'
        HelpType = htKeyword
        HelpKeyword = 'AanbetalingVia'
        TabOrder = 3
        TextHint = 'Type'
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 137
      Width = 1069
      Height = 247
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 2
      inline frameInvoiceDetails: TfrAncestor
        Left = 1
        Top = 1
        Width = 1063
        Height = 241
        Align = alClient
        Color = 2068964
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1063
        ExplicitHeight = 241
        inherited lblTitel: TLabel
          Width = 1063
        end
        inherited Panel1: TPanel
          Top = 176
          Width = 1063
          ExplicitTop = 176
          ExplicitWidth = 1063
          inherited btnNew: TButton
            Left = 42
            OnClick = frameInvoiceDetailsbtnNewClick
            ExplicitLeft = 42
          end
          inherited btnEdit: TButton
            Left = 146
            OnClick = frameInvoiceDetailsbtnEditClick
            ExplicitLeft = 146
          end
          inherited btnDelete: TButton
            Left = 250
            ExplicitLeft = 250
          end
        end
        inherited lvwItems: TListView
          Width = 1063
          Height = 163
          ExplicitWidth = 1063
          ExplicitHeight = 163
        end
      end
    end
  end
  inherited pnlFields: TPanel
    Left = 1069
    Width = 1
    Height = 486
    Alignment = taRightJustify
    ExplicitLeft = 1069
    ExplicitWidth = 1
    ExplicitHeight = 486
  end
  object lbxCustomers: TListBox [3]
    Left = 523
    Top = 38
    Width = 240
    Height = 59
    ItemHeight = 13
    TabOrder = 3
    Visible = False
    OnDblClick = lbxCustomersDblClick
    OnKeyUp = lbxCustomersKeyUp
  end
  inherited CurrQuery: TADOQuery
    Left = 8
    Top = 8
  end
end
