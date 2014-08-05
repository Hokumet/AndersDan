inherited frmEditInvoice: TfrmEditInvoice
  ActiveControl = Panel1
  Align = alClient
  Caption = 'Factuur bekijken / wijzigen'
  ClientHeight = 570
  ClientWidth = 1120
  KeyPreview = True
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitTop = -76
  ExplicitWidth = 1128
  ExplicitHeight = 597
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 518
    Width = 1120
    Height = 52
    ExplicitTop = 518
    ExplicitWidth = 1120
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
    Width = 1119
    Height = 518
    Alignment = taLeftJustify
    ExplicitWidth = 1119
    ExplicitHeight = 518
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1119
      Height = 141
      Align = alTop
      Color = 60138
      ParentBackground = False
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
        Top = 48
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
        Top = 48
        Width = 32
        Height = 13
        Caption = 'Adres:'
      end
      object Label10: TLabel
        Left = 393
        Top = 72
        Width = 87
        Height = 13
        Caption = 'Postcode / Plaats:'
      end
      object Label6: TLabel
        Left = 393
        Top = 96
        Width = 84
        Height = 13
        Caption = 'Telefoonnummer:'
      end
      object Label1: TLabel
        Left = 393
        Top = 120
        Width = 58
        Height = 13
        Caption = 'Email adres:'
      end
      object dtpInvoiceDate: TDateTimePicker
        Left = 169
        Top = 40
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
        Top = 40
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantAdres'
        TabOrder = 3
      end
      object edtPostCodeCity: TEdit
        Left = 521
        Top = 64
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
        TabOrder = 7
        OnClick = ckbSaveCustomerClick
      end
      object edtPhoneNumber: TEdit
        Left = 521
        Top = 88
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantTelefoonnummer'
        TabOrder = 5
        OnExit = edtCustomerNameExit
        OnKeyUp = edtCustomerNameKeyUp
      end
      object edtEmail: TEdit
        Left = 521
        Top = 112
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantEmail'
        TabOrder = 6
        OnExit = edtCustomerNameExit
        OnKeyUp = edtCustomerNameKeyUp
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 416
      Width = 1119
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
      Width = 1119
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
        Width = 183
        Height = 269
        HelpType = htKeyword
        HelpKeyword = 'Opmerking'
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 1
      end
      object Panel5: TPanel
        Left = 944
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
          Date = 41846.936044247680000000
          TabOrder = 0
        end
      end
    end
  end
  inherited pnlFields: TPanel
    Left = 1119
    Width = 1
    Height = 518
    Alignment = taRightJustify
    ExplicitLeft = 1119
    ExplicitWidth = 1
    ExplicitHeight = 518
  end
  object lbxCustomers: TListBox [3]
    Left = 521
    Top = 35
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
