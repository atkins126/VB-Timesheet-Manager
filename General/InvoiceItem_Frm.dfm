inherited InvoiceItemFrm: TInvoiceItemFrm
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'InvoiceItemFrm'
  ClientHeight = 327
  ClientWidth = 413
  ExplicitWidth = 419
  ExplicitHeight = 356
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 240
    Height = 286
    ExplicitWidth = 240
    ExplicitHeight = 286
    object lucInvoiceDate: TcxDateEdit [0]
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
      Height = 55
      Width = 218
    end
    object btnOK: TcxButton [2]
      Left = 73
      Top = 250
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton [3]
      Left = 154
      Top = 250
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
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
      Caption = 'Set date to first of current month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnSetDefaultDateClick
    end
    object memWarning: TcxMemo [6]
      Left = 11
      Top = 173
      Lines.Strings = (
        'Any selected items that have not '
        'been approved or that have already '
        'been invoiced will not be affected by '
        'this action!')
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Height = 71
      Width = 218
    end
    object lblWarning: TcxLabel [7]
      Left = 83
      Top = 153
      Caption = 'WARNING!'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styWarning
      Style.TransparentBorder = False
      Transparent = True
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 4
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
    object litDescription: TdxLayoutItem
      Parent = layMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = memDescription
      ControlOptions.OriginalHeight = 59
      ControlOptions.OriginalWidth = 220
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
      Index = 6
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
      Visible = False
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnSetDefaultDate
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 165
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litWarningLabel: TdxLayoutItem
      Parent = layMainGroup_Root
      AlignHorz = ahCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblWarning
      ControlOptions.OriginalHeight = 14
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litWarning: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Visible = False
      Control = memWarning
      ControlOptions.OriginalHeight = 71
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 5
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
