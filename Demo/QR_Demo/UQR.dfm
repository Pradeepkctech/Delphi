object frmQRGen: TfrmQRGen
  AlignWithMargins = True
  Left = 0
  Top = 0
  Anchors = []
  Caption = 'KC Tech'#39's QR Generator'
  ClientHeight = 617
  ClientWidth = 891
  Color = clBtnFace
  Constraints.MinHeight = 320
  Constraints.MinWidth = 550
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 3
  Padding.Top = 3
  Padding.Right = 3
  Padding.Bottom = 3
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    891
    617)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    AlignWithMargins = True
    Left = 24
    Top = 24
    Width = 841
    Height = 569
    Margins.Right = 0
    Anchors = [akLeft, akTop, akRight, akBottom]
    UseDockManager = False
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 0
    DesignSize = (
      841
      569)
    object lblKCTech: TLabel
      Left = 273
      Top = 8
      Width = 276
      Height = 21
      Caption = 'KC Techs'#39's QR Generator'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Copperplate Gothic Bold'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object pgcInput: TPageControl
      AlignWithMargins = True
      Left = 26
      Top = 78
      Width = 338
      Height = 239
      ActivePage = tabText
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object tabText: TTabSheet
        Caption = 'Text'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
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
        object edtContact: TEdit
          Left = 16
          Top = 25
          Width = 265
          Height = 26
          Color = clInfoBk
          TabOrder = 0
          OnKeyPress = edtContactKeyPress
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
          TabStop = False
          Color = clInfoBk
          TabOrder = 1
          StyleElements = [seBorder]
        end
      end
      object tabSMS: TTabSheet
        Caption = 'SMS'
        ImageIndex = 3
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
    object pnlPreview: TPanel
      AlignWithMargins = True
      Left = 418
      Top = 77
      Width = 399
      Height = 467
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clWhite
      UseDockManager = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        399
        467)
      object lblPreview: TLabel
        Left = 163
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
        ExplicitLeft = 133
      end
      object pnlQR: TPanel
        Left = 0
        Top = 128
        Width = 401
        Height = 345
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          401
          345)
        object PaintBox1: TPaintBox
          AlignWithMargins = True
          Left = 32
          Top = 22
          Width = 337
          Height = 266
          Margins.Left = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alCustom
          Color = clInfoBk
          ParentColor = False
          OnPaint = PaintBox1Paint
          ExplicitTop = 19
        end
        object btnSave: TButton
          Left = 162
          Top = 306
          Width = 77
          Height = 28
          Anchors = []
          Caption = 'Save'
          TabOrder = 0
          OnClick = btnSaveClick
        end
      end
    end
    object pnlProperties: TPanel
      AlignWithMargins = True
      Left = 27
      Top = 326
      Width = 337
      Height = 218
      Color = clWhite
      UseDockManager = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
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
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 768
    Top = 552
  end
end
