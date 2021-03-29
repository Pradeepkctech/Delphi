program frmNotePad_p;

uses
  Vcl.Forms,
  UNotePad in 'UNotePad.pas' {FrmNotePad},
  OKCANCL2 in 'c:\program files (x86)\embarcadero\studio\20.0\ObjRepos\EN\DelphiWin32\OKCANCL2.PAS' {OKRightDlg},
  frmAbout in 'frmAbout.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmNotePad, FrmNotePad);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
