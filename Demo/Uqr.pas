unit Uqr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, DelphiZXIngQRCode;

type
  TfrmQR = class(TForm)
    pgeInput: TPageControl;
    pageText: TTabSheet;
    pageSMS: TTabSheet;
    pgeContat: TTabSheet;
    pgeEmail: TTabSheet;
    edtText: TEdit;
    edtSMS: TEdit;
    edtContact: TEdit;
    edtEmail: TEdit;
    btnGenerateText: TButton;
    btnGenerateSms: TButton;
    btnGenerateContact: TButton;
    btnGenerateEmail: TButton;
    tabProperties: TTabControl;
    cmbEncoding: TComboBox;
    edtQuietZone: TEdit;
    tabQR: TTabControl;
    PaintBox1: TPaintBox;
    btnSave: TButton;
    te: TLabel;
    lblPreview: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblText: TLabel;
    lblSMS: TLabel;
    lblContact: TLabel;
    lblEmail: TLabel;
    procedure pgeInputChange(Sender: TObject);
    procedure pageTextContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    procedure Update;
  end;

var
  frmQR: TfrmQR;

implementation

{$R *.dfm}

procedure TfrmQR.pgeInputChange(Sender: TObject);
begin
  Update;
end;

procedure TfrmQR.pageTextContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Update;

end;

end.
