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
    DBTOfferDetails: TADOTable;
    DBTProductsId: TAutoIncField;
    DBTProductsOmschrijving: TWideStringField;
    DBTProductsPrijs: TBCDField;
    DBTProductsAangemaaktDoor: TWideStringField;
    DBTProductsAangemaaktOp: TDateTimeField;
    DBTInvoiceDetailsId: TAutoIncField;
    DBTInvoiceDetailsFactuurId: TIntegerField;
    DBTInvoiceDetailsOmschrijving: TWideStringField;
    DBTInvoiceDetailsPrijs: TBCDField;
    DBTInvoiceDetailsOpmaat: TBooleanField;
    DBTInvoiceDetailsBedrag: TBCDField;
    DBTInvoiceDetailsAangemaaktDoor: TWideStringField;
    DBTInvoiceDetailsAangemaaktOp: TDateTimeField;
    DBTOfferDetailsId: TAutoIncField;
    DBTOfferDetailsOfferteId: TIntegerField;
    DBTOfferDetailsOmschrijving: TWideStringField;
    DBTOfferDetailsPrijs: TBCDField;
    DBTOfferDetailsOpmaat: TBooleanField;
    DBTOfferDetailsBedrag: TBCDField;
    DBTOfferDetailsAangemaaktDoor: TWideStringField;
    DBTOfferDetailsAangemaaktOp: TDateTimeField;
    DBTOfferDetailsAantal: TFloatField;
    DBTInvoiceDetailsAantal: TFloatField;
    lblShowAll: TLabel;
    ckbShowAll: TCheckBox;
    ckbPayed: TCheckBox;
    lblPayed: TLabel;
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
    DBTInvoicesKlantAanhef: TWideStringField;
    DBTInvoicesKlantNaam: TWideStringField;
    DBTInvoicesKlantAdres: TWideStringField;
    DBTInvoicesKlantPostCodePlaats: TWideStringField;
    DBTInvoicesKlantEmail: TWideStringField;
    DBTInvoicesKlantTelefoonnummer: TWideStringField;
    DBTInvoicesAfleverAanhef: TWideStringField;
    DBTInvoicesAfleverNaam: TWideStringField;
    DBTInvoicesAfleverAdres: TWideStringField;
    DBTInvoicesAfleverPostcodePlaats: TWideStringField;
    DBTInvoicesAfleverTelefoonnummer: TWideStringField;
    DBTInvoicesMeetdatum: TDateTimeField;
    DBTInvoicesLegDatum: TDateTimeField;
    DBTInvoicesAangemaaktDoor: TWideStringField;
    DBTInvoicesAangemaaktOp: TDateTimeField;
    DBTInvoicesBetaald: TBooleanField;
    DBTInvoicesOpmerking: TWideMemoField;
    DBTOffersId: TAutoIncField;
    DBTOffersOfferteNr: TIntegerField;
    DBTOffersOfferteDatum: TDateTimeField;
    DBTOffersSubtotaal: TBCDField;
    DBTOffersBtw: TBCDField;
    DBTOffersTotaal: TBCDField;
    DBTOffersKlantAanhef: TWideStringField;
    DBTOffersKlantNaam: TWideStringField;
    DBTOffersKlantAdres: TWideStringField;
    DBTOffersKlantPostCodePlaats: TWideStringField;
    DBTOffersKlantEmail: TWideStringField;
    DBTOffersKlantTelefoonnummer: TWideStringField;
    DBTOffersAfleverAanhef: TWideStringField;
    DBTOffersAfleverNaam: TWideStringField;
    DBTOffersAfleverAdres: TWideStringField;
    DBTOffersAfleverPostCodePlaats: TWideStringField;
    DBTOffersAfleverTelefoonnummer: TWideStringField;
    DBTOffersMeetDatum: TDateTimeField;
    DBTOffersLegDatum: TDateTimeField;
    DBTOffersAangemaaktDoor: TWideStringField;
    DBTOffersAangemaaktOp: TDateTimeField;
    DBTOffersOmgezet: TBooleanField;
    DBTOffersOpmerking: TWideMemoField;
    procedure btnBeginClick(Sender: TObject);
    procedure btnOffersClick(Sender: TObject);
    procedure btnArticlesClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCustomersClick(Sender: TObject);
    procedure btnPrintenClick(Sender: TObject);
    procedure lvwItemsSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    function GetLastNr(TTable: String; FieldId: String): Integer;
    procedure InsertNewRow(FieldId: String; faNr: Integer);
    procedure ckbPayedClick(Sender: TObject);
    procedure ckbShowAllClick(Sender: TObject);
    procedure pmpNewKopieClick(Sender: TObject);
  private
     ShowAll :boolean;
     procedure LoadInvoices;
     procedure LoadData;

     procedure SetArticleColums;
     procedure SetCustomerColums;
     procedure SetInvoiceColums;
     procedure SetOfferColums;
     procedure LoadInvoicesFiltered(totalPayed: Double; totalTobePayed: Double);
    procedure PrintInvoiceAndOffer(Id: Integer);
    function AddLeadingZeroes(aNumber:Integer; Length: integer): string;
  protected
      procedure Refresh; override;
      procedure OpenDatasets(); override;
      procedure DoSomeThingElse(Id: Integer); override;
  public
      //
  end;

