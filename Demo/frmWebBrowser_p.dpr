program frmWebBrowser_p;

uses
  Vcl.Forms,
  UWebBrowser in 'UWebBrowser.pas' {FrmWebBrowser};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmWebBrowser, FrmWebBrowser);
  Application.Run;
end.
