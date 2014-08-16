unit ReportInvoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ReportAncestor, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Data.Win.ADODB;

type
  TfrmreportInvoice = class(TForm)
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
    procedure frxreportGetValue(const VarName: string; var Value: Variant);
  private
  public
    constructor Create(Owner: TComponent; ID: Integer; MasterTable: TADOTable); overload;
  end;

var
  frmreportInvoice: TfrmreportInvoice;

implementation

{$R *.dfm}

{ TfrmReporInvoice }

constructor TfrmreportInvoice.Create(Owner: TComponent; ID: Integer;
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

procedure TfrmreportInvoice.frxreportGetValue(const VarName: string;
  var Value: Variant);
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
end;

end.


