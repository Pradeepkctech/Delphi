object frmREST: TfrmREST
  Left = 0
  Top = 0
  Caption = 'frmREST'
  ClientHeight = 343
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 343
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 575
    ExplicitHeight = 460
    object pnlAuthenticate: TPanel
      Left = 1
      Top = 1
      Width = 597
      Height = 96
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 106
      ExplicitTop = 8
      ExplicitWidth = 335
      DesignSize = (
        597
        96)
      object btnGet: TButton
        Left = 241
        Top = 71
        Width = 97
        Height = 25
        Anchors = []
        Caption = 'Get'
        TabOrder = 0
        OnClick = btnGetClick
        ExplicitLeft = 263
      end
      object mmoToken: TMemo
        Left = 1
        Top = 24
        Width = 592
        Height = 41
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        ExplicitWidth = 572
      end
    end
    object pnlDropDown: TPanel
      Left = 1
      Top = 97
      Width = 597
      Height = 245
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 16
      ExplicitTop = 200
      ExplicitWidth = 577
      ExplicitHeight = 193
      DesignSize = (
        597
        245)
      object cmbState: TComboBox
        Left = 225
        Top = 44
        Width = 145
        Height = 21
        Anchors = [akTop]
        TabOrder = 0
        Text = 'select State'
        OnChange = cmbStateChange
        OnSelect = cmbStateSelect
        ExplicitLeft = 222
      end
      object cmbCity: TComboBox
        Left = 420
        Top = 44
        Width = 145
        Height = 21
        Anchors = [akTop]
        TabOrder = 1
        Text = 'Select City'
        ExplicitLeft = 550
      end
      object cmbCountry: TComboBox
        Left = 23
        Top = 44
        Width = 152
        Height = 21
        Anchors = [akTop]
        TabOrder = 2
        Text = 'Select Country'
        OnSelect = cmbCountrySelect
        ExplicitLeft = 48
      end
      object mmoShow: TMemo
        Left = 56
        Top = 120
        Width = 465
        Height = 58
        Lines.Strings = (
          '')
        TabOrder = 3
      end
    end
  end
  object http: TclHttp
    UserAgent = 'Mozilla/4.0 (compatible; Clever Internet Suite)'
    Left = 352
    Top = 336
  end
  object httpReq: TclHttpRequest
    Header.Accept = '*/*'
    Left = 280
    Top = 304
  end
end
