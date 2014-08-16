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
          Left = 34.015748030000000000
          Top = 165.724370390000000000
          Width = 97.889758900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Factuur nr.       :')
        end
        object Memo3: TfrxMemoView
          Left = 34.015748031496060000
          Top = 184.519670390000000000
          Width = 97.889758900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Factuur datum :')
        end
        object Memo4: TfrxMemoView
          Left = 34.015748031496060000
          Top = 118.385780390000000000
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
          Left = 134.015748030000000000
          Top = 165.724370390000000000
          Width = 136.063018980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FactuurNr'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Memo.UTF8W = (
            '[frxMasterDataU."FactuurNr"]')
        end
        object frxMasterDataUFactuurDatum: TfrxMemoView
          Left = 134.015748030000000000
          Top = 184.519670390000000000
          Width = 136.063018980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.FormatStr = 'dd-mm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[frxMasterDataU."FactuurDatum"]')
        end
        object frxMasterDataUMeetdatum: TfrxMemoView
          Left = 544.252320000000000000
          Top = 165.724370390000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Meetdatum'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.FormatStr = 'dd-mm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[frxMasterDataU."Meetdatum"]')
        end
        object frxMasterDataULegDatum: TfrxMemoView
          Left = 544.252320000000000000
          Top = 184.519670390000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LegDatum'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.FormatStr = 'dd-mm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[frxMasterDataU."LegDatum"]')
        end
        object Memo18: TfrxMemoView
          Left = 447.118110240000000000
          Top = 165.724370390000000000
          Width = 94.110228900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Meetdatum     :')
        end
        object Memo19: TfrxMemoView
          Left = 447.118110236220500000
          Top = 184.519670390000000000
          Width = 94.110228900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Legdatum       :')
        end
        object Line1: TfrxLineView
          Left = 34.015748031496060000
          Top = 205.874150000000000000
          Width = 665.196850393700800000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 34.015748030000000000
          Top = 208.433210000000000000
          Width = 665.196850390000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 200.976500000000000000
        Top = 306.141810390000000000
        Width = 718.110700000000000000
        RowCount = 1
        object frxMasterDataUKlantNaam: TfrxMemoView
          Left = 34.015770000000000000
          Top = 58.677180000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KlantNaam'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Memo.UTF8W = (
            '[frxMasterDataU."KlantNaam"]')
        end
        object frxMasterDataUKlantAdres: TfrxMemoView
          Left = 34.015770000000000000
          Top = 77.472480000000000000
          Width = 306.141930000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'KlantAdres'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Memo.UTF8W = (
            '[frxMasterDataU."KlantAdres"]')
        end
        object frxMasterDataUKlantPostCodePlaats: TfrxMemoView
          Left = 34.015770000000000000
          Top = 97.267780000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KlantPostCodePlaats'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Memo.UTF8W = (
            '[frxMasterDataU."KlantPostCodePlaats"]')
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
          Font.Height = -13
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
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'AANTAL')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 396.850650000000000000
          Top = 182.078850000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
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
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'BEDRAG')
          ParentFont = False
        end
        object Email: TfrxMemoView
          Left = 447.338900000000000000
          Top = 135.708839610000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Email]')
        end
        object PhoneNr: TfrxMemoView
          Left = 447.338900000000000000
          Top = 117.267899610000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[PhoneNr]')
        end
        object frxMasterDataUAfleverNaam: TfrxMemoView
          Left = 447.086890000000000000
          Top = 58.582677170000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'AfleverNaam'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Memo.UTF8W = (
            '[frxMasterDataU."AfleverNaam"]')
        end
        object frxMasterDataUAfleverAdres: TfrxMemoView
          Left = 447.086890000000000000
          Top = 77.480314960000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'AfleverAdres'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Memo.UTF8W = (
            '[frxMasterDataU."AfleverAdres"]')
        end
        object frxMasterDataUAfleverPostcodePlaats: TfrxMemoView
          Left = 447.086890000000000000
          Top = 97.133858270000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'AfleverPostcodePlaats'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Memo.UTF8W = (
            '[frxMasterDataU."AfleverPostcodePlaats"]')
        end
        object Memo17: TfrxMemoView
          Left = 447.118110236220500000
          Top = 29.677299610000000000
          Width = 249.448980000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Memo.UTF8W = (
            'AFLEVERADRES')
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
          Left = 298.582870000000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'Aantal'
          DataSet = frxDetailData
          DataSetName = 'frxDatailsDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatailsDataU."Aantal"]')
          ParentFont = False
        end
        object frxDatailsDataUPrijs: TfrxMemoView
          Left = 396.850650000000000000
          Width = 109.606370000000000000
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
          Font.Height = -13
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
          Memo.UTF8W = (
            '[frxDatailsDataU."Omschrijving"]')
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
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatailsDataU."Bedrag"]')
          ParentFont = False
        end
      end
      object PageFooter: TfrxPageFooter
        Height = 253.228510000000000000
        Top = 793.701300000000000000
        Width = 718.110700000000000000
        PrintOnFirstPage = False
        object Memo8: TfrxMemoView
          Left = 570.708661420000000000
          Top = 12.685065000000000000
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
          Left = 469.338900000000000000
          Top = 43.370130000000000000
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
          Left = 469.338900000000000000
          Top = 23.464595000000000000
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
          Left = 469.338900000000000000
          Top = 3.779530000000000000
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
          Width = 665.196850390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
        end
        object frxMasterDataUOpmerking: TfrxMemoView
          Left = 34.015748030000000000
          Top = 3.779530000000000000
          Width = 381.732530000000000000
          Height = 109.606370000000000000
          ShowHint = False
          DataField = 'Opmerking'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxMasterDataU."Opmerking"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 469.338582680000000000
          Top = 83.275665000000000000
          Width = 101.669288900000000000
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
          Left = 469.338582680000000000
          Top = 63.590600000000000000
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
          Top = 79.370076300000000000
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
          Top = 59.716532990000000000
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
          Top = 43.370130000000000000
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
          Top = 129.842610000000000000
          Width = 710.551640000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'ATTENTIE UIT ALLE TE STOFFEREN RUIMTES, DIENEN TAPIJN, VINYL, LA' +
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
      'LegDatum=LegDatum')
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
