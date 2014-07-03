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
      Height = 100
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
        Top = 51
        Width = 32
        Height = 13
        Caption = 'Adres:'
      end
      object Label10: TLabel
        Left = 393
        Top = 78
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
        Top = 43
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantAdres'
        TabOrder = 3
      end
      object edtPostCodeCity: TEdit
        Left = 521
        Top = 70
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
        Top = 69
        Width = 34
        Height = 13
        Caption = 'Totaal:'
      end
      object Label4: TLabel
        Left = 41
        Top = 42
        Width = 18
        Height = 13
        Caption = 'Btw'
      end
      object Label5: TLabel
        Left = 41
        Top = 15
        Width = 50
        Height = 13
        Caption = 'Subtotaal:'
      end
      object Label6: TLabel
        Left = 393
        Top = 15
        Width = 61
        Height = 13
        Caption = 'Aanbetaling:'
      end
      object Label7: TLabel
        Left = 393
        Top = 48
        Width = 75
        Height = 13
        Caption = 'Nog te betalen:'
      end
      object edtTotal: THCurrencyEdit
        Left = 169
        Top = 58
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Totaal'
        ReadOnly = True
        TabOrder = 2
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object ckbInvoice: TCheckBox
        Left = 400
        Top = 64
        Width = 145
        Height = 17
        HelpType = htKeyword
        HelpKeyword = 'Offerte'
        Caption = 'Zet om naar een factuur'
        TabOrder = 5
      end
      object edtBtw: THCurrencyEdit
        Left = 169
        Top = 31
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Btw'
        ReadOnly = True
        TabOrder = 1
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object edtSubtotal: THCurrencyEdit
        Left = 169
        Top = 4
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Subtotaal'
        ReadOnly = True
        TabOrder = 0
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object edtAanbetaling: THCurrencyEdit
        Left = 521
        Top = 4
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Aanbetaling'
        TabOrder = 3
        OnExit = edtAanbetalingExit
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object edtToBePayed: THCurrencyEdit
        Left = 521
        Top = 37
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'NogTeBetalen'
        TabOrder = 4
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 100
      Width = 926
      Height = 284
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 2
      inline frameInvoiceDetails: TfrAncestor
        Left = 1
        Top = 1
        Width = 920
        Height = 278
        Align = alClient
        Color = 2068964
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 920
        ExplicitHeight = 278
        inherited lblTitel: TLabel
          Width = 920
        end
        inherited Panel1: TPanel
          Top = 213
          Width = 920
          ExplicitTop = 213
          ExplicitWidth = 920
          inherited btnNew: TButton
            OnClick = frameInvoiceDetailsbtnNewClick
          end
          inherited btnEdit: TButton
            OnClick = frameInvoiceDetailsbtnEditClick
          end
        end
        inherited lvwItems: TListView
          Width = 920
          Height = 200
          ExplicitWidth = 920
          ExplicitHeight = 200
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
  object searchEdit: THSearchEdit [3]
    Left = 171
    Top = 72
    Width = 121
    Height = 22
    PopupMenuItems.Strings = (
      'TEST'
      'Bla'
      'TES'
      'Hkaa')
    StopButtonVisible = False
    TabOrder = 3
    Text = 'searchEdit'
  end
  object lbxCustomers: TListBox [4]
    Left = 523
    Top = 38
    Width = 240
    Height = 59
    ItemHeight = 13
    TabOrder = 4
    Visible = False
    OnDblClick = lbxCustomersDblClick
    OnKeyUp = lbxCustomersKeyUp
  end
  inherited CurrQuery: TADOQuery
    Left = 8
    Top = 8
  end
end
