program Rest_p;

uses
  Vcl.Forms,
  UREST in 'UREST.pas' {frmREST},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TfrmREST, frmREST);
  Application.Run;
end.
