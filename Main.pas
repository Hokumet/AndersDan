unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainAncestor, Vcl.Menus, Data.Win.ADODB,
  Data.DB, Vcl.ImgList, Vcl.ComCtrls, MyListView, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.ExtCtrls, HControls, ListBoxEx, ListViewEx;

type
  TfrmMain = class(TfrmMainAncestor)
    btnOffers: TToolButton;
    btnArticles: TToolButton;
    DBTInvoices: TADOTable;
    DBTInvoicesId: TAutoIncField;
    DBTInvoicesFactuurNr: TIntegerField;
    DBTInvoicesFactuurDatum: TDateTimeField;
    DBTInvoicesSubtotaal: TBCDField;
    DBTInvoicesTotaal: TBCDField;
    DBTInvoicesAanbetaling: TBCDField;
    DBTInvoicesNogTeBetalen: TBCDField;
    DBTInvoicesKlantNaam: TWideStringField;
    DBTInvoiceDetails: TADOTable;
    DBTProducts: TADOTable;
    DBTOffers: TADOTable;
    DBTOffersId: TAutoIncField;
    DBTOffersFactuurNr: TIntegerField;
    DBTOffersFactuurDatum: TDateTimeField;
    DBTOffersSubtotaal: TBCDField;
    DBTOffersTotaal: TBCDField;
    DBTOffersKlantNaam: TWideStringField;
    DBTInvoicesAangemaaktDoor: TWideStringField;
    DBTInvoicesAangemaaktOp: TDateTimeField;
    DBTOffersAangemaaktDoor: TWideStringField;
    DBTOffersAangemaaktOp: TDateTimeField;
    DBTInvoicesFactuur: TBooleanField;
    DBTOffersFactuur: TBooleanField;
    DBTInvoicesBtw: TBCDField;
    DBTOffersBtw: TBCDField;
    DBTInvoicesKlantAdres: TWideStringField;
    DBTInvoicesKlantPostCodePlaats: TWideStringField;
    DBTOffersKlantAdres: TWideStringField;
    DBTOffersKlantPostCodePlaats: TWideStringField;
    DBTCustomers: TADOTable;
    DBTCustomersId: TAutoIncField;
    DBTCustomersNaam: TWideStringField;
    DBTCustomersAdres: TWideStringField;
    DBTCustomersPostcodePlaats: TWideStringField;
    DBTCustomersTelefoonnummer: TWideStringField;
    DBTCustomersEmailAdres: TWideStringField;
    DBTProductsId: TAutoIncField;
    DBTProductsNr: TWideStringField;
    DBTProductsNaam: TWideStringField;
    DBTProductsPrijs: TBCDField;
    DBTProductsAangemaaktDoor: TWideStringField;
    DBTProductsAangemaaktOp: TDateTimeField;
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
    btnCustomers: TToolButton;
    DBTCustomersAangemaaktDoor: TWideStringField;
    DBTCustomersAangemaaktOp: TDateTimeField;
    ADODataSet1: TADODataSet;
    ADODataSet1Aanbetaling: TBCDField;
    ADODataSet1AangemaaktDoor: TWideStringField;
    ADODataSet1AangemaaktOp: TDateTimeField;
    ADODataSet1Btw: TBCDField;
    ADODataSet1Factuur: TBooleanField;
    ADODataSet1FactuurDatum: TDateTimeField;
    ADODataSet1FactuurNr: TIntegerField;
    ADODataSet1Id: TAutoIncField;
    ADODataSet1KlantAdres: TWideStringField;
    ADODataSet1KlantNaam: TWideStringField;
    ADODataSet1KlantPostCodePlaats: TWideStringField;
    ADODataSet1NogTeBetalen: TBCDField;
    ADODataSet1Subtotaal: TBCDField;
    ADODataSet1Totaal: TBCDField;
    DBTInvoicesOfferteNr: TIntegerField;
    DBTOffersOfferteNr: TIntegerField;
    procedure btnBeginClick(Sender: TObject);
    procedure btnOffersClick(Sender: TObject);
    procedure btnArticlesClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCustomersClick(Sender: TObject);
    procedure btnPrintenClick(Sender: TObject);
    procedure lvwItemsSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
  private
       procedure LoadInvoices;
       procedure LoadData;

       procedure SetArticleColums;
       procedure SetCustomerColums;
       procedure SetInvoiceColums;
       procedure SetOfferColums;
       function GetLastNr(Table:TADOTable; FieldId: String): String;
  protected
        procedure Refresh; override;
        procedure OpenDatasets(); override;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses EditOffer, EditInvoice, EditArticle, EditCustomer, ReportInvoice;

Const
  Invoice = 'Invoice';
  Offer = 'Offer';
  Product = 'Product';
  Customer = 'Customer';

{$R *.dfm}

{ TfrmMain }

procedure TfrmMain.btnArticlesClick(Sender: TObject);
begin
  lvwItems.HelpKeyword := btnArticles.HelpKeyword;
  CurrentTable := DBTProducts;
  Refresh;
