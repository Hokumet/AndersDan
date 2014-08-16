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
      'LegDatum=LegDatum')
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
        Height = 209.007932600000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 34.015748031496060000
          Top = 135.338470390000000000
          Width = 94.110228900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Offerte nr.       :')
        end
        object Memo3: TfrxMemoView
          Left = 34.015748031496060000
          Top = 155.133770390000000000
          Width = 94.110228900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Offerte datum :')
        end
        object Memo4: TfrxMemoView
          Left = 34.015748031496060000
          Top = 87.999880390000000000
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
          Left = 127.755656540000000000
          Top = 135.338470390000000000
          Width = 136.063018980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'OfferteNr'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Memo.UTF8W = (
            '[frxMasterDataU."OfferteNr"]')
        end
        object frxMasterDataUOfferteDatum: TfrxMemoView
          Left = 127.755656540000000000
          Top = 155.133770390000000000
          Width = 136.063018980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.FormatStr = 'dd-mm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[frxMasterDataU."OfferteDatum"]')
        end
        object frxMasterDataUMeetdatum: TfrxMemoView
          Left = 545.252341970000000000
          Top = 136.063080000000000000
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
          Left = 545.252341970000000000
          Top = 154.858380000000000000
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
          Left = 448.118132210000000000
          Top = 136.063080000000000000
          Width = 94.110228900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Meetdatum     :')
        end
        object Memo19: TfrxMemoView
          Left = 448.118132210000000000
          Top = 154.858380000000000000
          Width = 94.110228900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Legdatum       :')
        end
        object Line1: TfrxLineView
          Left = 34.015770000000000000
          Top = 178.212859610000000000
          Width = 665.196850390000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 34.015770000000000000
          Top = 181.771919610000000000
          Width = 665.196850390000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 200.976500000000000000
        Top = 271.196850390000000000
        Width = 718.110700000000000000
        RowCount = 1
        object frxMasterDataUKlantNaam: TfrxMemoView
          Left = 34.015770000000000000
          Top = 58.677180000000050000
          Width = 347.716760000000000000
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
          Top = 78.472480000000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KlantAdres'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Memo.UTF8W = (
            '[frxMasterDataU."KlantAdres"]')
        end
        object frxMasterDataUKlantPostCodePlaats: TfrxMemoView
          Left = 34.015770000000000000
          Top = 98.267780000000000000
          Width = 347.716760000000000000
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
          Font.Height = -13
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
          Font.Height = -13
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
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'BEDRAG')
          ParentFont = False
        end
        object Email: TfrxMemoView
          Left = 447.496062992126000000
          Top = 135.606489610000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Email]')
        end
        object PhoneNr: TfrxMemoView
          Left = 447.496062990000000000
          Top = 117.165549610000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[PhoneNr]')
        end
      end
      object DetailData1: TfrxDetailData
        Height = 19.897650000000000000
        Top = 494.188976380000000000
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
          Font.Height = -13
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
          Font.Height = -13
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
          Memo.UTF8W = (
            '[frxDatailsDataU."Omschrijving"]')
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
          Font.Height = -13
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
        Height = 241.889688110000000000
        Top = 767.244306850000000000
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
          Left = 491.338582680000000000
          Top = 48.149660000000000000
          Width = 78.992108900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Font.Height = -13
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
          Left = 491.338582680000000000
          Top = 28.244125000000000000
          Width = 67.653518900000000000
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
          Left = 491.338582680000000000
          Top = 7.559060000000000000
          Width = 67.653543310000000000
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
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          Memo.UTF8W = (
            '[frxMasterDataU."Opmerking"]')
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 132.283833150000000000
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
end
