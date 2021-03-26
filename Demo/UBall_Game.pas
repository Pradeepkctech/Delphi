unit UBall_Game;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmBallGame = class(TForm)
    BtnUp: TButton;
    BtnDown: TButton;
    BitBtnClose: TBitBtn;
    ShpCircle: TShape;
    LblInstruction: TLabel;
    procedure BtnUpClick(Sender: TObject);
    procedure BtnDownClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBallGame: TFrmBallGame;

implementation

{$R *.dfm}

procedure TFrmBallGame.BtnDownClick(Sender: TObject);
begin
      ShpCircle.Top:=200;
      BtnUp.Enabled:=true;
      BtnDown.Enabled:=false;
end;

procedure TFrmBallGame.BtnUpClick(Sender: TObject);
begin
  ShpCircle.Top := 20;
  BtnUp.Enabled := false;
  BtnDown.Enabled:=true;

end;

end.
