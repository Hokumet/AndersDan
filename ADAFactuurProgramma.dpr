program ADAFactuurProgramma;

uses
  Vcl.Forms,
  PasswordAncestor in '..\Commons\PasswordAncestor.pas' {PasswordAncestorDlg},
  SettingAncestor in '..\Commons\SettingAncestor.pas' {frmSettingAncestor},
  MainAncestor in '..\Commons\MainAncestor.pas' {frmMainAncestor},
  EditAncestor in '..\Commons\EditAncestor.pas' {frmEditAncestor},
  HEdit in '..\Commons\HEdit.pas' {frmHEdit},
  Main in 'Main.pas' {frmMain},
  EditInvoice in 'EditInvoice.pas' {frmEditInvoice},
  EditOffer in 'EditOffer.pas' {frmEditOffer},
  EditArticle in 'EditArticle.pas' {frmEditArticle},
  HFrame in '..\Commons\HFrame.pas' {frAncestor: TFrame},
  EditInvoiceDetail in 'EditInvoiceDetail.pas' {frmEditInvoiceDetail},
  EditCustomer in 'EditCustomer.pas' {frmEditCustomer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Anders dan anderen Factuur programma';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
