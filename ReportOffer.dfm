object frmReportOffer: TfrmReportOffer
  Left = 0
  Top = 0
  Caption = 'Offerte Printen'
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
  object DBTOffers: TADOTable
    Connection = DBCConnection
    CursorType = ctStatic
    MaxRecords = 1
    IndexName = 'OfferteNr'
    TableName = 'Offertes'
    Left = 144
    Top = 104
    object DBTOffersId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object DBTOffersOfferteNr: TIntegerField
      FieldName = 'OfferteNr'
    end
    object DBTOffersOfferteDatum: TDateTimeField
      FieldName = 'OfferteDatum'
    end
    object DBTOffersSubtotaal: TBCDField
      FieldName = 'Subtotaal'
      Precision = 19
    end
    object DBTOffersBtw: TBCDField
      FieldName = 'Btw'
      Precision = 19
    end
    object DBTOffersTotaal: TBCDField
      FieldName = 'Totaal'
      Precision = 19
    end
    object DBTOffersKlantNaam: TWideStringField
      FieldName = 'KlantNaam'
      Size = 255
    end
    object DBTOffersKlantAdres: TWideStringField
      FieldName = 'KlantAdres'
      Size = 255
    end
    object DBTOffersKlantPostCodePlaats: TWideStringField
      FieldName = 'KlantPostCodePlaats'
      Size = 255
    end
    object DBTOffersKlantTelefoonnummer: TWideStringField
      FieldName = 'KlantTelefoonnummer'
      Size = 255
    end
    object DBTOffersAangemaaktDoor: TWideStringField
      FieldName = 'AangemaaktDoor'
      Size = 255
    end
    object DBTOffersAangemaaktOp: TDateTimeField
      FieldName = 'AangemaaktOp'
    end
    object DBTOffersOmgezet: TBooleanField
      FieldName = 'Omgezet'
    end
    object DBTOffersOpmerking: TWideMemoField
      FieldName = 'Opmerking'
      BlobType = ftWideMemo
    end
    object DBTOffersKlantEmail: TWideStringField
      FieldName = 'KlantEmail'
      Size = 255
    end
    object DBTOffersAfleverNaam: TWideStringField
      FieldName = 'AfleverNaam'
      Size = 255
    end
    object DBTOffersAfleverAdres: TWideStringField
      FieldName = 'AfleverAdres'
      Size = 255
    end
    object DBTOffersAfleverPostCodePlaats: TWideStringField
      FieldName = 'AfleverPostCodePlaats'
      Size = 255
    end
    object DBTOffersAfleverTelefoonnummer: TWideStringField
      FieldName = 'AfleverTelefoonnummer'
      Size = 255
    end
    object DBTOffersMeetDatum: TDateTimeField
      FieldName = 'MeetDatum'
    end
    object DBTOffersLegDatum: TDateTimeField
      FieldName = 'LegDatum'
    end
    object DBTOffersKlantAanhef: TWideStringField
      FieldName = 'KlantAanhef'
      Size = 255
    end
    object DBTOffersAfleverAanhef: TWideStringField
      FieldName = 'AfleverAanhef'
      Size = 255
    end
  end
  object DBTOfferDetails: TADOTable
    CursorType = ctStatic
    MaxRecords = 999
    TableName = 'OfferteDetails'
    Left = 232
    Top = 104
    object DBTOfferDetailsId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object DBTOfferDetailsOfferteId: TIntegerField
      FieldName = 'OfferteId'
    end
    object DBTOfferDetailsOmschrijving: TWideStringField
      FieldName = 'Omschrijving'
      Size = 255
    end
    object DBTOfferDetailsPrijs: TBCDField
      FieldName = 'Prijs'
      Precision = 19
    end
    object DBTOfferDetailsOpmaat: TBooleanField
      FieldName = 'Opmaat'
    end
    object DBTOfferDetailsBedrag: TBCDField
      FieldName = 'Bedrag'
      Precision = 19
    end
    object DBTOfferDetailsAangemaaktDoor: TWideStringField
      FieldName = 'AangemaaktDoor'
      Size = 255
    end
    object DBTOfferDetailsAangemaaktOp: TDateTimeField
      FieldName = 'AangemaaktOp'
    end
    object DBTOfferDetailsAantal: TFloatField
      FieldName = 'Aantal'
    end
  end
  object frxDetailData: TfrxDBDataset
    UserName = 'frxDatailsDataU'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Id=Id'
      'OfferteId=OfferteId'
      'Omschrijving=Omschrijving'
      'Prijs=Prijs'
      'Opmaat=Opmaat'
      'Bedrag=Bedrag'
      'AangemaaktDoor=AangemaaktDoor'
      'AangemaaktOp=AangemaaktOp'
      'Aantal=Aantal')
    DataSet = DBTOfferDetails
    BCDToCurrency = False
    Left = 222
    Top = 24
  end
  object frxMasterData: TfrxDBDataset
    UserName = 'frxMasterDataU'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Id=Id'
      'OfferteNr=OfferteNr'
      'OfferteDatum=OfferteDatum'
      'Subtotaal=Subtotaal'
      'Btw=Btw'
      'Totaal=Totaal'
      'KlantNaam=KlantNaam'
      'KlantAdres=KlantAdres'
      'KlantPostCodePlaats=KlantPostCodePlaats'
      'KlantTelefoonnummer=KlantTelefoonnummer'
      'AangemaaktDoor=AangemaaktDoor'
      'AangemaaktOp=AangemaaktOp'
      'Omgezet=Omgezet'
      'Opmerking=Opmerking'
      'KlantEmail=KlantEmail'
      'AfleverNaam=AfleverNaam'
      'AfleverAdres=AfleverAdres'
      'AfleverPostCodePlaats=AfleverPostCodePlaats'
      'AfleverTelefoonnummer=AfleverTelefoonnummer'
      'MeetDatum=MeetDatum'
      'LegDatum=LegDatum'
      'KlantAanhef=KlantAanhef'
      'AfleverAanhef=AfleverAanhef')
    DataSet = DBTOffers
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
    Author = 'Hokumet & Kilic'
    Subject = 'FastReport PDF export'
    Creator = 'Ada Offerte'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 64
    Top = 160
  end
  object frxreport: TfrxReport
    Version = '4.11.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Anders dan Andere factuur programma'
    ReportOptions.CreateDate = 41831.598576145840000000
    ReportOptions.LastChange = 41865.813011921290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnBeforePrint = frxreportBeforePrint
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
        Name = ' var'
        Value = Null
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
        Name = 'Email'
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
        Height = 239.244172600000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 444.094488190000000000
          Top = 183.307086610000000000
          Width = 97.889763779527560000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Offerte nr.        :')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 444.094488190000000000
          Top = 202.267660390000000000
          Width = 97.889763779527560000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Offerte datum  :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 444.094488188976400000
          Top = 138.330708661417300000
          Width = 207.874150000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OFFERTE')
          ParentFont = False
        end
        object frxMasterDataUOfferteNr: TfrxMemoView
          Left = 543.503956540000000000
          Top = 183.307086614173200000
          Width = 136.063018980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'OfferteNr'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxMasterDataU."OfferteNr"]')
          ParentFont = False
        end
        object frxMasterDataUOfferteDatum: TfrxMemoView
          Left = 543.503956540000000000
          Top = 202.204724410000000000
          Width = 136.063018980000000000
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
          Memo.UTF8W = (
            '[frxMasterDataU."OfferteDatum"]')
          ParentFont = False
        end
        object frxMasterDataUKlantAdres: TfrxMemoView
          Left = 48.000000000000000000
          Top = 183.133770390000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
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
          Left = 48.000000000000000000
          Top = 201.929070390000000000
          Width = 347.716760000000000000
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
          Width = 347.716535430000000000
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
        Top = 297.653560390000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Memo18: TfrxMemoView
          Left = 444.094488190000000000
          Top = 75.110236220000000000
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
          Top = 94.417559610000000000
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
          Frame.Typ = [ftTop]
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
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
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
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
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
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'BEDRAG')
          ParentFont = False
        end
        object Email: TfrxMemoView
          Left = 444.094488190000000000
          Top = 132.606489610000000000
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
          Top = 113.165549610000000000
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
          Left = 49.133890000000000000
          Top = 113.315209610000000000
          Width = 347.716760000000000000
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
        object frxMasterDataUAfleverPostCodePlaats: TfrxMemoView
          Left = 49.133890000000000000
          Top = 132.653799610000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'AfleverPostCodePlaats'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxMasterDataU."AfleverPostCodePlaats"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 545.252320000000000000
          Top = 132.756149610000000000
          Width = 143.622140000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Email]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 545.252320000000000000
          Top = 113.315209610000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PhoneNr]')
          ParentFont = False
        end
        object Measure: TfrxMemoView
          Left = 545.385826770000000000
          Top = 75.212598430000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Measure]')
          ParentFont = False
        end
        object Leg: TfrxMemoView
          Left = 545.385826770000000000
          Top = 94.488188980000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Leg]')
          ParentFont = False
        end
        object FullName: TfrxMemoView
          Left = 49.133890000000000000
          Top = 94.110236220000000000
          Width = 347.716535430000000000
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
          Left = 49.133890000000000000
          Top = 75.212598430000000000
          Width = 347.716691650000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[DeliverTitle]')
        end
      end
      object DetailData1: TfrxDetailData
        Height = 19.897650000000000000
        Top = 524.425216380000000000
        Width = 718.110700000000000000
        DataSet = frxDetailData
        DataSetName = 'frxDatailsDataU'
        RowCount = 0
        object frxDatailsDataUAantal: TfrxMemoView
          Left = 298.582870000000000000
          Width = 83.149660000000000000
          Height = 18.897637795275590000
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
          VAlign = vaCenter
        end
        object frxDatailsDataUPrijs: TfrxMemoView
          Left = 396.850650000000000000
          Width = 109.606370000000000000
          Height = 18.897637795275590000
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
          VAlign = vaCenter
        end
        object frxDatailsDataUOmschrijving: TfrxMemoView
          Left = 34.015770000000000000
          Width = 264.567100000000000000
          Height = 18.897637795275590000
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
          VAlign = vaCenter
        end
        object frxDatailsDataUBedrag: TfrxMemoView
          Left = 570.708661420000000000
          Width = 128.503937010000000000
          Height = 18.897637795275590000
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
          VAlign = vaCenter
        end
      end
      object PageFooter: TfrxPageFooter
        Height = 306.141732283464600000
        Top = 740.787401574803200000
        Width = 718.110700000000000000
        PrintOnFirstPage = False
        object Memo8: TfrxMemoView
          Left = 570.708661420000000000
          Top = 17.464595000000000000
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
          Top = 48.149660000000000000
          Width = 131.905528900000000000
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
            'Totaal    ')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 570.708661420000000000
          Top = 48.149660000000000000
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
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."Totaal"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 444.094488190000000000
          Top = 28.244125000000000000
          Width = 109.228348900000000000
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
          Height = 26.456710000000000000
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
          Left = 444.094488190000000000
          Top = 7.559060000000000000
          Width = 109.228373310000000000
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
          Top = 0.779813150000000000
          Width = 665.196850390000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftTop]
          ParentFont = False
        end
        object frxMasterDataUOpmerking: TfrxMemoView
          Left = 34.015770000000000000
          Top = 7.559343150000000000
          Width = 381.732530000000000000
          Height = 90.708720000000000000
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
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 142.110236220472400000
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
            
              'ATTENTIE UIT ALLE TE STOFFEREN RUIMTES, DIENEN TAPIJT, VINYL, LA' +
              'MINAAT EN MEUBELS VERWIJDERD TE ZIJN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
