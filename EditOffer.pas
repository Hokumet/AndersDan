unit EditOffer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, HEdit, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, EditAncestor, Data.DB,
  HolderEdits, HFrame, AdoDB, HSearchEdit, ListBoxEx, HControls, ListViewEx,
  IdBaseComponent, IdNetworkCalculator;

type
  TfrmEditOffer = class(TfrmHEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    lblNr: TLabel;
    edtInvoiceNr: TEdit;
    lblDate: TLabel;
    dtpInvoiceDate: TDateTimePicker;
    edtTotal: THCurrencyEdit;
    Label3: TLabel;
    ckbInvoice: TCheckBox;
    frameInvoiceDetails: TfrAncestor;
    edtBtw: THCurrencyEdit;
    Label4: TLabel;
    edtSubtotal: THCurrencyEdit;
    Label5: TLabel;
    Label8: TLabel;
    edtCustomerName: TEdit;
    Label9: TLabel;
    edtCustomerAddress: TEdit;
    edtPostCodeCity: TEdit;
    Label10: TLabel;
    ckbSaveCustomer: TCheckBox;
    lbxCustomers: TListBox;
    edtPhoneNumber: TEdit;
    Label6: TLabel;
    edtComment: TMemo;
    Panel5: TPanel;
    MonthCalendar1: TMonthCalendar;
    procedure frameInvoiceDetailsbtnNewClick(Sender: TObject);
    procedure frameInvoiceDetailsbtnEditClick(Sender: TObject);
    procedure ckbSaveCustomerClick(Sender: TObject);
    procedure edtCustomerNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbxCustomersDblClick(Sender: TObject);
    procedure lbxCustomersKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCustomerNameExit(Sender: TObject);
    procedure frameInvoiceDetailsbtnDeleteClick(Sender: TObject);
  private
    fInvoiceNr: Integer;
    TOfferDetails: TADOTable;
    TCustomers: TADOTable;
    TInvoices: TADOTable;
    TInvoiceDetails: TADOTable;
    procedure SelectCustomer(CustomerId: Integer);
    { Private declarations }
  protected
    procedure loadFields(); override;
    procedure loadDetails(); override;
    procedure loadDetailsTables; override;
    procedure saveFields(); override;
    procedure loadOnce(); override;
    //procedure loadOnceAfter(); override;
  public
    property invoiceNr:Integer write fInvoiceNr;
  end;

var
  frmEditOffer: TfrmEditOffer;

implementation

uses Main, EditArticle, EditInvoiceDetail, ReportOffer;
{$R *.dfm}

{ TfrmEditInvoice }

procedure TfrmEditOffer.ckbSaveCustomerClick(Sender: TObject);
begin
  if ckbSaveCustomer.Checked then
    if MessageDlg('Weet je zeker dat je deze klant wil opslaan',mtError, mbOKCancel, 0) <> mrOK  then
      ckbSaveCustomer.Checked := false;
end;

procedure TfrmEditOffer.edtCustomerNameExit(Sender: TObject);
begin
  if TCustomers.RecordCount =1 then
    SelectCustomer(TCustomers.FieldByName('ID').AsInteger);
end;

procedure TfrmEditOffer.edtCustomerNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var I: Integer;
begin
  if (Key = VK_DOWN) or (key = VK_TAB) then begin
    if lbxCustomers.Visible then begin
      lbxCustomers.SetFocus;
      lbxCustomers.ItemIndex :=0;
    end;
  end
  else begin
    lbxCustomers.Items.Clear;
    TCustomers.Filtered := False;
    if(edtCustomerName.Text <> '') then begin
      TFilter := TCustomers;
      filterTable('Naam', ' like ', edtCustomerName.Text);
      lbxCustomers.Visible := TCustomers.RecordCount > 1;
      if TCustomers.RecordCount > 1 then begin
        lbxCustomers.Items.BeginUpdate;
        lbxCustomers.Visible := true;
        for I := 0 to TCustomers.RecordCount-1 do begin
          lbxCustomers.Items.AddObject(TCustomers.FieldByName('Naam').AsString, Pointer(TCustomers.FieldByName('ID').AsInteger));
          TCustomers.Next
        end;
        lbxCustomers.Items.EndUpdate;
      end;
    end;
  end;
end;

procedure TfrmEditOffer.frameInvoiceDetailsbtnDeleteClick(Sender: TObject);
begin
  inherited;
  frameInvoiceDetails.btnDeleteClick(Sender);
  loadDetails;
end;

procedure TfrmEditOffer.frameInvoiceDetailsbtnEditClick(Sender: TObject);
begin
  if frameInvoiceDetails.lvwItems.Selected = nil then Exit;
  TOfferDetails.Locate('ID', Integer(frameInvoiceDetails.lvwItems.Selected.Data), []);

  frameInvoiceDetails.EForm := TfrmEditInvoiceDetail.Create(Self, Integer(frameInvoiceDetails.lvwItems.Selected.Data), TOfferDetails);
   if frameInvoiceDetails.editObject then loadDetails;
end;

procedure TfrmEditOffer.frameInvoiceDetailsbtnNewClick(Sender: TObject);
begin

  frmEditInvoiceDetail := TfrmEditInvoiceDetail.Create(Self,0, TOfferDetails , ID, MasterKey);
  try
    if frmEditInvoiceDetail.ShowModal = mrOK then
      loadDetails
  finally
    frmEditInvoiceDetail.Free;
  end
end;

procedure TfrmEditOffer.lbxCustomersDblClick(Sender: TObject);
begin
  SelectCustomer(Integer(lbxCustomers.Items.Objects [lbxCustomers.ItemIndex]));
end;

procedure TfrmEditOffer.lbxCustomersKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    if lbxCustomers.ItemIndex <> -1 then
      SelectCustomer(Integer(lbxCustomers.Items.Objects [lbxCustomers.ItemIndex]));
end;

procedure TfrmEditOffer.loadDetails;
var I: Integer;
    Item: TListItem;
    Total: Double;
begin
  inherited;
  frameInvoiceDetails.lvwItems.Clear;
  TOfferDetails.First;
  for I := 0 to TOfferDetails.RecordCount-1 do begin
    Item := frameInvoiceDetails.lvwItems.Items.Add;
    Item.Caption :=TOfferDetails.FieldByName('Omschrijving').AsString;
    Item.SubItems.Add(FloatToStr(TOfferDetails.FieldByName('Aantal').AsFloat));
    Item.SubItems.Add(CurrToStrF(TOfferDetails.FieldByName('Prijs').AsCurrency, ffCurrency ,2));
    Item.SubItems.Add(CurrToStrF(TOfferDetails.FieldByName('Bedrag').AsCurrency, ffCurrency ,2));

    Item.Data := Pointer(TOfferDetails.FieldByName('ID').AsInteger);
    Total := Total + TOfferDetails.FieldByName('Bedrag').AsFloat;
    TOfferDetails.Next;
  end;
    edtTotal.Value := Total;
    edtBtw.Value := Total- (Total/1.21);
    edtSubtotal.Value := edtTotal.Value - edtBtw.Value;
end;

procedure TfrmEditOffer.loadDetailsTables;
begin
  TOfferDetails := TfrmMain(Owner).DBTOfferDetails;
  TableObjectList.Add(TOfferDetails);
  frameInvoiceDetails.FTable := TOfferDetails;
end;

procedure TfrmEditOffer.loadFields;
var I: Integer;
begin
  inherited ;
  for I := 0 to pnlLabels.ControlCount - 1 do begin
    if pnlLabels.Controls[I].Visible then
      loadField(pnlLabels.Controls[I]);
  end;
end;

procedure TfrmEditOffer.loadOnce;
begin
  inherited;
  frameInvoiceDetails.lblTitel.Caption := 'Offerte details';
  frameInvoiceDetails.FTable := TOfferDetails;
  frameInvoiceDetails.EForm := frmEditArticle;

  frameInvoiceDetails.addColumn('Omschrijving', 200 );
  frameInvoiceDetails.addColumn('Aantal', 75);
  frameInvoiceDetails.addAlignColumn('Prijs', 75, taRightJustify);
  frameInvoiceDetails.addAlignColumn('Bedrag', 100, taRightJustify);

  TCustomers := TfrmMain(Owner).DBTCustomers;
  TInvoices := TfrmMain(Owner).DBTInvoices;
  TInvoiceDetails := TfrmMain(Owner).DBTInvoiceDetails;
end;


procedure TfrmEditOffer.saveFields;
var I: Integer;
    fNr:Integer;
    OId:Integer;
begin
  if CurrTable.FieldByName('Omgezet').AsBoolean then begin
    CurrTable.Cancel;
    exit;
  end;

  for I := 0 to pnlLabels.ControlCount - 1 do begin
    if pnlLabels.Controls[I].Visible then
      saveField(pnlLabels.Controls[I]);
  end;
  TFilter := TCustomers;
  if ckbSaveCustomer.Checked then
    filterTable('Naam', ' = ', edtCustomerName.Text);

  if TCustomers.RecordCount = 0 then begin
    TCustomers.Insert;
    TCustomers.FieldByName('Naam').AsString := edtCustomerName.Text;
    TCustomers.FieldByName('Adres').AsString := edtCustomerAddress.Text;
    TCustomers.FieldByName('PostcodePlaats').AsString := edtPostCodeCity.Text;
    TCustomers.FieldByName('Telefoonnummer').AsString := edtPhoneNumber.Text;

    TCustomers.Post;
    TCustomers.UpdateBatch;
  end;
  if ckbInvoice.Checked then begin
    OId := CurrTable.FieldByName('ID').AsInteger;
    TInvoices.Insert;
    TInvoices.FieldByName('FactuurNr').AsInteger := fInvoiceNr;
    TInvoices.FieldByName('OfferteNr').AsInteger := StrToInt(edtInvoiceNr.Text);
    TInvoices.FieldByName('FactuurDatum').AsDateTime := Date;
    TInvoices.FieldByName('SubTotaal').AsCurrency := edtSubtotal.Value;
    TInvoices.FieldByName('Btw').AsCurrency := edtBtw.Value;
    TInvoices.FieldByName('Totaal').AsCurrency := edtTotal.Value;
    TInvoices.FieldByName('KlantNaam').AsString := edtCustomerName.Text;
    TInvoices.FieldByName('KlantAdres').AsString := edtCustomerAddress.Text;
    TInvoices.FieldByName('KlantPostCodePlaats').AsString := edtPostCodeCity.Text;
    TInvoices.FieldByName('KlantTelefoonnummer').AsString := edtPhoneNumber.Text;

    TInvoices.Post;
    TInvoices.UpdateBatch;

//    TInvoices.Locate('FactuurNr', fInvoiceNr, []);
    TOfferDetails.First;
    for I := 0 to TOfferDetails.RecordCount - 1 do begin
      TInvoiceDetails.Insert;
      TInvoiceDetails.FieldByName('FactuurId').AsInteger := TInvoices.FieldByName('Id').AsInteger;
      TInvoiceDetails.FieldByName('Omschrijving').AsString := TOfferDetails.FieldByName('Omschrijving').AsString;
      TInvoiceDetails.FieldByName('Prijs').AsFloat := TOfferDetails.FieldByName('Prijs').AsFloat;
      TInvoiceDetails.FieldByName('Aantal').AsFloat := TOfferDetails.FieldByName('Aantal').AsFloat;
      TInvoiceDetails.FieldByName('Bedrag').AsFloat := TOfferDetails.FieldByName('Bedrag').AsFloat;
      TInvoiceDetails.Post;
      TOfferDetails.Next;
    end;
    TInvoiceDetails.UpdateBatch;

    TInvoices.Active := False;
    TInvoices.Active := True;

    CurrTable.FieldByName('Omgezet').AsBoolean := true;
  end;
  inherited;

  if ckbInvoice.Checked then begin
    try
      frmReportOffer := TfrmReportOffer.Create(Self, OId, TCustomers);
      frmReportOffer.exportToPdf(TfrmMain(Owner).Inifile.ReadString('Offerte','SaveDir','C:\Ada\'));
    finally
      frmReportOffer.Free;
    end;
  end;
end;

procedure TfrmEditOffer.SelectCustomer(CustomerId: Integer);
begin
  TFilter := TCustomers;
  filterTable('Id', CustomerId);
  edtCustomerName.Text := TFilter.FieldByName('Naam').AsString;
  edtCustomerAddress.Text := TFilter.FieldByName('Adres').AsString;
  edtPostCodeCity.Text := TFilter.FieldByName('PostcodePlaats').AsString;
  lbxCustomers.Visible := false;
end;

end.
