object frmReporInvoice: TfrmReporInvoice
  Left = 0
  Top = 0
  Caption = 'frmReporInvoice'
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
    object DBTTInvoicesFactuurDatum: TDateTimeField
      FieldName = 'FactuurDatum'
    end
    object DBTTInvoicesFactuur: TBooleanField
      FieldName = 'Factuur'
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
    object DBTTInvoicesNogTeBetalen: TBCDField
      FieldName = 'NogTeBetalen'
      Precision = 19
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
    object DBTTInvoicesAangemaaktDoor: TWideStringField
      FieldName = 'AangemaaktDoor'
      Size = 255
    end
    object DBTTInvoicesAangemaaktOp: TDateTimeField
      FieldName = 'AangemaaktOp'
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
    object DBTInvoiceDetailsProductNr: TIntegerField
      FieldName = 'ProductNr'
    end
    object DBTInvoiceDetailsProductNaam: TWideStringField
      FieldName = 'ProductNaam'
      Size = 255
    end
    object DBTInvoiceDetailsAantal: TIntegerField
      FieldName = 'Aantal'
    end
    object DBTInvoiceDetailsPrijs: TBCDField
      FieldName = 'Prijs'
      Precision = 19
    end
    object DBTInvoiceDetailsOpmaat: TBooleanField
      FieldName = 'Opmaat'
    end
    object DBTInvoiceDetailsTotaal: TBCDField
      FieldName = 'Totaal'
      Precision = 19
    end
    object DBTInvoiceDetailsAangemaaktDoor: TWideStringField
      FieldName = 'AangemaaktDoor'
      Size = 255
    end
    object DBTInvoiceDetailsAangemaaktOp: TDateTimeField
      FieldName = 'AangemaaktOp'
    end
  end
  object frxDetailData: TfrxDBDataset
    UserName = 'frxDatailsDataU'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Id=Id'
      'FactuurId=FactuurId'
      'ProductNr=ProductNr'
      'ProductNaam=ProductNaam'
      'Aantal=Aantal'
      'Prijs=Prijs'
      'Opmaat=Opmaat'
      'Totaal=Totaal'
      'AangemaaktDoor=AangemaaktDoor'
      'AangemaaktOp=AangemaaktOp')
    DataSet = DBTInvoiceDetails
    BCDToCurrency = False
    Left = 222
    Top = 24
  end
  object frxReport: TfrxReport
    Version = '4.11.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41831.598576145840000000
    ReportOptions.LastChange = 41831.598576145840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
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
    Variables = <>
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
        Height = 27.559060000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 188.976500000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object frxMasterDataUFactuurNr: TfrxMemoView
          Left = 604.724426540000000000
          Top = 22.677180000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FactuurNr'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Memo.UTF8W = (
            '[frxMasterDataU."FactuurNr"]')
        end
        object Memo2: TfrxMemoView
          Left = 491.338582680000000000
          Top = 22.677180000000000000
          Width = 105.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'FactuurNr')
        end
        object frxMasterDataUFactuurDatum: TfrxMemoView
          Left = 604.724426540000000000
          Top = 60.472480000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FactuurDatum'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Memo.UTF8W = (
            '[frxMasterDataU."FactuurDatum"]')
        end
        object Memo3: TfrxMemoView
          Left = 491.338900000000000000
          Top = 60.472480000000000000
          Width = 105.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'FactuurDatum')
        end
        object frxMasterDataUKlantNaam: TfrxMemoView
          Left = 34.015770000000000000
          Top = 22.677180000000000000
          Width = 400.630180000000000000
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
          Top = 60.472480000000000000
          Width = 400.630180000000000000
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
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KlantPostCodePlaats'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          Memo.UTF8W = (
            '[frxMasterDataU."KlantPostCodePlaats"]')
        end
        object Memo8: TfrxMemoView
          Left = 34.015770000000000000
          Top = 170.078850000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ProductNr')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 113.385900000000000000
          Top = 170.078850000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ProductNaam')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 317.480520000000000000
          Top = 170.078850000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Aantal')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 396.850650000000000000
          Top = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Prijs')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 491.338900000000000000
          Top = 170.078850000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Totaal')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        DataSet = frxDetailData
        DataSetName = 'frxDatailsDataU'
        RowCount = 0
        object frxDatailsDataUProductNr: TfrxMemoView
          Left = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ProductNr'
          DataSet = frxDetailData
          DataSetName = 'frxDatailsDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatailsDataU."ProductNr"]')
          ParentFont = False
        end
        object frxDatailsDataUProductNaam: TfrxMemoView
          Left = 113.385900000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ProductNaam'
          DataSet = frxDetailData
          DataSetName = 'frxDatailsDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDatailsDataU."ProductNaam"]')
          ParentFont = False
        end
        object frxDatailsDataUAantal: TfrxMemoView
          Left = 317.480520000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Aantal'
          DataSet = frxDetailData
          DataSetName = 'frxDatailsDataU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatailsDataU."Aantal"]')
          ParentFont = False
        end
        object frxDatailsDataUPrijs: TfrxMemoView
          Left = 396.850650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Prijs'
          DataSet = frxDetailData
          DataSetName = 'frxDatailsDataU'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatailsDataU."Prijs"]')
          ParentFont = False
        end
        object frxDatailsDataUTotaal: TfrxMemoView
          Left = 491.338900000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Totaal'
          DataSet = frxDetailData
          DataSetName = 'frxDatailsDataU'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatailsDataU."Totaal"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 230.551330000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        DataSet = frxMasterData
        DataSetName = 'frxMasterDataU'
        RowCount = 1
        object frxMasterDataUSubtotaal: TfrxMemoView
          Left = 604.724426540000000000
          Width = 94.488188980000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'Subtotaal'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."Subtotaal"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo1: TfrxMemoView
          Left = 491.338582677165400000
          Top = 7.559060000000000000
          Width = 105.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Subtotaal')
        end
        object frxMasterDataUBtw: TfrxMemoView
          Left = 604.724426540000000000
          Top = 26.456710000000000000
          Width = 94.488188980000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'Btw'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."Btw"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 491.338582680000000000
          Top = 45.354360000000000000
          Width = 105.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Btw')
        end
        object frxMasterDataUTotaal: TfrxMemoView
          Left = 604.724426540000000000
          Top = 64.252010000000000000
          Width = 94.488188980000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'Totaal'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."Totaal"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 491.338582680000000000
          Top = 83.149660000000000000
          Width = 105.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Totaal')
        end
        object frxMasterDataUAanbetaling: TfrxMemoView
          Left = 604.724426540000000000
          Top = 102.047310000000000000
          Width = 94.488188980000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'Aanbetaling'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."Aanbetaling"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 491.338582680000000000
          Top = 158.740260000000000000
          Width = 105.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Aanbetaling')
        end
        object frxMasterDataUNogTeBetalen: TfrxMemoView
          Left = 604.724426540000000000
          Top = 177.637910000000000000
          Width = 94.488188980000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'NogTeBetalen'
          DataSet = frxMasterData
          DataSetName = 'frxMasterDataU'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMasterDataU."NogTeBetalen"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo7: TfrxMemoView
          Left = 491.338582680000000000
          Top = 200.315090000000000000
          Width = 105.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'NogTeBetalen')
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
      'FactuurDatum=FactuurDatum'
      'Factuur=Factuur'
      'Subtotaal=Subtotaal'
      'Btw=Btw'
      'Totaal=Totaal'
      'Aanbetaling=Aanbetaling'
      'NogTeBetalen=NogTeBetalen'
      'KlantNaam=KlantNaam'
      'KlantAdres=KlantAdres'
      'KlantPostCodePlaats=KlantPostCodePlaats'
      'AangemaaktDoor=AangemaaktDoor'
      'AangemaaktOp=AangemaaktOp')
    DataSet = DBTTInvoices
    BCDToCurrency = False
    Left = 144
    Top = 24
  end
end
