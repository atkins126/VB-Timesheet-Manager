inherited TimesheetPrefrrencesFrm: TTimesheetPrefrrencesFrm
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'TimesheetPrefrrencesFrm'
  ClientHeight = 555
  ClientWidth = 938
  ExplicitWidth = 944
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = -2
    Top = -2
    Width = 800
    Height = 490
    LayoutLookAndFeel = lafCustomSkin
    ExplicitLeft = -2
    ExplicitTop = -2
    ExplicitWidth = 800
    ExplicitHeight = 490
    object cbxUseDefaultCustomer: TcxCheckBox [0]
      Left = 34
      Top = 79
      Caption = 'Use default customer'
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.OnEditValueChanged = cbxUseDefaultCustomerPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Transparent = True
    end
    object cbxUseDefaultPriceItem: TcxCheckBox [1]
      Left = 34
      Top = 106
      Caption = 'Use default price item'
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.OnEditValueChanged = cbxUseDefaultPriceItemPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
    end
    object cbxUseDefaultRate: TcxCheckBox [2]
      Left = 34
      Top = 133
      Caption = 'Use default rate'
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.OnEditValueChanged = cbxUseDefaultRatePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
    end
    object lucCustomer: TcxLookupComboBox [3]
      Left = 252
      Top = 79
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Width = 350
          FieldName = 'NAME'
        end
        item
          Width = 40
          FieldName = 'ACTIVE_STATUS'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = TSDM.dtsCustomerLookupPref
      Style.HotTrack = False
      TabOrder = 1
      Width = 511
    end
    object lucPriceItem: TcxLookupComboBox [4]
      Left = 251
      Top = 106
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Width = 650
          FieldName = 'NAME'
        end
        item
          Width = 80
          FieldName = 'RATE'
        end
        item
          Width = 190
          FieldName = 'RATE_UNIT'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = TSDM.dtsPriceListPref
      Properties.OnEditValueChanged = lucPriceItemPropertiesEditValueChanged
      EditValue = 0
      Style.HotTrack = False
      TabOrder = 3
      Width = 512
    end
    object edtDefaultRate: TcxCurrencyEdit [5]
      Left = 184
      Top = 133
      Properties.DisplayFormat = '#,##0.00'
      Properties.EditFormat = '#,##0.00'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseThousandSeparator = True
      Style.HotTrack = False
      TabOrder = 5
      Width = 120
    end
    object edtRateUnit: TcxTextEdit [6]
      Left = 338
      Top = 133
      BeepOnEnter = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 6
      Width = 120
    end
    object radPriceItemOption: TcxRadioGroup [7]
      Left = 34
      Top = 160
      Caption = 'When selecting a pricelist item'
      ParentBackground = False
      ParentColor = False
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Overwrite existing activity text.'
        end
        item
          Caption = 
            'Prepend pricelist descriptoin to the beginning of existing activ' +
            'ity text.'
        end
        item
          Caption = 
            'Append pricelist descriptoin to the end of existing activity tex' +
            't.'
        end
        item
          Caption = 
            'Do nothing. Just populate price list item with the default descr' +
            'iption.'
        end>
      Style.Color = 16053234
      TabOrder = 7
      Height = 120
      Width = 729
    end
    object cbxUseTodaysDate: TcxCheckBox [8]
      Left = 34
      Top = 329
      Caption = 'Use today'#39's date when adding a new timesheet item'
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
    end
    object cbxSaveGridLayout: TcxCheckBox [9]
      Left = 34
      Top = 354
      Caption = 'Save grid layout when exiting'
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Style.HotTrack = False
      TabOrder = 9
      Transparent = True
    end
    object btnSave: TcxButton [10]
      Left = 633
      Top = 454
      Width = 75
      Height = 25
      Caption = 'Save'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object btnCancel: TcxButton [11]
      Left = 714
      Top = 454
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object grpTimesheetOptionsTab: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignVert = avClient
      CaptionOptions.Text = 'Timesheet Options'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object grpControls: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litDefaultCustomer: TdxLayoutItem
      Parent = grpCustomerOptions
      AlignHorz = ahClient
      CaptionOptions.Text = 'Customer'
      Control = lucCustomer
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litUseDefaultCustomer: TdxLayoutItem
      Parent = grpCustomerOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxUseDefaultCustomer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 142
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpTimesheetOptions: TdxLayoutGroup
      Parent = grpSubOptions
      CaptionOptions.Text = 'When adding a new timesheet item'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grpPriceOptions: TdxLayoutGroup
      Parent = grpTimesheetOptions
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpRateOptions: TdxLayoutGroup
      Parent = grpTimesheetOptions
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object grpSubOptions: TdxLayoutGroup
      Parent = grpTimesheetOptionsTab
      CaptionOptions.Text = 'Timesheet Options'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object sep1: TdxLayoutSeparatorItem
      AlignVert = avBottom
      CaptionOptions.Text = 'Separator'
      Index = -1
    end
    object litPriceItemSelectionOption: TdxLayoutItem
      Parent = grpPriceItemOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = radPriceItemOption
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 120
      ControlOptions.OriginalWidth = 486
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litUseDefaultPriceItem: TdxLayoutItem
      Parent = grpPriceOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxUseDefaultPriceItem
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 146
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litDefaultPriceitem: TdxLayoutItem
      Parent = grpPriceOptions
      AlignHorz = ahClient
      CaptionOptions.Text = 'Price Item'
      Control = lucPriceItem
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litUseDefaultRate: TdxLayoutItem
      Parent = grpRateOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxUseDefaultRate
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litDefaultRate: TdxLayoutItem
      Parent = grpRateOptions
      CaptionOptions.Text = 'Rate'
      Control = edtDefaultRate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litRateUnit: TdxLayoutItem
      Parent = grpRateOptions
      CaptionOptions.Text = 'Unit'
      Control = edtRateUnit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grpCustomerOptions: TdxLayoutGroup
      Parent = grpTimesheetOptions
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpPriceItemOptions: TdxLayoutGroup
      Parent = grpTimesheetOptions
      CaptionOptions.Text = 'When selecting a pricelist item'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object grpOtherOptions: TdxLayoutGroup
      Parent = grpSubOptions
      CaptionOptions.Text = 'Other Optoins'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object litUseTodaysDate: TdxLayoutItem
      Parent = grpOtherOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxUseTodaysDate
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 318
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litSaveGridLayout: TdxLayoutItem
      Parent = grpOtherOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxSaveGridLayout
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 191
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litCancel: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litOK: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spc1: TdxLayoutEmptySpaceItem
      Parent = grpCustomerOptions
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 1
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
