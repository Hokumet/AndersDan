inherited frmEditInvoice: TfrmEditInvoice
  ActiveControl = btnReset
  Align = alClient
  Caption = 'Factuur bekijken / wijzigen'
  ClientHeight = 565
  ClientWidth = 927
  KeyPreview = True
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitWidth = 935
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 486
    Width = 927
    ExplicitTop = 486
    ExplicitWidth = 927
    inherited lblAangemaaktOp: TLabel
      Left = 277
      ExplicitLeft = 277
    end
  end
  inherited pnlLabels: TPanel
    Width = 926
    Height = 486
    Alignment = taLeftJustify
    ExplicitWidth = 926
    ExplicitHeight = 486
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 926
      Height = 106
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
        Caption = 'Sla als klant op'
        TabOrder = 5
        OnClick = ckbSaveCustomerClick
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 384
      Width = 926
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
      object Label6: TLabel
        Left = 393
        Top = 14
        Width = 61
        Height = 13
        Caption = 'Aanbetaling:'
      end
      object Label7: TLabel
        Left = 393
        Top = 44
        Width = 75
        Height = 13
        Caption = 'Nog te betalen:'
      end
      object edtTotal: THCurrencyEdit
        Left = 169
        Top = 66
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Totaal'
        ReadOnly = True
        TabOrder = 4
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object ckbInvoice: TCheckBox
        Left = 393
        Top = 70
        Width = 145
        Height = 17
        HelpType = htKeyword
        HelpKeyword = 'Offerte'
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
        TabOrder = 3
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
        TabOrder = 2
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
        TabOrder = 5
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 106
      Width = 926
      Height = 278
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 2
      inline frameInvoiceDetails: TfrAncestor
        Left = 1
        Top = 1
        Width = 920
        Height = 272
        Align = alClient
        Color = 2068964
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 920
        ExplicitHeight = 272
        inherited lblTitel: TLabel
          Width = 920
        end
        inherited Panel1: TPanel
          Top = 207
          Width = 920
          ExplicitTop = 207
          ExplicitWidth = 920
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
          Width = 920
          Height = 194
          ExplicitWidth = 920
          ExplicitHeight = 194
        end
      end
    end
  end
  inherited pnlFields: TPanel
    Left = 926
    Width = 1
    Height = 486
    Alignment = taRightJustify
    ExplicitLeft = 926
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
