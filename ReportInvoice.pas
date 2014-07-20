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
end;

procedure TfrmreportInvoice.frxreportGetValue(const VarName: string;
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

end.
