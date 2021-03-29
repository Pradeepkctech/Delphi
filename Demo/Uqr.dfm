object frmQR: TfrmQR
  Left = 0
  Top = 0
  Caption = 'frmQR'
  ClientHeight = 599
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object te: TLabel
    Left = 252
    Top = 16
    Width = 329
    Height = 31
    ParentCustomHint = False
    BiDiMode = bdLeftToRight
    Caption = 'KC Tech'#39's QR Generator'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -29
    Font.Name = 'Colonna MT'
    Font.Style = [fsBold, fsItalic]
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    Transparent = False
  end
  object lblPreview: TLabel
    Left = 512
    Top = 96
    Width = 38
    Height = 13
    Caption = 'Preview'
  end
  object pgeInput: TPageControl
    Left = 68
    Top = 64
    Width = 293
    Height = 233
    ParentCustomHint = False
    ActivePage = pageText
    BiDiMode = bdLeftToRight
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnChange = pgeInputChange
    object pageText: TTabSheet
      Caption = 'Text'
      OnContextPopup = pageTextContextPopup
      ExplicitLeft = 0
      ExplicitWidth = 277
      object lblText: TLabel
        Left = 3
        Top = 21
        Width = 22
        Height = 13
        Caption = 'Text'
      end
      object edtText: TEdit
        Left = 3
        Top = 40
        Width = 270
        Height = 21
        Color = clInfoBk
        TabOrder = 0
        Text = 'Enter a Text'
      end
      object btnGenerateText: TButton
        Left = 104
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Generate'
        TabOrder = 1
      end
    end
    object pageSMS: TTabSheet
      Caption = 'SMS'
      ImageIndex = 1
      ExplicitWidth = 261
      object lblSMS: TLabel
        Left = 3
        Top = 21
        Width = 23
        Height = 13
        Caption = ' SMS'
      end
      object edtSMS: TEdit
        Left = 3
        Top = 40
        Width = 270
        Height = 21
        TabOrder = 0
        Text = 'Type the SMS'
      end
      object btnGenerateSms: TButton
        Left = 104
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Generate'
        TabOrder = 1
      end
    end
    object pgeContat: TTabSheet
      Caption = 'Contact'
      ImageIndex = 2
      ExplicitWidth = 245
      ExplicitHeight = 201
      object lblContact: TLabel
        Left = 0
        Top = 21
        Width = 38
        Height = 13
        Caption = 'Contact'
      end
      object edtContact: TEdit
        Left = 0
        Top = 40
        Width = 273
        Height = 21
        TabOrder = 0
        Text = 'Enter Contact Details'
      end
      object btnGenerateContact: TButton
        Left = 104
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Generate'
        TabOrder = 1
      end
    end
    object pgeEmail: TTabSheet
      Caption = 'Email'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitWidth = 257
      object lblEmail: TLabel
        Left = 3
        Top = 21
        Width = 30
        Height = 13
        Caption = ' Email '
      end
      object edtEmail: TEdit
        Left = 0
        Top = 40
        Width = 273
        Height = 21
        TabOrder = 0
        Text = 'enter a email'
      end
      object btnGenerateEmail: TButton
        Left = 104
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Generate'
        TabOrder = 1
      end
    end
  end
  object tabProperties: TTabControl
    Left = 68
    Top = 328
    Width = 293
    Height = 193
    TabOrder = 1
    object Label3: TLabel
      Left = 19
      Top = 16
      Width = 70
      Height = 13
      Caption = 'Encoding Type'
    end
    object Label4: TLabel
      Left = 184
      Top = 16
      Width = 19
      Height = 13
      Caption = 'Size'
    end
    object cmbEncoding: TComboBox
      Left = 16
      Top = 48
      Width = 145
      Height = 21
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Color = clInfoBk
      Ctl3D = True
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object edtQuietZone: TEdit
      Left = 184
      Top = 43
      Width = 74
      Height = 25
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Ctl3D = True
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = True
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
  end
  object tabQR: TTabControl
    Left = 392
    Top = 144
    Width = 305
    Height = 377
    TabOrder = 2
    object PaintBox1: TPaintBox
      Left = 48
      Top = 128
      Width = 209
      Height = 193
    end
    object btnSave: TButton
      Left = 120
      Top = 336
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
    end
  end
end
