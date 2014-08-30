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
    DBTOffersKlantAanhef: TWideStringField;
    DBTOffersAfleverAanhef: TWideStringField;
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
var formattedDateTime: String;
begin
 if VarName = 'Email' then
    if DBTOffersKlantEmail.AsString <>'' then
      Value := DBTOffersKlantEmail.AsString
    else
      Value := ''
  else if VarName = 'PhoneNr' then
    if DBTOffersKlantTelefoonnummer.AsString <>'' then
      Value := DBTOffersKlantTelefoonnummer.AsString
    else
      Value := ''
  else if VarName = 'EmailLabel' then
    if DBTOffersKlantEmail.AsString <>'' then
      Value := 'Email adres     :'
    else
      Value := ''
  else if VarName = 'PhoneNrLabel' then
    if DBTOffersKlantTelefoonnummer.AsString <>'' then
      Value := 'Telefoon nr.     :'
    else
      Value := ''
  else if VarName = 'MeasureLabel' then begin
    DateTimeToString(formattedDateTime, 'dd-mm-yyyy', DBTOffersMeetdatum.AsDateTime);
    if formattedDateTime <> '12-12-2012' then
      Value := 'Meetdatum      :'
    else
      Value := ''
  end
  else if VarName = 'LegLabel' then begin
    DateTimeToString(formattedDateTime, 'dd-mm-yyyy', DBTOffersLegDatum.AsDateTime);
    if formattedDateTime <> '12-12-2012' then
      Value := 'Legdatum        :'
    else
      Value := ''
  end
  else if VarName = 'Measure' then begin
    DateTimeToString(formattedDateTime, 'dd-mm-yyyy', DBTOffersMeetdatum.AsDateTime);
    if formattedDateTime <> '12-12-2012' then
      Value := formattedDateTime
    else
      Value := ''
  end
  else if VarName = 'Leg' then begin
    DateTimeToString(formattedDateTime, 'dd-mm-yyyy', DBTOffersLegDatum.AsDateTime);
    if formattedDateTime  <> '12-12-2012' then
      Value := formattedDateTime
    else
      Value := ''
  end
  else if VarName = 'FullName' then begin
    if DBTOffersKlantAanhef.AsString  <> '' then
      Value := DBTOffersKlantAanhef.AsString + ' ' + DBTOffersKlantNaam.AsString
    else
      Value := DBTOffersKlantNaam.AsString
  end
  else if VarName = 'DeliverFullName' then begin
    if DBTOffersAfleverAanhef.AsString  <> '' then
      Value := DBTOffersAfleverAanhef.AsString + ' ' + DBTOffersAfleverNaam.AsString
    else
      Value := DBTOffersAfleverNaam.AsString
  end
  else if VarName = 'DeliverTitle' then begin
    if DBTOffersAfleverNaam.AsString  = '' then
      Value := ''
    else
      Value := 'AFLEVERADRES'
  end;
end;

end.
