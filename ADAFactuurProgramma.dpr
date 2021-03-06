program ADAFactuurProgramma;

uses
  Vcl.Forms,
  PasswordAncestor in '..\Commons\PasswordAncestor.pas' {PasswordAncestorDlg},
  SettingAncestor in '..\Commons\SettingAncestor.pas' {frmSettingAncestor},
  MainAncestor in '..\Commons\MainAncestor.pas' {frmMainAncestor},
  EditAncestor in '..\Commons\EditAncestor.pas' {frmEditAncestor},
  HEdit in '..\Commons\HEdit.pas' {frmHEdit},
  Main in 'Main.pas' {frmMain},
  EditOffer in 'EditOffer.pas' {frmEditOffer},
  EditArticle in 'EditArticle.pas' {frmEditArticle},
  HFrame in '..\Commons\HFrame.pas' {frAncestor: TFrame},
  EditInvoiceDetail in 'EditInvoiceDetail.pas' {frmEditInvoiceDetail},
  EditCustomer in 'EditCustomer.pas' {frmEditCustomer},
  ReportAncestor in '..\Commons\ReportAncestor.pas' {frmReportAnchestor},
  ReportOffer in 'ReportOffer.pas' {frmReportOffer},
  ReportInvoice in 'ReportInvoice.pas' {frmreportInvoice},
  EditInvoice in 'EditInvoice.pas' {frmEditInvoice},
  ReportInvoiceWithBackground in 'ReportInvoiceWithBackground.pas' {frmreportInvoiceWithBackground},
  ReportOfferWithBackground in 'ReportOfferWithBackground.pas' {frmReportOfferWithBackground};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Anders dan anderen Factuur programma';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmreportInvoiceWithBackground, frmreportInvoiceWithBackground);
  Application.CreateForm(TfrmReportOfferWithBackground, frmReportOfferWithBackground);
  Application.Run;
end.
