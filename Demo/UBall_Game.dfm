object FrmBallGame: TFrmBallGame
  Left = 0
  Top = 0
  Caption = 'Ball_Game'
  ClientHeight = 291
  ClientWidth = 334
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 18
  object ShpCircle: TShape
    Left = 160
    Top = 200
    Width = 40
    Height = 40
    Brush.Color = clRed
    Shape = stEllipse
  end
  object LblInstruction: TLabel
    Left = 11
    Top = 8
    Width = 84
    Height = 18
    Caption = 'Click a Button'
  end
  object BtnUp: TButton
    Left = 8
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Up'
    TabOrder = 0
    OnClick = BtnUpClick
  end
  object BtnDown: TButton
    Left = 8
    Top = 63
    Width = 75
    Height = 25
    Caption = 'Down'
    Enabled = False
    TabOrder = 1
    OnClick = BtnDownClick
  end
  object BitBtnClose: TBitBtn
    Left = 8
    Top = 230
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
  end
end
