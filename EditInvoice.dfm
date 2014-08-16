inherited frmEditInvoice: TfrmEditInvoice
  ActiveControl = Panel1
  Align = alClient
  Caption = 'Factuur bekijken / wijzigen'
  ClientHeight = 570
  ClientWidth = 1234
  KeyPreview = True
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitWidth = 1242
  ExplicitHeight = 597
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 518
    Width = 1234
    Height = 52
    ExplicitTop = 518
    ExplicitWidth = 1234
    ExplicitHeight = 52
    inherited LblAangemaakDoor: TLabel
      Top = 33
      ExplicitTop = 33
    end
    inherited lblAangemaaktOp: TLabel
      Left = 352
      Top = 33
      ExplicitLeft = 352
      ExplicitTop = 33
    end
    inherited btnCancel: TBitBtn
      Left = 661
      Top = 7
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 2
      ExplicitLeft = 661
      ExplicitTop = 7
    end
    inherited btnSave: TBitBtn
      Top = 7
      TabOrder = 0
      ExplicitTop = 7
    end
    inherited btnReset: TBitBtn
      Left = 352
      Top = 7
      TabOrder = 1
      ExplicitLeft = 352
      ExplicitTop = 7
    end
  end
  inherited pnlLabels: TPanel
    Width = 1233
    Height = 518
    Alignment = taLeftJustify
    ExplicitWidth = 1233
    ExplicitHeight = 518
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1233
      Height = 141
      Align = alTop
      Color = 60138
      ParentBackground = False
      TabOrder = 0
      object lblNr: TLabel
        Left = 41
        Top = 28
        Width = 82
        Height = 13
        Caption = 'Factuur nummer:'
      end
      object lblDate: TLabel
        Left = 41
        Top = 52
        Width = 74
        Height = 13
        Caption = 'Factuur datum:'
      end
      object Label8: TLabel
        Left = 393
        Top = 28
        Width = 57
        Height = 13
        Caption = 'Klant naam:'
      end
      object Label9: TLabel
        Left = 393
        Top = 52
        Width = 32
        Height = 13
        Caption = 'Adres:'
      end
      object Label10: TLabel
        Left = 393
        Top = 76
        Width = 87
        Height = 13
        Caption = 'Postcode / Plaats:'
      end
      object Label6: TLabel
        Left = 393
        Top = 100
        Width = 84
        Height = 13
        Caption = 'Telefoonnummer:'
      end
      object Label1: TLabel
        Left = 393
        Top = 124
        Width = 58
        Height = 13
        Caption = 'Email adres:'
      end
      object Label2: TLabel
        Left = 393
        Top = 4
        Width = 95
        Height = 13
        Caption = 'FACTUUR ADRES:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 801
        Top = 4
        Width = 90
        Height = 13
        Caption = 'AFLEVER ADRES:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 801
        Top = 52
        Width = 32
        Height = 13
        Caption = 'Adres:'
      end
      object Label13: TLabel
        Left = 801
        Top = 76
        Width = 87
        Height = 13
        Caption = 'Postcode / Plaats:'
      end
      object Label11: TLabel
        Left = 801
        Top = 28
        Width = 57
        Height = 13
        Caption = 'Klant naam:'
      end
      object Label14: TLabel
        Left = 41
        Top = 100
        Width = 58
        Height = 13
        Caption = 'Meetdatum:'
      end
      object Label15: TLabel
        Left = 41
        Top = 122
        Width = 51
        Height = 13
        Caption = 'Legdatum:'
      end
      object dtpInvoiceDate: TDateTimePicker
        Left = 169
        Top = 44
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
        Top = 20
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'FactuurNr'
        Alignment = taRightJustify
        TabOrder = 0
      end
      object edtCustomerName: TEdit
        Left = 521
        Top = 20
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantNaam'
        TabOrder = 4
        OnExit = edtCustomerNameExit
        OnKeyUp = edtCustomerNameKeyUp
      end
      object edtCustomerAddress: TEdit
        Left = 521
        Top = 44
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantAdres'
        TabOrder = 5
        OnExit = edtCustomerAddressExit
      end
      object edtPostCodeCity: TEdit
        Left = 521
        Top = 68
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantPostcodePlaats'
        TabOrder = 6
        OnExit = edtPostCodeCityExit
      end
      object ckbSaveCustomer: TCheckBox
        Left = 801
        Top = 118
        Width = 100
        Height = 17
        HelpType = htKeyword
        HelpKeyword = 'Factuur'
        Caption = 'Sla als klant op'
        TabOrder = 9
        OnClick = ckbSaveCustomerClick
      end
      object edtPhoneNumber: TEdit
        Left = 521
        Top = 92
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantTelefoonnummer'
        TabOrder = 7
        OnKeyUp = edtCustomerNameKeyUp
      end
      object edtEmail: TEdit
        Left = 521
        Top = 116
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantEmail'
        TabOrder = 8
        OnKeyUp = edtCustomerNameKeyUp
      end
      object edtDeliverPostcodeCity: TEdit
        Left = 929
        Top = 68
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'AfleverPostcodePlaats'
        TabOrder = 10
      end
      object edtDeliverAddress: TEdit
        Left = 929
        Top = 44
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'AfleverAdres'
        TabOrder = 11
      end
      object lbxCustomers: TListBox
        Left = 525
        Top = 39
        Width = 240
        Height = 59
        ItemHeight = 13
        TabOrder = 12
        Visible = False
        OnDblClick = lbxCustomersDblClick
        OnKeyUp = lbxCustomersKeyUp
      end
      object edtDeliverCustomerName: TEdit
        Left = 929
        Top = 16
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'AfleverNaam'
        TabOrder = 13
      end
      object dtpMeasureDate: TDateTimePicker
        Left = 169
        Top = 87
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Meetdatum'
        Date = 41806.949831111110000000
        Time = 41806.949831111110000000
        TabOrder = 2
      end
      object dtpLegDate: TDateTimePicker
        Left = 169
        Top = 114
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'LegDatum'
        Date = 41806.949831111110000000
        Time = 41806.949831111110000000
        TabOrder = 3
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 416
      Width = 1233
      Height = 102
      Align = alBottom
      Color = 60138
      ParentBackground = False
      TabOrder = 1
      object Label3: TLabel
        Left = 41
        Top = 72
        Width = 34
        Height = 13
        Caption = 'Totaal:'
      end
      object Label4: TLabel
        Left = 41
        Top = 48
        Width = 22
        Height = 13
        Caption = 'Btw:'
      end
      object Label5: TLabel
        Left = 41
        Top = 24
        Width = 50
        Height = 13
        Caption = 'Subtotaal:'
      end
      object lblPayed: TLabel
        Left = 393
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Aanbetaling:'
      end
      object lblToBePayed: TLabel
        Left = 393
        Top = 48
        Width = 75
        Height = 13
        Caption = 'Nog te betalen:'
      end
      object lblPayedVia: TLabel
        Left = 699
        Top = 24
        Width = 72
        Height = 13
        Caption = 'Betalings type:'
      end
      object lblToBePayedVia: TLabel
        Left = 699
        Top = 72
        Width = 72
        Height = 13
        Caption = 'Betalings type:'
      end
      object edtTotal: THCurrencyEdit
        Left = 169
        Top = 64
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Totaal'
        ReadOnly = True
        TabOrder = 4
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object edtBtw: THCurrencyEdit
        Left = 169
        Top = 40
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Btw'
        ReadOnly = True
        TabOrder = 6
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object edtSubtotal: THCurrencyEdit
        Left = 169
        Top = 16
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Subtotaal'
        ReadOnly = True
        TabOrder = 5
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object edtAanbetaling: THCurrencyEdit
        Left = 521
        Top = 16
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
        Top = 40
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'NogTeBetalen'
        TabOrder = 7
        Alignment = taRightJustify
        MaxValue = 999999.000000000000000000
      end
      object ckbInvoicePayed: TCheckBox
        Left = 393
        Top = 68
        Width = 145
        Height = 17
        HelpType = htKeyword
        Caption = 'Factuur is betaald'
        TabOrder = 1
        OnClick = ckbInvoicePayedClick
      end
      object cmbToBepayedVia: TComboBox
        Left = 781
        Top = 64
        Width = 145
        Height = 21
        Hint = 'BetalingsTypes'
        HelpType = htKeyword
        HelpKeyword = 'NogTeBetalenVia'
        TabOrder = 3
        TextHint = 'Type'
      end
      object cmbPayedVia: TComboBox
        Left = 781
        Top = 16
        Width = 145
        Height = 21
        Hint = 'BetalingsTypes'
        HelpType = htKeyword
        HelpKeyword = 'AanbetalingVia'
        TabOrder = 2
        TextHint = 'Type'
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 141
      Width = 1233
      Height = 275
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 2
      inline frameInvoiceDetails: TfrAncestor
        Left = 1
        Top = 1
        Width = 760
        Height = 269
        Align = alLeft
        Color = 16291591
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 760
        ExplicitHeight = 269
        inherited lblTitel: TLabel
          Width = 760
          Font.Color = clWhite
        end
        inherited Panel1: TPanel
          Top = 226
          Width = 760
          Height = 43
          ExplicitTop = 226
          ExplicitWidth = 760
          ExplicitHeight = 43
          inherited btnNew: TButton
            Left = 40
            Top = 7
            OnClick = frameInvoiceDetailsbtnNewClick
            ExplicitLeft = 40
            ExplicitTop = 7
          end
          inherited btnEdit: TButton
            Left = 349
            Top = 7
            OnClick = frameInvoiceDetailsbtnEditClick
            ExplicitLeft = 349
            ExplicitTop = 7
          end
          inherited btnDelete: TButton
            Left = 658
            Top = 7
            OnClick = frameInvoiceDetailsbtnDeleteClick
            ExplicitLeft = 658
            ExplicitTop = 7
          end
        end
        inherited lvwItems: TListView
          Width = 760
          Height = 213
          ExplicitWidth = 760
          ExplicitHeight = 213
        end
      end
      object edtComment: TMemo
        Left = 761
        Top = 1
        Width = 297
        Height = 269
        HelpType = htKeyword
        HelpKeyword = 'Opmerking'
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 1
      end
      object Panel5: TPanel
        Left = 1058
        Top = 1
        Width = 170
        Height = 269
        Align = alRight
        Caption = 'Panel5'
        Color = 16291591
        ParentBackground = False
        TabOrder = 2
        object MonthCalendar1: TMonthCalendar
          Left = 1
          Top = 1
          Width = 168
          Height = 267
          Align = alClient
          Date = 41846.806453807870000000
          TabOrder = 0
          ExplicitLeft = 6
          ExplicitWidth = 163
        end
      end
    end
  end
  inherited pnlFields: TPanel
    Left = 1233
    Width = 1
    Height = 518
    Alignment = taRightJustify
    ExplicitLeft = 1233
    ExplicitWidth = 1
    ExplicitHeight = 518
  end
  inherited CurrQuery: TADOQuery
    Left = 8
    Top = 8
  end
end
