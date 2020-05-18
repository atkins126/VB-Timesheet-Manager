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
    Width = 826
    Height = 646
    ExplicitWidth = 826
    ExplicitHeight = 646
    object cbxAproved: TcxDBCheckBox [0]
      Left = 303
      Top = 11
      DataBinding.DataField = 'APPROVED'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.DisplayChecked = 'Yes'
      Properties.DisplayUnchecked = 'No'
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
      Left = 20
      Top = 543
      TabStop = False
      DataBinding.DataField = 'CARRY_FORWARD'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.DisplayChecked = 'Yes'
      Properties.DisplayUnchecked = 'No'
      Properties.ImmediatePost = True
      Properties.ReadOnly = True
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
    object cbxBillable: TcxDBCheckBox [2]
      Left = 384
      Top = 11
      DataBinding.DataField = 'BILLABLE'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.DisplayChecked = 'Yes'
      Properties.DisplayUnchecked = 'No'
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
      TabOrder = 3
      Transparent = True
    end
    object cbxAddWork: TcxDBCheckBox [3]
      Left = 451
      Top = 11
      DataBinding.DataField = 'IS_ADDITIONAL_WORK'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.DisplayChecked = 'Yes'
      Properties.DisplayUnchecked = 'No'
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Transparent = True
    end
    object lucActivityDate: TcxDBDateEdit [4]
      Left = 112
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
      Properties.OnEditValueChanged = lucActivityDatePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 100
    end
    object lucCustomer: TcxDBLookupComboBox [5]
      Left = 112
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
      TabOrder = 5
      Width = 703
    end
    object lucPriceListItem: TcxDBLookupComboBox [6]
      Left = 112
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
      TabOrder = 6
      Width = 703
    end
    object lucActivityType: TcxDBLookupComboBox [7]
      Left = 112
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
      TabOrder = 7
      Width = 657
    end
    object btnStdActivity: TcxButton [8]
      Left = 775
      Top = 92
      Width = 40
      Height = 25
      Caption = 'STD'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btnStdActivityClick
    end
    object memActivity: TcxDBMemo [9]
      Left = 112
      Top = 123
      DataBinding.DataField = 'ACTIVITY'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 9
      Height = 270
      Width = 703
    end
    object edtTimeSpent: TcxDBCurrencyEdit [10]
      Left = 72
      Top = 446
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
      Properties.OnEditValueChanged = edtTimeSpentPropertiesEditValueChanged
      Properties.OnValidate = edtTimeSpentPropertiesValidate
      Style.HotTrack = False
      TabOrder = 10
      Width = 50
    end
    object edtRate: TcxDBCurrencyEdit [11]
      Left = 203
      Top = 446
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
    object edtStdrate: TcxDBCurrencyEdit [12]
      Left = 203
      Top = 473
      TabStop = False
      DataBinding.DataField = 'STD_RATE'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.Alignment.Horz = taLeftJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '###,##0.00'
      Properties.EditFormat = '###,##0.00'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Style.HotTrack = False
      Style.StyleController = styReadOnly
      Style.TransparentBorder = False
      TabOrder = 14
      Width = 80
    end
    object btnOK: TcxButton [13]
      Left = 659
      Top = 610
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton [14]
      Left = 740
      Top = 610
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
      OnClick = btnCancelClick
    end
    object lucRateUnit: TcxDBLookupComboBox [15]
      Left = 358
      Top = 446
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
    object edtDayName: TcxTextEdit [16]
      Left = 247
      Top = 11
      TabStop = False
      BeepOnEnter = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.StyleController = styReadOnly
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 50
    end
    object edtHours: TcxCurrencyEdit [17]
      Left = 72
      Top = 473
      TabStop = False
      Properties.DisplayFormat = '#,##0.00'
      Properties.EditFormat = '#,##0.00'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseThousandSeparator = True
      Style.HotTrack = False
      Style.StyleController = styReadOnly
      Style.TransparentBorder = False
      TabOrder = 13
      Width = 45
    end
    object lucDateReleasedCfwd: TcxDBDateEdit [18]
      Left = 367
      Top = 543
      TabStop = False
      DataBinding.DataField = 'DATE_CFWD_RELEASED'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.ImmediatePost = True
      Properties.ReadOnly = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      Style.StyleController = styReadOnly
      Style.TransparentBorder = False
      TabOrder = 18
      Width = 100
    end
    object edtReleaseToPeriod: TcxDBCurrencyEdit [19]
      Left = 199
      Top = 543
      TabStop = False
      DataBinding.DataField = 'RELEASE_CFWD_TO_PERIOD'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,###,##0.00'
      Properties.EditFormat = '#,###,##0.00'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Style.HotTrack = False
      Style.StyleController = styReadOnly
      Style.TransparentBorder = False
      TabOrder = 17
      Width = 80
    end
    object lblEditStatus: TcxLabel [20]
      Left = 149
      Top = 614
      Caption = 'This timesheet item cannot be modified'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styEditStatus
      Style.TextColor = clRed
      Style.TransparentBorder = False
      Transparent = True
    end
    object edtItemValue: TcxDBCurrencyEdit [21]
      Left = 358
      Top = 473
      TabStop = False
      DataBinding.DataField = 'ITEM_VALUE'
      DataBinding.DataSource = TSDM.dtsTimesheet
      Properties.Alignment.Horz = taLeftJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '###,##0.00'
      Properties.EditFormat = '###,##0.00'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Style.HotTrack = False
      Style.StyleController = styReadOnly
      Style.TransparentBorder = True
      TabOrder = 15
      Width = 150
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 9
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
      Parent = grpValues
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpRate: TdxLayoutGroup
      Parent = grpValues
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litApproved: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'Approved'
      CaptionOptions.Layout = clRight
      Control = cbxAproved
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litCarryForward: TdxLayoutItem
      Parent = grpCarryForward
      CaptionOptions.Text = 'C/Fwd'
      CaptionOptions.Layout = clRight
      Control = cbxCarryForward
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litDate: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'Date'
      Control = lucActivityDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCustomer: TdxLayoutItem
      Parent = grpDate
      AlignHorz = ahClient
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
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
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
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
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
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
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'Activity'
      Control = memActivity
      ControlOptions.OriginalHeight = 270
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litBillable: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'Billable'
      CaptionOptions.Layout = clRight
      Control = cbxBillable
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litTimeSpent: TdxLayoutItem
      Parent = grpTime
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'Mins'
      Control = edtTimeSpent
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litHours: TdxLayoutItem
      Parent = grpRate
      CaptionOptions.Text = 'Hours'
      Control = edtHours
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litStdRate: TdxLayoutItem
      Parent = grpRate
      CaptionOptions.Text = 'Std Rate'
      Control = edtStdrate
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litRate: TdxLayoutItem
      Parent = grpTime
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'Rate'
      Control = edtRate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litRateUnit: TdxLayoutItem
      Parent = grpTime
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
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
      Control = edtItemValue
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 3
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
      AlignHorz = ahClient
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
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litCancel: TdxLayoutItem
      Parent = grpControls
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object grpGeneralInfo: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
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
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spc3: TdxLayoutEmptySpaceItem
      Parent = grpRate
      SizeOptions.Height = 10
      SizeOptions.Width = 19
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object litLegend: TdxLayoutItem
      Parent = grpControls
      AlignVert = avCenter
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
        00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
        A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
        58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
        87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
        50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
        74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
        3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
        EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
        A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
        FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
        F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
        3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
        AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
        F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
        5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
        2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
        ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
        F64F3219EB0000000049454E44AE426082}
      CaptionOptions.Text = 'Mandatory fields'
      Index = 0
    end
    object litAdWork: TdxLayoutItem
      Parent = grpGeneralInfo
      CaptionOptions.Text = 'Additional Work'
      CaptionOptions.Layout = clRight
      Control = cbxAddWork
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object grpCarryForward: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Carry forward information'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 7
    end
    object litDateReleasedCfwd: TdxLayoutItem
      Parent = grpCarryForward
      CaptionOptions.Text = 'Release Date'
      Control = lucDateReleasedCfwd
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litReleasedToPeriod: TdxLayoutItem
      Parent = grpCarryForward
      CaptionOptions.Text = 'Release to Period'
      Control = edtReleaseToPeriod
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object spc2: TdxLayoutEmptySpaceItem
      Parent = grpTime
      SizeOptions.Height = 10
      SizeOptions.Width = 16
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object spc5: TdxLayoutEmptySpaceItem
      Parent = grpCarryForward
      SizeOptions.Height = 10
      SizeOptions.Width = 5
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object grpValues: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Time && rate capture'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 6
    end
    object litEditStatus: TdxLayoutItem
      Parent = grpControls
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblEditStatus
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 287
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object spc4: TdxLayoutEmptySpaceItem
      Parent = grpControls
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
  end
  inherited styRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    object actStdActivity: TAction
      Caption = 'STD'
      Hint = 'Standard Activity'
      OnExecute = doStdActivity
    end
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
    Style.Color = 13434879
    Left = 420
    Top = 115
    PixelsPerInch = 96
  end
  object styEditStatus: TcxEditStyleController
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clRed
    Style.Font.Height = -13
    Style.Font.Name = 'Verdana'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Left = 510
    Top = 115
    PixelsPerInch = 96
  end
end
