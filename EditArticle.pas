unit EditArticle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, HEdit, Data.DB, Data.Win.ADODB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, HolderEdits;

type
  TfrmEditArticle = class(TfrmHEdit)
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    edtPrijs: THCurrencyEdit;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditArticle: TfrmEditArticle;

implementation

{$R *.dfm}

procedure TfrmEditArticle.btnSaveClick(Sender: TObject);
begin
  inherited;
  //NOOOO
end;

end.
