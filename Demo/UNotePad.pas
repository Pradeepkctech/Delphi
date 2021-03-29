unit UNotePad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus,
  Web.HTTPApp, ShellApi;

type
  TFrmNotePad = class(TForm)
    RichEdit: TRichEdit;
    MainMenu: TMainMenu;
    mnuFile: TMenuItem;
    mnuEdit: TMenuItem;
    mnuAbout: TMenuItem;
    mnuSupport: TMenuItem;
    fleOpen: TMenuItem;
    fleSave: TMenuItem;
    N1: TMenuItem;
    fleClear: TMenuItem;
    fleExit: TMenuItem;
    edtCut: TMenuItem;
    edtCopy: TMenuItem;
    edtPaste: TMenuItem;
    N2: TMenuItem;
    edtFont: TMenuItem;
    edtColour: TMenuItem;
    dlgOpen: TOpenDialog;
    dlgSave: TSaveDialog;
    dlgFont: TFontDialog;
    dlgColour: TColorDialog;
    sprtHelp: TMenuItem;
    sprtContact: TMenuItem;
    procedure FleOpenClick(Sender: TObject);
    procedure FleSaveClick(Sender: TObject);
    procedure fleClearClick(Sender: TObject);
    procedure fleExitClick(Sender: TObject);
    procedure edtCutClick(Sender: TObject);
    procedure edtCopyClick(Sender: TObject);
    procedure edtPasteClick(Sender: TObject);
    procedure mnuAboutClick(Sender: TObject);
    procedure edtColourClick(Sender: TObject);
    procedure edtFontClick(Sender: TObject);
    procedure sprtHelpClick(Sender: TObject);
    procedure sprtContactClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNotePad: TFrmNotePad;

implementation

{$R *.dfm}

procedure TFrmNotePad.edtColourClick(Sender: TObject);
begin
  if dlgColour.Execute then
    RichEdit.Color := dlgColour.Color;

end;

procedure TFrmNotePad.edtCopyClick(Sender: TObject);
begin
  RichEdit.CopyToClipboard;
end;

procedure TFrmNotePad.edtCutClick(Sender: TObject);
begin
  RichEdit.CutToClipboard;

end;

procedure TFrmNotePad.edtFontClick(Sender: TObject);
begin
  if dlgFont.Execute then
  begin
    RichEdit.SelAttributes.Color := dlgFont.Font.Color;
    RichEdit.SelAttributes.Style := dlgFont.Font.Style;
    RichEdit.SelAttributes.Size := dlgFont.Font.Size;
    RichEdit.SelAttributes.Name := dlgFont.Font.Name;


  end;

end;

procedure TFrmNotePad.edtPasteClick(Sender: TObject);
begin
  RichEdit.PasteFromClipboard;
end;

procedure TFrmNotePad.fleClearClick(Sender: TObject);
begin
  RichEdit.Clear;
end;

procedure TFrmNotePad.fleExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNotePad.FleOpenClick(Sender: TObject);
begin
  if dlgOpen.Execute then
    RichEdit.Lines.LoadFromFile(dlgOpen.FileName);

end;

procedure TFrmNotePad.FleSaveClick(Sender: TObject);
begin
  if dlgSave.Execute then
    RichEdit.Lines.SaveToFile(dlgSave.FileName);

end;

procedure TFrmNotePad.FormCreate(Sender: TObject);
begin
RichEdit.Clear;
end;

procedure TFrmNotePad.mnuAboutClick(Sender: TObject);
begin


//  ShowMessage
//    ('This is Demo Note Pad App and it was created by Pradeep by using Delphi');
end;



procedure TFrmNotePad.sprtContactClick(Sender: TObject);
var
  URL: string;
begin
  URL := 'http://www.kctechservices.com/kc-tech-services/contact/index.html';

  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);

end;

procedure TFrmNotePad.sprtHelpClick(Sender: TObject);
var
  URL: string;
begin
  URL := 'https://stackoverflow.com/questions/10154543/opening-webpage-in-default-browser-with-double-quotes-inside-url';
 //RL := StringReplace(URL, '"', '%22', [rfReplaceAll]);
  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
end;

end.