var
  frmMain: TfrmMain;

implementation

uses EditOffer, EditInvoice, EditArticle, EditCustomer, ReportInvoice,ShellApi,
  ReportOffer , ReportInvoiceWithBackground, ReportOfferWithBackground;

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
    end
    else if lvwItems.HelpKeyword = Offer then begin
      faNr := GetLastNr(DBTInvoices.TableName, 'FactuurNr')+ 1;
      frmHEdit := TfrmEditOffer.Create(Self, Integer(lvwItems.Selected.Data), CurrentTable , 'OfferteId');
      TfrmEditOffer(frmHEdit).invoiceNr := faNr;
    end
    else if lvwItems.HelpKeyword = Product then
      frmHEdit := TfrmEditArticle.Create(Self, Integer(lvwItems.Selected.Data), CurrentTable)
    else if lvwItems.HelpKeyword = Customer then
      frmHEdit := TfrmEditCustomer.Create(Self, Integer(lvwItems.Selected.Data), CurrentTable) ;
  inherited;
end;

function TfrmMain.AddLeadingZeroes(aNumber:Integer; Length : integer) : string;
begin
   result := System.SysUtils.Format('%.*d', [Length, aNumber]) ;
end;

procedure TfrmMain.btnNewClick(Sender: TObject);
var oNr: Integer;
    faNr: Integer;
    nId: Integer;
    ShowModal: Integer;
begin
    if (lvwItems.HelpKeyword = Invoice) or (lvwItems.HelpKeyword = Offer) then begin
      faNr := GetLastNr(DBTInvoices.TableName, 'FactuurNr')+ 1;
      oNr := GetLastNr(DBTOffers.TableName, 'OfferteNr')+ 1;
      DBTQuery.SQL.Clear;
    end;

    if lvwItems.HelpKeyword = Invoice then begin
      InsertNewRow('FactuurNr', faNr);
      CurrentTable.Active := False;
      CurrentTable.Active := True;
      CurrentTable.Locate('FactuurNr', faNr, []);
      nId := CurrentTable.FieldByName('ID').AsInteger;
      frmHEdit := TfrmEditInvoice.Create(Self, nId, CurrentTable,  'FactuurId');
      frmHEdit.Caption := 'Factuur bekijken / wijzigen';
    end
    else if lvwItems.HelpKeyword = Offer then begin
      InsertNewRow('OfferteNr', oNr);
      CurrentTable.Active := False;
      CurrentTable.Active := True;
      CurrentTable.Locate('OfferteNr', oNr, []);
      nId := CurrentTable.FieldByName('ID').AsInteger;
      frmHEdit := TfrmEditOffer.Create(Self, nId, CurrentTable,  'OfferteId');
      frmHEdit.Caption := 'Offerte bekijken / wijzigen';
      TfrmEditOffer(frmHEdit).invoiceNr := faNr;
    end
    else if lvwItems.HelpKeyword = Customer then begin
      frmHEdit := TfrmEditCustomer.Create(Self, 0, CurrentTable);
    end
    else if lvwItems.HelpKeyword = Product then begin
      frmHEdit := TfrmEditArticle.Create(Self, 0, CurrentTable);
    end;

  try
    ShowModal :=  frmHEdit.ShowModal;
    if ShowModal = mrOk then
      Refresh
    else if ShowModal = mrYes then
      DoSomeThingElse(nId)
    else
      if (lvwItems.HelpKeyword = Invoice) or (lvwItems.HelpKeyword = Offer) then begin
        CurrentTable.DeleteRecords(arCurrent);
      end;
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
var Id: Integer;
begin
  Id := Integer(lvwItems.Selected.Data);
  PrintInvoiceAndOffer(Id);
