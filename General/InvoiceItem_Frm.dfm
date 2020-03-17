inherited InvoiceItemFrm: TInvoiceItemFrm
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'InvoiceItemFrm'
  ClientHeight = 429
  ClientWidth = 816
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 240
    Height = 251
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 240
    ExplicitHeight = 251
    object dteInvoiceDate: TcxDateEdit [0]
      Left = 90
      Top = 36
      Properties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditFormat = 'dd/MM/yyyy'
      Properties.ImmediatePost = True
      Properties.PostPopupValueOnTab = True
      Properties.SaveTime = False
      Properties.ShowOnlyValidDates = True
      Properties.ShowTime = False
      Properties.OnEditValueChanged = dteInvoiceDatePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 139
    end
    object memDescription: TcxMemo [1]
      Left = 11
      Top = 92
      Lines.Strings = (
        'Please select the date to use for '
        'invoicing the selected timesheet '
        'items.')
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 117
      Width = 218
    end
    object btnOK: TcxButton [2]
      Left = 73
      Top = 215
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton [3]
      Left = 154
      Top = 215
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object edtInvoicNo: TcxCurrencyEdit [4]
      Left = 90
      Top = 11
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '####0'
      Properties.EditFormat = '####0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseThousandSeparator = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 139
    end
    object btnSetDefaultDate: TcxButton [5]
      Left = 11
      Top = 61
      Width = 218
      Height = 25
      Caption = 'Set date to first of month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnSetDefaultDateClick
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 2
    end
    object litInvoiceDate: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Invoice Date'
      Control = dteInvoiceDate
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litDescription: TdxLayoutItem
      Parent = layMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = memDescription
      ControlOptions.OriginalHeight = 86
      ControlOptions.OriginalWidth = 291
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grpButtons: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
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
      Control = edtInvoicNo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 140
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
    PixelsPerInch = 96
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
  end
  inherited img32: TcxImageList
    FormatVersion = 1
  end
end
