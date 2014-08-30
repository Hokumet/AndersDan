object frmreportInvoice: TfrmreportInvoice
  Left = 0
  Top = 0
  Caption = 'Factuur printen'
  ClientHeight = 384
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object DBCConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Password="";Data Source=G:\ADA' +
      'FactuurProgramma.accdb;Persist Security Info=True;Jet OLEDB:Data' +
      'base Password=adafactuur'
    KeepConnection = False
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 64
    Top = 104
  end
  object DBTTInvoices: TADOTable
    Connection = DBCConnection
    CursorType = ctStatic
    MaxRecords = 1
    IndexName = 'FactuurNr'
    TableName = 'Facturen'
    Left = 144
    Top = 104
    object DBTTInvoicesId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object DBTTInvoicesFactuurNr: TIntegerField
      FieldName = 'FactuurNr'
    end
    object DBTTInvoicesOfferteNr: TIntegerField
      FieldName = 'OfferteNr'
    end
    object DBTTInvoicesFactuurDatum: TDateTimeField
      FieldName = 'FactuurDatum'
    end
    object DBTTInvoicesSubtotaal: TBCDField
      FieldName = 'Subtotaal'
      Precision = 19
    end
    object DBTTInvoicesBtw: TBCDField
      FieldName = 'Btw'
      Precision = 19
    end
    object DBTTInvoicesTotaal: TBCDField
      FieldName = 'Totaal'
      Precision = 19
    end
    object DBTTInvoicesAanbetaling: TBCDField
      FieldName = 'Aanbetaling'
      Precision = 19
    end
    object DBTTInvoicesAanbetalingVia: TWideStringField
      FieldName = 'AanbetalingVia'
      Size = 255
    end
    object DBTTInvoicesNogTeBetalen: TBCDField
      FieldName = 'NogTeBetalen'
      Precision = 19
    end
    object DBTTInvoicesNogTeBetalenVia: TWideStringField
      FieldName = 'NogTeBetalenVia'
      Size = 255
    end
    object DBTTInvoicesKlantNaam: TWideStringField
      FieldName = 'KlantNaam'
      Size = 255
    end
    object DBTTInvoicesKlantAdres: TWideStringField
      FieldName = 'KlantAdres'
      Size = 255
    end
    object DBTTInvoicesKlantPostCodePlaats: TWideStringField
      FieldName = 'KlantPostCodePlaats'
      Size = 255
    end
    object DBTTInvoicesKlantTelefoonnummer: TWideStringField
      FieldName = 'KlantTelefoonnummer'
      Size = 255
    end
    object DBTTInvoicesAangemaaktDoor: TWideStringField
      FieldName = 'AangemaaktDoor'
      Size = 255
    end
    object DBTTInvoicesAangemaaktOp: TDateTimeField
      FieldName = 'AangemaaktOp'
    end
    object DBTTInvoicesBetaald: TBooleanField
      FieldName = 'Betaald'
    end
    object DBTTInvoicesOpmerking: TWideMemoField
      FieldName = 'Opmerking'
      BlobType = ftWideMemo
    end
    object DBTTInvoicesKlantEmail: TWideStringField
      FieldName = 'KlantEmail'
      Size = 255
    end
    object DBTTInvoicesAfleverNaam: TWideStringField
      FieldName = 'AfleverNaam'
      Size = 255
    end
    object DBTTInvoicesAfleverAdres: TWideStringField
      FieldName = 'AfleverAdres'
      Size = 255
    end
    object DBTTInvoicesAfleverPostcodePlaats: TWideStringField
      FieldName = 'AfleverPostcodePlaats'
      Size = 255
    end
    object DBTTInvoicesAfleverTelefoonnummer: TWideStringField
      FieldName = 'AfleverTelefoonnummer'
      Size = 255
    end
    object DBTTInvoicesMeetdatum: TDateTimeField
      FieldName = 'Meetdatum'
    end
    object DBTTInvoicesLegDatum: TDateTimeField
      FieldName = 'LegDatum'
    end
    object DBTTInvoicesKlantAanhef: TWideStringField
      FieldName = 'KlantAanhef'
      Size = 255
    end
    object DBTTInvoicesAfleverAanhef: TWideStringField
      FieldName = 'AfleverAanhef'
      Size = 255
    end
  end
  object DBTInvoiceDetails: TADOTable
    Connection = DBCConnection
    CursorType = ctStatic
    MaxRecords = 999
    TableName = 'FactuurDetails'
    Left = 232
    Top = 104
    object DBTInvoiceDetailsId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object DBTInvoiceDetailsFactuurId: TIntegerField
      FieldName = 'FactuurId'
    end
    object DBTInvoiceDetailsOmschrijving: TWideStringField
      FieldName = 'Omschrijving'
      Size = 255
    end
    object DBTInvoiceDetailsPrijs: TBCDField
      FieldName = 'Prijs'
      Precision = 19
    end
    object DBTInvoiceDetailsOpmaat: TBooleanField
      FieldName = 'Opmaat'
    end
    object DBTInvoiceDetailsBedrag: TBCDField
      FieldName = 'Bedrag'
      Precision = 19
    end
    object DBTInvoiceDetailsAangemaaktDoor: TWideStringField
      FieldName = 'AangemaaktDoor'
      Size = 255
    end
    object DBTInvoiceDetailsAangemaaktOp: TDateTimeField
      FieldName = 'AangemaaktOp'
    end
    object DBTInvoiceDetailsAantal: TFloatField
      FieldName = 'Aantal'
    end
  end
  object frxDetailData: TfrxDBDataset
    UserName = 'frxDatailsDataU'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Id=Id'
      'FactuurId=FactuurId'
      'Omschrijving=Omschrijving'
      'Prijs=Prijs'
      'Opmaat=Opmaat'
      'Bedrag=Bedrag'
      'AangemaaktDoor=AangemaaktDoor'
      'AangemaaktOp=AangemaaktOp'
      'Aantal=Aantal')
    DataSet = DBTInvoiceDetails
    BCDToCurrency = False
    Left = 222
    Top = 24
  end
  object frxreport: TfrxReport
    Version = '4.11.17'
    DataSet = frxDetailData
    DataSetName = 'frxDatailsDataU'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Anders dan Andere factuur programma'
    ReportOptions.CreateDate = 41831.598576145840000000
    ReportOptions.LastChange = 41865.824482708330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxreportGetValue
    Left = 72
    Top = 24
    Datasets = <
      item
        DataSet = frxDetailData
        DataSetName = 'frxDatailsDataU'
      end
      item
        DataSet = frxMasterData
        DataSetName = 'frxMasterDataU'
      end>
    Variables = <
      item
        Name = ' aanbetaling'
        Value = Null
      end
      item
        Name = 'lblAanbetaling'
        Value = ''
      end
      item
        Name = 'PayedVia'
        Value = ''
      end
      item
        Name = 'Payed'
        Value = ''
      end
      item
        Name = 'lblToBePayed'
        Value = ''
      end
      item
        Name = 'ToBePayedVia'
        Value = ''
      end
      item
        Name = 'ToBePayed'
        Value = ''
      end
      item
        Name = 'Email'
        Value = ''
      end
      item
        Name = 'PhoneNr'
        Value = ''
      end
      item
        Name = 'PhoneNrLabel'
        Value = ''
      end
      item
        Name = 'EmailLabel'
        Value = ''
      end
      item
        Name = 'Measure'
        Value = ''
      end
      item
        Name = 'MeasureLabel'
        Value = ''
      end
      item
        Name = 'Leg'
        Value = ''
      end
      item
        Name = 'LegLabel'
        Value = ''
      end
      item
        Name = 'FullName'
        Value = ''
      end
      item
        Name = 'DeliverFullName'
        Value = ''
      end
      item
        Name = 'DeliverTitle'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 227.905582600000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 444.015748030000000000
          Top = 183.307086610000000000
          Width = 97.889758900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Factuur nr.       :')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 444.015748030000000000
          Top = 202.204724409448800000
          Width = 97.889758900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Factuur datum :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 444.015748030000000000
          Top = 138.283430390000000000
          Width = 249.448980000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FACTUUR')
          ParentFont = False
        end
        object frxMasterDataUFactuurNr: TfrxMemoView
          Left = 545.015748030000000000
          Top = 183.307086610000000000
          Width = 154.204724410000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FactuurNr'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."FactuurNr"]')
          ParentFont = False
        end
        object frxMasterDataUFactuurDatum: TfrxMemoView
          Left = 545.015748030000000000
          Top = 202.204736610000000000
          Width = 154.204724410000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.FormatStr = 'dd-mm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."FactuurDatum"]')
          ParentFont = False
        end
        object frxMasterDataUKlantAdres: TfrxMemoView
          Left = 48.015748030000000000
          Top = 183.299200390000000000
          Width = 306.141930000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'KlantAdres'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxMasterDataU."KlantAdres"]')
          ParentFont = False
        end
        object frxMasterDataUKlantPostCodePlaats: TfrxMemoView
          Left = 48.015748030000000000
          Top = 202.094500390000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KlantPostCodePlaats'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxMasterDataU."KlantPostCodePlaats"]')
          ParentFont = False
        end
        object FullName1: TfrxMemoView
          Left = 48.000000000000000000
          Top = 164.409448818897600000
          Width = 306.141732280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FullName]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 200.976500000000000000
        Top = 306.141810390000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Memo18: TfrxMemoView
          Left = 444.094488190000000000
          Top = 75.118120000000000000
          Width = 97.889763780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[MeasureLabel]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 444.094488190000000000
          Top = 93.913420000000000000
          Width = 97.889763780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[LegLabel]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 34.015770000000000000
          Top = 182.078850000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'OMSCHRIJVING')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 317.480520000000000000
          Top = 182.078850000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'AANTAL')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 444.094488188976400000
          Top = 182.078850000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'PRIJS')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 570.708661420000000000
          Top = 182.078850000000000000
          Width = 128.503937010000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'BEDRAG')
          ParentFont = False
        end
        object Email: TfrxMemoView
          Left = 444.094488190000000000
          Top = 132.031659610000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[EmailLabel]')
          ParentFont = False
        end
        object PhoneNr: TfrxMemoView
          Left = 444.094488190000000000
          Top = 112.590719610000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PhoneNrLabel]')
          ParentFont = False
        end
        object frxMasterDataUAfleverAdres: TfrxMemoView
          Left = 48.015748031496060000
          Top = 113.039374960000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'AfleverAdres'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxMasterDataU."AfleverAdres"]')
          ParentFont = False
        end
        object frxMasterDataUAfleverPostcodePlaats: TfrxMemoView
          Left = 48.015748030000000000
          Top = 131.692918270000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'AfleverPostcodePlaats'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxMasterDataU."AfleverPostcodePlaats"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 545.007874020000000000
          Top = 132.212598430000000000
          Width = 154.204724410000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Email]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 545.007874020000000000
          Top = 112.559055120000000000
          Width = 154.204724410000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PhoneNr]')
          ParentFont = False
        end
        object Leg: TfrxMemoView
          Left = 545.007874020000000000
          Top = 93.795419610000000000
          Width = 154.204724410000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Leg]')
          ParentFont = False
        end
        object Measure: TfrxMemoView
          Left = 545.007874020000000000
          Top = 75.338709610000000000
          Width = 154.204724410000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Measure]')
          ParentFont = False
        end
        object FullName: TfrxMemoView
          Left = 48.000000000000000000
          Top = 94.110236220000000000
          Width = 253.228346460000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DeliverFullName]')
          ParentFont = False
        end
        object DeliverTitle: TfrxMemoView
          Left = 48.000000000000000000
          Top = 75.212598430000000000
          Width = 249.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DeliverTitle]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 19.897650000000000000
        Top = 529.133936380000000000
        Width = 718.110700000000000000
        DataSet = frxDetailData
        DataSetName = 'frxDatailsDataU'
        RowCount = 0
        object frxDatailsDataUAantal: TfrxMemoView
          Left = 291.582870000000000000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'Aantal'
          DataSet = frxDetailData
          DataSetName = 'frxDatailsDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatailsDataU."Aantal"]')
          ParentFont = False
        end
        object frxDatailsDataUPrijs: TfrxMemoView
          Left = 386.094488190000000000
          Width = 105.826840000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'Prijs'
          DataSet = frxDetailData
          DataSetName = 'frxDatailsDataU'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatailsDataU."Prijs"]')
          ParentFont = False
        end
        object frxDatailsDataUOmschrijving: TfrxMemoView
          Left = 34.015770000000000000
          Width = 264.567100000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'Omschrijving'
          DataSet = frxDetailData
          DataSetName = 'frxDatailsDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDatailsDataU."Omschrijving"]')
          ParentFont = False
        end
        object frxDatailsDataUBedrag: TfrxMemoView
          Left = 570.708661420000000000
          Width = 128.503937010000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDetailData
          DataSetName = 'frxDatailsDataU'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatailsDataU."Bedrag"]')
          ParentFont = False
        end
      end
      object PageFooter: TfrxPageFooter
        Height = 306.141930000000000000
        Top = 740.787880000000000000
        Width = 718.110700000000000000
        PrintOnFirstPage = False
        object Memo8: TfrxMemoView
          Left = 570.708661420000000000
          Top = 27.803185000000000000
          Width = 128.503937010000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 15000804
          DataField = 'Btw'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."Btw"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo13: TfrxMemoView
          Left = 444.094488190000000000
          Top = 58.488250000000000000
          Width = 97.889758900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Memo.UTF8W = (
            'Totaal    ')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 444.094488190000000000
          Top = 38.582715000000000000
          Width = 86.551168900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Btw  21%')
          ParentFont = False
        end
        object frxMasterDataUSubtotaal: TfrxMemoView
          Left = 570.708661420000000000
          Top = 15.118120000000000000
          Width = 128.503937010000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15000804
          DataField = 'Subtotaal'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."Subtotaal"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo1: TfrxMemoView
          Left = 444.094488188976400000
          Top = 18.897650000000000000
          Width = 86.551193310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Subtotaal')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 34.015748030000000000
          Top = 15.118120000000000000
          Width = 665.196850390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
        end
        object frxMasterDataUOpmerking: TfrxMemoView
          Left = 34.015748030000000000
          Top = 18.897650000000000000
          Width = 381.732530000000000000
          Height = 109.606370000000000000
          ShowHint = False
          DataField = 'Opmerking'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxMasterDataU."Opmerking"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 444.094488190000000000
          Top = 98.393785000000000000
          Width = 128.125998900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Nog te betalen')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 444.094488190000000000
          Top = 78.708720000000000000
          Width = 86.551193310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Reeds Betaald')
          ParentFont = False
        end
        object frxMasterDataUNogTeBetalen: TfrxMemoView
          Left = 570.709030000000000000
          Top = 94.488196300000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15000804
          DataField = 'NogTeBetalen'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."NogTeBetalen"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object frxMasterDataUAanbetaling: TfrxMemoView
          Left = 570.709030000000000000
          Top = 73.834652990000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15000804
          DataField = 'Aanbetaling'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."Aanbetaling"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 570.708661420000000000
          Top = 58.488250000000000000
          Width = 128.503937010000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          DataField = 'Totaal'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."Totaal"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 141.960730000000000000
          Width = 710.551640000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'ATTENTIE UIT ALLE TE STOFFEREN RUIMTES, DIENEN TAPIJT, VINYL, LA' +
              'MINAAT EN MEUBELS VERWIJDERD TE ZIJN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxMasterData: TfrxDBDataset
    UserName = 'frxMasterDataU'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Id=Id'
      'FactuurNr=FactuurNr'
      'OfferteNr=OfferteNr'
      'FactuurDatum=FactuurDatum'
      'Subtotaal=Subtotaal'
      'Btw=Btw'
      'Totaal=Totaal'
      'Aanbetaling=Aanbetaling'
      'AanbetalingVia=AanbetalingVia'
      'NogTeBetalen=NogTeBetalen'
      'NogTeBetalenVia=NogTebetalenVia'
      'KlantNaam=KlantNaam'
      'KlantAdres=KlantAdres'
      'KlantPostCodePlaats=KlantPostCodePlaats'
      'KlantTelefoonnummer=KlantTelefoonnummer'
      'AangemaaktDoor=AangemaaktDoor'
      'AangemaaktOp=AangemaaktOp'
      'Betaald=Betaald'
      'Opmerking=Opmerking'
      'KlantEmail=KlantEmail'
      'AfleverNaam=AfleverNaam'
      'AfleverAdres=AfleverAdres'
      'AfleverPostcodePlaats=AfleverPostcodePlaats'
      'AfleverTelefoonnummer=AfleverTelefoonnummer'
      'Meetdatum=Meetdatum'
      'LegDatum=LegDatum'
      'KlantAanhef=KlantAanhef'
      'AfleverAanhef=AfleverAanhef')
    DataSet = DBTTInvoices
    BCDToCurrency = False
    Left = 144
    Top = 24
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'Ada'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 96
    Top = 224
  end
end
