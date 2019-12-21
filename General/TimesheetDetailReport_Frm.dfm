inherited TimesheetDetailReportFrm: TTimesheetDetailReportFrm
  Caption = 'TimesheetDetailReportFrm'
  ClientHeight = 732
  ClientWidth = 1300
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  OnDestroy = FormDestroy
  ExplicitWidth = 1316
  ExplicitHeight = 771
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 15
    Top = 19
    Width = 966
    Height = 647
    LayoutLookAndFeel = lafCustomSkin
    ExplicitLeft = 15
    ExplicitTop = 19
    ExplicitWidth = 966
    ExplicitHeight = 647
    object lucDateType: TcxComboBox [0]
      Left = 85
      Top = 106
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items.Strings = (
        'Period'
        'Date Range')
      Properties.PostPopupValueOnTab = True
      Properties.OnEditValueChanged = lucDateTypePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 100
    end
    object lucBillable: TcxComboBox [1]
      Left = 449
      Top = 106
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items.Strings = (
        'Billable'
        'Non-Billable'
        'All')
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 120
    end
    object lucWorkType: TcxComboBox [2]
      Left = 449
      Top = 131
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items.Strings = (
        'Statndard'
        'Additional'
        'All')
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 120
    end
    object dteToDate: TcxDateEdit [3]
      Left = 257
      Top = 131
      Properties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditFormat = 'dd/MM/yyyy'
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 100
    end
    object lucPeriod: TcxLookupComboBox [4]
      Left = 85
      Top = 131
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'THE_PERIOD'
      Properties.ListColumns = <
        item
          FieldName = 'THE_PERIOD'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = ReportDM.dtsPeriodListing
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 100
    end
    object docToolbar: TdxBarDockControl [5]
      Left = 11
      Top = 11
      Width = 944
      Height = 58
      Align = dalNone
      BarManager = barManager
    end
    object dteFromDate: TcxDateEdit [6]
      Left = 257
      Top = 106
      Properties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditFormat = 'dd/MM/yyyy'
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 100
    end
    object cbxOepnDocument: TcxCheckBox [7]
      Left = 575
      Top = 106
      Caption = 'Open document after export'
      State = cbsChecked
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Transparent = True
    end
    object cbxRemoveZeroBillableValues: TcxCheckBox [8]
      Left = 575
      Top = 131
      Caption = 'Remove items with zero billable values'
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      State = cbsChecked
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Transparent = True
    end
    object grdSystemUser: TcxGrid [9]
      Left = 25
      Top = 205
      Width = 913
      Height = 414
      BorderStyle = cxcbsNone
      TabOrder = 9
      object viewSystemUser: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = VBDM.dtsSystemUser
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsSelection.MultiSelectMode = msmPersistent
        OptionsView.NoDataToDisplayInfoText = '<No User data to display>'
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'System User'
          end>
        object edtUID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#####0'
          Properties.EditFormat = '#####0'
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          Visible = False
          MinWidth = 45
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtUFirstname: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIRST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 150
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtULastName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LAST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 150
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object lvlSystemUser: TcxGridLevel
        GridView = viewSystemUser
      end
    end
    object grdCustomerListing: TcxGrid [10]
      Left = 10000
      Top = 10000
      Width = 913
      Height = 414
      TabOrder = 10
      Visible = False
      object viewCustomerListing: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ReportDM.dtsTSCustomer
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsSelection.MultiSelectMode = msmPersistent
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Customer Listing'
          end>
        object edtCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtCCTID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_TYPE_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtCStatusID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STATUS_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtCCustomerName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 400
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 400
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtCCustomerType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_TYPE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 220
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 220
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtCCustomerStatus: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_STATUS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 90
          Options.Editing = False
          Options.HorzSizing = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtCIsActive: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IS_ACTIVE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = True
          Properties.UseAlignmentWhenInplace = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Active'
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtCCGrpID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_GROUP_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object edtCCustID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object edtCCustGrpLinkName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_GROUP_LINK_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 400
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 400
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
      end
      object lvlCustomerListing: TcxGridLevel
        GridView = viewCustomerListing
      end
    end
    object grdActivityType: TcxGrid [11]
      Left = 10000
      Top = 10000
      Width = 913
      Height = 414
      TabOrder = 11
      Visible = False
      object viewActivityType: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ReportDM.dtsActivityType
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsSelection.MultiSelectMode = msmPersistent
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Activity Type Listing'
          end>
        object edtAID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '###,##0'
          Properties.EditFormat = '###,##0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtAName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Editing = False
          Options.Grouping = False
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object lvlActivityType: TcxGridLevel
        GridView = viewActivityType
      end
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 2
    end
    object litToolbar: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Visible = False
      Control = docToolbar
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1307
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litDateType: TdxLayoutItem
      Parent = grpDateType
      CaptionOptions.Text = 'Date Type'
      Control = lucDateType
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litBillable: TdxLayoutItem
      Parent = grpOther1
      CaptionOptions.Text = 'Billable'
      Control = lucBillable
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litWorkType: TdxLayoutItem
      Parent = grpOther1
      CaptionOptions.Text = 'Work Type'
      Control = lucWorkType
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litPeriod: TdxLayoutItem
      Parent = grpDateType
      CaptionOptions.Text = 'Period'
      Control = lucPeriod
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litFromDate: TdxLayoutItem
      Parent = grp3
      CaptionOptions.Text = 'From Date'
      Control = dteFromDate
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litToDate: TdxLayoutItem
      Parent = grp3
      CaptionOptions.Text = 'To Date'
      Control = dteToDate
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpAll: TdxLayoutGroup
      Parent = grp4
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpDateType: TdxLayoutGroup
      Parent = grp2
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object grpSubOptions: TdxLayoutGroup
      Parent = grp4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Other Options'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object grpData: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 2
    end
    object grp1: TdxLayoutGroup
      Parent = grpAll
      CaptionOptions.Text = 'Date Options'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object grp2: TdxLayoutGroup
      Parent = grp1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grp3: TdxLayoutGroup
      Parent = grp1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object grp4: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpOther1: TdxLayoutGroup
      Parent = grpSubOptions
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object grpOther2: TdxLayoutGroup
      Parent = grpSubOptions
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object litOpenDoc: TdxLayoutItem
      Parent = grpOther2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxOepnDocument
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 183
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litRemoveZeroBillable: TdxLayoutItem
      Parent = grpOther2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxRemoveZeroBillableValues
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 244
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litUser: TdxLayoutItem
      Parent = grpData
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'System User Listing'
      CaptionOptions.Visible = False
      Control = grdSystemUser
      ControlOptions.OriginalHeight = 349
      ControlOptions.OriginalWidth = 362
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litDetailByCustomer: TdxLayoutItem
      Parent = grpData
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Customer Listing'
      CaptionOptions.Visible = False
      Control = grdCustomerListing
      ControlOptions.OriginalHeight = 574
      ControlOptions.OriginalWidth = 644
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litDetailByActivity: TdxLayoutItem
      Parent = grpData
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Activity Type Listing'
      CaptionOptions.Visible = False
      Control = grdActivityType
      ControlOptions.OriginalHeight = 574
      ControlOptions.OriginalWidth = 819
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object grdTimesheet: TcxGrid [1]
    Left = 1131
    Top = 60
    Width = 1181
    Height = 421
    TabOrder = 1
    object viewTimesheet: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = ReportDM.dtsTimesheet
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,##0.00'
          Kind = skSum
          FieldName = 'TIME_HOURS'
          Column = edtTSTimeHours
        end
        item
          Format = '#,###,##0.00'
          Kind = skSum
          FieldName = 'ITEM_VALUE'
          Column = edtTSItemValue
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.CellAutoHeight = True
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.ShowColumnFilterButtons = sfbAlways
      Bands = <
        item
          Caption = 'Timesheet Detail'
        end
        item
          Caption = 'Time/Values'
        end
        item
          Caption = 'Other'
        end>
      object edtTSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '######0'
        Properties.EditFormat = '######0'
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object edtTSCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '######0'
        Properties.EditFormat = '######0'
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object edtTSPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE_ITEM_ID'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object lucSystemUser: TcxGridDBBandedColumn
        DataBinding.FieldName = 'USER_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'User Name'
            FieldName = 'LOGIN_NAME'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.SyncMode = True
        Properties.PostPopupValueOnTab = True
        Properties.ReadOnly = False
        MinWidth = 120
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object edtTSPeriod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'THE_PERIOD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '#####0'
        Properties.EditFormat = '#####0'
        Properties.ReadOnly = True
        MinWidth = 65
        Options.Editing = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object lucTSActivityDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVITY_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = 'dd/MM/yyyy'
        Properties.EditFormat = 'dd/MM/yyyy'
        Properties.ImmediatePost = True
        Properties.PostPopupValueOnTab = True
        Properties.SaveTime = False
        Properties.ShowOnlyValidDates = True
        Properties.ShowTime = False
        MinWidth = 90
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object lucPriceList: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE_LIST_ITEM_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Width = 850
            FieldName = 'NAME'
          end
          item
            HeaderAlignment = taRightJustify
            Width = 50
            FieldName = 'RATE'
          end
          item
            Width = 120
            FieldName = 'RATE_UNIT'
          end>
        Properties.PostPopupValueOnTab = True
        Properties.ReadOnly = False
        MinWidth = 300
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object lucRateUnit: TcxGridDBBandedColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'RATE_UNIT_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ReadOnly = False
        MinWidth = 60
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object lucActivityType: TcxGridDBBandedColumn
        Caption = 'Activty Type'
        DataBinding.FieldName = 'ACTIVITY_TYPE_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.PostPopupValueOnTab = True
        MinWidth = 300
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object edtTSActivity: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVITY'
        PropertiesClassName = 'TcxMemoProperties'
        Options.Filtering = False
        Options.Sorting = False
        Width = 400
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object edtTSTimeMins: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TIME_SPENT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,##0'
        Properties.EditFormat = '###,##0'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 50
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object edtTSTimeHours: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TIME_HOURS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '###,##0.00'
        Properties.EditFormat = '###,##0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object edtTSRate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTUAL_RATE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,##0.00'
        Properties.EditFormat = '###,##0.00'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 75
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object edtTSStdRate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STD_RATE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,##0.00'
        Properties.EditFormat = '###,##0.00'
        Properties.ReadOnly = True
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 75
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object edtTSItemValue: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ITEM_VALUE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,##0.00'
        Properties.EditFormat = '###,##0.00'
        Properties.ReadOnly = True
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 80
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object edtTSInvID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVOICE_ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '######0'
        Properties.EditFormat = '######0'
        Properties.ReadOnly = True
        MinWidth = 75
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object edtTSCreditnoteID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CN_ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '######0'
        Properties.EditFormat = '######0'
        Properties.ReadOnly = True
        MinWidth = 75
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cbxTSLocked: TcxGridDBBandedColumn
        Caption = 'Lock'
        DataBinding.FieldName = 'LOCKED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ReadOnly = True
        Properties.UseAlignmentWhenInplace = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 40
        Options.Editing = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 40
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object edtTSModified: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DATE_MODIFIED'
        Visible = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cbxTSBillable: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BILLABLE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.UseAlignmentWhenInplace = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object edtTSInvoiceDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVOICE_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd/MM/yyyy'
        Properties.EditFormat = 'dd/MM/yyyy'
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        MinWidth = 90
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 90
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cbxTSCarryForward: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CARRY_FORWARD'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.UseAlignmentWhenInplace = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cbxTSApproved: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.UseAlignmentWhenInplace = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cbxTSAddWork: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IS_ADDITIONAL_WORK'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.UseAlignmentWhenInplace = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object edtTSCGrpID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_GROUP_ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '######0'
        Properties.EditFormat = '######0'
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 74
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
    object lvlTimesheet: TcxGridLevel
      GridView = viewTimesheet
    end
  end
  object grdCarryForwardDetail: TcxGrid [2]
    Left = 1122
    Top = 303
    Width = 1181
    Height = 421
    TabOrder = 2
    object viewCarryForwardDetail: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = ReportDM.dtsCarryForwardDetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,##0.00'
          Kind = skSum
          FieldName = 'TIME_HOURS'
          Column = edtCFTimeHours
        end
        item
          Format = '#,###,##0.00'
          Kind = skSum
          FieldName = 'ITEM_VALUE'
          Column = edtCFItemValue
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.CellAutoHeight = True
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.ShowColumnFilterButtons = sfbAlways
      Bands = <
        item
          Caption = 'Timesheet Detail'
        end
        item
          Caption = 'Time/Values'
        end
        item
          Caption = 'Other'
        end>
      object edtCFID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '######0'
        Properties.EditFormat = '######0'
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object edtCFCustomerID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '######0'
        Properties.EditFormat = '######0'
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object edtCFPIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE_ITEM_ID'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object lucCFSystemuser: TcxGridDBBandedColumn
        DataBinding.FieldName = 'USER_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'User Name'
            FieldName = 'LOGIN_NAME'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.SyncMode = True
        Properties.PostPopupValueOnTab = True
        Properties.ReadOnly = False
        MinWidth = 120
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object edtCFPeriod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'THE_PERIOD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '#####0'
        Properties.EditFormat = '#####0'
        Properties.ReadOnly = True
        MinWidth = 65
        Options.Editing = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object lucCFActivityDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVITY_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = 'dd/MM/yyyy'
        Properties.EditFormat = 'dd/MM/yyyy'
        Properties.ImmediatePost = True
        Properties.PostPopupValueOnTab = True
        Properties.SaveTime = False
        Properties.ShowOnlyValidDates = True
        Properties.ShowTime = False
        MinWidth = 90
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object lucCFPriceList: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE_LIST_ITEM_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Width = 850
            FieldName = 'NAME'
          end
          item
            HeaderAlignment = taRightJustify
            Width = 50
            FieldName = 'RATE'
          end
          item
            Width = 120
            FieldName = 'RATE_UNIT'
          end>
        Properties.PostPopupValueOnTab = True
        Properties.ReadOnly = False
        MinWidth = 300
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object lucCFRateUnit: TcxGridDBBandedColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'RATE_UNIT_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ReadOnly = False
        MinWidth = 60
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object lucCFActivityType: TcxGridDBBandedColumn
        Caption = 'Activty Type'
        DataBinding.FieldName = 'ACTIVITY_TYPE_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.PostPopupValueOnTab = True
        MinWidth = 300
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object edtCFActivity: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVITY'
        PropertiesClassName = 'TcxMemoProperties'
        Options.Filtering = False
        Options.Sorting = False
        Width = 400
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object edtCFTimeMins: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TIME_SPENT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,##0'
        Properties.EditFormat = '###,##0'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 50
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object edtCFTimeHours: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TIME_HOURS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '###,##0.00'
        Properties.EditFormat = '###,##0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object edtCFRate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTUAL_RATE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,##0.00'
        Properties.EditFormat = '###,##0.00'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 75
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object edtCFStdRate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STD_RATE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,##0.00'
        Properties.EditFormat = '###,##0.00'
        Properties.ReadOnly = True
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 75
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object edtCFItemValue: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ITEM_VALUE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,##0.00'
        Properties.EditFormat = '###,##0.00'
        Properties.ReadOnly = True
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 80
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object edtCFInvID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVOICE_ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '######0'
        Properties.EditFormat = '######0'
        Properties.ReadOnly = True
        MinWidth = 75
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object edtCFCreditnoteID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CN_ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '######0'
        Properties.EditFormat = '######0'
        Properties.ReadOnly = True
        MinWidth = 75
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cbxCFLocked: TcxGridDBBandedColumn
        Caption = 'Lock'
        DataBinding.FieldName = 'LOCKED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ReadOnly = True
        Properties.UseAlignmentWhenInplace = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 40
        Options.Editing = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 40
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object lucCFModified: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DATE_MODIFIED'
        Visible = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cbxCFBillable: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BILLABLE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.UseAlignmentWhenInplace = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object edtCFInvoiceDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVOICE_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd/MM/yyyy'
        Properties.EditFormat = 'dd/MM/yyyy'
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        MinWidth = 90
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 90
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cbxCFCarryForward: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CARRY_FORWARD'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.UseAlignmentWhenInplace = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cbxCFApproved: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.UseAlignmentWhenInplace = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cbxCFAddWork: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IS_ADDITIONAL_WORK'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.UseAlignmentWhenInplace = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object edtCFCGID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_GROUP_ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '######0'
        Properties.EditFormat = '######0'
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 74
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
    object lvlCarryForwardDetail: TcxGridLevel
      GridView = viewCarryForwardDetail
    end
  end
  object grdTimesheetBillable: TcxGrid [3]
    Left = 1066
    Top = 135
    Width = 1181
    Height = 421
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    object viewTimesheetBillable: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = ReportDM.dtsTSBillable
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Timesheet Detail'
        end>
      object edtTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object edtTFirstName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FIRST_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 165
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 165
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object edtTLastName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LAST_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 165
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 165
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object edtTThePeriod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'THE_PERIOD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '######'
        Properties.EditFormat = '######'
        Properties.ReadOnly = True
        MinWidth = 60
        Options.Editing = False
        Options.IncSearch = False
        Options.HorzSizing = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object edtTLoginName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LOGIN_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 120
        Options.Editing = False
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object edtTActivityDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVITY_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 90
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object edtTCustomerType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_TYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 200
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object edtTCustomerName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 400
        Options.Editing = False
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 400
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object edtTActivtyType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVITY_TYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 250
        Options.Editing = False
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object edtTAActivty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVITY'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ReadOnly = True
        MinWidth = 500
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 500
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object edtTPriceItem: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE_LIST_ITEM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 400
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 400
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object edtTTimeSpent: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TIME_SPENT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.EditFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 60
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object edtTHours: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TIME_HOURS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.EditFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 60
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object edtTRate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTUAL_RATE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.EditFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 90
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object edtTStdRate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STD_RATE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.EditFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 90
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object edtTItemValue: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ITEM_VALUE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.EditFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 90
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object edtTTotalCFwd: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_CARRY_FORWARD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,##0.00'
        Properties.EditFormat = '###,##0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 90
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object edtTWeekEnding: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WEEK_ENDING'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd/MM/yyyy'
        Properties.EditFormat = 'dd/MM/yyyy'
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 90
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object edtTBillable: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BILLABLE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 25
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 25
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object edtTBillableStr: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BILLABLE_STR'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 25
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 25
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object edtTInvoiceNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVOICE_ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '######'
        Properties.EditFormat = '######'
        Properties.ReadOnly = True
        MinWidth = 74
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object edtTInvDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVOICE_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 90
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object edtTCreditNoteNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CN_ID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '######'
        Properties.EditFormat = '######'
        Properties.ReadOnly = True
        MinWidth = 74
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object edtTLocked: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LOCKED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 40
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object edtTLockedStr: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LOCKED_STR'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 35
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 35
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object edtTCFwd: TcxGridDBBandedColumn
        Caption = 'CF'
        DataBinding.FieldName = 'CARRY_FORWARD'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 25
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 25
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object edtTCFwdStr: TcxGridDBBandedColumn
        Caption = 'CF'
        DataBinding.FieldName = 'CARRY_FORWARD_STR'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 25
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 25
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object edtTAddWork: TcxGridDBBandedColumn
        Caption = 'Ad Wk'
        DataBinding.FieldName = 'IS_ADDITIONAL_WORK'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 40
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object edtTAddWorkStr: TcxGridDBBandedColumn
        Caption = 'Ad Wk'
        DataBinding.FieldName = 'IS_ADDITIONAL_WORK_STR'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
    end
    object lvlTimesheetBillable: TcxGridLevel
      GridView = viewTimesheetBillable
    end
  end
  inherited styRepository: TcxStyleRepository
    Left = 260
    Top = 235
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Images = img32
    Left = 330
    Top = 235
    object actCloseForm: TAction
      Caption = 'Close'
      ImageIndex = 0
      OnExecute = DoCloseForm
    end
    object actGetData: TAction
      Caption = 'Get Data'
      ImageIndex = 5
      OnExecute = DoGetData
    end
    object actPreview: TAction
      Caption = 'Preview'
      ImageIndex = 1
      OnExecute = DoPreview
    end
    object actPrint: TAction
      Tag = 1
      Caption = 'Print'
      ImageIndex = 2
      OnExecute = DoPrint
    end
    object actExcel: TAction
      Tag = 2
      Caption = 'Excel'
      ImageIndex = 3
      OnExecute = DoExcel
    end
    object actPDF: TAction
      Tag = 3
      Caption = 'PDF'
      ImageIndex = 4
      OnExecute = DoPDF
    end
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    Left = 405
    Top = 290
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
    DesignInfo = 19005700
  end
  inherited img32: TcxImageList
    FormatVersion = 1
    DesignInfo = 19005770
  end
  object barManager: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = img32
    ImageOptions.LargeImages = img32
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = False
    Left = 490
    Top = 235
    PixelsPerInch = 96
    object barToolbar: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockControl = docToolbar
      DockedDockControl = docToolbar
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1212
      FloatTop = 2
      FloatClientWidth = 121
      FloatClientHeight = 260
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnClose'
        end
        item
          Visible = True
          ItemName = 'btnGetData'
        end
        item
          Visible = True
          ItemName = 'btnPreview'
        end
        item
          Visible = True
          ItemName = 'btnPrint'
        end
        item
          Visible = True
          ItemName = 'btnExcel'
        end
        item
          Visible = True
          ItemName = 'btnPDF'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 127
          Visible = True
          ItemName = 'lucReportType'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnClose: TdxBarLargeButton
      Action = actCloseForm
      Category = 0
      AutoGrayScale = False
    end
    object btnGetData: TdxBarLargeButton
      Action = actGetData
      Category = 0
      Visible = ivNever
      AutoGrayScale = False
    end
    object btnExcel: TdxBarLargeButton
      Action = actExcel
      Category = 0
      AutoGrayScale = False
    end
    object btnPDF: TdxBarLargeButton
      Action = actPDF
      Category = 0
      AutoGrayScale = False
    end
    object btnPreview: TdxBarLargeButton
      Action = actPreview
      Category = 0
      AutoGrayScale = False
    end
    object btnPrint: TdxBarLargeButton
      Action = actPrint
      Category = 0
      AutoGrayScale = False
    end
    object lucReportType: TcxBarEditItem
      Caption = 'Get timesheet data by'
      Category = 0
      Hint = 'Get timesheet data by'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items.Strings = (
        'User'
        'Customer'
        'Activity Type')
      Properties.OnEditValueChanged = lucReportTypePropertiesEditValueChanged
    end
  end
  object dlgPrint: TdxPrintDialog
    ButtonsEnabled = [pdbPrinterProperties, pdbNetwork, pdbPreview, pdbPageSetup]
    ButtonsVisible = [pdbPrinterProperties, pdbNetwork, pdbPageSetup]
    OptionsEnabled = [pdoPrintToFile, pdoAllPages, pdoCurrentPage, pdoPageRange]
    Left = 485
    Top = 290
  end
  object dlgFileSave: TSaveDialog
    Filter = 'Excel Files (*.xlsx)|*.xlsx'
    Left = 405
    Top = 233
  end
end
