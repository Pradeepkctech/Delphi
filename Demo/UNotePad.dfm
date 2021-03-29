object FrmNotePad: TFrmNotePad
  Left = 0
  Top = 0
  Caption = 'Note Pad'
  ClientHeight = 465
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit: TRichEdit
    Left = 0
    Top = 0
    Width = 635
    Height = 465
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    HideScrollBars = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    Zoom = 100
    ExplicitLeft = 8
    ExplicitTop = -8
    ExplicitHeight = 319
  end
  object MainMenu: TMainMenu
    Left = 392
    object mnuFile: TMenuItem
      Caption = 'File'
      Hint = 'File menu'
      object fleOpen: TMenuItem
        Caption = 'Open'
        ShortCut = 16463
        OnClick = FleOpenClick
      end
      object fleSave: TMenuItem
        Caption = 'Save'
        ShortCut = 16467
        OnClick = FleSaveClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object fleClear: TMenuItem
        Caption = 'Clear'
        ShortCut = 16430
        OnClick = fleClearClick
      end
      object fleExit: TMenuItem
        Caption = 'Exit'
        ShortCut = 16465
        OnClick = fleExitClick
      end
    end
    object mnuEdit: TMenuItem
      Caption = 'Edit'
      object edtCut: TMenuItem
        Caption = 'Cut'
        ShortCut = 16472
        OnClick = edtCutClick
      end
      object edtCopy: TMenuItem
        Caption = 'Copy'
        ShortCut = 16451
        OnClick = edtCopyClick
      end
      object edtPaste: TMenuItem
        Caption = 'Paste'
        ShortCut = 16470
        OnClick = edtPasteClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object edtFont: TMenuItem
        Caption = 'Font'
        ShortCut = 49222
        OnClick = edtFontClick
      end
      object edtColour: TMenuItem
        Caption = 'Colour'
        ShortCut = 49219
        OnClick = edtColourClick
      end
    end
    object mnuAbout: TMenuItem
      Caption = 'About'
      OnClick = mnuAboutClick
    end
    object mnuSupport: TMenuItem
      Caption = 'Support'
      object sprtHelp: TMenuItem
        Caption = 'Help'
        ShortCut = 112
        OnClick = sprtHelpClick
      end
      object sprtContact: TMenuItem
        Caption = 'Contact'
        OnClick = sprtContactClick
      end
    end
  end
  object dlgOpen: TOpenDialog
    Left = 392
    Top = 48
  end
  object dlgSave: TSaveDialog
    Left = 392
    Top = 128
  end
  object dlgFont: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 472
    Top = 64
  end
  object dlgColour: TColorDialog
    Left = 472
    Top = 128
  end
end
