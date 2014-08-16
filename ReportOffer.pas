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
    DBTOffersKlantEmail: TWideStringField;
    DBTOffersAfleverNaam: TWideStringField;
    DBTOffersAfleverAdres: TWideStringField;
    DBTOffersAfleverPostCodePlaats: TWideStringField;
    DBTOffersAfleverTelefoonnummer: TWideStringField;
    DBTOffersMeetDatum: TDateTimeField;
    DBTOffersLegDatum: TDateTimeField;
    procedure frxreportBeforePrint(Sender: TfrxReportComponent);
    procedure frxreportGetValue(const VarName: string; var Value: Variant);
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
    page: TfrxReportPage;
    memo9: TfrxMemoView;
    memo10: TfrxMemoView;
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

  page := TfrxReportPage(frxreport.FindComponent('Page1'));
  memo9 := TfrxMemoView(frxreport.FindComponent('Memo9'));
  memo10 := TfrxMemoView(frxreport.FindComponent('Memo10'));
  memo9.Top := 0;
  memo9.Left := 0;
  memo10.Top := 0;
  memo10.Left := 0;
  page.BottomMargin := 0;
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

procedure TfrmReportOffer.frxreportBeforePrint(Sender: TfrxReportComponent);

var footer: TfrxPageFooter;
    rightShape: TfrxShapeView;
    detailData: TfrxDetailData;
    //reportSummary1: TfrxReportSummary;
begin          //  DetailData1
//  footer := TfrxPageFooter(frxreport.FindComponent('PageFooter'));
//  detailData := TfrxDetailData(frxreport.FindComponent('DetailData1'));
//
//  rightShape := TfrxShapeView(frxreport.FindComponent('Shape1'));
//  //rightShape.CalcHeight;
//  rightShape.Top := detailData.Top-100;
//
//  //rightShape := TfrxShapeView(frxreport.FindComponent('RightBalk'));
//  //reportSummary1.Height := footer.Top - rightShape.Top;
//  rightShape.Height := footer.Top - rightShape.Top + 100;
end;

procedure TfrmReportOffer.frxreportGetValue(const VarName: string;
  var Value: Variant);
begin
 if VarName = 'Email' then
    if DBTOffersKlantEmail.AsString <>'' then
      Value := 'Email adres    : ' + DBTOffersKlantEmail.AsString
    else
      Value := ''
  else if VarName = 'PhoneNr' then
    if DBTOffersKlantTelefoonnummer.AsString <>'' then
      Value := 'Telefoon nr.    : ' +DBTOffersKlantTelefoonnummer.AsString
    else
      Value := ''
end;

end.
