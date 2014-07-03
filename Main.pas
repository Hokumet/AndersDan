unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainAncestor, Vcl.Menus, Data.Win.ADODB,
  Data.DB, Vcl.ImgList, Vcl.ComCtrls, MyListView, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.ExtCtrls;

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
    DBTArticles: TADOTable;
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
    DBTArticlesId: TAutoIncField;
    DBTArticlesNr: TWideStringField;
    DBTArticlesNaam: TWideStringField;
    DBTArticlesPrijs: TBCDField;
    DBTArticlesAangemaaktDoor: TWideStringField;
    DBTArticlesAangemaaktOp: TDateTimeField;
    DBTInvoicesFactuur: TBooleanField;
    DBTOffersFactuur: TBooleanField;
    DBTInvoiceDetailsId: TAutoIncField;
    DBTInvoiceDetailsFactuurId: TIntegerField;
    DBTInvoiceDetailsArtikelId: TIntegerField;
    DBTInvoiceDetailsArtikelNaam: TWideStringField;
    DBTInvoiceDetailsAantal: TIntegerField;
    DBTInvoiceDetailsPrijs: TBCDField;
    DBTInvoiceDetailsOpmaat: TBooleanField;
    DBTInvoiceDetailsTotaal: TBCDField;
    DBTInvoiceDetailsAangemaaktDoor: TWideStringField;
    DBTInvoiceDetailsAangemaaktOp: TDateTimeField;
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
    procedure btnBeginClick(Sender: TObject);
    procedure btnOffersClick(Sender: TObject);
    procedure btnArticlesClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
  private
       procedure LoadInvoices;
       procedure LoadArticles;

       procedure SetArticleColums;
       procedure SetInvoiceColums;
       procedure SetOfferColums;
  protected
        procedure Refresh; override;
        procedure OpenDatasets(); override;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses EditOffer, EditInvoice, EditArticle;

Const
  Invoice = 'Invoice';
  Offer = 'Offer';
  Article = 'Article';

{$R *.dfm}

{ TfrmMain }

procedure TfrmMain.btnArticlesClick(Sender: TObject);
begin
  lvwItems.HelpKeyword := btnArticles.HelpKeyword;
  CurrentTable := DBTArticles;
  Refresh;
end;

procedure TfrmMain.btnBeginClick(Sender: TObject);
begin
  lvwItems.HelpKeyword := btnBegin.HelpKeyword;
  CurrentTable := DBTInvoices;
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
    else if lvwItems.HelpKeyword = Article then
      frmHEdit := TfrmEditArticle.Create(Self, Integer(lvwItems.Selected.Data), CurrentTable) ;
  inherited;
end;

procedure TfrmMain.btnNewClick(Sender: TObject);
begin
    if lvwItems.HelpKeyword = Invoice then
      frmHEdit := TfrmEditInvoice.Create(Self, 0, CurrentTable)
    else if lvwItems.HelpKeyword = Offer then
      frmHEdit := TfrmEditOffer.Create(Self, 0, CurrentTable)
    else if lvwItems.HelpKeyword = Article then
      frmHEdit := TfrmEditArticle.Create(Self, 0, CurrentTable) ;

  try
    if frmHEdit.ShowModal = mrOk then
        Refresh;
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

procedure TfrmMain.LoadArticles;
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


procedure TfrmMain.OpenDatasets;
begin
  inherited;
  DBTInvoices.Open;
  DBTOffers.Open;
  DBTArticles.Open;
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
  else if lvwItems.HelpKeyword = Article  then begin
    lvwItems.Columns.Clear;
    FieldCaptionAndFieldName.Clear;

    lvwItems.Columns.BeginUpdate;
    SetArticleColums;
    lvwItems.Columns.EndUpdate;

    LoadArticles
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
  addColumn('Factuur nr','FactuurNr', 75);
  addColumn('Factuur datum','FactuurDatum', 110);
  addColumn('Klant naam', 'KlantNaam', 200);
  addColumn('Totaal', 'Totaal', 'curr', 150);
end;

end.
