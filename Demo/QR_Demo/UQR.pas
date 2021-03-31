unit UQR;

// Demo app for ZXing QRCode port to Delphi, by Debenu Pty Ltd (www.debenu.com)
// Need a PDF SDK? Checkout Debenu Quick PDF Library: http://www.debenu.com/products/development/debenu-pdf-library/

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DelphiZXingQRCode, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ExtDlgs, Vcl.ComCtrls;

type
  TfrmQRGen = class(TForm)
    cmbEncoding: TComboBox;
    lblEncoding: TLabel;
    edtQuietZone: TEdit;
    lblPreview: TLabel;
    PaintBox1: TPaintBox;
    btnSave: TButton;
    pnlPreview: TPanel;
    pnlProperties: TPanel;
    pgcInput: TPageControl;
    tabText: TTabSheet;
    edtText: TEdit;
    btnTextGenerate: TButton;
    tabPhone: TTabSheet;
    edtContact: TEdit;
    btnGeneratePhone: TButton;
    tabEmail: TTabSheet;
    btnGenerateEmail: TButton;
    edtEmail: TEdit;
    tabSMS: TTabSheet;
    edtSMS: TEdit;
    lblQuietZone: TLabel;
    btnGenerateSMS: TButton;
    SavePictureDialog1: TSavePictureDialog;
    lblKCTech: TLabel;
    pnlMaster: TPanel;
    pnlQR: TPanel;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure edtTextChange(Sender: TObject);
    procedure cmbEncodingChange(Sender: TObject);
    procedure edtQuietZoneChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);

    procedure btnTextGenerateClick(Sender: TObject);
    procedure btnGeneratePhoneClick(Sender: TObject);
    procedure btnGenerateEmailClick(Sender: TObject);
    procedure edtContactKeyPress(Sender: TObject; var Key: Char);
    function IsValidEmail(const Value: string): boolean;
        //  procedure FormShow(Sender: TObject);




  private
    QRCodeBitmap: TBitmap;
  public
   // procedure Update;
  end;

var
  frmQRGen: TfrmQRGen;

implementation

{$R *.dfm}
 //For Validating Email Address
function TfrmQRGEN.IsValidEmail(const Value: string): boolean;
  function CheckAllowed(const s: string): boolean;
  var
    i: integer;
  begin
    Result:= False;
    for i:= 1 to Length(s) do
    begin
      // illegal char - no valid address
      if not (s[i] in ['a'..'z','A'..'Z','0'..'9','_','-','.','+']) then
        Exit;
    end;
    Result:= True;
  end;
var
  i: integer;
  namePart, serverPart: string;
begin
  Result:= False;

  i:= Pos('@', Value);
  if (i = 0) then
    Exit;

  if(pos('..', Value) > 0) or (pos('@@', Value) > 0) or (pos('.@', Value) > 0)then
    Exit;

  if(pos('.', Value) = 1) or (pos('@', Value) = 1) then
    Exit;

  namePart:= Copy(Value, 1, i - 1);
  serverPart:= Copy(Value, i + 1, Length(Value));
  if (Length(namePart) = 0)  or (Length(serverPart) < 5)    then
    Exit;                      // too short

  i:= Pos('.', serverPart);
  // must have dot and at least 3 places from end
  if (i=0) or (i>(Length(serverPart)-2)) then
    Exit;

  Result:= CheckAllowed(namePart) and CheckAllowed(serverPart);
end;

procedure TfrmQRGen.cmbEncodingChange(Sender: TObject);
begin
  Update;
end;



procedure TfrmQRGen.edtQuietZoneChange(Sender: TObject);
begin
  Update;
end;

procedure TfrmQRGen.edtTextChange(Sender: TObject);
begin
  Update;
end;

   // For Block Typing alphabetes in a Phone tab

procedure TfrmQRGen.edtContactKeyPress(Sender: TObject; var Key: Char);
begin
        if NOT(key in['0'..'9','+',#8])

        then
         key := #0;

end;

//To Generate OR for @Phone
procedure TfrmQRGen.btnGeneratePhoneClick(Sender: TObject);
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := edtContact.Text;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end
        else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
   FreeAndNil(QRCode);
  end;
  PaintBox1.Repaint;

end;
     //To Generate OR for @Email
procedure TfrmQRGen.btnGenerateEmailClick(Sender: TObject);
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
  begin
  if IsValidEmail(edtEmail.Text) then
  begin

  cmbEncoding.Enabled:=true;
  QRCode := TDelphiZXingQRCode.Create;


  try
    QRCode.Data := edtEmail.Text;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end
        else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
   FreeAndNil(QRCode);
  end;
  PaintBox1.Repaint;
end
    else
    ShowMessage('InValid Email Address');
end;
   //To Generate OR for @Text
procedure TfrmQRGen.btnTextGenerateClick(Sender: TObject);
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  cmbEncoding.Enabled:=true;
  QRCode := TDelphiZXingQRCode.Create;
  try


    QRCode.Data := edtText.Text ;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end
        else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
  FreeAndNil(QRCode);
  end;
  PaintBox1.Repaint;
end;
  //To Save QR as Image
procedure TfrmQRGen.btnSaveClick(Sender: TObject);
begin
  if SavePictureDialog1.Execute then
   QRCodeBitmap.SaveToFile(SavePictureDialog1.FileName);
end;
procedure TfrmQRGen.FormCreate(Sender: TObject);
begin
  edtText.StyleElements := [seBorder];
  pnlProperties.StyleElements := [seBorder];
  pgcInput.StyleElements := [seBorder];
  lblPreview.StyleElements := [seBorder];
  PaintBox1.StyleElements := [seBorder];
  cmbEncoding.StyleElements := [seBorder];
  edtQuietZone.StyleElements := [seBorder];
  QRCodeBitmap := TBitmap.Create;
  pnlQR.StyleElements := [seBorder];
  pnlPreview.StyleElements := [seBorder];
  lblKCTech.StyleElements := [seBorder];
  lblQuietZone.StyleElements := [seBorder];
  lblEncoding.StyleElements := [seBorder];
  edtContact.StyleElements := [seBorder];
  edtEmail.StyleElements := [seBorder];
  edtSMS.StyleElements := [seBorder];
  pnlQR.Color:=$008CFF;
  //btnSave.Color:=




  Update;
end;

procedure TfrmQRGen.FormDestroy(Sender: TObject);
begin
 FreeAndNil(QRCodeBitmap);
end;

procedure TfrmQRGen.PaintBox1Paint(Sender: TObject);
var
  Scale: Double;
begin
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.FillRect(Rect(0, 0, PaintBox1.Width, PaintBox1.Height));
  if ((QRCodeBitmap.Width > 0) and (QRCodeBitmap.Height > 0)) then
  begin
    if (PaintBox1.Width < PaintBox1.Height) then
    begin
      Scale := PaintBox1.Width / QRCodeBitmap.Width;
    end
    else
    begin
      Scale := PaintBox1.Height / QRCodeBitmap.Height;
    end;
    PaintBox1.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width),
      Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
  end;
end;
     end.













