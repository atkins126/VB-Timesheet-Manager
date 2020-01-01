inherited InvoiceDateFrm: TInvoiceDateFrm
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'InvoiceDateFrm'
  ClientHeight = 429
  ClientWidth = 816
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 240
    Height = 170
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 240
    ExplicitHeight = 170
    object dteInvoiceDate: TcxDateEdit [0]
      Left = 90
      Top = 11
      Properties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditFormat = 'dd/MM/yyyy'
      Properties.ImmediatePost = True
      Properties.PostPopupValueOnTab = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 139
    end
    object memDescription: TcxMemo [1]
      Left = 11
      Top = 38
      Lines.Strings = (
        'Please select the date to use for '
        'invoicing the selected timesheet '
        'items.')
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 90
      Width = 218
    end
    object btnOK: TcxButton [2]
      Left = 73
      Top = 134
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object btnCancel: TcxButton [3]
      Left = 154
      Top = 134
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    object litInvoiceDate: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Invoice Date'
      Control = dteInvoiceDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
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
      Index = 1
    end
    object grpButtons: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
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
