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
    DBTInvoiceDetails: TADOTable;
    DBTProducts: TADOTable;
    DBTOffers: TADOTable;
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
    lblToBePayed: TLabel;
    ckbPayed: TCheckBox;
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
    DBTInvoicesId: TAutoIncField;
    DBTInvoicesFactuurNr: TIntegerField;
    DBTInvoicesOfferteNr: TIntegerField;
    DBTInvoicesFactuurDatum: TDateTimeField;
    DBTInvoicesSubtotaal: TBCDField;
    DBTInvoicesBtw: TBCDField;
    DBTInvoicesTotaal: TBCDField;
    DBTInvoicesAanbetaling: TBCDField;
    DBTInvoicesAanbetalingVia: TWideStringField;
    DBTInvoicesNogTeBetalen: TBCDField;
    DBTInvoicesNogTeBetalenVia: TWideStringField;
    DBTInvoicesKlantNaam: TWideStringField;
    DBTInvoicesKlantAdres: TWideStringField;
    DBTInvoicesKlantPostCodePlaats: TWideStringField;
    DBTInvoicesKlantTelefoonnummer: TWideStringField;
    DBTInvoicesAangemaaktDoor: TWideStringField;
    DBTInvoicesAangemaaktOp: TDateTimeField;
    DBTInvoicesBetaald: TBooleanField;
    procedure btnBeginClick(Sender: TObject);
    procedure btnOffersClick(Sender: TObject);
    procedure btnArticlesClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCustomersClick(Sender: TObject);
    procedure btnPrintenClick(Sender: TObject);
    procedure lvwItemsSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
      function GetLastNr(Table:TADOTable; FieldId: String): Integer;
    procedure ckbPayedClick(Sender: TObject);
  private
       procedure LoadInvoices;
       procedure LoadData;

       procedure SetArticleColums;
       procedure SetCustomerColums;
       procedure SetInvoiceColums;
       procedure SetOfferColums;
    procedure LoadInvoicesFiltered(totalPayed: Double; totalTobePayed: Double);
  protected
        procedure Refresh; override;
        procedure OpenDatasets(); override;
  public
      //
  end;

var
  frmMain: TfrmMain;

implementation

uses EditOffer, EditInvoice, EditArticle, EditCustomer, ReportInvoice,ShellApi;

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
var faNr: Integer;
begin
    if lvwItems.HelpKeyword = Invoice then begin
      frmHEdit := TfrmEditInvoice.Create(Self, Integer(lvwItems.Selected.Data), CurrentTable, 'FactuurId');
      frmHEdit.Caption := 'Factuur bekijken / wijzigen';
    end
    else if lvwItems.HelpKeyword = Offer then begin
      faNr := GetLastNr(DBTInvoices, 'FactuurNr')+ 1;
      frmHEdit := TfrmEditInvoice.Create(Self, Integer(lvwItems.Selected.Data), CurrentTable , 'FactuurId');
      frmHEdit.Caption := 'Offerte bekijken / wijzigen';
      TfrmEditInvoice(frmHEdit).lblNr.Caption := 'Offerte nummer:';
      TfrmEditInvoice(frmHEdit).lblDate.Caption := 'Offerte datum:';
      TfrmEditInvoice(frmHEdit).invoiceNr := faNr;
    end
    else if lvwItems.HelpKeyword = Product then
      frmHEdit := TfrmEditArticle.Create(Self, Integer(lvwItems.Selected.Data), CurrentTable)
    else if lvwItems.HelpKeyword = Customer then
      frmHEdit := TfrmEditCustomer.Create(Self, Integer(lvwItems.Selected.Data), CurrentTable) ;
  inherited;
end;

procedure TfrmMain.btnNewClick(Sender: TObject);
var oNr: Integer;
    faNr: Integer;
    Id: Integer;
begin
    faNr := GetLastNr(DBTInvoices, 'FactuurNr')+ 1;
    oNr := GetLastNr(DBTOffers, 'OfferteNr')+ 1;
    DBTQuery.Active := False;
    DBTQuery.SQL.Clear;

    if lvwItems.HelpKeyword = Invoice then begin
      DBTQuery.SQL.Text := 'Insert into ' + CurrentTable.TableName + '(FactuurNr, Factuur) Values(' + IntToStr(faNr) + ', true)';
      DBTQuery.ExecSQL;
      CurrentTable.Active := False;
      CurrentTable.Active := True;
      CurrentTable.Locate('FactuurNr', faNr, []);
      frmHEdit := TfrmEditInvoice.Create(Self, CurrentTable.FieldByName('ID').AsInteger, CurrentTable,  'FactuurId');
      frmHEdit.Caption := 'Factuur bekijken / wijzigen';
    end
    else if lvwItems.HelpKeyword = Offer then begin
      DBTQuery.SQL.Text := 'Insert into ' + CurrentTable.TableName + '(OfferteNr) Values(' + IntToStr(oNr) + ')';
      DBTQuery.ExecSQL;
      CurrentTable.Active := False;
      CurrentTable.Active := True;
      CurrentTable.Locate('OfferteNr', oNr, []);
      frmHEdit := TfrmEditInvoice.Create(Self, CurrentTable.FieldByName('ID').AsInteger, CurrentTable,  'FactuurId');
      frmHEdit.Caption := 'Offerte bekijken / wijzigen';
      TfrmEditInvoice(frmHEdit).invoiceNr := faNr;
    end;

  try
    if frmHEdit.ShowModal = mrOk then
        Refresh
    else
        CurrentTable.DeleteRecords(arCurrent);
  finally
    frmHEdit.Free;
  end;
