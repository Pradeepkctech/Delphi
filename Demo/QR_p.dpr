program QR_p;

uses
  Vcl.Forms,
  DelphiZXIngQRCode in 'DelphiZXIngQRCode.pas',
  Uqr in 'Uqr.pas' {frmQR},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cyan Dusk');
  Application.CreateForm(TfrmQR, frmQR);
  Application.Run;
end.
