object frmQRGen: TfrmQRGen
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = 'QR Generator'
  ClientHeight = 604
  ClientWidth = 819
  Color = clBtnFace
  Constraints.MinHeight = 320
  Constraints.MinWidth = 550
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    819
    604)
  PixelsPerInch = 96
  TextHeight = 13
  object lblKCTech: TLabel
    Left = 251
    Top = 8
    Width = 276
    Height = 21
    Anchors = []
    Caption = 'KC Techs'#39's QR Generator'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Copperplate Gothic Bold'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object pnlQR: TPanel
    AlignWithMargins = True
    Left = 408
    Top = 52
    Width = 337
    Height = 484
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = cl3DLight
    UseDockManager = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      337
      484)
    object PaintBox1: TPaintBox
      AlignWithMargins = True
      Left = 23
      Top = 72
      Width = 287
      Height = 271
      Margins.Left = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clInfoBk
      ParentColor = False
      OnPaint = PaintBox1Paint
    end
    object lblPreview: TLabel
      Left = 133
      Top = 8
      Width = 61
      Height = 22
      Anchors = []
      Caption = 'Preview'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lblPreviewClick
    end
    object btnSave: TButton
      Left = 134
      Top = 411
      Width = 77
      Height = 28
      Anchors = []
      Caption = 'Save'
      TabOrder = 0
      OnClick = btnSaveClick
    end
  end
  object pnlProperties: TPanel
    AlignWithMargins = True
    Left = 47
    Top = 316
    Width = 338
    Height = 218
    Color = clWhite
    UseDockManager = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    Padding.Top = 200
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object lblEncoding: TLabel
      Left = 28
      Top = 32
      Width = 58
      Height = 18
      Caption = 'Encoding'
    end
    object lblQuietZone: TLabel
      Left = 196
      Top = 36
      Width = 67
      Height = 18
      Caption = 'Quiet zone'
    end
    object edtQuietZone: TEdit
      Left = 196
      Top = 55
      Width = 89
      Height = 26
      Color = clInfoBk
      TabOrder = 0
      Text = '4'
      OnChange = edtQuietZoneChange
    end
    object cmbEncoding: TComboBox
      Left = 28
      Top = 52
      Width = 133
      Height = 26
      Style = csDropDownList
      Color = clInfoBk
      ItemIndex = 0
      TabOrder = 1
      Text = 'Auto'
      OnChange = cmbEncodingChange
      Items.Strings = (
        'Auto'
        'Numeric'
        'Alphanumeric'
        'ISO-8859-1'
        'UTF-8 without BOM'
        'UTF-8 with BOM')
    end
  end
  object pgcInput: TPageControl
    AlignWithMargins = True
    Left = 47
    Top = 52
    Width = 338
    Height = 239
    ActivePage = tabText
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object tabText: TTabSheet
      Caption = 'Text'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object edtText: TEdit
        Left = 16
        Top = 24
        Width = 265
        Height = 26
        Color = clInfoBk
        TabOrder = 0
        Text = 'Enter Your Text Here'
      end
      object btnTextGenerate: TButton
        Left = 104
        Top = 67
        Width = 75
        Height = 25
        Caption = 'Generate'
        TabOrder = 1
        OnClick = btnTextGenerateClick
      end
    end
    object tabPhone: TTabSheet
      Caption = 'Phone'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object edtContact: TEdit
        Left = 16
        Top = 24
        Width = 265
        Height = 26
        Color = clInfoBk
        TabOrder = 0
      end
      object btnGeneratePhone: TButton
        Left = 104
        Top = 67
        Width = 75
        Height = 25
        Caption = 'Generate'
        TabOrder = 1
        OnClick = btnGeneratePhoneClick
      end
    end
    object tabEmail: TTabSheet
      AlignWithMargins = True
      Caption = 'Email'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object btnGenerateEmail: TButton
        Left = 104
        Top = 67
        Width = 75
        Height = 25
        Caption = 'Generate'
        TabOrder = 0
        OnClick = btnGenerateEmailClick
      end
      object edtEmail: TEdit
        Left = 16
        Top = 24
        Width = 261
        Height = 26
        Color = clInfoBk
        TabOrder = 1
      end
    end
    object tabSMS: TTabSheet
      Caption = 'SMS'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object edtSMS: TEdit
        Left = 16
        Top = 24
        Width = 265
        Height = 26
        Color = clInfoBk
        TabOrder = 0
      end
      object btnGenerateSMS: TButton
        Left = 104
        Top = 67
        Width = 75
        Height = 25
        Caption = 'Generate'
        TabOrder = 1
      end
    end
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 480
    Top = 432
  end
end