end;

procedure TfrmMain.btnOffersClick(Sender: TObject);
begin
  lvwItems.HelpKeyword := btnOffers.HelpKeyword;
  CurrentTable := DBTOffers;
  Refresh;
end;

procedure TfrmMain.btnPrintenClick(Sender: TObject);
var fileName: PWideChar;
    fileString: String;
begin

  if lvwItems.HelpKeyword = Invoice  then begin
   try
      frmReporInvoice := TfrmReporInvoice.Create(Self, Integer(lvwItems.Selected.Data), DBTInvoices);

      if frmReporInvoice.frxReport.PrepareReport then
        frmReporInvoice.frxReport.ShowPreparedReport;
      finally
        frmReporInvoice.Free;
    end;
  end
  else begin
    fileString :=Inifile.ReadString('Offerte','SaveDir','C:\Ada\')+'\OfferteExport-'+IntToStr(Integer(lvwItems.Selected.Data))+'.pdf';
    ShellExecute(0, nil, PChar(fileString), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TfrmMain.ckbPayedClick(Sender: TObject);
begin
  if ckbPayed.Checked then  begin
    CurrentTable.Filtered := false;
    CurrentTable.Filter := 'Betaald=' + QuotedStr('true');
    CurrentTable.Filtered := true;
  end
  else begin
    CurrentTable.Filtered := false;
    CurrentTable.Filter := 'Betaald=' + QuotedStr('false');
    CurrentTable.Filtered := true;
  end;
  LoadInvoicesFiltered(0,0);
end;

function TfrmMain.GetLastNr(Table:TADOTable; FieldId: String): Integer;
begin
  Table.Sort := FieldId + ' DESC';
  Table.First;
  Result := Table.FieldByName(FieldId).AsInteger;
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
  totalTobePayed,totalPayed: Double;
begin
  totalPayed:=0;
  totalTobePayed:=0;
  if lvwItems.HelpKeyword = Invoice  then
    LoadFiltered('Betaald=' + QuotedStr('false'));

  LoadInvoicesFiltered(totalPayed, totalTobePayed);
end;


procedure TfrmMain.lvwItemsSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  inherited;
  if (lvwItems.HelpKeyword = Invoice) or (lvwItems.HelpKeyword = Offer)  then
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

procedure TfrmMain.LoadInvoicesFiltered(totalPayed: Double; totalTobePayed: Double);
var
  X: Integer;
  I: Integer;
  LI: TListItem;
  column: TListColumn;
begin
  lvwItems.Clear;
  CurrentTable.Last;
  for I := 0 to CurrentTable.RecordCount - 1 do
  begin
    LI := lvwItems.Items.Add;
    for X := 0 to lvwItems.Columns.Count - 1 do
    begin
      column := lvwItems.Columns.Items[X];
      if X = 0 then
        LI.Caption := CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsString
      else
      begin
        if FieldCaptionAndFieldType.Values[column.DisplayName] = 'curr' then
          LI.SubItems.Add('€ ' + FormatFloat('0.00', CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsFloat))
        else
          LI.SubItems.Add(CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsString);
      end;
    end;
    LI.Data := Pointer(CurrentTable.FieldByName('ID').asInteger);
    if lvwItems.HelpKeyword = Invoice then begin
      totalPayed := totalPayed + CurrentTable.FieldByName('Totaal').AsFloat;
      totalTobePayed := totalTobePayed + CurrentTable.FieldByName('NogTeBetalen').AsFloat;
    end;
    CurrentTable.Prior;
  end;
  if ckbPayed.Checked then
    lblToBePayed.Caption := 'Totaal betaald:     € ' + FormatFloat('0.00', totalPayed) + '     '
  else
    lblToBePayed.Caption := 'Totaal openstaand:     € ' + FormatFloat('0.00', totalTobePayed) + '     ';
end;

procedure TfrmMain.Refresh;
begin
  if CurrentTable <> nil then
    CurrentTable.Filter := '';

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
  addColumn('Offerte datum','OfferteDatum', 110);
  addColumn('Klant naam', 'KlantNaam', 200);
  addColumn('Totaal', 'Totaal', 'curr', 150);
end;

end.
