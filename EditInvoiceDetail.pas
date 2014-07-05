unit EditInvoiceDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, HEdit, Data.DB, Data.Win.ADODB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, HolderEdits, HSearchEdit,
  Vcl.FileCtrl, Vcl.DBLookup;

type
  TfrmEditInvoiceDetail = class(TfrmHEdit)
    Label1: TLabel;
    Label2: TLabel;
    edtProductId: TEdit;
    edtProductName: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtPrice: THCurrencyEdit;
    edtAmount: THFloatEdit;
    Label5: TLabel;
    edtTotal: THCurrencyEdit;
    lbxProducts: TListBox;
    procedure edtPriceExit(Sender: TObject);
    procedure edtProductNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProductNameExit(Sender: TObject);
    procedure lbxProductsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbxProductsDblClick(Sender: TObject);
    procedure edtProductIdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    TProducts: TADOTable;
    procedure selectProduct(ProductId: Integer);
    procedure fillProducts(TProducts: TADOTable);
  protected
    procedure loadOnce(); override;
  public
    { Public declarations }
  end;

var
  frmEditInvoiceDetail: TfrmEditInvoiceDetail;

implementation

{$R *.dfm}

uses Main, EditInvoice;

procedure TfrmEditInvoiceDetail.edtProductIdKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var I: Integer;
begin
  if (Key = VK_DOWN) or (key = VK_TAB) then begin
    if lbxProducts.Visible then begin
      lbxProducts.SetFocus;
      lbxProducts.ItemIndex :=0;
    end;
  end
  else begin
    lbxProducts.Items.Clear;
    TProducts.Filtered := False;
    lbxProducts.Top := 36;
    if(edtProductName.Text <> '') then begin
      TFilter := TProducts;
      filterTable('ID', StrToInt(edtProductId.Text));
      lbxProducts.Visible := TProducts.RecordCount > 1;
      if TProducts.RecordCount > 1 then
        fillProducts(TProducts);
    end;
  end;

end;

procedure TfrmEditInvoiceDetail.edtProductNameExit(Sender: TObject);
begin
  if TProducts.RecordCount =1 then
    SelectProduct(TProducts.FieldByName('ID').AsInteger);
end;

procedure TfrmEditInvoiceDetail.edtProductNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) or (key = VK_TAB) then begin
    if lbxProducts.Visible then begin
      lbxProducts.SetFocus;
      lbxProducts.ItemIndex :=0;
    end;
  end
  else begin
    lbxProducts.Items.Clear;
    TProducts.Filtered := False;
    if(edtProductName.Text <> '') then begin
      TFilter := TProducts;
      filterTable('Naam', ' like ', edtProductName.Text);
      lbxProducts.Visible := TProducts.RecordCount > 1;
      lbxProducts.Top := 68;
      if TProducts.RecordCount > 1 then
        fillProducts(TProducts);
    end;
  end;
end;

procedure TfrmEditInvoiceDetail.fillProducts(TProducts: TADOTable);
var I: Integer;
begin
  lbxProducts.Items.BeginUpdate;
  lbxProducts.Visible := true;
  for I := 0 to TProducts.RecordCount-1 do begin
    lbxProducts.Items.AddObject(TProducts.FieldByName('ID').AsString + '|' +TProducts.FieldByName('Naam').AsString, Pointer(TProducts.FieldByName('ID').AsInteger));
    TProducts.Next
  end;
  lbxProducts.Items.EndUpdate;
end;

procedure TfrmEditInvoiceDetail.edtPriceExit(Sender: TObject);
begin
    edtTotal.Value := edtPrice.Value * edtAmount.Value;
end;

procedure TfrmEditInvoiceDetail.lbxProductsDblClick(Sender: TObject);
begin
  SelectProduct(Integer(lbxProducts.Items.Objects [lbxProducts.ItemIndex]));
end;

procedure TfrmEditInvoiceDetail.lbxProductsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    if lbxProducts.ItemIndex <> -1 then
      SelectProduct(Integer(lbxProducts.Items.Objects [lbxProducts.ItemIndex]));
end;

procedure TfrmEditInvoiceDetail.loadOnce;
begin

  TProducts := TfrmMain(TfrmEditInvoice(Owner).Owner).DBTProducts;

end;

procedure TfrmEditInvoiceDetail.SelectProduct(ProductId: Integer);
begin
  TFilter := TProducts;
  filterTable('Id', ProductId);
  edtProductId.Text := TFilter.FieldByName('ID').AsString;
  edtProductName.Text := TFilter.FieldByName('Naam').AsString;
  edtPrice.Value := TFilter.FieldByName('Prijs').AsCurrency;
  lbxProducts.Visible := false;
end;

end.