end;

procedure TfrmMain.btnBeginClick(Sender: TObject);
begin
  lvwItems.HelpKeyword := btnBegin.HelpKeyword;
  CurrentTable := DBTInvoices;
  Refresh;
end;

procedure TfrmMain.btnCustomersClick(Sender: TObject);
begin
  lvwItems.HelpKeyword := btnCustomers.HelpKeyword;
  CurrentTable := DBTCustomers;
  Refresh;
end;

procedure TfrmMain.btnEditClick(Sender: TObject);
begin
    if lvwItems.HelpKeyword = Invoice then begin
      frmHEdit := TfrmEditInvoice.Create(Self, Integer(lvwItems.Selected.Data), CurrentTable, 'FactuurId');
      frmHEdit.Caption := 'Factuur bekijken / wijzigen';
    end
    else if lvwItems.HelpKeyword = Offer then begin
      frmHEdit := TfrmEditInvoice.Create(Self, Integer(lvwItems.Selected.Data), CurrentTable , 'FactuurId');
      frmHEdit.Caption := 'Offerte bekijken / wijzigen';
    end
    else if lvwItems.HelpKeyword = Product then
      frmHEdit := TfrmEditArticle.Create(Self, Integer(lvwItems.Selected.Data), CurrentTable)
    else if lvwItems.HelpKeyword = Customer then
      frmHEdit := TfrmEditCustomer.Create(Self, Integer(lvwItems.Selected.Data), CurrentTable) ;
  inherited;
end;

procedure TfrmMain.btnNewClick(Sender: TObject);
var fNr: Integer;
    fId: Integer;
begin
    if lvwItems.HelpKeyword = Invoice then begin
      fNr := StrToInt(GetLastNr(CurrentTable, 'FactuurNr'))+ 1;
      DBTQuery.Active := False;
      DBTQuery.SQL.Clear;
      DBTQuery.SQL.Text := 'Insert into ' + CurrentTable.TableName + '(FactuurNr, Factuur) Values(' + IntToStr(fNr) + ', true)';
      DBTQuery.ExecSQL;
      CurrentTable.Active := False;
      CurrentTable.Active := True;
      CurrentTable.Locate('FactuurNr', fNr, []);
      frmHEdit := TfrmEditInvoice.Create(Self, CurrentTable.FieldByName('ID').AsInteger, CurrentTable, 'FactuurId')
    end
    else if lvwItems.HelpKeyword = Offer then begin
      fNr := StrToInt(GetLastNr(CurrentTable, 'OfferteNr'))+ 1;
      DBTQuery.Active := False;
      DBTQuery.SQL.Clear;
      DBTQuery.SQL.Text := 'Insert into ' + CurrentTable.TableName + '(OfferteNr) Values(' + IntToStr(fNr) + ')';
      DBTQuery.ExecSQL;
      CurrentTable.Active := False;
      CurrentTable.Active := True;
      CurrentTable.Locate('OfferteNr', fNr, []);
      frmHEdit := TfrmEditInvoice.Create(Self, CurrentTable.FieldByName('ID').AsInteger, CurrentTable,  'FactuurId')
    end
    else if lvwItems.HelpKeyword = Product then begin
      frmHEdit := TfrmEditArticle.Create(Self, 0, CurrentTable) ;
    end;

  try
    if frmHEdit.ShowModal = mrOk then
        Refresh
    else begin
        CurrentTable.DeleteRecords(arCurrent);
    end;
  finally
    frmHEdit.Free;
  end;
end;

procedure TfrmMain.btnOffersClick(Sender: TObject);
begin
  lvwItems.HelpKeyword := btnOffers.HelpKeyword;
  CurrentTable := DBTInvoices;
  Refresh;
end;

procedure TfrmMain.btnPrintenClick(Sender: TObject);
begin
   try
   frmReporInvoice := TfrmReporInvoice.Create(Self, Integer(lvwItems.Selected.Data), DBTInvoices);

   if frmReporInvoice.frxReport.PrepareReport then
      frmReporInvoice.frxReport.ShowPreparedReport;
   //dm.frxReport1.LoadFromFile(curdir + 'personal.fr3');
    //  if dm.frxReport1.PrepareReport then
     //   dm.frxReport1.ShowPreparedReport;
   finally
   frmReporInvoice.Free;
  end;
end;

function TfrmMain.GetLastNr(Table:TADOTable; FieldId: String): String;
begin
  Table.Sort := FieldId + ' DESC';
  Table.First;
  Result := Table.FieldByName(FieldId).AsString;
end;

procedure TfrmMain.LoadData;
var
  LI: TListItem;
  I,X: Integer;
  column: TListColumn;
begin
  lvwItems.Clear;
  CurrentTable.Last;
  for I := 0 to CurrentTable.RecordCount - 1 do
  begin
    LI := lvwItems.Items.Add;
    for X := 0 to lvwItems.Columns.Count -1 do begin
      column := lvwItems.Columns.Items[X];
      if X = 0 then
        LI.Caption := CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsString
      else begin
        if FieldCaptionAndFieldType.Values[column.DisplayName] = 'curr' then
          LI.SubItems.Add('€ '+FormatFloat('0.00',CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsFloat))
        else
          LI.SubItems.Add(CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsString);
      end;
    end;
    LI.Data := Pointer(CurrentTable.FieldByName('ID').asInteger);
    CurrentTable.Prior;
  end;
