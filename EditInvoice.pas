unit EditInvoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, HEdit, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, EditAncestor, Data.DB,
  HolderEdits, HFrame, AdoDB, HSearchEdit, ListBoxEx, HControls, ListViewEx;

type
  TfrmEditInvoice = class(TfrmHEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    lblNr: TLabel;
    edtInvoiceNr: TEdit;
    lblDate: TLabel;
    dtpInvoiceDate: TDateTimePicker;
    edtTotal: THCurrencyEdit;
    Label3: TLabel;
    frameInvoiceDetails: TfrAncestor;
    edtBtw: THCurrencyEdit;
    Label4: TLabel;
    edtSubtotal: THCurrencyEdit;
    Label5: TLabel;
    lblPayed: TLabel;
    edtAanbetaling: THCurrencyEdit;
    edtToBePayed: THCurrencyEdit;
    lblToBePayed: TLabel;
    Label8: TLabel;
    edtCustomerName: TEdit;
    Label9: TLabel;
    edtCustomerAddress: TEdit;
    edtPostCodeCity: TEdit;
    Label10: TLabel;
    ckbSaveCustomer: TCheckBox;
    lbxCustomers: TListBox;
    ckbInvoicePayed: TCheckBox;
    edtPhoneNumber: TEdit;
    Label6: TLabel;
    lblPayedVia: TLabel;
    lblToBePayedVia: TLabel;
    cmbToBepayedVia: TComboBox;
    cmbPayedVia: TComboBox;
    edtComment: TMemo;
    Panel5: TPanel;
    MonthCalendar1: TMonthCalendar;
    procedure frameInvoiceDetailsbtnNewClick(Sender: TObject);
    procedure frameInvoiceDetailsbtnEditClick(Sender: TObject);
    procedure edtAanbetalingExit(Sender: TObject);
    procedure ckbSaveCustomerClick(Sender: TObject);
    procedure edtCustomerNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbxCustomersDblClick(Sender: TObject);
    procedure lbxCustomersKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCustomerNameExit(Sender: TObject);
    procedure ckbInvoicePayedClick(Sender: TObject);
    procedure frameInvoiceDetailsbtnDeleteClick(Sender: TObject);
  private
    fInvoiceNr: Integer;
    TInvoiceDetails: TADOTable;
    TCustomers: TADOTable;
    TInvoices: TADOTable;
    procedure SelectCustomer(CustomerId: Integer);
    { Private declarations }
  protected
    procedure loadFields(); override;
    procedure loadDetails(); override;
    procedure loadDetailsTables; override;
    procedure saveFields(); override;
    procedure loadOnce(); override;
  public
    property invoiceNr:Integer write fInvoiceNr;
  end;

var
  frmEditInvoice: TfrmEditInvoice;

implementation

uses Main, EditArticle, EditInvoiceDetail, ReportInvoice, ReportOffer;
{$R *.dfm}

{ TfrmEditInvoice }

procedure TfrmEditInvoice.ckbInvoicePayedClick(Sender: TObject);
begin
  if ckbInvoicePayed.Checked then
    if MessageDlg('Weet je zeker dat je de factuur als betaald wil aanmerken',mtError, mbOKCancel, 0) <> mrOK  then
      ckbInvoicePayed.Checked := false
    else
      edtToBePayed.Value := 0;
end;

procedure TfrmEditInvoice.ckbSaveCustomerClick(Sender: TObject);
begin
  if ckbSaveCustomer.Checked then
    if MessageDlg('Weet je zeker dat je deze klant wil opslaan',mtError, mbOKCancel, 0) <> mrOK  then
      ckbSaveCustomer.Checked := false;
end;

procedure TfrmEditInvoice.edtAanbetalingExit(Sender: TObject);
begin
  edtToBePayed.Value := edtTotal.Value - edtAanbetaling.Value;
end;

procedure TfrmEditInvoice.edtCustomerNameExit(Sender: TObject);
begin
  if TCustomers.RecordCount = 1 then
    SelectCustomer(TCustomers.FieldByName('ID').AsInteger);
end;

procedure TfrmEditInvoice.edtCustomerNameKeyUp(Sender: TObject; var Key: Word;
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

procedure TfrmEditInvoice.frameInvoiceDetailsbtnDeleteClick(Sender: TObject);
begin
  inherited;
  frameInvoiceDetails.btnDeleteClick(Sender);
  loadDetails;
end;

procedure TfrmEditInvoice.frameInvoiceDetailsbtnEditClick(Sender: TObject);
begin
  if frameInvoiceDetails.lvwItems.Selected = nil then Exit;
  TInvoiceDetails.Locate('ID', Integer(frameInvoiceDetails.lvwItems.Selected.Data), []);

  frameInvoiceDetails.EForm := TfrmEditInvoiceDetail.Create(Self, Integer(frameInvoiceDetails.lvwItems.Selected.Data), TInvoiceDetails);
   if frameInvoiceDetails.editObject then loadDetails;
end;

procedure TfrmEditInvoice.frameInvoiceDetailsbtnNewClick(Sender: TObject);
begin
  frmEditInvoiceDetail := TfrmEditInvoiceDetail.Create(Self,0, TInvoiceDetails , ID, MasterKey);
  try
    if frmEditInvoiceDetail.ShowModal = mrOK then
      loadDetails
  finally
    frmEditInvoiceDetail.Free;
  end
end;

procedure TfrmEditInvoice.lbxCustomersDblClick(Sender: TObject);
begin
  SelectCustomer(Integer(lbxCustomers.Items.Objects [lbxCustomers.ItemIndex]));
end;

procedure TfrmEditInvoice.lbxCustomersKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    if lbxCustomers.ItemIndex <> -1 then
      SelectCustomer(Integer(lbxCustomers.Items.Objects [lbxCustomers.ItemIndex]));
end;

procedure TfrmEditInvoice.loadDetails;
var I: Integer;
    Item: TListItem;
    Total: Double;
begin
  inherited;
  frameInvoiceDetails.lvwItems.Clear;
  TInvoiceDetails.First;
  for I := 0 to TInvoiceDetails.RecordCount-1 do begin
    Item := frameInvoiceDetails.lvwItems.Items.Add;
    Item.Caption :=TInvoiceDetails.FieldByName('Omschrijving').AsString;
    Item.SubItems.Add(FloatToStr(TInvoiceDetails.FieldByName('Aantal').AsFloat));
    Item.SubItems.Add(CurrToStrF(TInvoiceDetails.FieldByName('Prijs').AsCurrency, ffCurrency ,2));
    Item.SubItems.Add(CurrToStrF(TInvoiceDetails.FieldByName('Bedrag').AsCurrency, ffCurrency ,2));

    Item.Data := Pointer(TInvoiceDetails.FieldByName('ID').AsInteger);

    Total := Total + TInvoiceDetails.FieldByName('Bedrag').AsFloat;

    TInvoiceDetails.Next;
  end;
    edtTotal.Value := Total;
    edtBtw.Value := Total- (Total/1.21);
    edtSubtotal.Value := edtTotal.Value - edtBtw.Value;
    edtToBePayed.Value := edtTotal.Value - edtAanbetaling.Value;
end;

procedure TfrmEditInvoice.loadDetailsTables;
begin
  TInvoiceDetails := TfrmMain(Owner).DBTInvoiceDetails;
  TableObjectList.Add(TInvoiceDetails);
  frameInvoiceDetails.FTable := TInvoiceDetails;
end;

procedure TfrmEditInvoice.loadFields;
var I: Integer;
begin
  inherited ;
  for I := 0 to pnlLabels.ControlCount - 1 do begin
    if pnlLabels.Controls[I].Visible then
      loadField(pnlLabels.Controls[I]);
  end;
end;

procedure TfrmEditInvoice.loadOnce;
begin
  inherited;
  frameInvoiceDetails.lblTitel.Caption := 'Factuur details';
  frameInvoiceDetails.FTable := TInvoiceDetails;
  frameInvoiceDetails.EForm := frmEditArticle;

  frameInvoiceDetails.addColumn('Omschrijving', 200 );
  frameInvoiceDetails.addColumn('Aantal', 75);
  frameInvoiceDetails.addAlignColumn('Prijs', 75, taRightJustify);
  frameInvoiceDetails.addAlignColumn('Bedrag', 100, taRightJustify);

  TCustomers := TfrmMain(Owner).DBTCustomers;
  TInvoices := TfrmMain(Owner).DBTInvoices;

  if CurrTable.FieldByName('Betaald').AsBoolean then begin
    edtToBePayed.Value := 0;
    ckbInvoicePayed.Checked := true;
  end;
end;


procedure TfrmEditInvoice.saveFields;
var I: Integer;
begin
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
    if ckbInvoicePayed.Checked then
      CurrTable.FieldByName('Betaald').AsBoolean := true;
  inherited;
end;

procedure TfrmEditInvoice.SelectCustomer(CustomerId: Integer);
begin
  TFilter := TCustomers;
  filterTable('Id', CustomerId);
  edtCustomerName.Text := TFilter.FieldByName('Naam').AsString;
  edtCustomerAddress.Text := TFilter.FieldByName('Adres').AsString;
  edtPostCodeCity.Text := TFilter.FieldByName('PostcodePlaats').AsString;
  edtPhoneNumber.Text := TFilter.FieldByName('TelefoonNummer').AsString;
  lbxCustomers.Visible := false;
end;

end.
