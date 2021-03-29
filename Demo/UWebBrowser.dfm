object FrmWebBrowser: TFrmWebBrowser
  Left = 0
  Top = 0
  Caption = 'WebBrowser'
  ClientHeight = 516
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlBase: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 41
    Align = alTop
    Caption = 'PnlBase'
    TabOrder = 0
    ExplicitWidth = 635
    DesignSize = (
      622
      41)
    object TxtUrl: TEdit
      Left = 55
      Top = 10
      Width = 510
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      TabOrder = 0
      Text = 'www.google.com'
      ExplicitWidth = 523
    end
    object BtnBack: TButton
      Left = 16
      Top = 8
      Width = 33
      Height = 25
      Anchors = [akLeft]
      Caption = 'Back'
      TabOrder = 1
      OnClick = BtnBackClick
    end
    object BtnGo: TButton
      Left = 571
      Top = 8
      Width = 35
      Height = 25
      Anchors = [akRight]
      Caption = 'Go'
      TabOrder = 2
      OnClick = BtnGoClick
      ExplicitLeft = 584
    end
  end
  object WebBrowser: TWebBrowser
    Left = 0
    Top = 41
    Width = 622
    Height = 475
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 304
    ExplicitTop = 160
    ExplicitWidth = 300
    ExplicitHeight = 150
    ControlData = {
      4C00000049400000183100000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
