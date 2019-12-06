inherited TimesheetEditFrm: TTimesheetEditFrm
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'TimesheetEditFrm'
  ClientHeight = 791
  ClientWidth = 1000
  ExplicitWidth = 1006
  ExplicitHeight = 820
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 800
    Height = 561
    LayoutLookAndFeel = lafCustomSkin
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 800
    ExplicitHeight = 561
    object cbxAproved: TcxDBCheckBox [0]
      Left = 282
      Top = 11
      Caption = 'Approved'
      DataBinding.DataField = 'APPROVED'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Transparent = True
    end
    object cbxCarryForward: TcxDBCheckBox [1]
      Left = 364
      Top = 11
      Caption = 'Carry Forward'
      DataBinding.DataField = 'CARRY_FORWARD'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Transparent = True
    end
    object cbxBillable: TcxDBCheckBox [2]
      Left = 354
      Top = 442
      Caption = 'Billable'
      DataBinding.DataField = 'BILLABLE'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Properties.OnEditValueChanged = cbxBillablePropertiesEditValueChanged
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 15
      Transparent = True
    end
    object cbxAddWork: TcxDBCheckBox [3]
      Left = 422
      Top = 442
      Caption = 'Add Work'
      DataBinding.DataField = 'IS_ADDITIONAL_WORK'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 16
      Transparent = True
    end
    object dteActivityDate: TcxDBDateEdit [4]
      Left = 91
      Top = 11
      DataBinding.DataField = 'ACTIVITY_DATE'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditFormat = 'dd/MM/yyyy'
      Properties.ImmediatePost = True
      Properties.PostPopupValueOnTab = True
      Properties.SaveTime = False
      Properties.ShowOnlyValidDates = True
      Properties.ShowTime = False
      Properties.OnEditValueChanged = dteActivityDatePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 100
    end
    object lucCustomer: TcxDBLookupComboBox [5]
      Left = 91
      Top = 38
      BeepOnEnter = False
      DataBinding.DataField = 'CUSTOMER_ID'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 550
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
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = TSDM.dtsCustomerLookup
      Properties.PostPopupValueOnTab = True
      Style.HotTrack = False
      TabOrder = 4
      Width = 698
    end
    object lucPriceListItem: TcxDBLookupComboBox [6]
      Left = 91
      Top = 65
      BeepOnEnter = False
      DataBinding.DataField = 'PRICE_LIST_ITEM_ID'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 850
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Width = 650
          FieldName = 'NAME'
        end
        item
          HeaderAlignment = taRightJustify
          Width = 80
          FieldName = 'RATE'
        end
        item
          Width = 190
          FieldName = 'RATE_UNIT'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = TSDM.dtsPriceList
      Properties.PostPopupValueOnTab = True
      Properties.OnEditValueChanged = lucPriceListItemPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Width = 698
    end
    object lucActivityType: TcxDBLookupComboBox [7]
      Left = 91
      Top = 94
      BeepOnEnter = False
      DataBinding.DataField = 'ACTIVITY_TYPE_ID'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 500
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = TSDM.dtsActivityType
      Properties.PostPopupValueOnTab = True
      Style.HotTrack = False
      TabOrder = 6
      Width = 652
    end
    object btnStdActivity: TcxButton [8]
      Left = 749
      Top = 92
      Width = 40
      Height = 25
      Caption = 'STD'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object memActivity: TcxDBMemo [9]
      Left = 91
      Top = 123
      DataBinding.DataField = 'ACTIVITY'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 8
      Height = 270
      Width = 698
    end
    object edtTimeSpent: TcxDBCurrencyEdit [10]
      Left = 91
      Top = 415
      DataBinding.DataField = 'TIME_SPENT'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.Alignment.Horz = taLeftJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '#,##0'
      Properties.EditFormat = '#,##0'
      Properties.MaxValue = 720.000000000000000000
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnChange = edtTimeSpentPropertiesChange
      Properties.OnValidate = edtTimeSpentPropertiesValidate
      Style.HotTrack = False
      TabOrder = 9
      Width = 50
    end
    object edtHours: TcxDBCurrencyEdit [11]
      Left = 186
      Top = 415
      TabStop = False
      DataBinding.DataField = 'TIME_HOURS'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.Alignment.Horz = taLeftJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.00'
      Properties.EditFormat = '#,##0.00'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.StyleController = styReadOnly
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      Width = 45
    end
    object edtRate: TcxDBCurrencyEdit [12]
      Left = 269
      Top = 415
      DataBinding.DataField = 'ACTUAL_RATE'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.Alignment.Horz = taLeftJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,###,##0.00'
      Properties.EditFormat = '#,###,##0.00'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnChange = edtRatePropertiesChange
      Properties.OnEditValueChanged = edtRatePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 11
      Width = 80
    end
    object edtStdrate: TcxDBCurrencyEdit [13]
      Left = 268
      Top = 442
      TabStop = False
      DataBinding.DataField = 'STD_RATE'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.Alignment.Horz = taLeftJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,###,##0.00'
      Properties.EditFormat = '#,###,##0.00'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Style.HotTrack = False
      Style.StyleController = styReadOnly
      TabOrder = 14
      Width = 80
    end
    object edtitemValue: TcxDBCurrencyEdit [14]
      Left = 91
      Top = 442
      TabStop = False
      DataBinding.DataField = 'ITEM_VALUE'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.Alignment.Horz = taLeftJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.00'
      Properties.EditFormat = '#,##0.00'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Style.HotTrack = False
      Style.StyleController = styReadOnly
      TabOrder = 13
      Width = 100
    end
    object btnOK: TcxButton [15]
      Left = 633
      Top = 525
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton [16]
      Left = 714
      Top = 525
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
    end
    object lucRateUnit: TcxDBLookupComboBox [17]
      Left = 383
      Top = 415
      BeepOnEnter = False
      DataBinding.DataField = 'RATE_UNIT_ID'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListSource = TSDM.dtsRateUnit
      Properties.PostPopupValueOnTab = True
      Properties.OnEditValueChanged = lucRateUnitPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 12
      Width = 150
    end
    object edtDayName: TcxDBTextEdit [18]
      Left = 226
      Top = 11
      TabStop = False
      BeepOnEnter = False
      DataBinding.DataField = 'DAY_NAME'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.StyleController = styReadOnly
      TabOrder = 1
      Width = 50
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 7
    end
    object grpDate: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'General Information'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpActivity: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 4
    end
    object grpPriceListItem: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object grpTime: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object grpRate: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object litApproved: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxAproved
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litCarryForward: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxCarryForward
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litDate: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'Date'
      Control = dteActivityDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCustomer: TdxLayoutItem
      Parent = grpDate
      AlignHorz = ahClient
      CaptionOptions.Text = 'Customer'
      Control = lucCustomer
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litPriceListItem: TdxLayoutItem
      Parent = grpPriceListItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'Price Item'
      Control = lucPriceListItem
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litStdActivity: TdxLayoutItem
      Parent = grpActivityType
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnStdActivity
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litActivityType: TdxLayoutItem
      Parent = grpActivityType
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Activity Type'
      Control = lucActivityType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litActivity: TdxLayoutItem
      Parent = grpActivity
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Activity'
      Control = memActivity
      ControlOptions.OriginalHeight = 270
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litBillable: TdxLayoutItem
      Parent = grpRate
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxBillable
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litTimeSpent: TdxLayoutItem
      Parent = grpTime
      CaptionOptions.Text = 'Mins'
      Control = edtTimeSpent
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litHours: TdxLayoutItem
      Parent = grpTime
      CaptionOptions.Text = 'Hours'
      Control = edtHours
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litAddWork: TdxLayoutItem
      Parent = grpRate
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxAddWork
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litStdRate: TdxLayoutItem
      Parent = grpRate
      CaptionOptions.Text = 'Std Rate'
      Control = edtStdrate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litRate: TdxLayoutItem
      Parent = grpTime
      CaptionOptions.Text = 'Rate'
      Control = edtRate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litRateUnit: TdxLayoutItem
      Parent = grpTime
      CaptionOptions.Text = 'Unit'
      Control = lucRateUnit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litItemValue: TdxLayoutItem
      Parent = grpRate
      CaptionOptions.Text = 'Item Value'
      Control = edtitemValue
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpActivityType: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object grpControls: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object sep1: TdxLayoutSeparatorItem
      Parent = layMainGroup_Root
      AlignVert = avBottom
      CaptionOptions.Text = 'Separator'
      Index = 8
    end
    object litOK: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
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
    object grpGeneralInfo: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object spc1: TdxLayoutEmptySpaceItem
      Parent = layMainGroup_Root
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 5
    end
    object litDayName: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'Day'
      Control = edtDayName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spc3: TdxLayoutEmptySpaceItem
      Parent = grpRate
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
  end
  object lbl1: TdxFormattedLabel [1]
    Left = 8
    Top = 205
    Caption = 'Format'
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
  object styReadOnly: TcxEditStyleController
    Style.Color = 11988474
    Left = 375
    Top = 145
    PixelsPerInch = 96
  end
end
