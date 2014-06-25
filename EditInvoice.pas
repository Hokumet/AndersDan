unit EditInvoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, HEdit, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, EditAncestor, Data.DB,
  HolderEdits, HFrame, AdoDB;

type
  TfrmEditInvoice = class(TfrmHEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    edtInvoiceNr: TEdit;
    Label2: TLabel;
    dtpInvoiceDate: TDateTimePicker;
    edtTotal: THCurrencyEdit;
    Label3: TLabel;
    ckbInvoice: TCheckBox;
    frameInvoiceDetails: TfrAncestor;
    procedure frameInvoiceDetailsbtnNewClick(Sender: TObject);
    procedure frameInvoiceDetailsbtnEditClick(Sender: TObject);
  private
    TInvoiceDetails: TADOTable;
    { Private declarations }
  protected
        procedure loadFields(); override;
        procedure loadDetails(); override;
        procedure loadDetailsTables; override;
        procedure saveFields(); override;
        procedure loadOnce(); override;
  public
    { Public declarations }
  end;

var
  frmEditInvoice: TfrmEditInvoice;

implementation

uses Main, EditArticle, EditInvoiceDetail;
{$R *.dfm}

{ TfrmEditInvoice }

procedure TfrmEditInvoice.frameInvoiceDetailsbtnEditClick(Sender: TObject);
begin
  if frameInvoiceDetails.lvwItems.Selected = nil then Exit;
  TInvoiceDetails.Locate('ID', Integer(frameInvoiceDetails.lvwItems.Selected.Data), []);

  frameInvoiceDetails.EForm := TfrmEditInvoiceDetail.Create(Self, Integer(frameInvoiceDetails.lvwItems.Selected.Data), TInvoiceDetails);
   if frameInvoiceDetails.editObject then loadDetails;
end;

procedure TfrmEditInvoice.frameInvoiceDetailsbtnNewClick(Sender: TObject);
begin
    frmEditInvoiceDetail := TfrmEditInvoiceDetail.Create(Self,0, TInvoiceDetails );
  try
    if frmEditInvoiceDetail.ShowModal = mrOK then
      loadDetails
  finally
    frmEditInvoiceDetail.Free;
  end
end;

procedure TfrmEditInvoice.loadDetails;
var I: Integer;
    Item: TListItem;
begin
  inherited;
  frameInvoiceDetails.lvwItems.Clear;
  TInvoiceDetails.First;
  for I := 0 to TInvoiceDetails.RecordCount-1 do begin
    Item := frameInvoiceDetails.lvwItems.Items.Add;
    Item.Caption := TInvoiceDetails.FieldByName('ArtikelId').AsString;
    Item.SubItems.Add(TInvoiceDetails.FieldByName('ArtikelNaam').AsString);

    Item.Data := Pointer(TInvoiceDetails.FieldByName('ID').AsInteger);

    TInvoiceDetails.Next;
  end;
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
    loadField(pnlLabels.Controls[I]);
  end;
end;

procedure TfrmEditInvoice.loadOnce;
begin
  inherited;
  frameInvoiceDetails.lblTitel.Caption := 'Factuur details';
  frameInvoiceDetails.FTable := TInvoiceDetails;
  frameInvoiceDetails.EForm := frmEditArticle;


  frameInvoiceDetails.addColumn('ArtikelId', 75);
  frameInvoiceDetails.addColumn('ArtikelNaam', 200 );
  frameInvoiceDetails.addAlignColumn('ArtikelPrijs', 75, taRightJustify);
end;

procedure TfrmEditInvoice.saveFields;
var I: Integer;
begin
  for I := 0 to pnlLabels.ControlCount - 1 do begin
      saveField(pnlLabels.Controls[I]);
  end;
  inherited;
end;

end.