end;

procedure TfrmMain.ckbPayedClick(Sender: TObject);
begin
  if lvwItems.HelpKeyword = Invoice  then begin
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
end;

procedure TfrmMain.ckbShowAllClick(Sender: TObject);
begin
  ShowAll := ckbShowAll.Checked;
  Refresh;
end;

procedure TfrmMain.DoSomeThingElse(Id: Integer);
begin
  PrintInvoiceAndOffer(Id);
  btnEdit.Click;
  Refresh;
end;

procedure TfrmMain.PrintInvoiceAndOffer(Id: Integer);
var
  fileString: string;
begin
  if id = 0 then
    id := Integer(lvwItems.Selected.Data);

  if lvwItems.HelpKeyword = Invoice then
  begin
    try
      frmReportInvoice := TfrmReportInvoice.Create(Self, Id, DBTInvoices);
      if frmReportInvoice.frxReport.PrepareReport then
        frmReportInvoice.frxReport.ShowPreparedReport;
    finally
      frmReportInvoice.Free;
    end;
  end
  else
  begin
    fileString := Inifile.ReadString('Offerte', 'SaveDir', 'C:\Ada\') + '\OfferteExport-' + IntToStr(Id) + '.pdf';
    if FileExists(fileString) then
      ShellExecute(0, nil, PChar(fileString), nil, nil, SW_SHOWNORMAL)
    else
    begin
      try
        frmReportOffer := TfrmReportOffer.Create(Self, Id, DBTOffers);
        if frmReportOffer.frxReport.PrepareReport then
          frmReportOffer.frxReport.ShowPreparedReport;
      finally
        frmReportOffer.Free;
      end;
    end;
  end;
end;

procedure TfrmMain.InsertNewRow(FieldId: String; faNr: Integer);
begin
  DBTQuery.Close;
  DBTQuery.SQL.Text := 'Insert into ' + CurrentTable.TableName + '(' + FieldId + ') Values(' + IntToStr(faNr) + ')';
  DBTQuery.ExecSQL;
  //DBTQuery.Open;
end;

function TfrmMain.GetLastNr(TTable: String; FieldId: String): Integer;
begin
  //Table.Sort := FieldId + ' DESC';
  //Table.First;
  //Result := Table.FieldByName(FieldId).AsInteger;
    DBTQuery.Close;
    DBTQuery.SQL.Clear;
    DBTQuery.SQL.Text := 'Select MAX(' + FieldId + ') as LastNr from ' + TTable;
    DBTQuery.ExecSQL;
    DBTQuery.Open;
    Result := DBTQuery.FieldByName('LastNr').AsInteger;
end;

procedure TfrmMain.LoadData;
var
  LI: TListItem;
  I,X: Integer;
  column: TListColumn;
begin
  Loading := True;
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
        else if FieldCaptionAndFieldType.Values[column.DisplayName] = 'date' then
          LI.SubItems.Add(FormatDateTime('dd-mm-yyyy',CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsDateTime))
        else
          LI.SubItems.Add(CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsString);
      end;

      if lvwItems.HelpKeyword = Product then
        LI.ImageIndex := 6
      else
        LI.ImageIndex := 8;
    end;
    LI.Data := Pointer(CurrentTable.FieldByName('ID').asInteger);
    CurrentTable.Prior;
    if (not ShowAll) and (I = 2) then
      Break;

  end;
  Loading := False;
end;

procedure TfrmMain.LoadInvoices;
var
  totalTobePayed,totalPayed: Double;
begin
  totalPayed:=0;
  totalTobePayed:=0;
  if lvwItems.HelpKeyword = Invoice  then
    LoadFiltered('Betaald=' + QuotedStr('false'));

  lblPayed.Visible := lvwItems.HelpKeyword = Invoice;
  ckbPayed.Visible := lvwItems.HelpKeyword = Invoice;

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
  DBTOfferDetails.Open;
  DBTCustomers.Open;
end;

procedure TfrmMain.pmpNewKopieClick(Sender: TObject);
var Id: Integer;
begin

  Id := Integer(lvwItems.Selected.Data);
  if lvwItems.HelpKeyword = Invoice then
  begin
    try
      frmreportInvoiceWithBackground := TfrmreportInvoiceWithBackground.Create(Self, Id, DBTCustomers);
      frmreportInvoiceWithBackground.exportToPdf(Inifile.ReadString('Factuur','SaveDirWithBackground','C:\Ada\'));
    finally
      frmreportInvoiceWithBackground.Free;
    end;
  end
  else   if lvwItems.HelpKeyword = Offer then
  begin
    try
      frmReportOfferWithBackground := TfrmReportOfferWithBackground.Create(Self, Id, DBTCustomers);
      frmReportOfferWithBackground.exportToPdf(Inifile.ReadString('Offerte','SaveDirWithBackground','C:\Ada\'));
    finally
      frmReportOfferWithBackground.Free;
    end;

  end;
end;

procedure TfrmMain.LoadInvoicesFiltered(totalPayed: Double; totalTobePayed: Double);
var
  X: Integer;
  I: Integer;
  LI: TListItem;
  column: TListColumn;
begin
  Loading := True;
  lvwItems.Clear;
  CurrentTable.Last;
  for I := 0 to CurrentTable.RecordCount - 1 do begin
    if ShowAll or (I < 3) then begin
      LI := lvwItems.Items.Add;
      for X := 0 to lvwItems.Columns.Count - 1 do begin
        column := lvwItems.Columns.Items[X];
        if X = 0 then begin
          LI.Caption := CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsString;
        end
        else
        begin
          if FieldCaptionAndFieldType.Values[column.DisplayName] = 'curr' then
            LI.SubItems.Add('€ ' + FormatFloat('0.00', CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsFloat))
          else if FieldCaptionAndFieldType.Values[column.DisplayName] = 'date' then
            LI.SubItems.Add(FormatDateTime('dd-mm-yyyy',CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsDateTime))
          else
            LI.SubItems.Add(CurrentTable.FieldByName(FieldCaptionAndFieldName.Values[column.DisplayName]).AsString);
        end;
      end;
      LI.Data := Pointer(CurrentTable.FieldByName('ID').asInteger);
    end;
    if lvwItems.HelpKeyword = Invoice then begin
      totalPayed := totalPayed + CurrentTable.FieldByName('Totaal').AsFloat;
      totalTobePayed := totalTobePayed + CurrentTable.FieldByName('NogTeBetalen').AsFloat;

      if CurrentTable.FieldByName('NogTeBetalen').AsFloat > 0 then
        LI.ImageIndex := 12
      else
        LI.ImageIndex := 13;
    end
    else begin
      if (lvwItems.HelpKeyword = Offer) and CurrentTable.FieldByName('Omgezet').AsBoolean then
        LI.ImageIndex := 10
      else
        LI.ImageIndex := 11;
    end;
    CurrentTable.Prior;
  end;
  StatusBar.Panels.Items[3].Text := '€ ' + FormatFloat('0.00', totalTobePayed);

  Loading := False;
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
  addColumn('Id','Id', 100);
  addColumn('Omschrijving', 'Omschrijving', 300);
  addColumn('Prijs', 'Prijs', 'curr', 130, true);
end;

procedure TfrmMain.SetCustomerColums;
begin
  addColumn('Id','Id', 100);
  addColumn('Naam', 'Naam', 250);
  addColumn('Adres', 'Adres', 250);
  addColumn('Postcode en plaats', 'PostcodePlaats', 250);
  addColumn('Telefoonnummer', 'Telefoonnummer', 150);
  addColumn('Emailadres', 'Emailadres', 'niks', 250,  true);
end;

procedure TfrmMain.SetInvoiceColums;
begin
  addColumn('Factuur nr','FactuurNr', 100);
  addColumn('Factuur datum','FactuurDatum', 'date', 100);
  addColumn('Klant naam', 'KlantNaam', 350);
  addColumn('Meetdatum','MeetDatum', 'date', 100);
  addColumn('Legdatum','LegDatum', 'date', 100);
  addColumn('Totaal', 'Totaal', 'curr', 120);
  addColumn('Aanbetaling', 'Aanbetaling', 'curr', 120);
  addColumn('Nog te betalen', 'NogTeBetalen', 'curr', 120, true);
end;

procedure TfrmMain.SetOfferColums;
begin
  addColumn('Offerte nr','OfferteNr', 100);
  addColumn('Offerte datum','OfferteDatum', 'date', 100);
  addColumn('Klant naam', 'KlantNaam', 350);
  addColumn('Meetdatum','MeetDatum', 'date', 100);
  addColumn('Legdatum','LegDatum', 'date', 100);
  addColumn('Totaal', 'Totaal', 'curr', 120, true);
end;

end.
