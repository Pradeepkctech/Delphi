object frmREST: TfrmREST
  Left = 0
  Top = 0
  Caption = 'REST API'
  ClientHeight = 345
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 599
    Height = 335
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitHeight = 343
    object pnlAuthenticate: TPanel
      Left = 1
      Top = 1
      Width = 597
      Height = 120
      Align = alTop
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 569
      DesignSize = (
        597
        120)
      object lblTitle: TLabel
        Left = 123
        Top = 5
        Width = 341
        Height = 20
        Anchors = [akTop]
        Caption = 'Country State City Dropdown API'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Perpetua Titling MT'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 114
      end
      object lblToken: TLabel
        Left = 8
        Top = 32
        Width = 183
        Height = 18
        Caption = 'Access Token to Get API Calls'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnGet: TButton
        Left = 241
        Top = 92
        Width = 97
        Height = 25
        Anchors = []
        Caption = 'Get'
        TabOrder = 0
        OnClick = btnGetClick
        ExplicitTop = 71
      end
      object mmoToken: TMemo
        Left = 0
        Top = 51
        Width = 592
        Height = 41
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
    end
    object pnlDropDown: TPanel
      Left = 1
      Top = 121
      Width = 597
      Height = 213
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 105
      ExplicitWidth = 579
      ExplicitHeight = 206
      DesignSize = (
        597
        213)
      object lblCountry: TLabel
        Left = 24
        Top = 153
        Width = 151
        Height = 15
        Anchors = [akTop]
        Caption = 'Country  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Perpetua Titling MT'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 19
      end
      object lblState: TLabel
        Left = 226
        Top = 153
        Width = 144
        Height = 15
        Anchors = [akTop]
        Caption = 'State  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Perpetua Titling MT'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 212
      end
      object lblCity: TLabel
        Left = 421
        Top = 153
        Width = 144
        Height = 15
        Anchors = [akTop]
        Caption = 'City  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Perpetua Titling MT'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 398
      end
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
      end
      object cmbCity: TComboBox
        Left = 420
        Top = 44
        Width = 145
        Height = 21
        Anchors = [akTop]
        TabOrder = 1
        Text = 'Select City'
        OnClick = cmbCityClick
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
      end
    end
  end
  object http: TclHttp
    UserAgent = 'Mozilla/4.0 (compatible; Clever Internet Suite)'
    Left = 360
    Top = 288
  end
  object httpReq: TclHttpRequest
    Header.Accept = '*/*'
    Left = 296
    Top = 296
  end
end
