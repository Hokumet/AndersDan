unit EditInvoiceDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, HEdit, Data.DB, Data.Win.ADODB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmEditInvoiceDetail = class(TfrmHEdit)
    Label1: TLabel;
    Label2: TLabel;
    edtArticleId: TEdit;
    edtArticleName: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditInvoiceDetail: TfrmEditInvoiceDetail;

implementation

{$R *.dfm}

end.