end;

procedure TfrmMain.LoadInvoices;
var
  LI: TListItem;
  I,X: Integer;
  column: TListColumn;
begin
  if lvwItems.HelpKeyword = Invoice  then
    LoadFiltered('Factuur='+QuotedStr('true'))
  else
    LoadFiltered('Factuur='+QuotedStr('false'));

  lvwItems.Clear;
  CurrentTable.Last;
  for I := 0 to CurrentTable.RecordCount - 1 do
  begin
    LI := lvwItems.Items.Add;
    for X := 0 to lvwItems.Columns.Count -1 do begin
      column := lvwItems.Columns.Items[X];
      if X = 0 then
        LI.Caption := CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsString
      else begin
        if FieldCaptionAndFieldType.Values[column.DisplayName] = 'curr' then
          LI.SubItems.Add('€ '+FormatFloat('0.00',CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsFloat))
        else
          LI.SubItems.Add(CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsString);
      end;
    end;
    LI.Data := Pointer(CurrentTable.FieldByName('ID').asInteger);
    CurrentTable.Prior;
  end;
end;


procedure TfrmMain.lvwItemsSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  inherited;
  if lvwItems.HelpKeyword = Invoice  then
    btnPrinten.Enabled := not(Selected and (lvwItems.Selected.Data = nil))
  else
    btnPrinten.Enabled := false;
end;

procedure TfrmMain.OpenDatasets;
begin
  inherited;
  DBTInvoices.Open;
  DBTOffers.Open;
  DBTProducts.Open;
  DBTInvoiceDetails.Open;
  DBTCustomers.Open;
end;

procedure TfrmMain.Refresh;
begin
  if lvwItems.HelpKeyword = Invoice  then begin
    lvwItems.Columns.Clear;
    FieldCaptionAndFieldName.Clear;

    lvwItems.Columns.BeginUpdate;
    SetInvoiceColums;
    lvwItems.Columns.EndUpdate;

    LoadInvoices
  end
  else if lvwItems.HelpKeyword = Offer  then begin
    lvwItems.Columns.Clear;
    FieldCaptionAndFieldName.Clear;

    lvwItems.Columns.BeginUpdate;
    SetOfferColums;
    lvwItems.Columns.EndUpdate;

    LoadInvoices
  end
  else if lvwItems.HelpKeyword = Product  then begin
    lvwItems.Columns.Clear;
    FieldCaptionAndFieldName.Clear;

    lvwItems.Columns.BeginUpdate;
    SetArticleColums;
    lvwItems.Columns.EndUpdate;

    LoadData
  end
  else if lvwItems.HelpKeyword = Customer  then begin
    lvwItems.Columns.Clear;
    FieldCaptionAndFieldName.Clear;

    lvwItems.Columns.BeginUpdate;
    SetCustomerColums;
    lvwItems.Columns.EndUpdate;

    LoadData
  end
  else begin
    lvwItems.HelpKeyword := 'Invoice';
    CurrentTable := DBTInvoices;

    lvwItems.Columns.Clear;
    FieldCaptionAndFieldName.Clear;

    lvwItems.Columns.BeginUpdate;
    SetInvoiceColums;
    lvwItems.Columns.EndUpdate;
    LoadInvoices
  end;
end;

procedure TfrmMain.SetArticleColums;
begin
  addColumn('Nr','Nr', 75);
  addColumn('Naam', 'Naam', 200);
  addColumn('Prijs', 'Prijs', 'curr', 130);
end;

procedure TfrmMain.SetCustomerColums;
begin
  addColumn('Naam', 'Naam', 200);
  addColumn('Adres', 'Adres', 200);
  addColumn('Postcode en plaats', 'PostcodePlaats', 200);
  addColumn('Telefoonnummer', 'Telefoonnummer', 200);
  addColumn('Emailadres', 'Emailadres', 200);
end;

procedure TfrmMain.SetInvoiceColums;
begin
  addColumn('Factuur nr','FactuurNr', 75);
  addColumn('Factuur datum','FactuurDatum', 110);
  addColumn('Klant naam', 'KlantNaam', 200);
  addColumn('Totaal', 'Totaal', 'curr', 150);
  addColumn('Aanbetaling', 'Aanbetaling', 'curr', 150);
  addColumn('Nog te betalen', 'NogTeBetalen', 'curr', 150);
end;

procedure TfrmMain.SetOfferColums;
begin
  addColumn('Offerte nr','OfferteNr', 75);
  addColumn('Factuur datum','FactuurDatum', 110);
  addColumn('Klant naam', 'KlantNaam', 200);
  addColumn('Totaal', 'Totaal', 'curr', 150);
end;

end.
