object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 377
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    Left = 0
    Top = 0
    Width = 706
    Height = 377
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -8
    object lblCountry: TLabel
      Left = 226
      Top = 28
      Width = 39
      Height = 13
      Caption = 'Country'
    end
    object lblState: TLabel
      Left = 385
      Top = 28
      Width = 26
      Height = 13
      Caption = 'State'
    end
    object lblCity: TLabel
      Left = 536
      Top = 28
      Width = 19
      Height = 13
      Caption = 'City'
    end
    object lblToken: TLabel
      Left = 72
      Top = 28
      Width = 65
      Height = 13
      Caption = 'Access Token'
    end
    object Memo1: TMemo
      Left = 17
      Top = 47
      Width = 185
      Height = 89
      TabOrder = 0
    end
    object Memo2: TMemo
      Left = 17
      Top = 253
      Width = 185
      Height = 89
      Lines.Strings = (
        '')
      TabOrder = 1
    end
    object cmbCity: TComboBox
      Left = 536
      Top = 47
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object cmbState: TComboBox
      Left = 385
      Top = 47
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object cmbCountry: TComboBox
      Left = 226
      Top = 47
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object btnValidate: TButton
      Left = 72
      Top = 215
      Width = 75
      Height = 25
      Caption = 'Validate'
      TabOrder = 5
      OnClick = btnValidateClick
    end
    object btnGenerate: TButton
      Left = 72
      Top = 142
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 6
      OnClick = btnGenerateClick
    end
    object Edit1: TEdit
      Left = 17
      Top = 188
      Width = 208
      Height = 21
      TabOrder = 7
    end
  end
  object clHttp1: TclHttp
    UserAgent = 'Mozilla/4.0 (compatible; Clever Internet Suite)'
    Left = 256
    Top = 184
  end
  object clOAuth1: TclOAuth
    UserAgent = 'CleverComponents OAUTH 2.0'
    EnterCodeFormCaption = 'Enter Authorization Code'
    SuccessHtmlResponse = 
      '<html><body><h3 style="color:green;margin:30px">OAuth Authorizat' +
      'ion Successful!</h3></body></html>'
    FailedHtmlResponse = 
      '<html><body><h3 style="color:red;margin:30px">OAuth Authorizatio' +
      'n Failed!</h3></body></html>'
    TokenEndPoint = tpUseGet
    Left = 256
    Top = 136
  end
  object clHttpRequest1: TclHttpRequest
    Header.Accept = '*/*'
    Left = 256
    Top = 232
  end
end
