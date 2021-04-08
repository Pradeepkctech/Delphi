program Rest_p;

uses
  Vcl.Forms,
  UREST in 'UREST.pas' {frmREST};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmREST, frmREST);
  Application.Run;
end.
