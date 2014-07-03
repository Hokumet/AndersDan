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
    edtArticleId: TEdit;
    edtArticleName: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtPrice: THCurrencyEdit;
    edtAmount: THFloatEdit;
    Label5: TLabel;
    edtTotal: THCurrencyEdit;
    procedure edtPriceExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditInvoiceDetail: TfrmEditInvoiceDetail;

implementation

{$R *.dfm}

procedure TfrmEditInvoiceDetail.edtPriceExit(Sender: TObject);
begin
    edtTotal.Value := edtPrice.Value * edtAmount.Value;
end;

end.
