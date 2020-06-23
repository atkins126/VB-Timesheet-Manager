inherited InvoiceItemFrm: TInvoiceItemFrm
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'InvoiceItemFrm'
  ClientHeight = 327
  ClientWidth = 413
  Constraints.MinHeight = 130
  Constraints.MinWidth = 200
  ExplicitWidth = 419
  ExplicitHeight = 356
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 240
    Height = 130
    ExplicitWidth = 240
    ExplicitHeight = 130
    object lucInvoiceDate: TcxDateEdit [0]
      Left = 90
      Top = 36
      Properties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditFormat = 'dd/MM/yyyy'
      Properties.ImmediatePost = True
      Properties.PostPopupValueOnTab = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = dteInvoiceDatePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 139
    end
    object btnOK: TcxButton [1]
      Left = 73
      Top = 92
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton [2]
      Left = 154
      Top = 92
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object btnSetDefaultDate: TcxButton [3]
      Left = 11
      Top = 61
      Width = 218
      Height = 25
      Caption = 'Set date to first of current month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnSetDefaultDateClick
    end
    object spnInvoiceNo: TcxSpinEdit [4]
      Left = 90
      Top = 11
      Properties.DisplayFormat = '#0'
      Properties.EditFormat = '#0'
      Properties.ImmediatePost = True
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 139
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 3
    end
    object litInvoiceDate: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Invoice Date'
      Control = lucInvoiceDate
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpButtons: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object litOK: TdxLayoutItem
      Parent = grpButtons
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCancel: TdxLayoutItem
      Parent = grpButtons
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litInvoiceNo: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Invoice No'
      Control = spnInvoiceNo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 139
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litSetSessionDate: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnSetDefaultDate
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 165
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited styRepository: TcxStyleRepository
    Left = 315
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Left = 260
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    Left = 325
    Top = 130
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
    DesignInfo = 4260100
  end
  inherited img32: TcxImageList
    FormatVersion = 1
    DesignInfo = 4260145
  end
  object styWarning: TcxEditStyleController
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clRed
    Style.Font.Height = -12
    Style.Font.Name = 'Verdana'
    Style.Font.Style = [fsBold]
    Style.TextColor = clRed
    Style.IsFontAssigned = True
    Left = 260
    Top = 130
    PixelsPerInch = 96
  end
end
