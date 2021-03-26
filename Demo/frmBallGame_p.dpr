program frmBallGame_p;

uses
  Vcl.Forms,
  UBall_Game in 'UBall_Game.pas' {FrmBallGame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmBallGame, FrmBallGame);
  Application.Run;
end.
