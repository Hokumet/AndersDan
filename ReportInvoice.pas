unit ReportInvoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ReportAncestor, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Data.Win.ADODB;

type
  TfrmReporInvoice = class(TForm)
    DBCConnection: TADOConnection;
    DBTTInvoices: TADOTable;
    DBTInvoiceDetails: TADOTable;
    frxDetailData: TfrxDBDataset;
    frxreport: TfrxReport;
    frxMasterData: TfrxDBDataset;
    frxPDFExport: TfrxPDFExport;
    DBTTInvoicesId: TAutoIncField;
    DBTTInvoicesFactuurNr: TIntegerField;
    DBTTInvoicesOfferteNr: TIntegerField;
    DBTTInvoicesFactuurDatum: TDateTimeField;
    DBTTInvoicesSubtotaal: TBCDField;
    DBTTInvoicesBtw: TBCDField;
    DBTTInvoicesTotaal: TBCDField;
    DBTTInvoicesAanbetaling: TBCDField;
    DBTTInvoicesAanbetalingVia: TWideStringField;
    DBTTInvoicesNogTeBetalen: TBCDField;
    DBTTInvoicesNogTeBetalenVia: TWideStringField;
    DBTTInvoicesKlantNaam: TWideStringField;
    DBTTInvoicesKlantAdres: TWideStringField;
    DBTTInvoicesKlantPostCodePlaats: TWideStringField;
    DBTTInvoicesKlantTelefoonnummer: TWideStringField;
    DBTTInvoicesAangemaaktDoor: TWideStringField;
    DBTTInvoicesAangemaaktOp: TDateTimeField;
    DBTTInvoicesBetaald: TBooleanField;
    DBTInvoiceDetailsId: TAutoIncField;
    DBTInvoiceDetailsFactuurId: TIntegerField;
    DBTInvoiceDetailsProductNr: TIntegerField;
    DBTInvoiceDetailsProductNaam: TWideStringField;
    DBTInvoiceDetailsAantal: TIntegerField;
    DBTInvoiceDetailsPrijs: TBCDField;
    DBTInvoiceDetailsOpmaat: TBooleanField;
    DBTInvoiceDetailsTotaal: TBCDField;
    DBTInvoiceDetailsAangemaaktDoor: TWideStringField;
    DBTInvoiceDetailsAangemaaktOp: TDateTimeField;
    procedure frxreportGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    constructor Create(Owner: TComponent; ID: Integer; MasterTable: TADOTable); overload;
    procedure ExportToPdf(ExportDir: String);
  end;

var
  frmReporInvoice: TfrmReporInvoice;

implementation

{$R *.dfm}

{ TfrmReporInvoice }

constructor TfrmReporInvoice.Create(Owner: TComponent; ID: Integer;
  MasterTable: TADOTable);
begin
  inherited Create(Owner);
  DBTTInvoices.Connection := MasterTable.Connection;
  DBTInvoiceDetails.Connection := MasterTable.Connection;

  DBTTInvoices.Open;
  DBTInvoiceDetails.Open;

  DBTTInvoices.Filtered := false;
  DBTTInvoices.Filter := 'ID' + '=' + IntToStr(ID);
  DBTTInvoices.Filtered := true;

  DBTInvoiceDetails.Filtered := false;
  DBTInvoiceDetails.Filter := 'FactuurId' + '=' + IntToStr(ID);
  DBTInvoiceDetails.Filtered := true;
end;

procedure TfrmReporInvoice.frxreportGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'lblAanbetaling' then
    if DBTTInvoicesAanbetaling.Value >0 then
      Value := 'Aanbetaling     :'
    else
      Value := ''
  else if VarName = 'PayedVia' then
    if DBTTInvoicesAanbetaling.Value >0 then
      Value := DBTTInvoicesAanbetalingVia.Value
    else
      Value := ''
  else if VarName = 'Payed' then
    if DBTTInvoicesAanbetaling.Value >0 then
      Value := FormatFloat('0.00', DBTTInvoicesAanbetaling.AsCurrency)
    else
      Value := ''
  else if VarName = 'lblToBePayed' then
    if DBTTInvoicesAanbetaling.Value >0 then
      Value := 'Nog te betalen  :'
    else
      Value := ''
  else if VarName = 'ToBePayedVia' then
    if DBTTInvoicesAanbetaling.Value >0 then
      Value := DBTTInvoicesNogTebetalenVia.Value
    else
      Value := ''
  else if VarName = 'ToBePayed' then
    if DBTTInvoicesAanbetaling.Value >0 then
      Value := FormatFloat('0.00', DBTTInvoicesNogTebetalen.AsCurrency)
    else
      Value := ''
end;

procedure TfrmReporInvoice.ExportToPdf(ExportDir: String);
var oExportfilter :TfrxCustomExportFilter;
begin
  oExportfilter := TfrxCustomExportFilter(frxPDFExport);
  oExportfilter.DataOnly := false;
  oExportFilter.ShowDialog := False;
  oExportfilter.DefaultPath := ExportDir;
  oExportfilter.FileName := 'OfferteExport-'+DBTTInvoicesId.AsString+'.pdf';
  frxReport.PrepareReport(True);
  frxReport.Export(oExportFilter);
end;

end.
