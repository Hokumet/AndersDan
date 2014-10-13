inherited frmEditOffer: TfrmEditOffer
  ActiveControl = Panel1
  Align = alClient
  Caption = 'Offerte bekijken / wijzigen'
  ClientHeight = 565
  ClientWidth = 1226
  KeyPreview = True
  Position = poDesigned
  WindowState = wsMaximized
  OnShortCut = FormShortCut
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
      Left = 1020
      Top = 7
      TabOrder = 2
      ExplicitLeft = 1020
      ExplicitTop = 7
    end
    inherited btnSave: TBitBtn
      Top = 7
      TabOrder = 0
      ExplicitTop = 7
    end
    inherited btnReset: TBitBtn
      Left = 695
      Top = 7
      TabOrder = 1
      ExplicitLeft = 695
      ExplicitTop = 7
    end
    object btnPrint: TBitBtn
      Left = 370
      Top = 7
      Width = 90
      Height = 25
      Caption = 'Save && Print'
      ModalResult = 6
      TabOrder = 3
      OnClick = btnPrintClick
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
      Height = 141
      Align = alTop
      Color = 60138
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
        Top = 48
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
      object Label12: TLabel
        Left = 801
        Top = 48
        Width = 32
        Height = 13
        Caption = 'Adres:'
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
      object Label13: TLabel
        Left = 801
        Top = 72
        Width = 87
        Height = 13
        Caption = 'Postcode / Plaats:'
      end
      object Label2: TLabel
        Left = 801
        Top = 24
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
      object Label11: TLabel
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
      object dtpInvoiceDate: TDateTimePicker
        Left = 169
        Top = 40
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
        TabOrder = 4
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
        TabOrder = 5
        OnExit = edtCustomerAddressExit
      end
      object edtPostCodeCity: TEdit
        Left = 521
        Top = 64
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantPostcodePlaats'
        TabOrder = 6
        OnExit = edtPostCodeCityExit
      end
      object ckbSaveCustomer: TCheckBox
        Left = 801
        Top = 116
        Width = 100
        Height = 17
        HelpType = htKeyword
        HelpKeyword = 'Factuur'
        Caption = 'Sla als klant op'
        TabOrder = 12
        OnClick = ckbSaveCustomerClick
      end
      object edtPhoneNumber: TEdit
        Left = 521
        Top = 88
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantTelefoonnummer'
        TabOrder = 7
      end
      object edtEmail: TEdit
        Left = 521
        Top = 112
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'KlantEmail'
        TabOrder = 8
      end
      object edtDeliverPostcodeCity: TEdit
        Left = 929
        Top = 64
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'AfleverPostcodePlaats'
        TabOrder = 11
      end
      object edtDeliverAddress: TEdit
        Left = 929
        Top = 40
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'AfleverAdres'
        TabOrder = 10
      end
      object edtDeliverName: TEdit
        Left = 929
        Top = 16
        Width = 240
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'AfleverNaam'
        TabOrder = 9
      end
      object dtpLegDate: TDateTimePicker
        Left = 169
        Top = 114
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'LegDatum'
        Date = 41255.949831111110000000
        Time = 41255.949831111110000000
        ImeName = 'ShowOrHide'
        TabOrder = 3
      end
      object dtpMeasureDate: TDateTimePicker
        Left = 169
        Top = 92
        Width = 121
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'Meetdatum'
        Date = 41255.949831111110000000
        Time = 41255.949831111110000000
        ImeName = 'ShowOrHide'
        TabOrder = 2
      end
      object rbtCustomerGender: TRadioGroup
        Left = 520
        Top = -9
        Width = 241
        Height = 29
        HelpType = htKeyword
        HelpKeyword = 'KlantAanhef'
        BiDiMode = bdLeftToRight
        Color = 60138
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          ''
          'Dhr.'
          'Mvr.'
          'Dhr/Mevr')
        ParentBiDiMode = False
        ParentBackground = False
        ParentColor = False
        TabOrder = 13
        OnExit = rbtCustomerGenderExit
      end
      object rbtDeliverGender: TRadioGroup
        Left = 928
        Top = -9
        Width = 241
        Height = 29
        HelpType = htKeyword
        HelpKeyword = 'AfleverAanhef'
        BiDiMode = bdLeftToRight
        Color = 60138
        Columns = 4
        Items.Strings = (
          ''
          'Dhr.'
          'Mvr.'
          'Dhr/Mevr')
        ParentBiDiMode = False
        ParentBackground = False
        ParentColor = False
        TabOrder = 14
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 411
      Width = 1225
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
      object edtTotal: THCurrencyEdit
        Left = 169
        Top = 64
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
        Top = 64
        Width = 248
        Height = 17
        HelpType = htKeyword
        Caption = 'Zet om naar een factuur'
        TabOrder = 0
      end
      object edtBtw: THCurrencyEdit
        Left = 169
        Top = 40
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
        Top = 16
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
      Top = 141
      Width = 1225
      Height = 270
      Align = alClient
      TabOrder = 2
      inline frameInvoiceDetails: TfrAncestor
        Left = 1
        Top = 1
        Width = 760
        Height = 268
        Align = alLeft
        Color = 16291591
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 760
        ExplicitHeight = 268
        inherited lblTitel: TLabel
          Width = 760
          Font.Color = clWhite
        end
        inherited Panel1: TPanel
          Top = 225
          Width = 760
          Height = 43
          ExplicitTop = 225
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
          Height = 212
          ExplicitWidth = 760
          ExplicitHeight = 212
        end
      end
      object edtComment: TMemo
        Left = 761
        Top = 1
        Width = 295
        Height = 268
        HelpType = htKeyword
        HelpKeyword = 'Opmerking'
        Align = alClient
        TabOrder = 1
      end
      object Panel5: TPanel
        Left = 1056
        Top = 1
        Width = 168
        Height = 268
        Align = alRight
        Caption = 'Panel5'
        Color = 16291591
        ParentBackground = False
        TabOrder = 2
        object MonthCalendar1: TMonthCalendar
          Left = 1
          Top = 1
          Width = 166
          Height = 266
          Align = alClient
          Date = 41846.703319618060000000
          TabOrder = 0
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
    Left = 521
    Top = 35
    Width = 240
    Height = 58
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
