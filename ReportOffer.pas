unit ReportOffer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ReportAncestor, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Data.Win.ADODB;

type
  TfrmReportOffer = class(TForm)
    DBCConnection: TADOConnection;
    DBTOffers: TADOTable;
    DBTOfferDetails: TADOTable;
    frxDetailData: TfrxDBDataset;
    frxMasterData: TfrxDBDataset;
    frxPDFExport: TfrxPDFExport;
    DBTOffersId: TAutoIncField;
    DBTOffersOfferteNr: TIntegerField;
    DBTOffersOfferteDatum: TDateTimeField;
    DBTOffersSubtotaal: TBCDField;
    DBTOffersBtw: TBCDField;
    DBTOffersTotaal: TBCDField;
    DBTOffersKlantNaam: TWideStringField;
    DBTOffersKlantAdres: TWideStringField;
    DBTOffersKlantPostCodePlaats: TWideStringField;
    DBTOffersKlantTelefoonnummer: TWideStringField;
    DBTOffersAangemaaktDoor: TWideStringField;
    DBTOffersAangemaaktOp: TDateTimeField;
    DBTOffersOmgezet: TBooleanField;
    frxreport: TfrxReport;
    DBTOffersOpmerking: TWideMemoField;
    DBTOfferDetailsId: TAutoIncField;
    DBTOfferDetailsOfferteId: TIntegerField;
    DBTOfferDetailsOmschrijving: TWideStringField;
    DBTOfferDetailsPrijs: TBCDField;
    DBTOfferDetailsOpmaat: TBooleanField;
    DBTOfferDetailsBedrag: TBCDField;
    DBTOfferDetailsAangemaaktDoor: TWideStringField;
    DBTOfferDetailsAangemaaktOp: TDateTimeField;
    DBTOfferDetailsAantal: TFloatField;
    procedure frxreportGetValue(const VarName: string; var Value: Variant);
    procedure frxreportBeforePrint(Sender: TfrxReportComponent);
  private
  public
    constructor Create(Owner: TComponent; ID: Integer; MasterTable: TADOTable); overload;
    procedure exportToPdf(ExportDir: String);
  end;

var
  frmReportOffer: TfrmReportOffer;

implementation

{$R *.dfm}

{ TfrmReporInvoice }

constructor TfrmReportOffer.Create(Owner: TComponent; ID: Integer;
  MasterTable: TADOTable);
var footer: TfrxPageFooter;
begin
  inherited Create(Owner);
  DBTOffers.Connection := MasterTable.Connection;
  DBTOfferDetails.Connection := MasterTable.Connection;

  DBTOffers.Open;
  DBTOfferDetails.Open;

  DBTOffers.Filtered := false;
  DBTOffers.Filter := 'ID' + '=' + IntToStr(ID);
  DBTOffers.Filtered := true;

  DBTOfferDetails.Filtered := false;
  DBTOfferDetails.Filter := 'OfferteId' + '=' + IntToStr(ID);
  DBTOfferDetails.Filtered := true;

  footer := TfrxPageFooter(frxreport.FindComponent('PageFooter'));
  if DBTOfferDetails.RecordCount < 20 then  begin
    footer.PrintOnFirstPage := true;
  end;
end;

procedure TfrmReportOffer.frxreportBeforePrint(Sender: TfrxReportComponent);
var footer: TfrxPageFooter;
begin
end;

procedure TfrmReportOffer.frxreportGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'lblAanbetaling' then
      Value := 'Aanbetaling     :'
end;

procedure TfrmReportOffer.exportToPdf(ExportDir: String);
var oExportfilter :TfrxCustomExportFilter;
begin
  oExportfilter := TfrxCustomExportFilter(frxPDFExport);
  oExportfilter.DataOnly := false;
  oExportFilter.ShowDialog := False;
  oExportfilter.DefaultPath := ExportDir;
  oExportfilter.FileName := 'OfferteExport-'+DBTOffersOfferteNr.AsString+'.pdf';
  frxReport.PrepareReport(True);
  frxReport.Export(oExportFilter);
end;

end.
