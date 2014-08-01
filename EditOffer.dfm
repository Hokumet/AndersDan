inherited frmEditOffer: TfrmEditOffer
  ActiveControl = btnReset
  Align = alClient
  Caption = 'Offerte bekijken / wijzigen'
  ClientHeight = 565
  ClientWidth = 1226
  KeyPreview = True
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitLeft = -293
  ExplicitWidth = 1234
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 513
    Width = 1226
    Height = 52
    ExplicitTop = 513
    ExplicitWidth = 1226
    ExplicitHeight = 52
    inherited LblAangemaakDoor: TLabel
      Top = 33
      ExplicitTop = 33
    end
    inherited lblAangemaaktOp: TLabel
      Left = 353
      Top = 31
      ExplicitLeft = 353
      ExplicitTop = 31
    end
    inherited btnCancel: TBitBtn
      Left = 661
      Top = 7
      ExplicitLeft = 661
      ExplicitTop = 7
    end
    inherited btnSave: TBitBtn
      Top = 7
      ExplicitTop = 7
    end
    inherited btnReset: TBitBtn
      Left = 353
      Top = 7
      ExplicitLeft = 353
      ExplicitTop = 7
    end
  end
  inherited pnlLabels: TPanel
    Width = 1225
    Height = 513
    Alignment = taLeftJustify
    ExplicitWidth = 1225
    ExplicitHeight = 513
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1225
      Height = 137
      Align = alTop
      Color = 1807588
      ParentBackground = False
      TabOrder = 0
      object lblNr: TLabel
        Left = 41
        Top = 24
        Width = 81
        Height = 13
        Caption = 'Offerte nummer:'
      end
      object lblDate: TLabel
        Left = 41
        Top = 54
        Width = 73
        Height = 13
        Caption = 'Offerte datum:'
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
        HelpKeyword = 'OfferteDatum'
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
        HelpKeyword = 'OfferteNr'
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
      Top = 411
      Width = 1225
      Height = 102
      Align = alBottom
      Color = 1807588
      ParentBackground = False
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
      object edtTotal: THCurrencyEdit
        Left = 169
        Top = 66
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Totaal'
        ReadOnly = True
        TabOrder = 1
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
        TabOrder = 0
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
    end
    object Panel4: TPanel
      Left = 0
      Top = 137
      Width = 1225
      Height = 274
      Align = alClient
      TabOrder = 2
      inline frameInvoiceDetails: TfrAncestor
        Left = 1
        Top = 1
        Width = 760
        Height = 272
        Align = alLeft
        Color = 60138
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 760
        ExplicitHeight = 272
        inherited lblTitel: TLabel
          Width = 760
          Color = 60138
        end
        inherited Panel1: TPanel
          Top = 229
          Width = 760
          Height = 43
          Color = 60138
          ParentBackground = False
          ExplicitTop = 229
          ExplicitWidth = 760
          ExplicitHeight = 43
          inherited btnNew: TButton
            Left = 42
            Top = 7
            OnClick = frameInvoiceDetailsbtnNewClick
            ExplicitLeft = 42
            ExplicitTop = 7
          end
          inherited btnEdit: TButton
            Left = 350
            Top = 7
            OnClick = frameInvoiceDetailsbtnEditClick
            ExplicitLeft = 350
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
          Height = 216
          ExplicitWidth = 760
          ExplicitHeight = 216
        end
      end
      object edtComment: TMemo
        Left = 761
        Top = 1
        Width = 295
        Height = 272
        HelpType = htKeyword
        HelpKeyword = 'Opmerking'
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 127
      end
      object Panel5: TPanel
        Left = 1056
        Top = 1
        Width = 168
        Height = 272
        Align = alRight
        Caption = 'Panel5'
        Color = 60138
        ParentBackground = False
        TabOrder = 2
        object MonthCalendar1: TMonthCalendar
          Left = 1
          Top = 1
          Width = 166
          Height = 270
          Align = alClient
          Date = 41846.729659664350000000
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitWidth = 162
        end
      end
    end
  end
  inherited pnlFields: TPanel
    Left = 1225
    Width = 1
    Height = 513
    Alignment = taRightJustify
    ExplicitLeft = 1225
    ExplicitWidth = 1
    ExplicitHeight = 513
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
