unit EditFactuurDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, HEdit, Data.DB, Data.Win.ADODB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmEditInvoiceDetail = class(TfrmHEdit)
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
