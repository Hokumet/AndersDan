unit ReportInvoiceWithBackground;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ReportAncestor, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Data.Win.ADODB;

type
  TfrmreportInvoiceWithBackground = class(TForm)
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
    DBTTInvoicesOpmerking: TWideMemoField;
    DBTInvoiceDetailsId: TAutoIncField;
    DBTInvoiceDetailsFactuurId: TIntegerField;
    DBTInvoiceDetailsOmschrijving: TWideStringField;
    DBTInvoiceDetailsPrijs: TBCDField;
    DBTInvoiceDetailsOpmaat: TBooleanField;
    DBTInvoiceDetailsBedrag: TBCDField;
    DBTInvoiceDetailsAangemaaktDoor: TWideStringField;
    DBTInvoiceDetailsAangemaaktOp: TDateTimeField;
    DBTInvoiceDetailsAantal: TFloatField;
    DBTTInvoicesKlantEmail: TWideStringField;
    DBTTInvoicesAfleverNaam: TWideStringField;
    DBTTInvoicesAfleverAdres: TWideStringField;
    DBTTInvoicesAfleverPostcodePlaats: TWideStringField;
    DBTTInvoicesAfleverTelefoonnummer: TWideStringField;
    DBTTInvoicesMeetdatum: TDateTimeField;
    DBTTInvoicesLegDatum: TDateTimeField;
    DBTTInvoicesKlantAanhef: TWideStringField;
    DBTTInvoicesAfleverAanhef: TWideStringField;
    procedure frxreportGetValue(const VarName: string; var Value: Variant);
  private
  public
    constructor Create(Owner: TComponent; ID: Integer; MasterTable: TADOTable); overload;
    procedure exportToPdf(ExportDir: String);
  end;

var
  frmreportInvoiceWithBackground: TfrmreportInvoiceWithBackground;

implementation

{$R *.dfm}

{ TfrmReporInvoice }

constructor TfrmreportInvoiceWithBackground.Create(Owner: TComponent; ID: Integer;
  MasterTable: TADOTable);
var footer: TfrxPageFooter;
    phoneNr: TfrxMemoView;
    email: TfrxMemoView;
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

  footer := TfrxPageFooter(frxreport.FindComponent('PageFooter'));
  if DBTInvoiceDetails.RecordCount < 20 then begin
    footer.PrintOnFirstPage := true;
  end;
  // 9,40   0,60
end;

procedure TfrmreportInvoiceWithBackground.exportToPdf(ExportDir: String);
var oExportfilter :TfrxCustomExportFilter;
begin
  oExportfilter := TfrxCustomExportFilter(frxPDFExport);
  oExportfilter.DataOnly := false;
  oExportFilter.ShowDialog := true;
  oExportfilter.DefaultPath := ExportDir;

  oExportfilter.FileName := 'InvoiceExport-'+DBTTInvoicesFactuurNr.AsString+'.pdf';
  frxReport.PrepareReport(True);
  frxReport.Export(oExportFilter);
end;

procedure TfrmreportInvoiceWithBackground.frxreportGetValue(const VarName: string;
  var Value: Variant);
var formattedDateTime: String;
begin
  if VarName = 'Email' then
    if DBTTInvoicesKlantEmail.AsString <>'' then
      Value := DBTTInvoicesKlantEmail.AsString
    else
      Value := ''
  else if VarName = 'PhoneNr' then
    if DBTTInvoicesKlantTelefoonnummer.AsString <>'' then
      Value := DBTTInvoicesKlantTelefoonnummer.AsString
    else
      Value := ''
  else if VarName = 'EmailLabel' then
    if DBTTInvoicesKlantEmail.AsString <>'' then
      Value := 'Email adres     :'
    else
      Value := ''
  else if VarName = 'PhoneNrLabel' then
    if DBTTInvoicesKlantTelefoonnummer.AsString <>'' then
      Value := 'Telefoon nr.     :'
    else
      Value := ''
  else if VarName = 'MeasureLabel' then begin
    DateTimeToString(formattedDateTime, 'dd-mm-yyyy', DBTTInvoicesMeetdatum.AsDateTime);
    if formattedDateTime <> '12-12-2012' then
      Value := 'Meetdatum      :'
    else
      Value := ''
  end
  else if VarName = 'LegLabel' then begin
    DateTimeToString(formattedDateTime, 'dd-mm-yyyy', DBTTInvoicesLegDatum.AsDateTime);
    if formattedDateTime <> '12-12-2012' then
      Value := 'Legdatum        :'
    else
      Value := ''
  end
  else if VarName = 'Measure' then begin
    DateTimeToString(formattedDateTime, 'dd-mm-yyyy', DBTTInvoicesMeetdatum.AsDateTime);
    if formattedDateTime <> '12-12-2012' then
      Value := formattedDateTime
    else
      Value := ''
  end
  else if VarName = 'Leg' then begin
    DateTimeToString(formattedDateTime, 'dd-mm-yyyy', DBTTInvoicesLegDatum.AsDateTime);
    if formattedDateTime  <> '12-12-2012' then
      Value := formattedDateTime
    else
      Value := ''
  end
  else if VarName = 'FullName' then begin
    if DBTTInvoicesKlantAanhef.AsString  <> '' then
      Value := DBTTInvoicesKlantAanhef.AsString + ' ' + DBTTInvoicesKlantNaam.AsString
    else
      Value := DBTTInvoicesKlantNaam.AsString
  end
  else if VarName = 'DeliverFullName' then begin
    if DBTTInvoicesAfleverAanhef.AsString  <> '' then
      Value := DBTTInvoicesAfleverAanhef.AsString + ' ' + DBTTInvoicesAfleverNaam.AsString
    else
      Value := DBTTInvoicesAfleverNaam.AsString
  end
  else if VarName = 'DeliverTitle' then begin
    if DBTTInvoicesAfleverNaam.AsString  = '' then
      Value := ''
    else
      Value := 'AFLEVERADRES'
  end;


end;

end.


