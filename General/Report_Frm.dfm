inherited ReportFrm: TReportFrm
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'ReportFrm'
  ClientHeight = 761
  ClientWidth = 1434
  Constraints.MinHeight = 800
  Constraints.MinWidth = 1450
  ExplicitWidth = 1450
  ExplicitHeight = 800
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 1286
    Height = 731
    LayoutLookAndFeel = lafCustomSkin
    ExplicitWidth = 1286
    ExplicitHeight = 731
    object trlReportSelection: TcxTreeList [0]
      Left = 11
      Top = 11
      Width = 250
      Height = 692
      Bands = <
        item
        end>
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.IncSearch = True
      OptionsData.CancelOnExit = False
      OptionsData.Editing = False
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsView.Buttons = False
      ScrollbarAnnotations.CustomAnnotations = <>
      Styles.OnGetContentStyle = trlReportSelectionStylesGetContentStyle
      TabOrder = 0
      OnFocusedNodeChanged = trlReportSelectionFocusedNodeChanged
      OnMouseDown = trlReportSelectionMouseDown
      object colReport: TcxTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Caption.Text = 'Report Selection'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 241
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object colIndex: TcxTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 100
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object lucBillableFromPeriod: TcxLookupComboBox [1]
      Left = 10000
      Top = 10000
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'THE_PERIOD'
      Properties.ListColumns = <
        item
          FieldName = 'THE_PERIOD'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = VBDM.dtsPeriod
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 100
    end
    object lucBillableToPeriod: TcxLookupComboBox [2]
      Left = 10000
      Top = 10000
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'THE_PERIOD'
      Properties.ListColumns = <
        item
          FieldName = 'THE_PERIOD'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = VBDM.dtsToPeriod
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 100
    end
    object grdBillableSummary: TcxGrid [3]
      Left = 10000
      Top = 10000
      Width = 830
      Height = 383
      TabOrder = 18
      Visible = False
      object viewBillable: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewBillableCustomDrawCell
        OnFocusedRecordChanged = viewBillableFocusedRecordChanged
        DataController.DataSource = ReportDM.dtsBillableSummary
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,###,##0.00'
            Kind = skSum
            FieldName = 'TOTAL_BILLABLE_HOURS'
            Column = edtBhours
          end
          item
            Format = '#,###,##0.00'
            Kind = skSum
            FieldName = 'TOTAL_BILLABLE'
            Column = edtBValue
          end
          item
            Format = '#,###,##0.00'
            Kind = skSum
            FieldName = 'TOTAL_NON_BILLABLE_HOURS'
            Column = edtBNonHours
          end
          item
            Format = '#,###,##0.00'
            Kind = skSum
            FieldName = 'TOTAL_CARRY_FORWARD'
            Column = edtBCarryForward
          end
          item
            Format = '#,###,##0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'TOTAL_BILLABLE_HOURS'
            Column = edtBhours
          end
          item
            Format = '#,###,##0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'TOTAL_BILLABLE'
            Column = edtBValue
          end
          item
            Format = '#,###,##0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'TOTAL_NON_BILLABLE_HOURS'
            Column = edtBNonHours
          end
          item
            Format = '#,###,##0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'TOTAL_CARRY_FORWARD'
            Column = edtBCarryForward
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,##0.00'
            Kind = skSum
            FieldName = 'TOTAL_BILLABLE_HOURS'
            Column = edtBhours
          end
          item
            Format = '#,###,##0.00'
            Kind = skSum
            FieldName = 'TOTAL_BILLABLE'
            Column = edtBValue
          end
          item
            Format = '#,###,##0.00'
            Kind = skSum
            FieldName = 'TOTAL_NON_BILLABLE_HOURS'
            Column = edtBNonHours
          end
          item
            Format = '#,###,##0.00'
            Kind = skSum
            FieldName = 'TOTAL_CARRY_FORWARD'
            Column = edtBCarryForward
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No Billable data to display>'
        OptionsView.Footer = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
        OnCustomDrawGroupCell = viewBillableCustomDrawGroupCell
        Bands = <
          item
            Caption = 'Customer Billing Information'
          end>
        object edtBCustomerID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.EditFormat = '#,##0'
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
        object edtBPeriod: TcxGridDBBandedColumn
          DataBinding.FieldName = 'THE_PERIOD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '###0'
          Properties.EditFormat = '###0'
          Properties.ReadOnly = True
          Options.Editing = False
          Width = 400
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtBName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          GroupIndex = 0
          Options.Editing = False
          Width = 400
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtBhours: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TOTAL_BILLABLE_HOURS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtBValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TOTAL_BILLABLE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtBNonHours: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TOTAL_NON_BILLABLE_HOURS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtBNonValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TOTAL_NON_BILLABLE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtBCarryForward: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TOTAL_CARRY_FORWARD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
      end
      object lvlBillable: TcxGridLevel
        GridView = viewBillable
      end
    end
    object doctToolbar: TdxBarDockControl [4]
      Left = 267
      Top = 11
      Width = 1579
      Height = 58
      Align = dalNone
      BarManager = barManager
    end
    object lucGroupBillableBy: TcxComboBox [5]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Period'
        'Customer')
      Properties.OnChange = lucGroupBillableByPropertiesChange
      Properties.OnCloseUp = lucGroupBillableByPropertiesCloseUp
      Style.HotTrack = False
      TabOrder = 15
      Visible = False
      OnKeyDown = lucGroupBillableByKeyDown
      Width = 100
    end
    object cbxRemoveZeroBillableValues: TcxCheckBox [6]
      Left = 10000
      Top = 10000
      Caption = 'Remove items with zero billable values'
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 17
      Transparent = True
      Visible = False
    end
    object grdSystemUser: TcxGrid [7]
      Left = 10000
      Top = 10000
      Width = 1100
      Height = 574
      BorderStyle = cxcbsNone
      TabOrder = 8
      Visible = False
      object viewSystemUser: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewBillableCustomDrawCell
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
    object radDateType: TcxRadioGroup [8]
      Left = 276
      Top = 106
      Caption = 'Date Type'
      ParentBackground = False
      ParentColor = False
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Period'
        end
        item
          Caption = 'Date Range'
        end>
      Properties.OnEditValueChanged = radDateTypePropertiesEditValueChanged
      ItemIndex = 0
      Style.Color = 16053234
      TabOrder = 2
      Height = 71
      Width = 120
    end
    object radBillable: TcxRadioGroup [9]
      Left = 276
      Top = 183
      Caption = 'Billable Options'
      ParentBackground = False
      ParentColor = False
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Billable'
        end
        item
          Caption = 'Non-Billable'
        end
        item
          Caption = 'All'
        end>
      Properties.OnEditValueChanged = radBillablePropertiesEditValueChanged
      ItemIndex = 2
      Style.Color = 16053234
      TabOrder = 3
      Height = 90
      Width = 120
    end
    object radWorkType: TcxRadioGroup [10]
      Left = 276
      Top = 279
      Caption = 'Work Type'
      ParentBackground = False
      ParentColor = False
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Standard'
        end
        item
          Caption = 'Additional'
        end
        item
          Caption = 'All'
        end>
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = radWorkTypePropertiesEditValueChanged
      ItemIndex = 2
      Style.Color = 16053234
      TabOrder = 4
      Height = 90
      Width = 120
    end
    object grdPeriodListing: TcxGrid [11]
      Left = 420
      Top = 106
      Width = 121
      Height = 585
      BorderStyle = cxcbsNone
      TabOrder = 5
      object viewPeriodListing: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewBillableCustomDrawCell
        OnFocusedRecordChanged = viewPeriodListingFocusedRecordChanged
        DataController.DataSource = ReportDM.dtsPeriodListing
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = '<No Period data to display>'
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Period'
          end>
        object edtPeriod: TcxGridDBBandedColumn
          DataBinding.FieldName = 'THE_PERIOD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object lvlPeriodListing: TcxGridLevel
        GridView = viewPeriodListing
      end
    end
    object grdCustomerListing: TcxGrid [12]
      Left = 10000
      Top = 10000
      Width = 1100
      Height = 574
      TabOrder = 9
      Visible = False
      object viewCustomerListing: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewBillableCustomDrawCell
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
          MinWidth = 180
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 180
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
    object grdActivityType: TcxGrid [13]
      Left = 10000
      Top = 10000
      Width = 1100
      Height = 574
      TabOrder = 10
      Visible = False
      object viewActivityType: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewBillableCustomDrawCell
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
    object grdSummaryByActivity: TcxGrid [14]
      Left = 10000
      Top = 10000
      Width = 1100
      Height = 547
      TabOrder = 12
      Visible = False
      object viewSummaryByActivity: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewBillableCustomDrawCell
        DataController.DataSource = ReportDM.dtsTSSummaryByActivity
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'AMANDA_HRS'
            Column = edtSAAmandaHours
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'AMANDA_ITEM_VALUE'
            Column = edtSAAmandaValue
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'CHANEL_HRS'
            Column = edtSAChanelHours
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'CHANEL_ITEM_VALUE'
            Column = edtSAChanelVlaue
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'CHRISTA_HRS'
            Column = edtSAChristaHours
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'CHRISTA_ITEM_VALUE'
            Column = edtSAChristaValue
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'ALBERTUS_HRS'
            Column = edtSAAlbertusHours
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'ALBERTUS_ITEM_VALUE'
            Column = edtSAAlbetusValue
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = '<No Summary Activity data to display>'
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Activity Listing'
          end
          item
            Caption = 'Amanda'
          end
          item
            Caption = 'Chanel'
          end
          item
            Caption = 'Christa'
          end
          item
            Caption = 'Albertus'
          end>
        object edtSAPeriod: TcxGridDBBandedColumn
          DataBinding.FieldName = 'THE_PERIOD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#####0'
          Properties.EditFormat = '#####0'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          Visible = False
          MinWidth = 70
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtSAATypeID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY_TYPE_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#####0'
          Properties.EditFormat = '#####0'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          Visible = False
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtSAActivityType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY_TYPE'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtSAAmandaMins: TcxGridDBBandedColumn
          AlternateCaption = 'BarCode'
          DataBinding.FieldName = 'AMANDA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.EditFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtSAAmandaHours: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AMANDA_HRS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtSAAmandaValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AMANDA_ITEM_VALUE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtSAChanelMins: TcxGridDBBandedColumn
          AlternateCaption = 'BarCode'
          DataBinding.FieldName = 'CHANEL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.EditFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtSAChanelHours: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CHANEL_HRS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtSAChanelVlaue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CHANEL_ITEM_VALUE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtSAChristaMins: TcxGridDBBandedColumn
          AlternateCaption = 'BarCode'
          DataBinding.FieldName = 'CHRISTA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.EditFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtSAChristaHours: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CHRISTA_HRS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtSAChristaValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CHRISTA_ITEM_VALUE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtSAAlbertusMins: TcxGridDBBandedColumn
          AlternateCaption = 'BarCode'
          DataBinding.FieldName = 'ALBERTUS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.EditFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtSAAlbertusHours: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ALBERTUS_HRS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtSAAlbetusValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ALBERTUS_ITEM_VALUE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object lvlSummaryByActivity: TcxGridLevel
        GridView = viewSummaryByActivity
      end
    end
    object lucSumByActivityPeriod: TcxLookupComboBox [15]
      Left = 10000
      Top = 10000
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'THE_PERIOD'
      Properties.ListColumns = <
        item
          FieldName = 'THE_PERIOD'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = ReportDM.dtsSumByActivityPeriod
      Properties.OnChange = lucSumByActivityPeriodPropertiesChange
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 100
    end
    object lucFromDate: TcxDateEdit [16]
      Left = 600
      Top = 106
      Style.HotTrack = False
      TabOrder = 6
      Width = 100
    end
    object lucToDate: TcxDateEdit [17]
      Left = 600
      Top = 133
      Style.HotTrack = False
      TabOrder = 7
      Width = 100
    end
    object btnGetBillableData: TcxButton [18]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actGetData
      PaintStyle = bpsCaption
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      Visible = False
    end
    object navTimesheet: TcxDBNavigator [19]
      Left = 10000
      Top = 10000
      Width = 182
      Height = 42
      Buttons.ConfirmDelete = False
      Buttons.CustomButtons = <>
      Buttons.Images = imgNav
      Buttons.First.Hint = 'Go to first record'
      Buttons.First.ImageIndex = 0
      Buttons.PriorPage.Hint = 'move back 10 records'
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Hint = 'Go to previous record'
      Buttons.Prior.ImageIndex = 2
      Buttons.Prior.Visible = False
      Buttons.Next.Hint = 'Go to next record'
      Buttons.Next.ImageIndex = 4
      Buttons.Next.Visible = False
      Buttons.NextPage.Hint = 'Move forward 10 records'
      Buttons.NextPage.Visible = False
      Buttons.Last.Hint = 'Go to last record'
      Buttons.Last.ImageIndex = 5
      Buttons.Insert.Hint = 'Insert a new record'
      Buttons.Insert.ImageIndex = 6
      Buttons.Insert.Visible = False
      Buttons.Append.Hint = 'Add a neew record'
      Buttons.Append.ImageIndex = 0
      Buttons.Delete.Hint = 'delete selected records'
      Buttons.Delete.ImageIndex = 7
      Buttons.Delete.Visible = False
      Buttons.Edit.Hint = 'Edit selected record'
      Buttons.Edit.Visible = False
      Buttons.Post.Hint = 'Save changes'
      Buttons.Post.ImageIndex = 8
      Buttons.Cancel.Hint = 'Cancel changes'
      Buttons.Cancel.ImageIndex = 9
      Buttons.Refresh.Hint = 'Refresh dataset'
      Buttons.Refresh.ImageIndex = 10
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Hint = 'Filter dataset'
      Buttons.Filter.Visible = False
      DataSource = ReportDM.dtsTimesheet
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
      Visible = False
    end
    object grpMain: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object litReportSelectionList: TdxLayoutItem
      Parent = grpMain
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = trlReportSelection
      ControlOptions.OriginalHeight = 256
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpReports: TdxLayoutGroup
      Parent = grpReportSelection
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 5
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 3
    end
    object grpBillableSummary: TdxLayoutGroup
      Parent = grpReports
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Billable Summary'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 4
    end
    object litBillableFromPeriod: TdxLayoutItem
      Parent = grpPeriod
      AlignVert = avCenter
      CaptionOptions.Text = 'From'
      Control = lucBillableFromPeriod
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litBillableGrid: TdxLayoutItem
      Parent = grpBillableSummary
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = grdBillableSummary
      ControlOptions.OriginalHeight = 350
      ControlOptions.OriginalWidth = 830
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpPeriod: TdxLayoutGroup
      Parent = grpBillableSummary
      CaptionOptions.Text = 'Billable Summary Options'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object litBillableToPeriod: TdxLayoutItem
      Parent = grpPeriod
      AlignVert = avCenter
      CaptionOptions.Text = 'To'
      Control = lucBillableToPeriod
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litToolbar: TdxLayoutItem
      Parent = grpData
      AlignHorz = ahClient
      Control = doctToolbar
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 700
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpData: TdxLayoutGroup
      Parent = grpMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object litGroupBillableBy: TdxLayoutItem
      Parent = grpPeriod
      CaptionOptions.Text = 'Group By'
      Control = lucGroupBillableBy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grpDetailByUser: TdxLayoutGroup
      Parent = grpReports
      CaptionOptions.Text = 'Detail User'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grpOptions: TdxLayoutGroup
      Parent = grpReportSelection
      CaptionOptions.Text = 'General Options'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object grpReportSelection: TdxLayoutGroup
      Parent = grpData
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpDetailByCustomer: TdxLayoutGroup
      Parent = grpReports
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Detail by Customer'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object grpDetailByActivity: TdxLayoutGroup
      Parent = grpReports
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Detail By Activity'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object grpSummaryByActivity: TdxLayoutGroup
      Parent = grpReports
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Summary by Activity'
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object litDetailByUser: TdxLayoutItem
      Parent = grpDetailByUser
      AlignVert = avClient
      Control = grdSystemUser
      ControlOptions.OriginalHeight = 245
      ControlOptions.OriginalWidth = 356
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litDetailByCustomer: TdxLayoutItem
      Parent = grpDetailByCustomer
      AlignVert = avClient
      Control = grdCustomerListing
      ControlOptions.OriginalHeight = 245
      ControlOptions.OriginalWidth = 620
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litDetailByActivity: TdxLayoutItem
      Parent = grpDetailByActivity
      AlignVert = avClient
      Control = grdActivityType
      ControlOptions.OriginalHeight = 245
      ControlOptions.OriginalWidth = 562
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litSummaryByActivity: TdxLayoutItem
      Parent = grpSummaryByActivity
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 1100
      Control = grdSummaryByActivity
      ControlOptions.OriginalHeight = 245
      ControlOptions.OriginalWidth = 726
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litZeroBillableValues: TdxLayoutItem
      Parent = grpPeriod
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxRemoveZeroBillableValues
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 244
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litDateType: TdxLayoutItem
      Parent = grpOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = radDateType
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 71
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litBillable: TdxLayoutItem
      Parent = grpOptions
      CaptionOptions.ImageIndex = 0
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = radBillable
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 90
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litWorkType: TdxLayoutItem
      Parent = grpOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = radWorkType
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 90
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grpPeriodListing: TdxLayoutGroup
      Parent = grpReportSelection
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Period Listing'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object litlitPeriodListing: TdxLayoutItem
      Parent = grpPeriodListing
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = grdPeriodListing
      ControlOptions.OriginalHeight = 281
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpSummaryByActivityOptions: TdxLayoutGroup
      Parent = grpSummaryByActivity
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object litSumByActivityPeriod: TdxLayoutItem
      Parent = grpSummaryByActivityOptions
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Period'
      Control = lucSumByActivityPeriod
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpDateRange: TdxLayoutGroup
      Parent = grpReportSelection
      CaptionOptions.Text = 'Date Range'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object litFromDate: TdxLayoutItem
      Parent = grpDateRange
      CaptionOptions.Text = 'From'
      Control = lucFromDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litToDate: TdxLayoutItem
      Parent = grpDateRange
      CaptionOptions.Text = 'To'
      Control = lucToDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litGetBillableData: TdxLayoutItem
      Parent = grpPeriod
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnGetBillableData
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grpTimesheet: TdxLayoutGroup
      Parent = grpBillableSummary
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object litTimesheet: TdxLayoutItem
      Parent = grpTimesheetDetail
      AlignVert = avClient
      CaptionOptions.Text = 'Timesheet Details'
      CaptionOptions.Visible = False
      ControlOptions.OriginalHeight = 421
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litNavTimesheet: TdxLayoutItem
      Parent = grpTimesheet
      AlignHorz = ahLeft
      Control = navTimesheet
      ControlOptions.OriginalHeight = 42
      ControlOptions.OriginalWidth = 182
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpTimesheetDetail: TdxLayoutGroup
      Parent = grpTimesheet
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object litCarryForwardTimesheet: TdxLayoutItem
      Parent = grpTimesheetDetail
      AlignVert = avClient
      CaptionOptions.Text = 'Carry Forward Details'
      CaptionOptions.Visible = False
      Index = 1
    end
    object grpCustomerGroup: TdxLayoutGroup
      Parent = grpReports
      CaptionOptions.Text = 'Customer Groups'
      ButtonOptions.Buttons = <>
      Index = 5
    end
  end
  object cbxOepnDocument: TcxCheckBox [1]
    Left = 947
    Top = 729
    Caption = 'Open document after export'
    State = cbsChecked
    TabOrder = 1
    Transparent = True
  end
  object grdTimesheetBillable: TcxGrid [2]
    Left = 286
    Top = 93
    Width = 1181
    Height = 421
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
      OnCustomDrawGroupCell = viewTimesheetBillableCustomDrawGroupCell
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
  object cbxAlwaysMaximize: TcxCheckBox [3]
    Left = 605
    Top = 747
    Caption = 'Always open in maximized mode'
    Properties.ImmediatePost = True
    Properties.UseAlignmentWhenInplace = True
    Properties.OnEditValueChanged = cbxAlwaysMaximizePropertiesEditValueChanged
    State = cbsChecked
    TabOrder = 3
    Transparent = True
  end
  object grdTimesheet: TcxGrid [4]
    Left = 1343
    Top = 240
    Width = 1181
    Height = 421
    TabOrder = 4
    object viewTimesheet: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = viewBillableCustomDrawCell
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
      OnCustomDrawGroupCell = viewTimesheetBillableCustomDrawGroupCell
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
        Properties.OnEditValueChanged = lucTSActivityDatePropertiesEditValueChanged
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
        OnGetDisplayText = edtTSInvIDGetDisplayText
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
        OnGetDisplayText = edtTSInvIDGetDisplayText
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
  object grdCarryForwardDetail: TcxGrid [5]
    Left = 1302
    Top = 314
    Width = 1181
    Height = 421
    TabOrder = 5
    object viewCarryForwardDetail: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = viewBillableCustomDrawCell
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
      OnCustomDrawGroupCell = viewTimesheetBillableCustomDrawGroupCell
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
        Properties.OnEditValueChanged = lucTSActivityDatePropertiesEditValueChanged
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
        OnGetDisplayText = edtTSInvIDGetDisplayText
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
        OnGetDisplayText = edtTSInvIDGetDisplayText
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
  object grdCustomerGroup: TcxGrid [6]
    Left = 855
    Top = 220
    Width = 471
    Height = 200
    TabOrder = 6
    object viewCustomerGroup: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = ReportDM.dtsCustomerGroup
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Customer Group Listing'
        end>
    end
    object lvlCustomerGroup: TcxGridLevel
      GridView = viewCustomerGroup
    end
  end
  object grdCustomer: TcxGrid [7]
    Left = 855
    Top = 440
    Width = 471
    Height = 200
    TabOrder = 7
    object viewCustomer: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.GroupByBox = False
      Bands = <
        item
        end>
    end
    object lvlCustomer: TcxGridLevel
      GridView = viewCustomer
    end
  end
  inherited styRepository: TcxStyleRepository
    Left = 440
    Top = 310
    PixelsPerInch = 96
    object styCategory: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
  end
  inherited actList: TActionList
    Images = img32
    Left = 355
    Top = 310
    object actClose: TAction
      Caption = 'Close'
      ImageIndex = 0
      OnExecute = DoCLoseReportForm
    end
    object actGetData: TAction
      Caption = 'Get'
      ImageIndex = 1
      OnExecute = DoGetData
    end
    object actPreview: TAction
      Caption = 'Preview'
      ImageIndex = 2
      OnExecute = DoPrint
    end
    object actPrint: TAction
      Tag = 1
      Caption = 'Print'
      ImageIndex = 3
      OnExecute = DoPrint
    end
    object actExcel: TAction
      Tag = 2
      Caption = 'Excel'
      ImageIndex = 4
      OnExecute = DoExcel
    end
    object actPDF: TAction
      Tag = 3
      Caption = 'PDF'
      ImageIndex = 5
      OnExecute = DoPDF
    end
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    Left = 355
    Top = 365
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
    ImageInfo = <
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000203040411200909274A0909325F09092E5B0404
          1D3B000009120000000100000000000000000000000000000000000000000000
          00000000000100001120040440850B0B69D909097CF708087FFD09097EFC0909
          78F0070768C40404386600000910000000000000000000000000000000000000
          000101011E37080869C70A0A7EFC090981FF090980FF0A0A80FF0A0A80FF0A0A
          80FF0A0A80FF0A0A7DF7050553A400000E1B0000000000000000000000000101
          152709096CCC080880FF00007CFF00007DFF00007EFF080882FF060683FF0000
          80FF00007DFF01017CFF09097DFC050552A20000060F00000000000003070606
          4D99090980FD01017EFF1C1C8EFF9D9DCBFF31319AFF000080FF000080FF4E4E
          A6FF9090C5FF0B0B86FF040482FF09097DF602023462000000010101182E0909
          72E60B0B86FF020284FFACACD4FFFFFFFFFFEEEEF5FF232396FF4343A5FFFFFF
          FFFFFFFFFFFF7575BAFF040486FF0C0C88FF070769C000000910040433630C0C
          82FC0D0D8AFF020287FF4747A6FFFEFEFCFFFFFFFFFFECECF3FFFAFAFBFFFFFF
          FFFFE6E6F1FF28289BFF05058CFF0D0D8CFF0B0B7EEA01011A30050546850D0D
          8BFF0E0E8EFF0B0B91FF00008AFF3939A5FFF6F6F9FFFFFFFFFFFFFFFFFFE0E0
          EEFF1C1C9AFF00008EFF0E0E93FF0F0F90FF0C0C88F7020227490A0A4D880F0F
          8EFF0E0E92FF0B0B95FF000091FF4545AAFFFBFBFBFFFFFFFFFFFFFFFFFFE6E6
          F1FF26269FFF000094FF0E0E97FF0F0F95FF11118FF805052B4B0B0B3F6B1515
          95FD0E0E95FF060696FF5353B1FFFFFFFFFFFFFFFFFFE2E2EEFFF4F4F6FFFFFF
          FFFFF0F0F5FF3131A6FF0A0A9AFF0F0F96FF191991EE05052036060623382020
          94EC0D0D97FF070798FFA8A8D3FFFFFFFFFFE5E5EFFF1D1DA6FF3D3DB0FFFFFF
          FAFFFFFFFFFF7373BFFF08089DFF11119BFF232386CB01010B150000070B2323
          74AB17179DFE05059BFF1B1BA3FF8D8DC9FF2E2EAEFF0303A9FF0202A8FF4747
          B7FF8181C7FF0F0FA2FF09099FFF2121A6FA1717517500000002000000000A0A
          26373232A0DD1414A3FF0808A3FF0B0BA9FF0E0EAEFF1616B4FF1414B5FF0E0E
          B1FF0B0BACFF0909A7FF1E1EA9FE2D2D87B90202101800000000000000000000
          000212123A4F3B3BA7DC2323AFFE1111ABFF1313B0FF1515B7FF1616BAFF1313
          B4FF1414B0FF2C2CB8FC343493BF07071E2B0000000000000000000000000000
          0000000000020B0B2635323283A74343B7E93434C1FC2F2FC4FF3030C6FF3A3A
          C2FA4545B2DE28286C890404141E000000000000000000000000000000000000
          000000000000000000000000060A0A0A25321A1A4C622222647C222261781717
          445606061B250000030400000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000040401060505020700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0C
          0514715A2C917F6A3E98110D0A13000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000B09030F6E56
          2695BE9747FAC79E51F864543271020200030000000000000000000000000000
          000000000000000000000000000000000000000000000706010B5F491F88B38C
          3CF8C19847FFC89D4CFFBB9856DD2A23182F0000000000000000000000000000
          000000000000000000000000000000000000050300084F3F177BA58234F5B68F
          3DFFBE9644FFC49B4AFFCA9F50FE8C7546A30907040B00000000000000000000
          0000000000000000000000000000040200064334106E9C762AF1A98233FEB38C
          3AFFBA9341FFC29948FFCA9D4DFFC7A156F34F422D5901010001000000000000
          00000000000000000000000000002119083670591BBA634D18A155441883A380
          34ECB7903EFFBE9643FFB38D46E3B18C43DFAC8A58CB1B1711200806020E0403
          01090000000000000000000000000704010B0C080213030100041A140729997A
          30E6B48D3BFFBA9341FF705B368820190B296B542B793D331E42241C0B3B3227
          0C4D00000001000000000000000000000000000000000000000029200A3E9F7A
          2EF2B18937FFB38C3EFA483C2457000000000000000202020003181307297056
          1CAA100E031A00000000000000000000000000000000000000014B391271A580
          2DFDAC8733FFA3833BE5231F122B0000000000000000000000000A07030E7A5F
          1FBA5945168F0605010C000000000000000000000000100A0318826420C4A27D
          2BFFA88230FF846B35B30807030B000000000000000000000000000000014937
          1271987426F25842168D130F04210604010A140F04205D4817979C7825FA9F79
          28FFA37F2EF7463A1F5C0000000000000000000000000000000000000000140E
          051F7A5C21CF9C7626FB876622D874581CBB876522D89C7526FB9F7927FF9A78
          25FE7D632AB80D0C071300000000000000000000000000000000000000000101
          00012E220C4D8C6D24E39F7A28FF9F7A28FF9F7A28FF9F7A28FF9C7926FE8364
          29D3251D10360000000000000000000000000000000000000000000000000000
          00000200000327200B426F561CB28D6A22E2916F25EB886921DB644D1CA01E18
          0B30010100010000000000000000000000000000000000000000000000000000
          000000000000000000000704010B161105251C15062E120E041E030200070000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  inherited img32: TcxImageList
    FormatVersion = 1
    ImageInfo = <
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020202030702020308020205080101
          0104000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000303060E0D0D1F3A18183F750F0F50990C0C5DB206065CB70A0A5DB70C0C
          54A10A0A3D780808244701010C17000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000008120303
          2E5A08085CB7080877EC060680FD050580FF070780FF070780FF070780FF0707
          80FF08087EFE090979F4080865CC05053E7C0101152A00000104000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000003050202234507075DB90909
          7AF6090981FF090981FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A80FD06066FDE02023E7C00000C170000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000070D04043A77080873E80A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A7DFA07075BB80101
          1530000001010000000000000000000000000000000000000000000000000000
          00000000000000000000000007100404468F0A0A7AF60A0A81FF0A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A
          81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A81FF0A0A7FFE0909
          61D00101193B0000010100000000000000000000000000000000000000000000
          00000000000000000409050542860A0A7BF80A0A81FF0A0A81FF0A0A81FF0A0A
          81FF0A0A80FF0A0A82FF0A0A82FF0A0A83FF0B0B83FF0B0B83FF0B0B83FF0B0B
          83FF0B0B83FF0B0B83FF0A0A82FF0A0A82FF0A0A82FF0A0A81FF0A0A81FF0A0A
          81FF090960CF0101162E00000000000000000000000000000000000000000000
          0000000000020303305E080879F10A0A81FF0A0A81FF0A0A81FF0A0A82FF0808
          82FF050581FF040482FF070783FF0A0A84FF0B0B86FF0B0B86FF0B0B86FF0B0B
          86FF090985FF050584FF040482FF060683FF0A0A83FF0B0B83FF0A0A82FF0A0A
          80FF0A0A7FFE070759B400000A15000000000000000000000000000000000000
          00000101122607076CD50A0A81FF0A0A81FF0A0A82FF0B0B83FF060681FF0000
          80FF282893FF3D3D9EFF020285FF020284FF0B0B87FF0C0C89FF0C0C89FF0909
          88FF000082FF16168DFF4545A0FF0E0E89FF000081FF090984FF0B0B85FF0B0B
          84FF0A0A82FF0A0A7DF904043B74000000030000000000000000000000000000
          0104050544870A0A80FD0A0A82FF0B0B83FF0B0B84FF070785FF000080FF4C4C
          A3FFFEFEF9FFFFFFFFFF9797C5FF020287FF030387FF0C0C8AFF0A0A8AFF0000
          85FF232394FFDCDCE7FFFFFFFFFFC8C8DEFF17178DFF000084FF0B0B86FF0B0B
          86FF0B0B85FF0B0B83FF09096FD9010111250000000000000000000000000101
          122308086CDA0A0A82FF0B0B84FF0B0B85FF0C0C87FF030384FF333399FFFFFF
          FAFFFFFFFFFFFFFFFFFFFFFFFFFF9393C5FF030389FF020289FF000088FF2222
          94FFD9D9E7FFFFFFFFFFFFFFFFFFFFFFFFFFC2C2D9FF070789FF0B0B89FF0C0C
          88FF0C0C87FF0B0B86FF0B0B81FC040438760000010100000000000000000303
          30610A0A7DFA0B0B84FF0C0C86FF0C0C88FF0C0C89FF030387FF6060ADFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393C4FF000087FF1C1C94FFD8D8
          E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF8FF171790FF0A0A8BFF0D0D
          8BFF0D0D89FF0C0C88FF0C0C87FF070760C20000061000000000000003050606
          52A20B0B85FF0C0C87FF0C0C88FF0D0D8AFF0D0D8BFF07078AFF12128FFFC7C7
          DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9AC6FFD0D0E2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7ABAFF00008AFF0C0C8DFF0E0E
          8DFF0D0D8CFF0D0D8AFF0C0C89FF0B0B7BEB02021A320000000000000A130909
          68CC0C0C87FF0C0C89FF0D0D8AFF0D0D8CFF0E0E8EFF0C0C8EFF01018CFF1515
          92FFC4C4DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7AB9FF00008CFF08088FFF0F0F91FF0E0E
          8FFF0E0E8EFF0D0D8DFF0D0D8BFF0C0C87FB04042F5A00000000010112230A0A
          75E10C0C89FF0D0D8BFF0D0D8DFF0E0E8EFF0E0E90FF0F0F91FF0D0D92FF0202
          8EFF161694FFC3C3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7979BAFF01018FFF080893FF101094FF0F0F93FF0F0F
          92FF0F0F90FF0E0E8FFF0E0E8DFF0D0D8BFF05053C7B000000000101182E0B0B
          7DEA0D0D8BFF0D0D8DFF0E0E8FFF0F0F90FF0F0F92FF101094FF101095FF0E0E
          97FF010192FF0A0A91FFC3C3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF7373B7FF000090FF080896FF111198FF111197FF101096FF1010
          94FF0F0F92FF0F0F91FF0E0E8FFF0E0E8DFF0707448C0000010101011A301212
          84EB0D0D8CFF0E0E8EFF0F0F90FF0F0F92FF101094FF101096FF111197FF0E0E
          98FF000094FF191996FFD3D3E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF8A8AC1FF000092FF080898FF11119BFF111199FF111198FF1010
          96FF101095FF0F0F93FF0E0E90FF111191FF0A0A468E00000101010115271919
          87E510108FFF0F0F90FF0F0F92FF101094FF101096FF111198FF0E0E9AFF0202
          96FF24249CFFD8D8E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9393C5FF060695FF09099BFF11119CFF11119AFF1111
          98FF101097FF101095FF0D0D92FF1C1C9AFF0A0A47830000000000000D181A1A
          80D5161695FF0D0D91FF101094FF101096FF111198FF0F0F9AFF030396FF2525
          9CFFD8D8E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9494C5FF070796FF09099CFF12129CFF1212
          9BFF111199FF101097FF0D0D93FF2727A2FD0606386600000000000005091717
          74B322229FFF0D0D90FF101096FF111198FF11119AFF0B0B9AFF1E1E9AFFDDDD
          E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7DBAFFBCBCD7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393C3FF060698FF10109EFF1212
          9CFF12129AFF101097FF111197FF2E2EA1F20101244000000000000000010B0B
          4D793535ADFD0C0C91FF101096FF111199FF12129CFF09099BFF6363B2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7878BBFF00009BFF13139FFFC3C3
          DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FF1B1B9EFF0F0FA0FF1212
          9EFF12129CFF0E0E98FF2020A3FF292990D401010F1A00000000000000000202
          20363535A3EA1A1A9DFF0E0E97FF12129BFF12129DFF0A0A9DFF2B2B9EFFF0F0
          EFFFFFFFFFFFFFFFFFFFFFFFFFFF7979BCFF0505A0FF0D0DAAFF0808A8FF1919
          A1FFC4C4DBFFFFFFFFFFFFFFFFFFFFFFFFFFACACCEFF09099CFF1111A2FF1212
          A0FF11119EFF0D0D98FF3A3AB3FE13135E930000010400000000000000000000
          060A1B1B6CA93F3FB6FF0B0B95FF11119BFF12129FFF0F0FA1FF03039DFF3A3A
          A3FFEAEAEBFFFFFFFCFF7D7DBCFF0505A2FF0F0FACFF1515AEFF1414AEFF0909
          ABFF1A1AA2FFC4C4D9FFFFFFFFFFB0B0D0FF10109DFF0A0AA4FF1212A4FF1313
          A1FF0E0E9CFF1E1EA5FF3F3FAEEB0202233D0000000000000000000000000000
          0000030326424343AFEB2626A9FF0D0D99FF1111A0FF1313A2FF1111A3FF0505
          A2FF1B1BA1FF2A2AA5FF0808A4FF0F0FADFF1717B0FF1717B1FF1717B1FF1515
          B1FF0B0BACFF1111A4FF2F2FA7FF0D0DA3FF0B0BA7FF1313A7FF1414A5FF1010
          A2FF0F0F9FFF4B4BBFFE17176A9C000004090000000000000000000000000000
          00000000030712125A8B5555C5FB1818A3FF0D0D9EFF1212A2FF1414A6FF1414
          A8FF1111AAFF1212ADFF1515AFFF1717B2FF1818B2FF1818B3FF1818B4FF1818
          B3FF1717B2FF1414B1FF1313AFFF1313ADFF1414ABFF1515A9FF1212A4FF0E0E
          A1FF4141BDFF3939A2D702021C2C000000000000000000000000000000000000
          00000000000000000F1A25257FB75959CAFE1717A4FF0D0DA0FF1313A6FF1515
          A9FF1616ACFF1616AEFF1717B0FF1818B2FF1818B4FF1919B6FF1919B6FF1919
          B6FF1818B5FF1818B3FF1717B1FF1717AFFF1616ACFF1212A8FF0E0EA3FF3C3C
          BEFF4F4FBBEC0808385700000002000000000000000000000000000000000000
          000000000000000000000101182A2C2C8DC46161D0FE2121AEFF0D0DA3FF1212
          A8FF1616ADFF1717AFFF1717B2FF1818B4FF1919B6FF1919B8FF1A1AB9FF1919
          B8FF1919B7FF1818B5FF1818B2FF1616AFFF1111ABFF1111A9FF4848C7FF5757
          C2EE0C0C476C0000040600000000000000000000000000000000000000000000
          000000000000000000000000000000001829232380B46767D5FA4343C4FF1313
          AAFF0E0EA8FF1313AEFF1717B3FF1919B5FF1919B8FF1A1ABAFF1A1ABCFF1A1A
          BAFF1818B8FF1717B5FF1212B1FF0E0EADFF2727B7FF6262D7FF4A4AB7E40A0A
          4365000003070000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000D18111159855252BBE76E6E
          DAFE4545C7FF1D1DB4FF0F0FAEFF0F0FB1FF1010B4FF1212B8FF1313BAFF1010
          B7FF0E0EB4FF1616B5FF3030C2FF6060D8FF6868D6F82A2A8DBC04042B400000
          0104000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000004060202243A1818
          709E4F4FBAE47373DEFC7070E1FF5D5DD9FF4E4ED2FF4747D0FF4A4AD2FF5757
          D7FF6969E0FF7676E2FE6363D1F3343496C50A0A436800000C15000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          050700001C2C080849691E1E79A437379FC84646B2D94C4CBBDF4A4AB8DD3E3E
          A9D22A2A8AB713135D8704042E4700000C140000010100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000030501010B100101131B010116200101141F0000
          0F16000006090000010100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020000020302000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B1509246F5F328C817243992C281835010000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001A1409228E7136BBC59E4CFDD0A658FFAFA068C71A18101E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001310061B84672FB0BE9946FDC79C4BFFC99F4CFFD1AD60FC776946870504
          0105000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0B
          0415775E29A4BB9241FCC19948FFC59C4BFFCA9E4DFFCC9F4EFFCBA96AE83731
          1F41000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000B0903106C54
          2298B38B3EFABC9443FFC09846FFC39B49FFC89E4DFFCB9F4EFFD2A858FFA58E
          5CB7100D07130000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000805020C604A1D8BAC87
          37F8B7903EFFBB9341FFBE9645FFC29948FFC69C4BFFCAA04FFFCCA04EFFD2AE
          65F86254386F0202000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000050401095241177EA58334F5B28B
          39FFB58E3CFFB99140FFBD9543FFC09846FFC49B4AFFC89E4DFFCBA050FFCFA4
          53FFC1A068DC2823162E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000004020006473714719E7A2DF2AC8734FFB08A
          38FFB48D3BFFB7903EFFBB9342FFBF9645FFC29A48FFC79D4CFFCBA04FFFCDA1
          4FFFD3AA5EFE917D54A10907040B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000030100043E2F0E64967229EDA7822FFFAB8533FFAE88
          36FFB28C39FFB68F3DFFB99240FFBD9544FFC19847FFC59B4AFFC99F4EFFCDA2
          50FFD0A251FFD2B068F24D422F57010100010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000002000003352A0E578E6E22E8A27C2AFFA5822EFFA98431FFAD87
          35FFB08A38FFB48D3BFFB8913FFFBB9442FFBF9745FFC39A49FFC79D4CFFCBA0
          50FFCEA351FFD2A757FFB5996DCC1B170E1F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010000012B250B488B6D24E29F7A28FF9E7729FD987529F08B6928D47C63
          25BCA68234F5B28C3AFFB68F3DFFBA9241FFBD9544FFC19946FFC49B4AFFC69C
          4DFECCA150FFD0A352FFD6B165FC7D6C48890404010600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000020400065E4E19927F621FCE654E18A34133106C261C093B100C04191C17
          082B9A792DE4B18A38FFB58E3CFFB8913FFFBC9443FFBF9644FFC09A4DF97F67
          369F977539C0C79B4FF5D1A554FFCFAE6FE93A33224200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010C0A02130C0B0214030100050000000000000000000000001C16
          082B9A7A2DE8AF8937FFB38C3AFFB78F3EFFBA9341FFBC9340FFBE9A54EC2F2A
          1C330D09051243341A54917139B4C8A156F09F885BAE0806030A00000001201A
          0A320B09020F0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000241D
          0A38A07B2FF0AE8835FFB18B39FFB58E3CFFB99140FFB9913EFFAF9255D81815
          0E1B00000000000000000A08040D382B16455449316007050309010101015843
          17893D2E0F5D0000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003328
          0E4FA27E2EF8AC8634FFB08A37FFB38D3BFFB7903DFFB98F3DFF977F55B80806
          030A000000000000000000000000000000000000000000000000000000004334
          12707D6220C10E0C021600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004B39
          1577A47F2FFEAA8532FFAE8836FFB28B39FFB48D3CFFBA9342FF716042880101
          000100000000000000000000000000000000000000000000000000000000281F
          0A42936F23ED4634126E00000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000030300076C53
          1BACA5802EFFA98331FFAC8734FFB08A38FFB28B38FFBA9248F7433B28500000
          0000000000000000000000000000000000000000000000000000000000001713
          09258A6B23E1896923DB1E160830000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000161105258968
          24DEA37E2CFFA78230FFAB8533FFAF8836FFAF8835FFAB8D4EDD1C1810220000
          0000000000000000000000000000000000000000000000000000000000000606
          040C785F1FB79C7928FE6C531CAE0C0902140000000000000000000000000000
          0000000000000000000000000000000000000000000000000002453412719C75
          26FBA27D2BFFA6812EFFA98431FFAC8634FFAF8836FF887445A6050301070000
          0000000000000000000000000000000000000000000000000000000000000000
          00014B3B12719B7928FC997425F95543158C0805010C00000000000000000000
          0000000000000000000000000000000000000000000018110526846523D39F7A
          28FF9F7B28FFA47E2DFFA88230FFA98430FFAE8B40F7493F2957000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E16062E8F6C25E59F7A28FF987225F5524015870A070212000000000000
          0000000000000000000000000000000000000E0A0317674F1AA79E7728FD9F7A
          28FF9E7927FFA27D2BFFA6802DFFA6802DFF987D4BCD13100A19000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000005030008634D18A29F7A28FF9F7A28FF9B7827F86A521AAB231A08380403
          0009000000000000000005030008211908376C531AAF9C7825FA9F7A28FF9F7A
          28FF9F7A28FFA17C2AFFA27D2AFFA78533FB594B327301010001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000281E0A40906F25EB9F7A28FF9F7A28FF9C7A28FE8F6E23E76E55
          1BB0543F1484513F14846C531AAF8E6E25E69C7A28FE9F7A28FF9F7A28FF9F7A
          28FF9F7A28FF9F7A28FFA07B27FF917642CB15130C1C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000005020007584616919B7928FC9F7A28FF9F7A28FF9F7A28FF9F7A
          28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A
          28FF9F7927FF9C7624FF9F8035F1433822580101000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000130E041F785C1EC09C7A28FE9F7A28FF9F7A28FF9F7A
          28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A
          28FF9D7825FF9D7D2DF965552B8A060402090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001F170731846620C89C7928FE9F7A28FF9F7A
          28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A27FF9D78
          26FF9D7A2BF86B59299A0C0A0513000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000119150729694F19A8967525F49F7A
          28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9F7A28FF9C7928FE9374
          2CE45545207B0D0B051000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000806010E32270C546A52
          1BAC896822DD957326F0977627F6977225F3906F23E87D6020C956411789231C
          0B33030100050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000503
          0008140F0420221908392A1F0A45261E093F1A14062C0C080213000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00020B4368891482C8F41277B8E307283E550000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010B40
          6280148EDCFD148FDFFE148FDFFE138AD5FA06263A4F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001082E465F158E
          DBFC1691E1FE1592E2FF1591E1FE1591E0FD0E5E91AD00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001061F2E42178CD6F71793
          E3FE1793E3FE1795E5FF1794E4FE1693E2FD0D55839600000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004121B2A1785CBEC1995E5FE1995
          E5FE1997E7FF1995E5FE1895E5FE1583C9E0020C131A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002090D17177BBBDB1B97E7FE1B97E7FE1B99
          E9FF1B98E8FE1A97E7FE198DD7EF0419272F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000003050A176EA6C51C99E8FD1D99E9FE1D9BEBFF1D9A
          EAFE1C99E9FE1C96E4F9072A4049000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000002155E8DAB1E9BEAFD1F9BEBFE1F9CECFF1F9CECFF1E9B
          EBFE1E9AE9FC0C3D5D6700000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000011045677E209CEAFD219DEDFE219EEEFF219EEEFF209DEDFE209C
          EBFD11547E890000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000002000000020000000100000001000000000000
          0000000000011F89CDE2239FEFFE23A0F0FF23A0F0FF229FEFFE229EEDFD1669
          9EAA000001020000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000010000032D230D496951
          1F9793712ACBAB822FE7B18731EEA27C2DDD7F6325B4503D17740F0B041D0000
          00020B0D0E163B9FDFF026A1F0FE25A2F2FF24A1F1FE24A0EFFD1B7BB9C50104
          070A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000135290F519E792CD8C99935FDD4A0
          36FDD7A237FED7A237FED7A237FED7A237FED6A136FECF9D36FDBE9034F77057
          259C9C988EC2A9C8DBFE32A6F1FE27A3F2FE26A2F1FD208BCFDB020C12170000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000030200077056209DCA9A36FDD6A137FED7A237FED8A3
          38FFD9A438FFD9A438FFD9A438FFD9A438FFD8A338FFD7A237FED7A238FED4A1
          37FEC39945FEC9BFABFEB8CDD9FE4F93BED015567F86030E151A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000002010005826425B2D3A038FDD8A338FED9A438FFD8A338FED8A3
          38FED7A338FDD6A238FDD6A238FDD6A338FDD8A338FED8A338FED8A338FED9A4
          39FFD9A539FFCA9B3EFEADA38ADD0E0E0E150000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000168501F8FD5A239FDD9A43AFED9A43AFED9A439FED7A339FDA07A
          2CC74A391776281F0F51221B0E4A3328125F6C532096C99936EFD9A439FED9A4
          3AFEDAA53AFFD9A53AFEBC9137EE171207250000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000261E0B3CCF9E39FBDAA53BFEDAA63BFEDAA53BFEC99937EE392C13600908
          06270707072B0404041D040403180404041A06060522110E082E866626AFD8A5
          3BFDDAA53BFEDAA53BFEDAA53BFE8E6C29BA0000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000192702BBBDCA73CFEDCA73DFEDCA73CFECF9D39F1221B0D430807072D0202
          02100000000000000000000000000000000000000000010100070605041A7B5E
          25A4DAA73CFDDCA73DFEDCA73DFED6A43CFD2C220D4200000000000000000000
          000000000000000000000000000000000000000000000000000000000000140F
          0625D5A23CFBDDA83EFEDEA93EFEDBA83EFD4A3A18710707072B010101070000
          0000000000000000000000000000000000000000000000000000000000000706
          0416BA8E35DBDDA83EFEDEAA3EFFDDA83EFE816327A400000001000000000000
          000000000000000000000000000000000000000000000000000000000000523F
          186DDEA93FFDDFAA40FEDFAA3FFEC39438E30B0906240202020E000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          000252411B68DEA940FDE0AB40FFDFAA40FEC49639EA01000003000000000000
          0000000000000000000000000000000000000000000000000000000000017F62
          269CE0AB41FEE2AD41FFE0AB41FE755B25990606062400000000000000000000
          0000000000000000000000000000000000000000000000000000000000002020
          202217130B1ADEAB41FCE1AC41FEE0AB41FEDCA840FC110D0520000000000000
          0000000000000000000000000000000000000000000000000000000000019774
          2DB2E1AC42FEE3AE43FFE0AB42FD503E1C760404041800000000000000000000
          0000000000000000000000000000000000000000000000000000000000015655
          555902020103D3A240EEE2AD43FEE3AE43FFDFAB42FD221A0A38000000000000
          0000000000000000000000000000000000000000000000000000000000019B78
          2EB2E3AE44FEE4AF44FFE2AD44FD4E3E1B751313122701010102000000000000
          00000000000000000000000000000000000000000000000000002D2D2D316463
          636702010103D2A23FEDE3AE44FEE4AF44FFE1AD44FD251C0B39000000000000
          0000000000000000000000000000000000000000000000000000000000018B6B
          2A9DE4AF46FEE6B146FFE4AF45FE71582696111111244747474B000000010000
          000000000000000000000000000000000000000000001919191D747474784C4C
          4C4F120F0A17DFAC45FBE4AF46FEE5B046FEE1AD44FC16110623000000000000
          000000000000000000000000000000000000000000000000000000000000614B
          1E70E4AF47FDE6B147FEE5B047FEBC923CDF0504030C5A5A5A605C5C5C5F1919
          191D0000000100000001000000010808080C3E3E3E417676767A7A7A7A7D1C1C
          1B1E4F3F1E63E4AF48FDE6B147FEE6B147FED4A342ED02010004000000000000
          0000000000000000000000000000000000000000000000000000000000001C16
          0829E3B047FBE7B249FEE7B249FEE3B048FD44361A6312111015727171757B7B
          7A7E70707074616161656767676B7979797D7C7C7C7F7C7C7C7F464645480606
          0408B48C3CD6E7B249FEE8B349FFE7B248FE977530A900000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001AF8738C2E8B34AFEE8B34AFEE8B34AFECB9E44ED231D102C161615186565
          65687B7B7B7E7C7C7C7F7C7C7C7F7C7C7C7F7777767A3D3D3D3F02020203785E
          2A98E5B14AFDE8B34AFEE9B44AFEE7B24AFD3D2F134700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000392C1244E7B34AFCEAB54CFEE9B44BFEE9B44CFEC29843E8382D17480202
          020320201F233D3D3C3F42414144302F2F320B0B0A0D0C0A070F7E632DA0E2B0
          4BFDE9B44BFEEAB54BFEE9B44BFEAF8839C10000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000018E6E2E9BEAB54CFDEBB64DFEEBB64CFEEBB64DFEDBAC4AFC9274
          34B948391A611F190D3217120A282D24124468532687BE9543E7E6B24DFDEBB6
          4CFEEBB64DFEEBB64DFEDFAD48F2231B0B2A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000005040109AF883ABEEBB64EFDEDB84EFEECB74EFEECB74EFEEBB7
          4EFEE1AF4CFDDAAA4BFDD8A94BFDDDAC4BFDE7B34DFDECB74EFEECB74EFEECB7
          4EFEECB74EFEE5B34CF84737174F000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000705020B9E7A35ABECB74FFDEEB950FEEEB950FEEEB9
          50FFEEB94FFFEEB94FFFEEB94FFFEEB94FFFEEB94FFFEDB950FEEEB950FEECB7
          4FFDDCAB4AED4334164A00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000157431D5FD3A548E2EEB951FDEFBA
          51FEEFBA51FEEFBA51FEEFBA51FEEFBA51FEEFBA51FEEEB951FDEAB750FA9E7B
          36AA1913081F0000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000105030108503E1B589D7A
          35A7CFA247DCEAB750F8EFBA52FDE0AE4CEDB9903FC47B602983221A0B2A0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000200000003000000030000
          0003000000030000000300000003000000030000000300000003000000030000
          0003000000030000000300000003000000030000000300000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000C000000440000005B000000590000
          0059000000590000005900000059000000590000005A0000005A0000005A0000
          005A0000005A00000059000000590000005800000055000000520000004E0000
          003F0000000D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000003E7A7A7AD5FEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF7A7A
          7AD50000003C0000000100000000000000000000000000000000000000000000
          000000000000000000000000000403030369959595FFFEFEFEFFF4F4F4FFF2F2
          F2FFF4F4F4FFF4F4F4FFF4F4F4FFF6F6F6FFF5F5F5FFF7F7F7FFF5F5F5FFF4F4
          F4FFF5F5F5FFF3F3F3FFF6F6F6FFFAFAFAFFFAFAFAFFFAFAFAFFFEFEFEFF9595
          95FF030303680000000400000000000000000000000000000000000000000000
          000000000000000000000000000605050571898989FFFDFDFDFFF6F6F6FFF6F6
          F6FFF4F4F4FFF7F7F7FFF4F4F4FFF5F5F5FFF4F4F4FFF5F5F5FFF6F6F6FFF6F6
          F6FFF8F8F8FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFF8F8F8FFFDFDFDFF8989
          89FF050505700000000500000000000000000000000000000000000000000000
          00000000000000000000000000040808086A878787FFF9F8F8FFEDEDEDFFEDEC
          ECFFEEEEEEFFF0EFEFFFF0F0F0FFF1F1F1FFF0EFEFFFEEEEEEFFEFEFEFFFF1F0
          F0FFF2F2F2FFEEEEEEFFEFEFEFFFF0EFEFFFEFEFEFFFF1F1F1FFF9F8F8FF8787
          87FF070707660000000400000000000000000000000000000000000000020000
          001000000016000000120000001709090976717171FFEDECECFFECEBEBFFE9E8
          E8FFE8E7E7FFE9E8E8FFE8E7E7FFE7E6E6FFE8E7E7FFEBE9E9FFE7E6E6FFE8E7
          E7FFE9E8E8FFEBE9E9FFE8E7E7FFE9E8E8FFE9E8E8FFE9E8E8FFEDECECFF7171
          71FF090909780000001A00000011000000140000000F000000020000001C1D1D
          1D95303030AF2F2F2FAA2F2F2FAC3C3C3CC85F5F5FFFD0CCCCFFC9C5C5FFC6C2
          C2FFC7C3C3FFC6C2C2FFC5C1C1FFC6C2C2FFC6C2C2FFC8C4C4FFC7C3C3FFC7C3
          C3FFCAC6C6FFC9C5C5FFCFCBCBFFCECACAFFD0CBCBFFCFCBCBFFD0CCCCFF5F5F
          5FFF3D3D3DCC303030AE2E2E2EA82F2F2FAC1D1D1D95000000200000002B7979
          79E3B2B2B2FFB2B2B2FFB2B2B2FFA7A7A7FF4F4F4FFF958C8CFF918888FF8F87
          87FF8F8787FF908787FF8D8585FF908888FF8D8585FF8E8686FF8E8686FF8F87
          87FF8C8484FF8D8484FF8F8787FF8D8585FF8F8787FF918989FF958C8CFF4F4F
          4FFFA7A7A7FFB2B2B2FFB2B2B2FFB2B2B2FF7A7A7AE40000002D000000299696
          96ECC3C3C3FFC3C3C3FFC3C3C3FFAFAFAFFF202020FF2B2929FF2C2A2AFF2C2A
          2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A
          2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2B2929FF2020
          20FFAFAFAFFFC3C3C3FFBFBFBFFFC2C2C2FF969696EC0000002800000022ACAC
          ACF2CCCCCCFFCCCCCCFFCCCCCCFFC0C0C0FF101010FF0F0F0FFF0F0F0FFF0F0F
          0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F
          0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1010
          10FFBFBFBFFFCCCCCCFFCDCECEFFC4C4C4FFACACACF20000002400000013C2C2
          C2F8D4D4D4FFD4D4D4FFD4D4D4FFD6D6D6FF8D8D8DFF636363FF626262FF6262
          62FF616161FF606060FF5F5F5FFF5E5E5EFF5D5D5DFF5C5C5CFF5C5C5CFF5C5C
          5CFF5D5D5DFF5E5E5EFF5F5F5FFF606060FF616161FF626262FF626262FF8D8D
          8DFFD6D6D6FFD4D4D4FFCBCBCBFFCECECEFFC1C1C1F70101011200000002CECE
          CEFBDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFD8D8D8FFD4D4D4FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD8D8
          D8FFDCDCDCFFDCDCDCFFD1D2D2FFD4D4D4FFCECECEFB0000000100000000BDBD
          BDFCC8C8C8FFC9C9C9FFCACACAFFCBCBCBFFC2C2C2FF969696FF979797FF9898
          98FF999999FF9A9A9AFF989898FF959595FF9A9A9AFFA3A3A3FFA2A2A2FF9A9A
          9AFF949494FF989898FF9C9C9CFF9B9B9BFF9A9A9AFF999999FF999999FFC5C5
          C5FFCFCFCFFFCECECEFFCDCDCDFFCCCCCCFFC1C1C1FC0000000000000000CFCF
          CFF6E0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFC9C9C9FF3F3F3FFF3E3E3EFF3E3E
          3EFF3E3E3EFF3E3E3EFF3C3C3CFF383838FF3F3F3FFF434343FF434343FF3E3E
          3EFF323232FF3B3B3BFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3F3F3FFFC9C9
          C9FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFCFCFCFF60000000000000000CCCC
          CCECE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFD3D3D3FF4F4F4FFF4D4D4DFF4D4D
          4DFF4D4D4DFF4D4D4DFF4D4D4DFF565656FF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
          5EFF565656FF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4F4F4FFFD3D3
          D3FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFCCCCCCEC0000000000000000C3C3
          C3DCEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFDADADAFF555555FF535353FF5353
          53FF535353FF535353FF535353FF535353FF535353FF535353FF535353FF5353
          53FF535353FF535353FF535353FF535353FF535353FF535353FF545454FFDADA
          DAFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFC3C3C3DC0000000000000000B3B3
          B3CAEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFDFDFDFFF5D5D5DFF5A5A5AFF5A5A
          5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A
          5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5C5C5CFFDFDF
          DFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFB3B3B3CA00000000000000008787
          87ADCECECEF6D3D3D3F6D5D5D5F6D8D8D8F6CACACAF8B8B8B8FDB9B9B9FDB9B9
          B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9
          B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB8B8B8FDCACA
          CAF8D8D8D8F6D5D5D5F6D3D3D3F6CECECEF6888888AD00000000000000004949
          4976ABABABFFBBBBBBFFBFBFBFFFC3C3C3FFB5B5B5FF575757FF515151FF4F4F
          4FFF4D4D4DFF4C4C4CFF4A4A4AFF474747FF454545FF424242FF424242FF4545
          45FF474747FF4A4A4AFF4C4C4CFF4D4D4DFF4F4F4FFF515151FF575757FFB5B5
          B5FFC3C3C3FFBFBFBFFFBBBBBBFFABABABFF4949497600000000000000002020
          2036A3A3A3FFB6B6B6FFBDBDBDFFC1C1C1FFADADADFF737373FFB4AEAEFFBBB5
          B5FFC0BBBBFFC5C0C0FFC9C4C4FFCCC8C8FFCECACAFFCFCBCBFFCFCBCBFFCECA
          CAFFCCC8C8FFC9C4C4FFC5C0C0FFC0BBBBFFBBB5B5FFB4AEAEFF737373FFADAD
          ADFFC1C1C1FFBDBDBDFFB6B6B6FFA3A3A3FF2121213700000000000000000202
          0204909090F1ADADADFFBBBBBBFFBFBFBFFFB2B2B2FF848484FFC1BCBCFFC8C3
          C3FFCECACAFFD3CFCFFFD7D3D3FFDAD7D7FFDCD9D9FFDDDADAFFDDDADAFFDCD9
          D9FFDAD7D7FFD7D3D3FFD3CFCFFFCECACAFFC8C3C3FFC1BCBCFF858585FFB2B2
          B2FFBFBFBFFFBBBBBBFFADADADFF919191F20202020400000000000000000000
          0000000000000000000000000000000000001212121B8D8D8DFFCEC9C9FFD4D1
          D1FFDAD7D7FFDFDCDCFFE3E0E0FFE5E3E3FFE7E5E5FFE8E6E6FFE8E6E6FFE7E5
          E5FFE5E3E3FFE3E0E0FFDFDCDCFFDAD7D7FFD4D1D1FFCEC9C9FF8E8E8EFF1212
          121B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001111111B929292FFD9D6D6FFE0DD
          DDFFE5E3E3FFE9E7E7FFEDEBEBFFF0EEEEFFF1F0F0FFF2F1F1FFF2F1F1FFF1F0
          F0FFF0EEEEFFEDEBEBFFE9E7E7FFE5E3E3FFE0DDDDFFD9D6D6FF939393FF1111
          111B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001010101B8E8E8EFFE3E0E0FFE9E7
          E7FFEEEDEDFFF3F2F2FFF6F5F5FFF8F8F8FFFAF9F9FFFAFAFAFFFAFAFAFFFAF9
          F9FFF8F8F8FFF6F5F5FFF3F2F2FFEEEDEDFFE9E7E7FFE3E0E0FF8E8E8EFF1010
          101B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A0A0A12888888F4EBEAEAFFF2F0
          F0FFF7F6F6FFFAFAFAFFFDFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFCFCFFFAFAFAFFF7F6F6FFF2F0F0FFEBEAEAFF888888F40A0A
          0A12000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000005050513F3F2F2FFF9F8
          F8FFFCFCFCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFF9F8F8FFF3F2F2FF060606130000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000003030313F9F8F8FFFDFD
          FDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFFF9F8F8FF050505130000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000003030313FDFDFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF050505130000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000003030313FEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF040404130000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004040404130505
          0513050505130505051305050513050505130505051305050513050505130505
          0513050505130505051305050513050505130505051304040413000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          200000000000001000000000000000000000000000000000000045711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF678C47FF8BA671FFB9CAAAFFDCE5D5FFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF5B8339FF7E9D63FFA2B8
          8EFFD1DCC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFE8EDE3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF4F7F2FFD2DCC8FFD2DCC8FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFF8BA772FF4571
          1EFF8BA772FFFFFFFFFF97AF81FF45711EFF8BA772FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFF4F7F2FF517A
          2CFF517A2CFFE9EEE4FF517A2CFF45711EFFE9EEE4FFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFA2B8
          8FFF45711EFF5C843AFF45711EFF8BA772FFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFF4F7
          F2FF517A2CFF45711EFF45711EFFE9EEE4FFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF5C843AFF45711EFF517A2CFFF4F7F2FFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFB9CB
          ABFF45711EFF517A2CFF45711EFFA2B88FFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFF5C84
          3AFF45711EFFD2DCC8FF517A2CFF517A2CFFF4F7F2FFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFB9CBABFF4571
          1EFF688C48FFFFFFFFFFA2B88FFF45711EFF97AF81FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFD2DC
          C8FFE9EEE4FFFFFFFFFFF4F7F2FFD2DCC8FFDDE5D6FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF729555FF96AF80FFADC19CFFD1DC
          C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF5B8339FF7E9D63FFA2B88EFFC4D3B8FFE8EDE3FFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000E0E0E182121213F2020203D2020203B1E1E1E391E1E1E381D1D
          1D361B1B1B341A1A1A32191919301818182E1616162C1515152A131313271313
          132517161622171717201515151D1212121A0F0F0F160707070C0505050A0202
          0206000000000000000000000000000000000000000000000000000000000000
          00000000000048484862F1F1F1FFF0F0F0FFEFEFEFFFEEEEEEFFEEEEEEFFEDED
          EDFFECECECFFECECECFFEBEBEBFFEBEBEBFFEAEAEAFFEAEAEAFFE9E9E9FFE9E7
          E7FFE8E6E5FFE5E3E2FFDFDEDEFFE0DFDFFFE7E7E7FFE5E5E5FED3D3D3F47E7E
          7EC31B1B1B6B0404041500000000000000000000000000000000000000000000
          0000000000004747475EF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6
          F6FFF6F5F4FFF5F3F2FFF3F0EFFFEDECEBFFEEEDEDFFF7F6F6FFF8F8F8FFF8F8
          F8FFEEEEEEFE1F1F1F7102020208000000000000000000000000000000000000
          0000000000004747475BF8F8F8FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F5F5FFF6F4F4FFF5F3F2FFF3F0EFFFEDECECFFEEEDEDFFF6F6F6FFF8F8
          F8FFF8F8F8FF9E9E9ED505050515000000000000000000000000000000000000
          00000000000044444458F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF6F6F6FFF6F5F5FFF5F4F4FFF5F3F2FFF3F0F0FFEEECECFFEEEDEDFFF6F6
          F6FFF7F7F7FFE7E7E7FD0C0C0C21000000000000000000000000000000000000
          0000000000003F3F3F54F7F7F7FFF6F6F6FFEFEFEFFFEAEAEAFFECECECFFF1F1
          F1FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F4F4FFF5F4F4FFF4F2F2FFF3F0F0FFEEEDECFFEEED
          EDFFF6F6F6FFF2F2F2FF24242441000000000000000000000000000000000000
          0000000000003C3C3C51F6F6F6FFF2F2F2FFC5C7E0FF7D86D5FF6E77D0FFA1A5
          D7FFE7E7E8FFF2F2F2FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF5F4F4FFF5F3F3FFF4F2F2FFF3F0EFFFEEED
          ECFFEEEDEDFFF4F4F4FF2B2B2B49000000000000000000000000000000000000
          0000000000003737374DF6F6F6FFF5F5F5FFABB1E3FF707BD6FFC2C5E1FF7D85
          D4FF777ECFFFE3E3E5FFF1F1F1FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF5F3F3FFF4F2F2FFF3F0
          EFFFEFEDECFFEDEDEDFF2B2B2B49000000000000000000000000000000000000
          0000000000003232324AF5F5F5FFF5F5F5FFEBECF2FF8B94DDFF9BA1DBFFE1E1
          E5FF8087D1FF8C92D3FFE7E7E7FFF1F1F1FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF5F3F3FFF4F2
          F2FFF3F0EFFFEFEDEDFF2C2B2B49000000000000000000000000000000000000
          0000000000002B2B2B46F4F4F4FFF5F5F5FFF4F4F4FFEDEEF2FFA8AEE3FF7782
          D6FFB6BADFFF5962CAFFBEC0DDFFE9E9E9FFF0F0F0FFF2F2F2FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF5F3
          F3FFF4F2F2FFF3F0F0FF2B2B2B48000000000000000000000000000000000000
          00000000000027272744F4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFD7D9
          ECFF8088D7FF4F5ACAFF5C66CAFFE5E5E7FFE8E8E8FFE9E9E9FFECECECFFEFEF
          EFFFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF3F2
          F2FFF4F3F3FFF4F2F2FF2A2A2A47000000000000000000000000000000000000
          00000000000026262643F3F3F3FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF2F2F2FFC5C8E7FF545FCBFF4B55C5FF8D92D3FFDBDBE9FFEDEDEDFFEBEB
          EBFFEBEBEBFFECECECFFEEEEEEFFF0F0F0FFF0F0F0FFEFEFEFFFF0F0F0FFF0F0
          F0FFF1F1F1FFF4F2F2FF2A2A2A46000000000000000000000000000000000000
          00000000000026262643F2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2
          F2FFF1F1F1FFF1F1F1FFA0A6DDFF4551C6FF7077CCFF2A34B9FF575FC4FF9B9F
          D7FFDEDFEAFFEFEFEFFFD9D9E7FF686AC1FF3133ADFF6767BFFFE7E7EDFFF1F1
          F1FFF2F2F2FFF3F3F3FF29292945000000000000000000000000000000000000
          00000000000025252541F2F2F2FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FFF1F1
          F1FFF1F1F1FFF0F0F0FFE0E1ECFF4753C8FFC4C6E1FFDFDFE7FF989CD6FF3B43
          BBFF0912AAFF3D43B8FF191FABFF1419A7FF383BB1FF00019BFF8B8BCCFFF3F3
          F3FFF4F4F4FFF3F3F3FF28282844000000000000000000000000000000000000
          00000000000024242440F2F2F2FFF3F3F3FFF2F2F2FFF2F2F2FFF1F1F1FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FF747ED4FF878ED5FFEBEBEBFFEEEEEEFFF0F0
          F0FFB7B9DEFF0710A9FF353BB5FF3539B3FF2D30AEFF4345B5FFCECEE5FFF3F3
          F3FFF3F3F3FFF2F2F2FF27272742000000000000000000000000000000000000
          0000000000002323233FF1F1F1FFF3F3F3FFF2F2F2FFF1F1F1FFF0F0F0FFF0F0
          F0FFF0F0F0FFEFEFEFFFEFEFEFFFABB1E0FF515DCCFFE6E7E9FFECECECFFE4E5
          EBFF313BB9FF353DB9FFE8E8EDFFF0F0F0FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3
          F3FFF3F3F3FFF2F2F2FF26262640000000000000000000000000000000000000
          0000000000002222223DF1F1F1FFF2F2F2FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0
          F0FFEFEFEFFFEEEEEEFFEEEEEEFFD6D8E9FF4E5BCDFFC4C7E3FFECECECFF6A72
          CCFF1521B3FFCBCDE4FFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFF2F2
          F2FFF3F3F3FFF2F2F2FF2323233D000000000000000000000000000000000000
          0000000000002121213BF1F1F1FFF2F2F2FFF1F1F1FFF0F0F0FFF0F0F0FFEFEF
          EFFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFF6672D3FF9DA4DDFFC0C3E3FF2936
          BEFF7C84D0FFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF2F2
          F2FFF3F3F3FFF1F1F1FF2121213A000000000000000000000000000000000000
          0000000000001F1F1F39F0F0F0FFF1F1F1FFF0F0F0FFF0F0F0FFEFEFEFFFEEEE
          EEFFEEEEEEFFEDEDEDFFEDEDEDFFECECECFF929BDCFF7681D6FF5F6ACEFF4450
          C6FFE3E4EBFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF1F1
          F1FFF2F2F2FFF0F0F0FF1F1F1F37000000000000000000000000000000000000
          0000000000001D1D1D36F0F0F0FFF1F1F1FFF0F0F0FFF0F0F0FFEFEFEFFFEEEE
          EEFFEEEEEEFFEDEDEDFFECECECFFECECECFFB7BCE3FF5765D2FF4856CCFFA6AC
          DDFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1
          F1FFF2F2F2FFF0F0F0FF1D1D1D34000000000000000000000000000000000000
          0000000000001B1B1B33EFEFEFFFF1F1F1FFF0F0F0FFEFEFEFFFEEEEEEFFEEEE
          EEFFEDEDEDFFECECECFFEBEBEBFFEBEBEBFFD3D5E7FF5F6DD5FF6874D4FFE9E9
          EBFFECECECFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFF0F0F0FFF0F0F0FFF1F1
          F1FFF2F2F2FFEFEFEFFF1B1B1B30000000000000000000000000000000000000
          00000000000019191930EEEEEEFFF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFEDED
          EDFFECECECFFECECECFFEBEBEBFFEAEAEAFFCDD0E6FF6775D8FFAEB4E0FFEAEA
          EAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1
          F1FFF1F1F1FFEFEFEFFF1919192D000000000000000000000000000000000000
          0000000000001919192EEEEEEEFFF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFEDED
          EDFFECECECFFEBEBEBFFEAEAEAFFEAEAEAFFA7AFE3FF6E7CDBFFAAB1E1FFEAEA
          EAFFEBEBEBFFECECECFFECECECFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1
          F1FFF1F1F1FFEEEEEEFE1B1B1B28000000000000000000000000000000000000
          0000000000001E1E1E2BEEEEEEFFF0F0F0FFF0F0F0FFEEEEEEFFEEEEEEFFEDED
          EDFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FF98A3E3FF7685DEFF9BA4DFFFE9E9
          E9FFEAEAEAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0
          F0FFF1F1F1FFEDEDEDFE1C1C1C24000000000000000000000000000000000000
          00000000000020202029ECECECFEF0F0F0FFF0F0F0FFEEEEEEFFEEEEEEFFEDED
          EDFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FF8E9BE5FF929EE1FF949FE0FFE9E9
          E9FFEAEAEAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0
          F0FFF1F1F1FFEDEDEDFE1818181F000000000000000000000000000000000000
          0000000000001F1F1F27ECECECFEF0F0F0FFF0F0F0FFEEEEEEFFEEEEEEFFEDED
          EDFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FF94A0E8FFB4BBE5FF98A2E2FFE9E9
          E9FFEAEAEAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0
          F0FFF1F1F1FFEDEDEDFE1414141B000000000000000000000000000000000000
          0000000000001D1D1D25EBEBEBFEF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFEDED
          EDFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FFA5B0E9FF95A2E6FFACB4E5FFEAEA
          EAFFEBEBEBFFECECECFFECECECFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1
          F1FFF1F1F1FFECECECFE11111117000000000000000000000000000000000000
          0000000000001A1A1A22EBEBEBFEF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFEDED
          EDFFECECECFFECECECFFEBEBEBFFEAEAEAFFDADCE9FFBEC5E9FFDEE0E9FFEAEA
          EAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1
          F1FFF1F1F1FFECECECFE0D0D0D13000000000000000000000000000000000000
          00000000000019191920EBEBEBFEF1F1F1FFF0F0F0FFEFEFEFFFEEEEEEFFEEEE
          EEFFEDEDEDFFECECECFFEBEBEBFFEBEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFEBEB
          EBFFECECECFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFF0F0F0FFF0F0F0FFF1F1
          F1FFF2F2F2FFEBEBEBFE0A0A0A0F000000000000000000000000000000000000
          0000000000001616161EEBEBEBFEF1F1F1FFF0F0F0FFF0F0F0FFEEEEEEFFEEEE
          EEFFEDEDEDFFECECECFFECECECFFECECECFFEBEBEBFFEBEBEBFFEBEBEBFFECEC
          ECFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1
          F1FFF2F2F2FFEAEAEAFE0606060B000000000000000000000000000000000000
          00000000000010101017AEAEAED5BABABADABABABADABBBBBBDBBDBDBDDCBCBC
          BCDCBDBDBDDDBDBDBDDDBEBEBEDEBEBEBEDEBEBEBEDEBEBEBEDEBEBEBEDEBEBE
          BEDEBEBEBEDEBDBDBDDDBDBDBDDDBCBCBCDCBCBCBCDCBCBCBCDCBBBBBBDBB9B9
          B9DABABABADAB2B2B2D70505050A000000000000000000000000000000000000
          0000000000000000000000000001000000010101010201010102010101020101
          0102010101030101010301010103010101030101010302020204020202040202
          0204020202040202020502020205020202050202020503030306030303060303
          0306030303060303030600000001000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000070B03650A1105800407025A0000
          00330000001C0000001000000007000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002203410C3395C1DFF395C1DFE395C
          1DFE314D18ED233911D118260CB20E170790060A036A01020043000000230000
          00150000000A0000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000007304C19E63A5D1EFF3A5D1EFF3A5D
          1EFF3A5D1EFF3A5D1EFF3A5D1EFF3A5D1EFF3A5D1EFF3A5D1EFE36571CF72A42
          15DD1D2E0FC0121D099F0A0F057A030501540000002B00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000183C5E1FFD3C5F1FFF3C5F1FFF3C5F
          1FFF3C5F1FFF3C5F1FFF3C5F1FFF3C5F1FFF3C5F1FFF3C5F1FFF3C5F1FFF3C5F
          1FFF3C5F1FFF3C5F1FFF3C5F1FFF3C5F1FFE3A5B1EFA0305015305090261090F
          04750203003E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000305013F3D6120FE3D6120FF3D6120FF3D61
          20FF3D6120FF3D6120FF3D6120FF3D6120FF3D6120FF3D6120FF3D6120FF3D61
          20FF3D6120FF3D6120FF3D6120FF3D6120FF3A5C1EFE3F5E25FE58783DFF5778
          3DFF223711BF0000000100000000000000000000000000000000000000000000
          00000000000000000000000000000A0F05673F6322FF3F6322FF3F6322FF3F63
          22FF3F6322FF3F6322FF3F6322FF3F6322FF3F6322FF3F6322FF3F6322FF3F63
          22FF3F6322FF3F6322FF3F6322FF3F6322FF5F784BFFEAEAEAFFFEFEFEFFC7D2
          BEFF2C4717D50000000300000000000000000000000000000000000000000000
          0000000000000000000000000000141E0A8F416523FF416523FF416523FF4165
          23FF416523FF416523FF416523FF416523FF416523FF416523FF416523FF4165
          23FF416523FF416523FF416523FF416523FF758865FFF4F4F4FFFEFEFEFFD7DF
          D1FF37561CE70000000600000000000000000000000000000000000000000000
          0000000000000000000000000001213312B6436725FF436725FF436725FF4367
          25FF436725FF436725FF436725FF436725FF436725FF436725FF436725FF4367
          25FF436725FF436725FF436725FF436725FF4B6635FF65854CFFA3B693FFE7EC
          E3FF426723F90000000900000000000000000000000000000000000000000000
          0000000000000000000000000005324D1CDB456926FF456926FF456926FF4569
          26FF456926FF456926FF456926FF456926FF456926FF456926FF456926FF4569
          26FF456926FF456926FF456926FF456926FF38581FFF456C26FF89A273FFF6F8
          F5FF466D26FE0001001800000000000000000000000000000000000000000000
          000000000000000000000000000F446826F9476C28FF476C28FF476C28FF5F80
          44FF517434FF466C28FF476C28FF476C28FF476C28FF476C28FF476C28FF476C
          28FF476C28FF476C28FF476C28FF466C28FF3A5A20FF486F28FF7B9864FFFEFE
          FEFF4F7530FE0203012D00000000000000000000000000000000000000000000
          0000000000000000000002030132496E2AFE496E2AFF496E2AFF496E2AFF95AB
          83FFFEFEFEFFB1C1A4FF496E2AFF496E2AFF496E2AFF6D8C54FF5B7D3FFF496E
          2AFF496E2AFF496E2AFF496E2AFF507234FFAEB7A7FFDAE2D3FFECF0E8FFFEFE
          FEFF5F8343FF0507024200000000000000000000000000000000000000000000
          00000000000000000000080D055A4B712BFF4B712BFF4B712BFF4B712BFF5176
          33FFF0F3EEFFF7F9F6FF587B3BFF4B712BFF91A87DFFFEFEFEFFF9FAF8FF7492
          5CFF4B712BFF4B712BFF4B712BFF5C7944FFC2CABCFFCBD6C1FFC4D1B9FFFEFE
          FEFF709156FF090E055700000000000000000000000000000000000000000000
          00000000000000000000131C0B824D732DFF4D732DFF4D732DFF4D732DFF4D73
          2DFFA5B995FFFFFFFFFFA1B691FF809B68FFFBFCFBFFFCFCFBFF849F6DFF4D73
          2DFF4D732DFF4D732DFF4D732DFF436427FF4A702BFF4F772EFF577D37FFFEFE
          FEFF819E69FF0E15086C00000000000000000000000000000000000000000000
          00000000000000000000213214AA4F762FFF4F762FFF4F762FFF4F762FFF4F76
          2FFF5C813FFFF7F9F6FFEFF3ECFFF6F8F4FFFEFEFEFF91AA7CFF4F762FFF4F76
          2FFF4F762FFF4F762FFF4F762FFF4A6931FF4F762FFF517A30FF517930FFF9FA
          F8FF91AB7BFF15200C8100000000000000000000000000000000000000000000
          00000000000000000003354E20CF517831FF517831FF517831FF517831FF5178
          31FF517831FFB8C8AAFFFFFFFFFFFEFEFEFF9FB58DFF517831FF517831FF5178
          31FF517831FF517831FF517831FF6E865BFF75965AFF84A16BFF91AB7BFFF5F7
          F3FFA1B78FFF1D2B119600000000000000000000000000000000000000000000
          000000000000000000094B6F2EF1537B32FF537B32FF537B32FF537B32FF537B
          32FF688C4CFFECF0E8FFFFFFFFFFF4F7F2FF59803AFF537B32FF537B32FF537B
          32FF537B32FF537B32FF537B32FFBCC0B9FFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFB0C3A0FF263717AB00000000000000000000000000000000000000000000
          00000000000001020024557D34FE557D34FF557D34FF557D34FF557D34FF658A
          47FFE7ECE2FFFEFEFEFFD9E2D1FFFFFFFFFF9CB389FF557D34FF557D34FF557D
          34FF557D34FF557D34FF59803AFFB4BCAEFF80A065FF729656FF658C46FFD3DE
          CAFFBECEB1FF30471DBE00000001000000000000000000000000000000000000
          000000000000070A044D578136FF578136FF578136FF578136FF638943FFE0E8
          DAFFFFFFFFFFB7C9A9FF638943FFF7F9F6FFE8EEE4FF5A8339FF578136FF5781
          36FF578136FF578136FF618446FFC1C9BAFF5A8538FF5A8538FF5A8538FFC6D4
          BAFFCDD9C2FF3D5926D200000003000000000000000000000000000000000000
          000000000000121A0B755A8438FF5A8438FF5A8438FF5A8438FFA4BB91FFE2E9
          DCFFCAD7C0FF5B853AFF5A8438FFBBCCADFFFEFEFEFF93AE7BFF5A8438FF5A84
          38FF5A8438FF5A8438FF597B3EFFD9DFD5FF5D883AFF5D883AFF5D883AFFBACC
          ABFFDBE4D3FF4A6C2FE400000005000000000000000000000000000000000000
          0000000000002130159D5C863AFF5C863AFF5C863AFF5C863AFF5C863AFF5C86
          3AFF5C8639FF5C863AFF5C863AFF729654FFC0D0B3FFBACCACFF5C8639FF5C86
          3AFF5C863AFF5C863AFF768F62FFF3F4F2FFD7E1CEFFE3EBDDFFF0F4EDFFFCFD
          FBFFE8EEE3FF5A8239F600000009000000000000000000000000000000000000
          000000000002364D22C35E883BFF5E883BFF5E883BFF5E883BFF5E883BFF5E88
          3BFF5E883BFF5E883BFF5E883BFF5E883BFF5E883BFF5E883BFF5E883BFF5E88
          3BFF5E883BFF5E883BFF92A385FFF9F9F8FFD5E0CCFFC6D6BAFFBACDABFFD0DC
          C5FFF6F8F4FF618C3EFE00010016000000000000000000000000000000000000
          0000000000074E7032E7608B3DFF608B3DFF608B3DFF608B3DFF608B3DFF608B
          3DFF608B3DFF608B3DFF608B3DFF608B3DFF608B3DFF608B3DFF608B3DFF608B
          3DFF608B3DFF608B3DFF507333FFE7EEE2FF759C56FF638F40FF638F40FF99B5
          81FFFEFEFEFF689245FE0204012A000000000000000000000000000000000000
          000000000018608C3EFD618D3EFF618D3EFF618D3EFF618D3EFF618D3EFF618D
          3EFF618D3EFF618D3EFF618D3EFF618D3EFF618D3EFF618D3EFF618D3EFF618D
          3EFF618D3EFF618C3EFF527635FFDCE6D4FF83A666FF659242FF659242FF8EAE
          73FFFEFEFEFF769D56FF0609043F000000000000000000000000000000000000
          00000508033F638E40FE638F40FF638F40FF638F40FF638F40FF638F40FF638F
          40FF638F40FF638F40FF638F40FF638F40FF638F40FF638F40FF638F40FF638F
          40FF638F40FF5F883EFF698B4EFFD9E4D0FFAEC59BFF9CB985FFA8C193FFC2D3
          B4FFFFFFFFFF85A867FF0B100754000000000000000000000000000000000000
          00000F160A67659141FF659141FF659141FF659141FF659141FF659141FF6591
          41FF659141FF659141FF659141FF659141FF659141FF659141FF659141FF6591
          41FF659141FF799861FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF92B277FF121A0C69000000000000000000000000000000000000
          0000202F158C679343FF679343FF679343FF679343FF679343FF679343FF6793
          43FF679343FF679343FF679343FF679343FF679343FF679343FF679343FF6793
          43FF679343FF89A075FFF3F3F3FFFEFEFEFFFDFEFDFFF3F7F0FFE7EEE1FFDBE6
          D2FFCFDDC3FF8BAD6DFF1B26127B000000000000000000000000000000000000
          0000090C05201E2C14553146207D425E2BA5537636CD638E41F4689444FE6895
          44FF689544FF689544FF689544FF689544FF689544FF689544FF689544FF6895
          44FF689544FF66874BFF84A865FF79A358FF6F9A4BFE6C9948FD659044EF5C83
          3EDA537638C54A6931B011180B34000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001080C051F1822
          10472C3F1D6F3D5728974E6F33BF5F883FE76A9645FE6A9745FF6A9745FF6A97
          45FF6A9645FE1E2B147917210F440F150A2F070A041A01020006000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004060211121A0C3925351961384F
          2489486730B10203011000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          0001020203070404040C00000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000020202030808080F19191B283838
          3D5166666A82787875963E3E3D6C0707062B00000006000000030404040B0101
          010E000000070000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000020202030A0A0A11222221324E4E4C6680807D9EADADA7CDC9C9
          C2EBDADAD5F9E0E0DAFCCECECAED686866AD1F1F1E5B4D4D4D65727272935353
          549917181864000001220000000904010010030000160000000D000000040000
          0000000000000000000000000000000000000000000000000000010101010606
          070B1B1B1A2B4747446482827CA4B4B4AED7D0D0CBF3DBDBD7FDE3E3DCFFE4E4
          DEFFE6E6E0FFE8E8E2FFF0F0EAFFE1E1D9F89F9F9EEAAEAEAEF2C4C4C4FCB8B9
          BCFC7C7F80E735281BA74A270486764308A676430CB23E24078B070300420000
          000E0000000100000000000000000000000000000000000000000F0F0F1A4747
          456F909089C4BCBCB6F1D3D3CDFDE2E2DCFFE5E5DFFFE8E8E2FFE8E8E2FFEAEA
          E4FFECECE6FFEEEEE8FFF1F1EBFFF8F8F1FFDCDCD7FF7B7B7CFF898989FF969A
          9EFFA58C6BFFD27A12FBE78813FAF6971FFEFA9E2BFED6892BF75D320ACB140A
          006C0000001E00000004000000000000000000000000000000000808070D2727
          243660605C80B1B1ABDEDDDDD7FEEAEAE4FFEDEDE6FFEEEEE8FFF0F0EAFFF2F2
          ECFFF4F4EEFFF6F6F0FFF9F9F3FFFCFCF6FFFFFFFAFF939392FF434344FF5155
          57FF6A553BFFEF9924FFF6A53AFFDFA351FFE6AC4EFFE7AD46FF975D19FD502C
          0FE526130497050100390000000A000000010000000000000000000000000808
          080F484849799C9C9EDFDBDCD7FEF4F5F0FFF5F5EFFFF5F5EFFFF7F7F1FFF9F9
          F3FFFCFCF6FFFCFCF6FFFFFFF9FFFFFFFAFFFFFFFFFFD9D9D6FF272728FF0507
          09FF1B1C1EFF6F5D43FF9B948AFF979389FFDCA325FFE29908FF805B27FF3030
          34FF423126F5361B0DBF1005005E000000180000000300000000000000000909
          090C4F51566A8C929BC8A8ACB1F6E3E7E4FFFFFFFFFFFEFFF9FFFEFEF9FFFFFF
          FAFFFFFFFAFFFFFFFBFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF969795FF2C2C
          2DFF414345FF484B4EFF5C6169FF666051FFD38C0AFFD98D0BFF7D592BFF232A
          30FF333536FF49403DFC432A1CDD1C0B03880100002A00000003000000000000
          0000110C041A5F401787A16C27E7AB8150FDF5F0EAFFFFFFFFFFFFFFFCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFCFFF8F8F4FFEAEAE5FFDDDDD8FFBFBFB9FF5858
          55FF151515FF0E0E0EFF3D4044FF534A3DFFBA8D4AFFBB8F57FF7B5834FF2024
          29FF272828FF414344FF555353FE4A3C37EC15110D8500000113000000000000
          00003A220343CE7D0FE0F79617FDB46107FBB0927DFCFFFFFFFFFFFFFFFFFBFB
          F6FFEEEEE9FFDBDBD6FFC4C4BFFFA7A7A2FF888882FF676760FF4D4D47FF3434
          31FF171717FF161616FF2C2E31FF3E3428FFB48653FFB8895CFF7B5635FF1E23
          27FF202020FF323232FF4D4F4FFF5C5C5DFE4A4C4CD20F0F0F35000000000000
          0000271A0829BD812BC7E8A84FFE987A52FE38322FFDA6A6A6FFCDCDC9FFB2B2
          ABFF90908AFF6E6E67FF4D4D48FF343431FF232321FF1E1E1CFF20201FFF2424
          25FF272727FF242424FF17191CFF261D13FFB2855FFFB48A69FF79573FFF1C20
          25FF1B1C1CFF252525FF404040FF535353FF565656EF19191953000000000000
          00001F180A26A88234CBB4985FFE454B52FF000000FF090A09FF31312EFF3939
          34FF272724FF1D1D1BFF1D1D1DFF212120FF222224FF212122FF1D1D1DFF1414
          14FF0E0E0EFF080808FF000102FF180E09FFB06946FFBA6945FF7A5440FF1A1E
          21FF151515FF1D1D1DFF343434FF494949FF4E4E4EF119191958000000000000
          00001F170731836734DC9B815AFF35383EFF010102FF0B0B0BFF171716FF1E1E
          1FFF222222FF1F1F20FF1A1A1BFF131313FF0C0C0CFF060606FF050505FF0404
          04FF0B0B0BFF131313FF1B1D1FFF3C3330FFC97654FFD27E59FF815D4DFF1A1F
          22FF0C0C0DFF181818FF272727FF3F3D3FFF474747F11616165A000000000000
          000028180533BA7112DEA77739FF2D3137FF212121FF232323FF1E1E1EFF1515
          16FF0D0D0DFF050505FF0A0A0AFF121212FF131313FF121212FF202020FF3030
          30FF434343FF565656FF696A6BFF81807EFFE1B498FFF2C2A0FFA17A69FF3434
          39FF010406FF0F0F10FF1B1B1BFF333333FF3F3F3FF21414145C000000000000
          000029170833BA6B1EDE9A693BFF13191FFF090909FF070707FF030303FF0404
          04FF090909FF171717FF414141FF4A4A4AFF4D4D4DFF5D5D5DFF777777FF8D8D
          8DFFA0A0A0FFA9A9A9FFA9A9AAFF9B9E9FFFD2C1ABFFFFEDC0FFD7B081FF795E
          4EFF302E33FF0F1219FF0B0D11FF222324FF333333F21313135E000000000000
          000025150935B4642BDF8C5A3AFF070C10FF050606FF101010FF1D1D1DFF3030
          30FF474747FF636363FF848484FF9B9B9BFFB0B0B0FFBBBBBBFFBDBDBDFFB4B4
          B4FFA3A3A4FF8A8A8AFF727272FF5B5D5FFF76736AFFE1BD73FFEAAB2AFFCC83
          00FFA66C18FF6D5135FF312E2EFF151921FF232529F30E0F0F60000000000000
          000026130A37AE5831E0895440FF31373AFF4A4A4BFF6C6C6CFF909090FFAFAF
          AFFFC6C6C6FFD0D0D0FFD1D2D2FFC8CACDFFB9BCC1FFA2A7ADFF8B8D93FF7C80
          85FF7B7C80FF8C8C8CFFA7A7A7FFC7C8C9FFE0E1E5FFF2EEE9FFE9D1A0FFE2AC
          3BFFE39900FFD78B00FFB27412FF735126FF362F2DF30E0F1261000000000000
          0000261A1532BF8A73DDD0B5A8FFBFC3C4FFD6D7D7FFE5E5E5FFE5E5E5FFDBDB
          DBFFCACACAFFB4B4B4FF9FA0A1FF8B8379FF897247FF906D37FF9D7733FFC8BC
          94FFE8E8E9FFF8F9FBFFF6F6F6FFEDEDEDFFDFDFE0FFD0D2D6FFCCD1DCFFC5C7
          CBFFC1AA7AFFDC9A0FFFE69800FED58C00F77F520FD216100D41000000000000
          00001818171AB5B1AEB6FCFBFAFDF6F9FCFFE1E4EBFFC9CCD1FFB5B6B8FFA8A7
          A9FFA8A8A8FFB8B8B8FFCDCECFFFCCC0A5FFCEA448FFE6AF52FFEAAF42FFDBB8
          3DFFC7C1A8FFCBCCCCFFBABAB7FFACACA9FFA4A49FFFA2A29CFFA9AAA6FFA8A3
          96FFA07D34FFBC881DFF9D741DE56D4C02803623013D04020009000000000000
          00000303030448474749B9AFA1BCDCC597ECB89E6BFC9C9584FFC7CBD1FFE9EC
          F6FFF6F8FCFFF6F8F9FFEEEFF2FFD8DBE1FFAFB1B3FF838174FFA6A397FFB3B4
          ACFFA9AAA9FFABABA6FFAEAEA8FFB5B5AEFFBDBDB6FFC4C4BDFFC9C9C4FFCED0
          CEFF8B8983FF8D8983FE717377BD0E0F101D0000000100000000000000000000
          000000000000040404041D190F204E39115582560499A47005D3B28A34F3B6A5
          80FEC4C4C0FF8F9297FF474646FF292A2DFF1D1E22FF07090BFF696A6AFFCBCC
          C7FFC9CAC4FFCECEC8FFD1D1CBFFD3D3CDFFD5D5CFFFD7D7D0FFD7D7D3FFDEDF
          DBFFCAC2B5FFB48036FE7B511BAE0C0703130000000000000000000000000000
          0000000000000000000000000000000000020A07000D271A002E593B0069865A
          00AB996F13D08B6614D5734E02C64E3F23C64E4C4DE3505053F1676666F7DADA
          D6FEDEDFDBFFDDDDD7FFDEDED9FFDEDEDAFFE0E0DAFFE0E0DBFFE0E0DCFFE3E4
          DFFFE1E0DAFFC39147FFA46F1DD71E1204310000000000000000000000000000
          0000000000000000000000000000000000000000000000000000030100040E09
          001220140024241900281A12001E130E0A1F1F21213E3235375A5B4F3D8DCFC6
          B1F2DFE1DEFFDEDED8FFDFDFDAFFE1E1DCFFE5E5E0FFE7E7E2FFEAEAE5FFE9EA
          E6FFEBEFF1FFD4B88DFFCD9234F34A3412660200000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000010101011F14042BAE99
          78D0E3E4E2FFE3E4DEFFE4E4DEFFE5E5DEFFE5E5DFFFE6E6E1FFE7E7E2FFEAEA
          E4FFEBEEECFFE3DAC9FFE3AD53FD8B672FA20905030F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000805000D816E
          4699E3E0D6FCE9EBE7FFEAEAE4FFEBEBE5FFECECE6FFECECE7FFEDEDE7FFEEEE
          E8FFF0F1EDFFEFF1EDFFF3C881FFC29246D41C12092E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020000025142
          2259DCCFB8EEF0F3F0FFF0F1EBFFF1F1EBFFF1F1ECFFF0F0ECFFF2F2EBFFF2F2
          EDFFF2F2EDFFF2F4F5FFE8D1AAF4B38844BB22160C3300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000231C
          0D26BEA880C9E8E9E6FEEEEFEBFFF2F2EDFFF2F2EDFFF3F3EEFFF2F2EDFFF2F2
          EDFFF2F2EDFFF2F4F1FFC9C8C7D738342C3C0404000600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000806
          02085E523967BFBEBAE5DCDCDAFFE3E3DEFFE9E9E5FFEDEDEAFFF0F0EBFFF1F1
          ECFFF1F1ECFFEFF0EBFFD0D2D2E438393A3F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000011110E16848582B3C1C1BDFECACAC5FFCFCFCAFFD4D4CFFFD8D8D4FFDCDC
          D7FFDFDFDAFFE0E0DBFFD2D2CCF04A4A49590101010100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000060606085B5C5A90A2A29DFCA9A9A3FEADADA6FBADADAAF6AEAEA6EDA8A8
          A4E1A2A29CD29A9A94C1888884A6333331400101010100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010101043838356B6F6F69C363635FA854544E894848456B373734502A2A
          29391C1C1C271414141A0D0D0C10040404050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010101010C0C0A19121212200909090F0202030702020202000000010000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object repScreenTip: TdxScreenTipRepository
    AssignedFonts = [stbHeader, stbDescription, stbFooter]
    DescriptionFont.Charset = ANSI_CHARSET
    DescriptionFont.Color = 5000268
    DescriptionFont.Height = -11
    DescriptionFont.Name = 'Verdana'
    DescriptionFont.Style = []
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = 5000268
    FooterFont.Height = -12
    FooterFont.Name = 'Verdana'
    FooterFont.Style = [fsBold]
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = 5000268
    HeaderFont.Height = -12
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    Left = 421
    Top = 125
    PixelsPerInch = 96
    object tipCloseReports: TdxScreenTip
      Header.Text = 'Close'
      Description.Text = 'Close VB Reports'
      Width = 250
    end
    object tipReportType: TdxScreenTip
      Header.Text = 'Get Billable Data'
      Description.Text = 'Get billable data for the selected period(s)'
      Width = 285
    end
    object tipPreview: TdxScreenTip
      Header.Text = 'Preview'
      Description.Text = 'Preview data'
    end
    object tipPrint: TdxScreenTip
      Header.Text = 'Print'
      Description.Text = 'Print data'
    end
    object tipExcel: TdxScreenTip
      Header.Text = 'Excel'
      Description.Text = 'Export data to Excel'#13#10
    end
    object tipPDF: TdxScreenTip
      Header.Text = 'PDF'
      Description.Text = 'Export data to PDF'
    end
    object tipGetBillableData: TdxScreenTip
      Header.Text = 'Get'
      Description.Text = 'Get Billable Data'
    end
  end
  object styHintController: TcxHintStyleController
    Global = False
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
        ScreenTip = tipGetBillableData
        Control = btnGetBillableData
      end>
    HintStyle.ScreenTipActionLinks = <>
    HintShortPause = 0
    HintPause = 0
    HintHidePause = 3000
    Left = 526
    Top = 124
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
      DockControl = doctToolbar
      DockedDockControl = doctToolbar
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1212
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
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
          ItemName = 'btnEcho'
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
          Visible = True
          ItemName = 'cntOpenDoc'
        end
        item
          Visible = True
          ItemName = 'cntAlwaysMaximized'
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
      Action = actClose
      Category = 0
      ScreenTip = tipCloseReports
      AutoGrayScale = False
    end
    object btnGetData: TdxBarLargeButton
      Action = actGetData
      Category = 0
      ScreenTip = tipReportType
      Visible = ivNever
      AutoGrayScale = False
    end
    object btnEcho: TdxBarLargeButton
      Caption = 'Echo'
      Category = 0
      Hint = 'Echo'
      Visible = ivNever
      OnClick = btnEchoClick
    end
    object btnExcel: TdxBarLargeButton
      Action = actExcel
      Category = 0
      ScreenTip = tipExcel
      AutoGrayScale = False
    end
    object btnPDF: TdxBarLargeButton
      Action = actPDF
      Category = 0
      ScreenTip = tipPDF
      AutoGrayScale = False
    end
    object cntOpenDoc: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
    end
    object btnPreview: TdxBarLargeButton
      Action = actPreview
      Category = 0
      ScreenTip = tipPreview
      AutoGrayScale = False
    end
    object btnPrint: TdxBarLargeButton
      Action = actPrint
      Category = 0
      ScreenTip = tipPrint
      AutoGrayScale = False
    end
    object cntAlwaysMaximized: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
  end
  object dlgFileSave: TSaveDialog
    Filter = 'Excel Files (*.xlsx)|*.xlsx'
    Left = 300
    Top = 313
  end
  object dlgPrint: TdxPrintDialog
    ButtonsEnabled = [pdbPrinterProperties, pdbNetwork, pdbPreview, pdbPageSetup]
    ButtonsVisible = [pdbPrinterProperties, pdbNetwork, pdbPageSetup]
    OptionsEnabled = [pdoPrintToFile, pdoAllPages, pdoCurrentPage, pdoPageRange]
    Left = 570
    Top = 235
  end
  object imgNav: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 23593516
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000000000000000000
          0000000000000000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000005000000050000000200000001000000000000
          0001000000010000000200000005000000050000000200000001000000000000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000060000000C00000012000000120000000900000002000000020000
          0002000000060000000C00000012000000120000000900000002000000020000
          0004000000040000000400000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000050000
          000A000000140E0704365C2F1AAD9C5530FF0000001500000007000000060000
          000A000000140E0704365C2F1AAD9C5530FF0000001400000005000000060000
          000E000000120000000E00000007000000020000000000000000000000000000
          0000000000000000000000000001000000010000000400000008000000100704
          02284E2816999A5733F9C28E60FF9C5630FF0000001E0000000F000000110704
          02284E2816999A5733F9C38F60FF9D5630FF0000001A000000070000000D8154
          38BFAE6C44FF7D4C31BF0000000E000000030000000100000000000000000000
          0000000000010000000100000003000000070000000D0201011B3E20127D8F4E
          2DEDBD865BFFDBB480FFDDB783FFA76C4BFF00000028020101213E20127D8F4E
          2DEDBE875BFFDCB581FFE0B985FF9E5730FF0000001C0000000700000012B77B
          54FFE4BF8CFFB06E47FF00000013000000050000000100000000000000000000
          000100000002000000050000000B000000142C180D5F834828DDB87E54FFD9B1
          81FFDDB882FFD7AC75FFD6B280FFC09F8DFF2C180D70834828DEB87E54FFDAB2
          82FFDFB983FFDBAF77FFE0BA86FFA05932FF0000001B0000000700000012BA7F
          58FFE5C291FFB2724AFF00000013000000050000000100000000000000010000
          000400000008000000101E110A46754226C5B3774EFFD9B183FFE2BF8DFFDCB2
          7DFFD6AB75FFCEA570FFC1996DFFA56A49FFB3774EFFD9B183FFE3C08EFFDFB5
          7FFFDDB179FFDCB077FFE1BB88FFA25B34FF0000001A0000000700000011BD84
          5EFFE7C595FFB4754EFF00000013000000050000000100000003000000070000
          000D1009062C653C23A9B2744CFFD6AC82FFE6C599FFE0BB88FFDAB37DFFD4AD
          79FFC79F6CFFB0794DFFB2744CFFD6AC82FFE7C69AFFE3BD8AFFE0B881FFDFB6
          7FFFDDB57CFFDDB37AFFE2BE8CFFA45E36FF000000190000000600000010BF89
          62FFE9C89AFFB67851FF0000001200000006000000050000000A0805031D5937
          2291AA7048F8D1A77EFFE9CCA2FFE5C596FFDFBA88FFDAB684FFD0AB7AFFB986
          5AFFB1754CFFD1A77EFFEACDA3FFE7C797FFE3BE8BFFE3BD89FFE2BB86FFE1B9
          83FFE0B781FFDEB57EFFE3C090FFA66139FF00000018000000060000000FC28E
          67FFEACC9EFFB77C54FF000000120000000B02010111452D1D71A36C46EBCFA3
          7DFFEBD0AAFFE9CDA2FFE5C394FFE0BF8FFFD8B688FFC3986CFFB57A52FFCFA3
          7DFFEBD0AAFFEACEA3FFE7C595FFE6C493FFE5C291FFE4C08EFFE3BF8BFFE2BD
          88FFE1BA84FFE0B781FFE5C495FFA8653DFF00000017000000060000000DC492
          6CFFECCFA3FFB97F58FF0000001335241955986946D9CC9D76FFE9CEAAFFEED4
          AEFFEACB9FFFE9C99BFFE4C598FFD2AD81FFBB855CFFCC9D76FFE9CEAAFFEED4
          AEFFEACB9FFFEACA9CFFE9C99BFFE9C999FFE7C697FFE7C494FFE5C290FFE4BF
          8DFFE2BD89FFE1BA85FFE7C699FFAB6A40FF00000015000000060000000CC696
          71FFF0D6ADFFBC825DFF00000013BF8961FFE8D2BAFFF4E6CCFFEFD5ADFFEDD0
          A4FFEED3A7FFEED5A9FFE9D1A8FFBF8961FFE8D2BAFFF4E6CCFFEFD5ADFFEDD0
          A4FFEFD5A9FFF0D9AFFFF1DAB0FFF1DBB1FFF0D9AEFFEED5A8FFEDD0A3FFE8C8
          98FFE4C18FFFE2BD89FFE8C99DFFAE6F45FF00000014000000050000000BC99A
          75FFF3DEB7FFBD8661FF00000010251B133B906848C5D0A887FFF1E1CBFFF8EB
          CEFFF3E0B9FFF2DCB4FFEFDAB1FFE1C69EFFC69970FFD0A887FFF1E1CAFFF9EE
          D0FFF5E5BFFFF5E2BBFFF5E2BAFFF4E0B8FFF3DEB5FFF2DCB3FFF0DAAFFFEFD7
          ACFFEDD3A6FFE8C897FFE9CCA2FFB1744AFF000000130000000500000009CA9E
          78FFF5E2BCFFC08B65FF0000000D00000007000000093D2D1F5BA77A58DFDAB9
          9AFFF7EDD6FFF9EBCEFFF3DEB9FFF0DCB5FFEAD5AFFFD9B992FFC4946EFFDABA
          99FFF8EFD5FFFAEED0FFF7E5C0FFF6E4BEFFF5E2BBFFF4E0B9FFF2DEB5FFF1DB
          B1FFEFD8ACFFEED5A9FFF0D9B3FFB3784FFF000000120000000500000008CCA1
          7BFFF6E5C0FFC38E69FF0000000900000003000000030000000605030210563F
          2D7BBA8C67F2E3CAAEFFFAF2DCFFF8E8C9FFF1DEB8FFEDD9B2FFE8D1AAFFD2B0
          87FFC69770FFE4CBADFFFBF4DBFFFAECCDFFF6E6C0FFF6E4BDFFF4E1BAFFF3DF
          B6FFF1DCB2FFEFD9AEFFF4E1BBFFB77D53FF000000110000000400000007CEA3
          7EFFF8E8C4FFC5936DFF00000008000000020000000000000001000000030000
          00070E0A071C73553D9DCAA17BFDEDDCC4FFFBF1D9FFF6E4C2FFF1DCB4FFEBD6
          AEFFE4CCA2FFCDA67DFFCCA27DFFEEDDC2FFFCF3D9FFF8EAC7FFF6E5BEFFF4E2
          BAFFF3DFB6FFF1DCB2FFF4E3BFFFBA8259FF000000100000000400000006CFA6
          80FFFAEAC7FFC79670FF00000007000000020000000000000000000000010000
          0002000000040000000720181235916C4EC2D4B18FFFF4E7D0FFF9EED1FFF1DE
          B9FFEDD8AEFFE9D1A7FFE1CBA7FFC69B78FFD5B28FFFF5E8CEFFFBF2D4FFF6E6
          C1FFF4E2BAFFF3DFB6FFF5E6C3FFBD875FFF0000000F0000000400000004D0A7
          82FFFEFAE8FFC99A74FF00000005000000010000000000000000000000000000
          0000000000010000000200000005000000093F30235BAB8260DFDDBFA1FFF8EE
          D6FFF5E7C8FFEED7AFFFEFDEBCFFD7BEABFF3F302363AA8260E0DDC0A0FFF9F0
          D5FFF8EDCDFFF4E1BAFFF7E8C6FFBF8B63FF0000000E00000004000000029B7D
          61BFD0A984FF9A7D61BF00000003000000010000000000000000000000000000
          000000000000000000000000000100000002000000050504030F5944327ABE94
          70F2E5CDB1FFF9EFD6FFF5E6C6FFCAA27FFF00000012050403125944327ABE94
          70F2E6CFB0FFFAF2D7FFF8ECCCFFC29168FF0000000D00000003000000010000
          0002000000020000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000060E0B
          081C755A429DCDA681FCECD9BEFFC5956DFF0000000C00000006000000060E0B
          081C755A429DCDA681FCECDBBDFFC5956DFF0000000B00000003000000000000
          0000000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          000300000007211A1333906F53BBC79972FF0000000700000003000000010000
          000300000007211A1333906F53BBC79972FF0000000700000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000020000000400000005000000060000000300000001000000000000
          0001000000020000000400000005000000060000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000000000000000000
          0000000000000000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000002000000050000
          0005000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000002000000060000000C000000120000
          0012000000090000000200000001000000000000000000000000000000000000
          0000000000000000000100000002000000040000000400000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000100000002000000050000000A000000140E0704365C2F1AAD9C55
          30FF000000140000000500000001000000000000000000000000000000000000
          00000000000000000002000000060000000E000000120000000E000000070000
          0002000000000000000000000000000000000000000000000000000000010000
          0001000000040000000800000010070402284E2816999A5733F9C38F60FF9D56
          30FF0000001A0000000700000001000000000000000000000000000000000000
          000000000001000000030000000D815438BFAE6C44FF7D4C31BF0000000E0000
          0003000000010000000000000000000000000000000100000001000000030000
          00070000000D0201011B3E20127D8F4E2DEDBE875BFFDCB581FFE0B985FF9E57
          30FF0000001C0000000700000001000000000000000000000000000000000000
          0000000000000000000400000012B77B54FFE4BF8CFFB06E47FF000000130000
          00050000000100000000000000000000000100000002000000050000000B0000
          00142C180D5F834828DDB87E54FFDAB282FFDFB983FFDBAF77FFE0BA86FFA059
          32FF0000001B0000000700000001000000000000000000000000000000000000
          0000000000000000000500000012BA7F58FFE5C291FFB2724AFF000000130000
          00050000000100000000000000010000000400000008000000101E110A467542
          26C5B3774EFFD9B183FFE3C08EFFDFB57FFFDDB179FFDCB077FFE1BB88FFA25B
          34FF0000001A0000000700000001000000000000000000000000000000000000
          0000000000000000000400000011BD845EFFE7C595FFB4754EFF000000130000
          00050000000100000003000000070000000D1009062C653C23A9B2744CFFD6AC
          82FFE7C69AFFE3BD8AFFE0B881FFDFB67FFFDDB57CFFDDB37AFFE2BE8CFFA45E
          36FF000000190000000600000001000000000000000000000000000000000000
          0000000000000000000400000010BF8962FFE9C89AFFB67851FF000000120000
          0006000000050000000A0805031D59372291AA7048F8D1A77EFFEACDA3FFE7C7
          97FFE3BE8BFFE3BD89FFE2BB86FFE1B983FFE0B781FFDEB57EFFE3C090FFA661
          39FF000000180000000600000001000000000000000000000000000000000000
          000000000000000000040000000FC28E67FFEACC9EFFB87C54FF000000120000
          000B02010111452D1D71A36C46EBCFA37DFFEBD0AAFFEACEA3FFE7C595FFE6C4
          93FFE5C291FFE4C08EFFE3BF8BFFE2BD88FFE1BA84FFE0B781FFE5C495FFA865
          3DFF000000170000000600000001000000000000000000000000000000000000
          000000000000000000030000000DC4926CFFECCFA3FFBA8058FF000000133424
          1955986946D9CC9D76FFE9CEAAFFEED4AEFFEACB9FFFEACA9CFFE9C99BFFE9C9
          99FFE7C697FFE7C494FFE5C290FFE4BF8DFFE2BD89FFE1BA85FFE7C699FFAB6A
          40FF000000150000000600000001000000000000000000000000000000000000
          000000000000000000030000000CC69671FFF0D6ADFFBD835DFF00000013BD87
          60FFE8D2BAFFF4E6CCFFEFD5ADFFEDD0A4FFEFD5A9FFF0D9AFFFF1DAB0FFF1DB
          B1FFF0D9AEFFEED5A8FFEDD0A3FFE8C898FFE4C18FFFE2BD89FFE8C99DFFAE6F
          45FF000000140000000500000001000000000000000000000000000000000000
          000000000000000000030000000BC99A75FFF3DEB7FFBE8761FF00000010241B
          133B906848C5D0A887FFF1E1CAFFF9EED0FFF5E5BFFFF5E2BBFFF5E2BAFFF4E0
          B8FFF3DEB5FFF2DCB3FFF0DAAFFFEFD7ACFFEDD3A6FFE8C897FFE9CCA2FFB174
          4AFF000000130000000500000001000000000000000000000000000000000000
          0000000000000000000200000009CA9E78FFF5E2BCFFC08B65FF0000000D0000
          0007000000093D2D1F5BA77A57DFDABA99FFF8EFD5FFFAEED0FFF7E5C0FFF6E4
          BEFFF5E2BBFFF4E0B9FFF2DEB5FFF1DBB1FFEFD8ACFFEED5A9FFF0D9B3FFB378
          4FFF000000120000000500000000000000000000000000000000000000000000
          0000000000000000000200000008CCA17BFFF6E5C0FFC38E69FF000000090000
          0003000000030000000605030210563F2D7BBB8C67F2E4CBADFFFBF4DBFFFAEC
          CDFFF6E6C0FFF6E4BDFFF4E1BAFFF3DFB6FFF1DCB2FFEFD9AEFFF4E1BBFFB77D
          53FF000000110000000400000000000000000000000000000000000000000000
          0000000000000000000200000007CEA37EFFF8E8C4FFC5936DFF000000080000
          0002000000000000000100000003000000070E0A071C73553D9DCAA17BFDEEDD
          C2FFFCF3D9FFF8EAC7FFF6E5BEFFF4E2BAFFF3DFB6FFF1DCB2FFF4E3BFFFBA82
          59FF000000100000000400000000000000000000000000000000000000000000
          0000000000000000000100000006CFA680FFFAEAC7FFC79670FF000000070000
          000200000000000000000000000100000002000000040000000720181235916C
          4EC2D5B28FFFF5E8CEFFFBF2D4FFF6E6C1FFF4E2BAFFF3DFB6FFF5E6C3FFBD87
          5FFF0000000F0000000400000000000000000000000000000000000000000000
          0000000000000000000100000004D0A782FFFEFAE8FFC99A74FF000000050000
          0001000000000000000000000000000000000000000100000002000000050000
          00093F30235BAB8260DFDDC0A0FFF9F0D5FFF8EDCDFFF4E1BAFFF7E8C6FFBF8B
          63FF0000000E0000000400000000000000000000000000000000000000000000
          00000000000000000001000000029B7D61BFD0A984FF9A7D61BF000000030000
          0001000000000000000000000000000000000000000000000000000000010000
          0002000000050504030F5944327ABE9470F2E6CFB0FFFAF2D7FFF8ECCCFFC291
          68FF0000000D0000000300000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000200000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000003000000060E0B081C755A429DCDA681FCECDBBDFFC595
          6DFF0000000B0000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000010000000300000007211A1333906F53BBC799
          72FF000000070000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000004000000050000
          0006000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000002000000050000000500000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000002000000060000000C000000120000001200000009000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          00050000000A000000140E0704365C2F1AAD9C5530FF00000014000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000004000000080000
          0010070402284E2816999A5733F9C38F60FF9D5630FF0000001A000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000010000000100000003000000070000000D0201011B3E20
          127D8F4E2DEDBE875BFFDCB581FFE0B985FF9E5730FF0000001C000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000002000000050000000B000000142C180D5F834828DDB87E
          54FFDAB282FFDFB983FFDBAF77FFE0BA86FFA05932FF0000001B000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000400000008000000101E110A46754226C5B3774EFFD9B183FFE3C0
          8EFFDFB57FFFDDB179FFDCB077FFE1BB88FFA25B34FF0000001A000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          00070000000D1009062C653C23A9B2744CFFD6AC82FFE7C69AFFE3BD8AFFE0B8
          81FFDFB67FFFDDB57CFFDDB37AFFE2BE8CFFA45E36FF00000019000000060000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000002000000050000000A0805
          031D59372291AA7048F8D1A77EFFEACDA3FFE7C797FFE3BE8BFFE3BD89FFE2BB
          86FFE1B983FFE0B781FFDEB57EFFE3C090FFA66139FF00000018000000060000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000702010111452D1D71A36C
          46EBCFA37DFFEBD0AAFFEACEA3FFE7C595FFE6C493FFE5C291FFE4C08EFFE3BF
          8BFFE2BD88FFE1BA84FFE0B781FFE5C495FFA8653DFF00000017000000060000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000534241952986946D9CC9D76FFE9CE
          AAFFEED4AEFFEACB9FFFEACA9CFFE9C99BFFE9C999FFE7C697FFE7C494FFE5C2
          90FFE4BF8DFFE2BD89FFE1BA85FFE7C699FFAB6A40FF00000015000000060000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000006BF8961FFE8D2BAFFF4E6CCFFEFD5
          ADFFEDD0A4FFEFD5A9FFF0D9AFFFF1DAB0FFF1DBB1FFF0D9AEFFEED5A8FFEDD0
          A3FFE8C898FFE4C18FFFE2BD89FFE8C99DFFAE6F45FF00000014000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000004251B1439906848C5D0A887FFF1E1
          CAFFF9EED0FFF5E5BFFFF5E2BBFFF5E2BAFFF4E0B8FFF3DEB5FFF2DCB3FFF0DA
          AFFFEFD7ACFFEDD3A6FFE8C897FFE9CCA2FFB1744AFF00000013000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000004000000093D2D1F5BA77A
          57DFDABA99FFF8EFD5FFFAEED0FFF7E5C0FFF6E4BEFFF5E2BBFFF4E0B9FFF2DE
          B5FFF1DBB1FFEFD8ACFFEED5A9FFF0D9B3FFB3784FFF00000012000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000060503
          0210563F2D7BBB8C67F2E4CBADFFFBF4DBFFFAECCDFFF6E6C0FFF6E4BDFFF4E1
          BAFFF3DFB6FFF1DCB2FFEFD9AEFFF4E1BBFFB77D53FF00000011000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0003000000070E0A071C73553D9DCAA17BFDEEDDC2FFFCF3D9FFF8EAC7FFF6E5
          BEFFF4E2BAFFF3DFB6FFF1DCB2FFF4E3BFFFBA8259FF00000010000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000002000000040000000720181235916C4EC2D5B28FFFF5E8CEFFFBF2
          D4FFF6E6C1FFF4E2BAFFF3DFB6FFF5E6C3FFBD875FFF0000000F000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000010000000200000005000000093F30235BAB8260DFDDC0
          A0FFF9F0D5FFF8EDCDFFF4E1BAFFF7E8C6FFBF8B63FF0000000E000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000002000000050504030F5944
          327ABE9470F2E6CFB0FFFAF2D7FFF8ECCCFFC29168FF0000000D000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          00060E0B081C755A429DCDA681FCECDBBDFFC5956DFF0000000B000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00010000000300000007211A1333906F53BBC79972FF00000007000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000050000000600000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0004000000040000000200000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000070000
          000D0000000E0000000A00000005000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000040000000EA55E
          37FF5E321BA91008053300000011000000090000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000500000013A662
          38FFC9996DFF9F5C36F9502A1896070402240000000F00000008000000040000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000500000014AA65
          3BFFE7C99CFFE1BC8AFFC18D61FF93522FEC3E22137A020101190000000D0000
          0007000000030000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000400000013AB6A
          3FFFE9CEA3FFDFB67FFFE1BD89FFDFB88AFFBB8359FF864929DC2C180E5F0000
          00140000000C0000000500000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000400000011AF6E
          44FFEBD1ACFFE1BA83FFE1B983FFE1BA85FFE4C190FFDAB486FFB3784FFF7542
          25C51E110948000000120000000A000000050000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000400000010B273
          48FFEED7B3FFE3BE8AFFE2BD89FFE2BC88FFE2BC87FFE2BC8AFFE6C394FFD5AA
          7EFFAF7048FF633820AB0F090530000000100000000900000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000040000000FB478
          4DFFF1DABBFFE5C290FFE5C28FFFE4C08EFFE4C08DFFE3BE8BFFE3BD89FFE4BF
          8CFFE7C596FFCD9F73FFA5663FF954301D95080402230000000E000000080000
          0003000000010000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000EB77B
          53FFF3E0C4FFE8C696FFE7C695FFE7C595FFE6C493FFE5C291FFE4C08EFFE3BF
          8BFFE2BD88FFE4C08DFFE4C294FFC7966AFF9A5E39EC40261677020101180000
          000B000000040000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000DBA82
          59FFF5E4CAFFEACB9DFFEACA9CFFE9C99BFFE9C999FFE7C697FFE7C494FFE5C2
          90FFE4BF8DFFE2BD89FFE1BB86FFE4BF8DFFDFBB8EFFBF895EFF8C5533DB2F1C
          1159000000090000000200000001000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000CBD86
          5DFFF7E8D1FFEDD0A3FFECCFA2FFECCEA2FFEBCDA0FFEACB9DFFE9C999FFE8C6
          96FFE6C392FFE4C08EFFE2BD89FFE1B984FFE2BC8AFFE8CCA0FFDCB890FFAC6C
          42FF0000000C0000000300000001000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000BC18D
          64FFF8EBD7FFF1D8AFFFF2DBB2FFF3DCB3FFF2DBB2FFF1D9AFFFEFD5AAFFECD1
          A4FFEACA9BFFE6C493FFE5C291FFEACEA6FFE5C9A6FFC39169FF855535C82115
          0D40000000080000000200000001000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020000000AC491
          6AFFFBF2DBFFF6E4BEFFF6E4BEFFF5E2BCFFF5E0BAFFF4DFB7FFF2DCB3FFF0D9
          AFFFEFD7ACFFF1DDB6FFEFDBBCFFD0A581FF9D6A46E139261962000000100000
          0008000000030000000100000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000200000009C697
          6FFFFCF5DEFFF8E9C4FFF8E8C3FFF7E7C2FFF7E5C0FFF5E3BDFFF4E0B9FFF5E4
          BFFFF6EBCDFFDEBF9EFFB4805AF35238257F0403021600000009000000050000
          0002000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000200000008C99B
          75FFFDF7E0FFFAEDC9FFFAECC8FFF9EBC6FFF9E9C5FFF8E9C6FFFAEFD3FFECD7
          BAFFC69972FD6F4F369F0D090620000000090000000500000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000200000007CBA0
          79FFFEF8E1FFFBEFCDFFFCEFCCFFFBEFCDFFFCF3D7FFF4E7CCFFD4AF8BFF916B
          4CC5221911390000000900000005000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000100000006CDA4
          7EFFFEFAE1FFFDF2D1FFFEF5D9FFFBF2D8FFDFC2A1FFAC8360DF3E2F225B0000
          0009000000050000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000100000005D0A8
          83FFFFFAE2FFFDF8DFFFE9D4B5FFC29A76F2594533790504030E000000050000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000100000004D2AC
          87FFF1E2C6FFD2B08AFC785F479A0E0B09190000000500000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000100000002D4B0
          8BFF95785BB9221B152F00000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000020000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000400000004000000020000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000070000000D0000000E0000000A0000
          0005000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          00000000000000000001000000040000000EA55E37FF5E321BA9100805330000
          0011000000090000000400000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000040000
          0004000000040000000200000001000000000000000000000000000000000000
          000000000000000000000000000500000013A66238FFC9996DFF9F5C36F9502A
          1896070402240000000F00000008000000040000000100000001000000000000
          00000000000000000000000000000000000000000002000000060000000E0000
          00120000000E0000000700000002000000000000000000000000000000000000
          000000000000000000000000000500000014AA653BFFE7C99CFFE1BC8AFFC18D
          61FF93522FEC3E22137A020101190000000D0000000700000003000000010000
          000100000000000000000000000000000001000000030000000D815438BFAE6C
          44FF7D4C31BF0000000E00000003000000010000000000000000000000000000
          000000000000000000000000000400000013AB6A3FFFE9CEA3FFDFB67FFFE1BD
          89FFDFB88AFFBB8359FF864929DC2C180E5F000000140000000C000000050000
          0002000000010000000100000000000000000000000400000012B77B54FFE4BF
          8CFFB06E47FF0000001300000005000000010000000000000000000000000000
          000000000000000000000000000400000011AF6E44FFEBD1ACFFE1BA83FFE1B9
          83FFE1BA85FFE4C190FFDAB486FFB3784FFF754225C51E110948000000120000
          000A000000050000000200000001000000000000000500000012BA7F58FFE5C2
          91FFB2724AFF0000001300000005000000010000000000000000000000000000
          000000000000000000000000000400000010B27348FFEED7B3FFE3BE8AFFE2BD
          89FFE2BC88FFE2BC87FFE2BC8AFFE6C394FFD5AA7EFFAF7048FF633820AB0F09
          0530000000100000000900000004000000020000000500000011BD845EFFE7C5
          95FFB4754EFF0000001300000005000000000000000000000000000000000000
          00000000000000000000000000040000000FB4784DFFF1DABBFFE5C290FFE5C2
          8FFFE4C08EFFE4C08DFFE3BE8BFFE3BD89FFE4BF8CFFE7C596FFCD9F73FFA566
          3FF954301D95080402230000000E000000080000000700000011BE8862FFE9C8
          9AFFB67851FF0000001100000004000000000000000000000000000000000000
          00000000000000000000000000030000000EB77B53FFF3E0C4FFE8C696FFE7C6
          95FFE7C595FFE6C493FFE5C291FFE4C08EFFE3BF8BFFE2BD88FFE4C08DFFE4C2
          94FFC7966AFF9A5E39EC40261677020101180000000F00000013C18D67FFEACC
          9EFFB87C54FF0000001000000004000000000000000000000000000000000000
          00000000000000000000000000030000000DBA8259FFF5E4CAFFECD0A4FFEFD5
          AAFFEFD6ABFFF0D8ACFFEED5AAFFEDD1A5FFEACD9EFFE6C494FFE2BE8AFFE1BB
          86FFE4BF8DFFDFBB8EFFBF895EFF8C5533DB2F1C115B00000016C2916BFFEBCE
          A2FFBA8058FF0000000E00000004000000000000000000000000000000000000
          00000000000000000000000000030000000CBD865DFFFAEFD4FFF4E1B8FFF3E0
          B7FFF3DFB6FFF2DDB4FFF1DCB2FFF0DAAFFFEFD7ACFFEED5A9FFECD1A3FFE6C5
          94FFE1BA85FFE2BC8AFFE8CCA0FFDCB890FFAC6C42FF00000017C49470FFEFD5
          ACFFBD835DFF0000000D00000003000000000000000000000000000000000000
          00000000000000000000000000030000000BC18D64FFFBF2D8FFF6E5BEFFF6E4
          BDFFF5E3BCFFF5E2BAFFF4E0B7FFF3DEB5FFF1DCB2FFF0D9AFFFEFD6ABFFEED5
          A9FFEFD9B3FFE6CAA7FFC39169FF855535C821150D4300000013C79974FFF2DD
          B6FFBE8761FF0000000C00000003000000000000000000000000000000000000
          00000000000000000000000000020000000AC4916AFFFCF4DBFFF8E8C3FFF7E8
          C2FFF7E6C1FFF6E5BFFFF6E4BDFFF4E2BBFFF3E0B7FFF2DEB4FFF4E3BDFFF3E2
          C3FFD2AA86FF9D6A46E139261962000000100000000A0000000CC99D78FFF5E2
          BCFFC08B65FF0000000B00000003000000000000000000000000000000000000
          000000000000000000000000000200000009C6976FFFFDF6DDFFF9ECC7FFF9EC
          C7FFF9EAC6FFF9E9C4FFF7E8C2FFF6E5BFFFF7E8C4FFF8EDCFFFDFC19FFFB480
          5AF35238257F0403021600000009000000050000000400000009CCA17BFFF6E5
          C0FFC38E69FF0000000900000002000000000000000000000000000000000000
          000000000000000000000000000200000008C99B75FFFDF7DEFFFBEFCCFFFBEE
          CBFFFAEDCAFFFAECC8FFF9ECC9FFFBF1D4FFECD9BAFFC69A72FD6F4F369F0D09
          0620000000090000000500000002000000010000000200000007CEA37EFFF8E8
          C4FFC5936DFF0000000800000002000000000000000000000000000000000000
          000000000000000000000000000200000007CBA079FFFEF8E0FFFCF1CFFFFCF1
          CEFFFBF1CFFFFCF4D7FFF5E8CCFFD4AF8BFF916B4CC522191139000000090000
          0005000000020000000100000000000000000000000100000006CFA680FFFAEA
          C7FFC79670FF0000000700000002000000000000000000000000000000000000
          000000000000000000000000000100000006CDA47EFFFEFAE0FFFDF3D2FFFEF6
          D9FFFBF2D7FFDFC2A1FFAC8360DF3E2F225B0000000900000005000000020000
          0001000000000000000000000000000000000000000100000004D0A782FFFEFA
          E8FFC99A74FF0000000500000001000000000000000000000000000000000000
          000000000000000000000000000100000005D0A883FFFFFAE1FFFDF9DEFFE9D4
          B4FFC29A76F2594533790504030E000000050000000200000001000000000000
          00000000000000000000000000000000000000000001000000029B7D61BFD0A9
          84FF9A7D61BF0000000300000001000000000000000000000000000000000000
          000000000000000000000000000100000004D2AC87FFF1E2C6FFD2B08AFC785F
          479A0E0B09190000000500000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0002000000020000000100000000000000000000000000000000000000000000
          000000000000000000000000000100000002D4B08BFF95785BB9221B152F0000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000000000000000000000000000000000
          0001000000010000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000040000000400000002000000010000000100000000000000010000
          0002000000040000000400000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00070000000D0000000E0000000A000000050000000200000002000000020000
          00070000000D0000000E0000000A000000050000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000000000000040000
          000EA55E37FF5E321BA910080533000000110000000900000005000000060000
          000FA55E37FF5E321BA910080533000000110000000900000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000040000000400000002000000050000
          0013A66238FFC9996DFF9F5C36F9502A1896070402240000000F0000000D0000
          0017A56238FFC8986DFF9F5C36F9502A1896070402240000000F000000080000
          0004000000010000000100000000000000000000000000000000000000000000
          000000000002000000060000000E000000120000000E00000007000000050000
          0014AA653BFFE7C99CFFE1BC8AFFC18D61FF93522FEC3E22137A0201011E0000
          0020B17855FFE4C79AFFE0BB89FFC08C61FF93522FEC3E22137A020101190000
          000D000000070000000300000001000000010000000000000000000000000000
          0001000000030000000D7F5236BFAA6841FF7B4A2EBF0000000E000000040000
          0013AB6A3FFFE9CEA3FFDFB67FFFE1BD89FFDFB88AFFBB8359FF854A2ADD2C18
          0E6BC4A793FFDEC49BFFDBB27DFFDFBC88FFDEB789FFBA8259FF864929DC2C18
          0E5F000000140000000C00000005000000020000000100000001000000000000
          00000000000400000012B47851FFE4BF8CFFAC6A44FF00000013000000040000
          0011AF6E44FFEBD1ACFFE1BA83FFE1B983FFE1BA85FFE4C190FFDAB486FFB378
          4FFFA66B4AFFC7A785FFD1AD7AFFD8B27EFFDDB682FFE2BF8FFFD9B385FFB378
          4FFF754225C51E110948000000120000000A0000000500000002000000010000
          00000000000500000012B77C56FFE5C291FFAE6E47FF00000013000000040000
          0010B27348FFEED7B3FFE3BE8AFFE2BD89FFE2BC88FFE2BC87FFE2BC8AFFE6C3
          94FFD5AA7EFFAF7048FFAE774EFFC7A374FFD4B07FFFDAB582FFDEB988FFE4C1
          93FFD4A97EFFAF7048FF633820AB0F0905300000001000000009000000040000
          00020000000500000011BA815CFFE7C595FFB0714BFF00000013000000040000
          000FB4784DFFF1DABBFFE5C290FFE5C28FFFE4C08EFFE4C08DFFE3BE8BFFE3BD
          89FFE4BF8CFFE7C596FFCD9F73FFAB6A43FFB38158FFCDAA7DFFD7B483FFDCB7
          85FFE1BD8AFFE6C495FFCC9E73FFA5663FF954301D95080402230000000E0000
          00080000000700000011BB8560FFE9C89AFFB2744EFF00000011000000030000
          000EB77B53FFF3E0C4FFE8C696FFE7C695FFE7C595FFE6C493FFE5C291FFE4C0
          8EFFE3BF8BFFE2BD88FFE4C08DFFE4C294FFC7966AFFAB6D44FFBA8E64FFD0AF
          81FFD9B785FFDEBA86FFE3BF8CFFE4C294FFC7966AFF9A5E39EC402616770201
          01180000000F00000013BE8A66FFEACC9EFFB47851FF00000010000000030000
          000DBA8259FFF5E4CAFFEACB9DFFEACA9CFFE9C99BFFE9C999FFE7C697FFE7C4
          94FFE5C290FFE4BF8DFFE2BD89FFE1BB86FFE4BF8DFFDFBB8EFFBF895EFFAD71
          48FFC49B6FFFDCB888FFE0BC88FFE0BA85FFE4BF8DFFDFBB8EFFBF895EFF8C55
          33DB2F1C115B00000016BF8E69FFEBCEA2FFB67C55FF0000000E000000030000
          000CBD865DFFF7E8D1FFEFD4A8FFF0D7ADFFF0D8AEFFF0D8AEFFEFD6ABFFEDD2
          A5FFEBCEA0FFE8C797FFE4C18FFFE2BD89FFE1B984FFE2BC8AFFE8CCA0FFDCB8
          90FFAC6C42FFDCBD8EFFE1BE8DFFE1BC88FFE1B984FFE2BC8AFFE8CCA0FFDCB8
          90FFAC6C42FF00000017C2926EFFEDD1A8FFB97F59FF0000000D000000030000
          000BC18D64FFFAF0D8FFF5E1BAFFF4E0B9FFF4E0B8FFF3DEB5FFF2DCB2FFF0D9
          AFFFEFD7ACFFEED4A8FFECD0A2FFE8C898FFEACEA6FFE5C9A6FFC39169FFB883
          5AFFD2B389FFE5C99DFFE8CA9CFFE6C595FFEACEA6FFE5C9A6FFC39169FF8555
          35C821150D4300000013C59772FFF0D9B0FFBA835DFF0000000C000000020000
          000AC4916AFFFBF3DBFFF7E6C0FFF6E5C0FFF6E4BEFFF5E2BCFFF4E1B9FFF3DE
          B6FFF1DBB2FFF0D9AEFFF2DFB9FFF2E0C1FFD1A884FFBA845BFFCEAD87FFE2CB
          A5FFE8D0A7FFEBD2A6FFEFDAB4FFF0DDBEFFD1A783FF9D6A46E1392619620000
          00100000000A0000000CC89B76FFF4DFB9FFBC8761FF0000000B000000020000
          0009C6976FFFFCF6DDFFF9EAC6FFF9EAC5FFF8E8C3FFF8E7C2FFF6E5BFFFF5E2
          BBFFF5E5C1FFF7ECCEFFDEC09FFFBF8A63FFCEAB85FFE6D2AFFFEBD8B2FFEED9
          B1FFF2DFBBFFF5E8CBFFDDBF9DFFB4805AF35238257F04030216000000090000
          00050000000400000009CA9F7AFFF5E3BEFFBF8A65FF00000009000000020000
          0008C99B75FFFDF7DFFFFAEECBFFFAEDCAFFFAECC8FFFAEAC6FFF9EBC8FFFAF0
          D4FFECD8BAFFC89B74FFCCA781FFE7D5B2FFEFE0BCFFF3E1BDFFF5E5C1FFF8EC
          D2FFEBD7BAFFC59972FD6F4F369F0D0906200000000900000005000000020000
          00010000000200000007CCA27DFFF7E7C2FFC18F69FF00000008000000020000
          0007CBA079FFFEF8E0FFFCF0CEFFFCF0CEFFFBF0CEFFFCF4D7FFF4E8CCFFD4AF
          8BFFC59A76FFE6D8C2FFF2E4C3FFF6E7C5FFF8EAC8FFFAF0D5FFF4E6CDFFD3AF
          8BFF916B4CC52219113900000009000000050000000200000001000000000000
          00000000000100000006CEA57FFFF9E9C6FFC3926CFF00000007000000010000
          0006CDA47EFFFEFAE0FFFDF3D2FFFEF6D9FFFBF2D8FFDFC2A1FFAC8360DF3E2F
          225FDECBB8FFF9F4E0FFFAEDCDFFFCF3D7FFFBF1DAFFDFC2A2FFAC8360DF3E2F
          225B000000090000000500000002000000010000000000000000000000000000
          00000000000100000004CFA681FFFEFAE9FFC59670FF00000005000000010000
          0005D0A883FFFFFAE1FFFDF9DEFFE9D4B4FFC29A76F2594533790504030F0000
          000AD6B596FFFDF9E5FFFDF8E1FFE8D4B6FFC29A76F2594533790504030E0000
          0005000000020000000100000000000000000000000000000000000000000000
          000000000001000000029A7C61BFD0A883FF9A7C61BF00000003000000010000
          0004D2AC87FFF1E2C6FFD2B08AFC785F479A0E0B091900000005000000040000
          0005D2AC87FFF0E3CAFFD2B08BFC785F479A0E0B091900000005000000030000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000020000000200000001000000010000
          0002D4B08BFF95785BB9221B152F000000040000000200000001000000010000
          0002D4B08BFF95785BB9221B152F000000040000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000000000000000000000000
          0001000000020000000200000002000000010000000000000000000000000000
          0001000000020000000200000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020233217D056A46FF056A46FF056A46FF056A46FF056A46FF056A
          46FF056A46FF056A46FF0233217D000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF0A6F4AFF0A6F4AFF0A6F4AFF0A6F4AFF0A6F4AFF0A6F
          4AFF0A6F4AFF0A6F4AFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF0C724DFF0C724DFF0C724DFF0C724DFF0C724DFF0C72
          4DFF0C724DFF0C724DFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF0E744FFF0E744FFF0E744FFF0E744FFF0E744FFF0E74
          4FFF0E744FFF0E744FFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF117751FF117751FF117751FF117751FF117751FF1177
          51FF117751FF117751FF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF147A54FF147A54FF147A54FF147A54FF147A54FF147A
          54FF147A54FF147A54FF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF187D57FF187D57FF187D57FF187D57FF187D57FF187D
          57FF187D57FF187D57FF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF1B815AFF1B815AFF1B815AFF1B815AFF1B815AFF1B81
          5AFF1B815AFF1B815AFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010504482FAF1F855DFF1F855DFF1F855DFF1F855DFF1F855DFF1F85
          5DFF1F855DFF1F855DFF04482FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000022E1E7103442DA703452DAA03452DAA03452DAA03452DAA03452DAA0345
          2DAA03462EAC055E3EE4238860FF238860FF238860FF238860FF238860FF2388
          60FF238860FF238860FF055E3EE403462EAC03452DAA03452DAA03452DAA0345
          2DAA03452DAA03452DAA03452DAA0232217B0000000000000000000000000000
          00000F6F4BF5268C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C
          64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C
          64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C
          64FF278C64FF278C64FF278C64FF10744FFF0001010400000000000000000000
          0000106F4CF52A8F67FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B90
          67FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B90
          67FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B90
          67FF2B8F67FF2B9067FF2B8F67FF117550FF0000000000000000000000000000
          000011704DF52E936BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F94
          6BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F94
          6BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F94
          6BFF2F946BFF2F946BFF2F946BFF127651FF0000000000000000000000000000
          000012714EF532976EFF33986FFF33986FFF33986FFF33986FFF33986FFF3398
          6FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF3398
          6FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF3398
          6FFF33986FFF33986FFF33986FFF137752FF0000000000000000000000000000
          000014734FF5379B72FF389C73FF389C73FF389C73FF389C73FF389C73FF389C
          73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C
          73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C
          73FF389C73FF389C73FF389C73FF157953FF0000000000000000000000000000
          0000157450F53A9F75FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA0
          76FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA0
          76FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA0
          76FF3BA076FF3BA076FF3BA076FF167A54FF0000000000000000000000000000
          0000167552F53EA279FF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A4
          7AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A4
          7AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A4
          7AFF40A47AFF40A47AFF40A47AFF187B56FF0000000000000000000000000000
          0000187B56F54AB88BFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE
          8FFF4DBE8FFF4BB98CFF46AC82FF44A77DFF44A77DFF44A77DFF44A77DFF44A7
          7DFF44A77DFF46AC82FF4BB88BFF4DBD8FFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE
          8FFF4DBE8FFF4DBE8FFF4BBA8DFF1B825AFF0000000000000000000000000000
          0000022E1E7103442DA703452DAA03452DAA03452DAA03452DAA03452DAA0345
          2DAA03452DAA045D3DE349AF85FF48AB82FF48AB82FF48AB82FF48AB82FF48AB
          82FF48AB82FF49AF85FF06603FE403462EAC03452DAA03452DAA03452DAA0345
          2DAA03452DAA03452DAA03452DAA0232217B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA4BAF85FF4BAF85FF4BAF85FF4BAF85FF4BAF85FF4BAF
          85FF4BAF85FF4BAF85FF044930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA4FB288FF4FB288FF4FB288FF4FB288FF4FB288FF4FB2
          88FF4FB288FF4FB288FF044930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA52B58BFF52B58BFF52B58BFF52B58BFF52B58BFF52B5
          8BFF52B58BFF52B58BFF054930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA56B88EFF56B88EFF56B88EFF56B88EFF56B88EFF56B8
          8EFF56B88EFF56B88EFF054930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA59BB91FF59BB91FF59BB91FF59BB91FF59BB91FF59BB
          91FF59BB91FF59BB91FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA5CBE93FF5CBE93FF5CBE93FF5CBE93FF5CBE93FF5CBE
          93FF5CBE93FF5CBE93FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA5EC095FF5EC095FF5EC095FF5EC095FF5EC095FF5EC0
          95FF5EC095FF5EC095FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA65CC9FFF67D0A2FF67D0A2FF67D0A2FF67D0A2FF67D0
          A2FF67D0A2FF65CDA0FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000232217B289067FF2A946AFF2A946AFF2A946AFF2A946AFF2A94
          6AFF2A946AFF289167FF0233227D000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFC003FFFFC003FFFFC003FFFFC003FFFFC003FFFFC0
          03FFFFC003FFFFC003FFFFC003FFC0000003C0000001C0000003C0000003C000
          0003C0000003C0000003C0000003C0000003C0000003FFE003FFFFE003FFFFE0
          03FFFFE003FFFFE003FFFFE003FFFFE003FFFFE003FFFFE003FFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B1B547110287CA711297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA0C1D5B7B0000000000000000000000000000
          00001235B6F5042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042B
          C0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042B
          C0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042B
          C0FF042BC0FF042BC0FF042BC0FF1136BEFF0000020400000000000000000000
          00001338B8F50834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834
          C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834
          C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834
          C5FF0834C5FF0834C5FF0834C5FF133AC0FF0000000000000000000000000000
          0000153CBAF50E41CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42
          CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42
          CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42
          CCFF0E42CCFF0E42CCFF0E42CCFF153EC2FF0000000000000000000000000000
          00001640BCF5144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144E
          D2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144E
          D2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144E
          D2FF144ED2FF144ED2FF144ED2FF1742C4FF0000000000000000000000000000
          00001844BEF51B5EDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5F
          DAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5F
          DAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5F
          DAFF1B5FDAFF1B5FDAFF1B5FDAFF1948C7FF0000000000000000000000000000
          00001A48C0F5216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216B
          E0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216B
          E0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216B
          E0FF216BE0FF216BE0FF216BE0FF1B4CC9FF0000000000000000000000000000
          00001C4DC3F52778E7FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879
          E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879
          E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879
          E8FF2879E8FF2879E8FF2879E8FF1E51CCFF0000000000000000000000000000
          00001F54C8F53399F6FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359F
          F8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359F
          F8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359F
          F8FF359FF8FF359FF8FF349BF8FF2159D1FF0000000000000000000000000000
          00000B1B547110287CA711297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA0C1D5B7B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000003C0000001C0000003C0000003C000
          0003C0000003C0000003C0000003C0000003C0000003FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000006040F022E1E71045035C2011E144B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002352382076643F1096F4AFF055D3EE001150E3400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000006040F0236
          23840A6E4AFF0D734DFF0D734DFF0D724DFF065D3EE001201550000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000023623850A69
          46F2107550FF107650FF107650FF107650FF0E734EFF075E3FE001150E340000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000060410033724870E734EFF1379
          53FF147953FF147953FF147953FF147953FF147953FF137852FF075F3FE00120
          1550000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000033724870E6D4AF2177C56FF177D
          56FF177D56FF177D56FF177D56FF177D56FF177D56FF177D56FF147A53FF0760
          3FE001150E340000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000006041003382587147953FF1B815AFF1B825AFF1C82
          5AFF1B825AFF1C825AFF1B825AFF1C825AFF1B825AFF1C825AFF1B825AFF1A80
          59FF096241E00120155000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000339258913724EF31F855DFF20865EFF20865EFF2086
          5EFF20865EFF20865EFF20865EFF20865EFF20865EFF20865EFF20865EFF2086
          5EFF1B815AFF0A6242E001150E35000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000060410043926891A7E59FF248962FF258A62FF258A62FF258A62FF258A
          62FF258A62FF258A62FF258A62FF258A62FF258A62FF258A62FF258A62FF258A
          62FF258A62FF238860FF0C6443E1012116520000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000043A268A197854F3288D65FF298E66FF288E66FF298E66FF288E66FF298E
          66FF288E66FF298E66FF288E66FF298E66FF288E66FF298E66FF288E66FF298E
          66FF288E66FF298E66FF238861FF0C6444E101150E3500000000000000000000
          00000000000000000000000000000000000000000000000000000004020B0438
          258522865FFF2E936BFF2E936BFF2E936BFF2E936BFF2E936BFF2E936BFF2E93
          6BFF2F946CFF2F9B70FF28946AFF30996FFF2E936BFF2E936BFF2E936BFF2E93
          6BFF2E936BFF2E936BFF2E936BFF2C9069FF0E6545E101211652000000000000
          000000000000000000000000000000000000000000000000000001160E36156D
          4CE0339970FF33976FFF33976FFF33976FFF33976FFF33976FFF33976FFF3397
          6FFF359F74FF208A61FF09563AC2289369FF359D73FF33976FFF33976FFF3397
          6FFF33976FFF33976FFF33976FFF33976FFF2C9068FF0E6646E101150E350000
          000000000000000000000000000000000000000000000000000000080514023E
          299929966AFF39A477FF389D73FF389D73FF389D73FF389D73FF389F74FF39A5
          78FF1B7D57EF023220780009061703422B9F2B976CFF39A377FF389D73FF389D
          73FF389D73FF389D73FF389D73FF389D73FF389D73FF359A70FF106847E10121
          1652000000000000000000000000000000000000000000000000000000000008
          0514064E34B32C986CFF3FA87CFF3CA177FF3CA177FF3DA277FF3EA97CFF248E
          65FF02301F750004030C0000000000090617085338BC2F9B6FFF3FA77BFF3CA1
          77FF3CA177FF3CA177FF3CA177FF3CA177FF3CA177FF3CA177FF34986FFF1169
          48E101150E350000000000000000000000000000000000000000000000000000
          000000070513023D28952F9A6FFF43AD82FF43A97EFF43AE82FF1D7F59EE0230
          1F74000000000000000000000000000000000009061704432CA134A074FF44AD
          81FF42A67CFF42A67CFF42A67CFF42A67CFF42A67CFF42A67CFF42A67CFF3EA2
          79FF136A4AE20122165300000000000000000000000000000000000000000000
          00000000000000060411074D33B0319D71FF4BBB8DFF289368FF022E1E710004
          020B0000000000000000000000000000000000000000000906180A5639BE37A2
          77FF48B085FF46AA80FF46AA80FF46AA80FF46AA80FF46AA80FF46AA80FF46AA
          80FF3CA077FF146C4BE201160E37000000000000000000000000000000000000
          000000000000000000000006041102382489136747CB022B1C68000000000000
          0000000000000000000000000000000000000000000000000000000906180544
          2DA23BA67AFF4DB58AFF4BAE85FF4BAE85FF4BAE85FF4BAE85FF4BAE85FF4BAE
          85FF4BAE85FF47AA81FF156D4BE2022217530000000000000000000000000000
          000000000000000000000000000000020107000D082100010003000000000000
          000000000000000000000000000000000000000000000000000000000000000A
          06190B573BBF3FAA7EFF52B88DFF4FB288FF4FB288FF4FB288FF4FB288FF4FB2
          88FF4FB288FF4FB288FF44A77DFF166E4DE201160E3700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000A061905452EA343AD82FF56BD92FF53B68CFF53B68CFF53B68CFF53B6
          8CFF53B68CFF53B68CFF54B78EFF4EB288FF074E34B40004020A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000A06190D593CC046B185FF5ABF94FF57B98FFF57B98FFF57B9
          8FFF57B98FFF57BA90FF59C195FF31996FFF022A1B6600000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000A071A05462FA54AB488FF5DC498FF5ABD92FF5ABD
          92FF5BBF94FF5EC699FF298A64EF03301F730000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000A071A0F5C3FC34CB78BFF60C69AFF5EC1
          96FF60C99CFF3AA377FF033221770004030C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000B071B074830A750BB8EFF67D3
          A4FF30926AF00334227C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000B071B105E41C4309A
          70FF0435237E0005030E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000020107000A
          071A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFC1FFFFFF00FFFFFF00
          7FFFFC003FFFFC001FFFF0000FFFF00007FFC00003FFC00001FF000000FF0000
          007F0000003F8008001FC03C000FE03E0007F0FF0003F8FF8001FFFFC000FFFF
          E000FFFFF003FFFFF803FFFFFC0FFFFFFE0FFFFFFF3FFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010001
          0508000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000001050800000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000815445C1029
          84B2050C27350000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050C2735102984B209174962000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002060909174A640E32BEFF0428
          BEFF1031A7E108133D5200000000000000000000000000000000000000000000
          0000000000000000000008133D521031A7E10428BEFF0E32BEFF0A194E690102
          070A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000009174A641032AFEB0429BFFF0228
          BFFF062BBFFF1131A7E1050C2735000000000000000000000000000000000000
          000000000000050C27351131A7E1062BBFFF0228BFFF0429BFFF1031B0EC0918
          4C66000000000000000000000000000000000000000000000000000000000000
          000000000000000000000002060909174A640F35BFFF052CC1FF042BC1FF042B
          C1FF042BC1FF052CC1FF1132A8E108133D520000000000000000000000000000
          000008133D521132A7E1052CC1FF042BC1FF042BC1FF042BC1FF052CC1FF0F35
          BFFF09184B650002060900000000000000000000000000000000000000000000
          0000000000000000000009184A641134B0EB0630C2FF052FC2FF052FC2FF052F
          C2FF052FC2FF052FC2FF0831C2FF1232A8E1050C27350000000000000000050C
          27351232A8E10831C2FF052FC2FF052FC2FF052FC2FF052FC2FF052FC2FF062F
          C2FF1134B0EB09184A6400000000000000000000000000000000000000000000
          0000000000010816445C1139C1FF0933C4FF0833C4FF0833C4FF0833C4FF0833
          C4FF0833C4FF0833C4FF0833C4FF0933C4FF1233A9E108133D5208133D521233
          A9E10933C4FF0833C4FF0833C4FF0833C4FF0833C4FF0833C4FF0833C4FF0833
          C4FF0933C4FF1239C1FF0916435B000000010000000000000000000000000000
          00000102070A102B87B40B38CAFF0937CAFF0937C6FF0937C6FF0937C6FF0937
          C6FF0937C6FF0937C6FF0937C6FF0937C6FF0C38C5FF1334A9E11334A9E10C38
          C5FF0937C6FF0937C6FF0937C6FF0937C6FF0937C6FF0937C6FF0937C6FF0937
          C6FF0937CAFF0B39CBFF112B85B3000206090000000000000000000000000000
          000000000000050E2C3B1339B5E40E42DDFF0B3DCDFF0B3CC8FF0B3CC8FF0B3C
          C8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0C3CC8FF0C3CC8FF0B3C
          C8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3D
          CDFF0E42DDFF1338B4E3050D2A39000000000000000000000000000000000000
          00000000000000000000081541571339B6E40F46E0FF0D41D0FF0D40CBFF0D40
          CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40
          CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D41D0FF0F47
          E0FF1439B4E30814405600000000000000000000000000000000000000000000
          0000000000000000000000000000050E2C3B153CB7E4124BE2FF1047D2FF1045
          CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045
          CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1047D3FF134BE2FF153B
          B5E3050D2A390000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000008154157153DB8E41451E5FF124B
          D5FF124AD0FF124AD0FF124AD0FF124AD0FF124AD0FF124AD0FF124AD0FF124A
          D0FF124AD0FF124AD0FF124AD0FF124AD0FF124CD5FF1451E6FF153CB6E30814
          4056000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000050E2C3B163FB9E41756
          E7FF1551D7FF144FD2FF144FD2FF144FD2FF144FD2FF144FD2FF144FD2FF144F
          D2FF144FD2FF144FD2FF144FD2FF1551D8FF1755E7FF163EB7E3050D2A390000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000081541571740
          B8E41858E0FF1654D6FF1654D5FF1654D5FF1654D5FF1654D5FF1654D5FF1654
          D5FF1654D5FF1654D5FF1654D6FF1857E0FF173FB6E308154056000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000008133D52163C
          AEE11958D6FF195AD7FF195AD7FF195AD7FF195AD7FF195AD7FF195AD7FF195A
          D7FF195AD7FF195AD7FF195AD7FF1958D6FF163CADE008133B50000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000050C2735163EAEE11B59
          D6FF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5E
          DAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B59D6FF163DADE0050C26340000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000008143D52173FAEE11D62DAFF1D64
          DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64
          DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D61DAFF173FADE00813
          3B50000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050C27351740AEE11E62DAFF1F68DFFF1F68
          DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68
          DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1E62DAFF173F
          AEE0050C26340000000000000000000000000000000000000000000000000000
          0000000000000000000008143D521841AFE1216BDFFF226EE1FF226EE1FF226E
          E1FF226EE1FF226EE1FF226EE1FF226EE1FF226EE2FF226EE3FF226EE3FF226E
          E2FF226EE1FF226EE1FF226EE1FF226EE1FF226EE1FF226EE1FF226EE1FF216B
          DFFF1840AFE008133B5000000000000000000000000000000000000000000000
          000000000000050C27351942B0E1226ADEFF2472E4FF2472E4FF2472E4FF2472
          E4FF2472E4FF2472E4FF2472E4FF2472E4FF2575EAFF277BF3FF277BF3FF2575
          EAFF2472E4FF2472E4FF2472E4FF2472E4FF2472E4FF2472E4FF2472E4FF2472
          E4FF2269DEFF1841AFE0050C2634000000000000000000000000000000000000
          000000010507112C85B12573E7FF2779EAFF2677E6FF2677E6FF2677E6FF2677
          E6FF2677E6FF2677E6FF2677E6FF277AECFF287BF4FF1B49B7E21B49B7E2287B
          F4FF277AECFF2677E6FF2677E6FF2677E6FF2677E6FF2677E6FF2677E6FF2677
          E6FF2778E9FF2574E7FF122D86B2000105080000000000000000000000000000
          0000000000010916445C215FDAFF2A84F7FF287CEBFF277BE8FF277BE8FF277B
          E8FF277BE8FF277BE8FF287EEEFF2B86F9FF1B4AB7E208143E5308143E531B4A
          B7E22B86F9FF287EEEFF277BE8FF277BE8FF277BE8FF277BE8FF277BE8FF287C
          EAFF2A84F8FF2363DDFF0A1A4F6A000001020000000000000000000000000000
          000000000000000000000A184A641F52C2EB2D88F7FF2B83EFFF2A80EAFF2A80
          EAFF2A80EAFF2B83F0FF2C84F5FF1C4BB7E2050D29370000000000000000050D
          29371C4BB7E22C84F5FF2B83F0FF2A80EAFF2A80EAFF2A80EAFF2B82EEFF2D89
          F9FF205AC9EE0B1C567300000000000000000000000000000000000000000000
          00000000000000000000000206090A184B652465DBFF2E8CF8FF2C85EEFF2B83
          EBFF2D87F1FF2F8EFAFF1D4CB7E208153E530000000000000000000000000000
          000008153E531D4CB7E22F8EFAFF2D87F1FF2B83EBFF2C84EDFF2F8DF9FF266B
          DFFF0B1C56730102080C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A184C662056C3EC3090F8FF308E
          F5FF2F8BF5FF1D4DB7E2050D2937000000000000000000000000000000000000
          000000000000050D29371D4DB7E22F8BF5FF2F8DF5FF3190F9FF225CC9EE0B1C
          5673000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000206090A184C67266ADBFF349B
          F8FF1E4DB7E208153E5300000000000000000000000000000000000000000000
          0000000000000000000008153E531E4DB7E2359DF9FF2870DFFF0B1C56730102
          080C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000917465F132F
          87B2050D29370000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050D2937133089B40A1A4F6A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010001
          0508000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000102070A00000102000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFF3FFCFFFF1FF8FFFC0FF03FFC07E03FF003C00FF001
          800FC0000003C0000003E0000007F000000FF800001FFC00003FFE00007FFF00
          00FFFF0000FFFE00007FFC00003FF800001FF000000FE0000007C0000003C000
          0003F001800FF003C00FFC07E03FFC0FF03FFF1FF8FFFF3FFCFFFFFFFFFFFFFF
          FFFF}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000027744558745469746C6500526566726573683B5265706561743B4261
          72733B526962626F6E3B52656C6F6164CD4DF6E90000097049444154785EC557
          696C15D715FEEECC5BEC673FEFF83DE305DB103078613360234CCA521227A449
          504A2AB2476A9AA849A334AAFAAB4A11A289D212A94A5A3552DBB4A4350E2969
          6241EAB44052CC12E305638C17700CDEFDFC166F6F9B3733F7F6DDABEB18891F
          1152AB9ED1A7FBE6FADCB37CE79C190F618CE1FF29E4BFA8CFFE5701908555E2
          76610B90F77712C06F1B6B0176CB2946F0C3FB3E95CEA01C3CBCADC891627B54
          B5901D842095105201C64019EB6494CC1A86796ADA1B3D7AE0074D0300A804DE
          3E7EAF2830D705217215F6E5CAC482774ED462DFF61F831082F4849D5F3B7EBD
          6E7B4D62B275BF2B3DB7C69D9E8F45A98B919A9C094782135C4291594C07FDF0
          CE8CC313188C63EC427036F6F39F3DF5C517004C007462EE38331905632C0E0A
          CA4CF1FBE333BF177128E09A94815FF3CE1F7C6645E2A163DF7EBB30AFE8F4E6
          55BB6ABEB5663756169521353501067CF0877BE10B5D85C6C691EC24585EB014
          5B56DF834DA53BAB8B0B8B3E7BA37EC7DB35F7E7270150DDCEDD0490CEF90A70
          E6844FD3A0B0806F98149989BB44D6CFBDB63E7B7979FAD195856BB7AC282885
          CD4630A78D82C11494890B145464A581D259F19B4B564626D29C55703A329EC3
          93A4B4B024FDD1F70F757A72531E3487A68E89D38C99A010CE6F6B30259EB973
          736DFEC9B5CBABD697149620A20760D098542200E10616029094C661C0A4F135
          0E8B6A4792D58D81919BE8E86B696FACEBBFA7E9F8D03400F346A09EF1EC29A5
          F8DBA93F885EB0DC1280BA6967EE5B2B97AC5EBF2CBF1881F030DF147DC14555
          ACB02A7628C41A872A82D0690C861985A68741A90E931AD04C0DC1E80CF27396
          20122D5BA7ED310EC503781E00EF055304CD61083E40E69DBFFA56755569E9B2
          A6CAD28DD031C3B3E3CE8582DD9A84D1B1002EF75C434FFF0086C7C7C5A9FC1C
          17561417A1ACA408D9D94988C4667910820D421438D4C5E8ECBD82F6D66BDBDE
          7DADED3C00FDDAE461C619FBA0F13000068B0CC0E2CCB41F2C7017C32421C4F4
          8830A0C461B33870AEE50A4E9DBF680C0E4DFC3916A67FBFD91A6A06007F65B8
          AAF7DAD04397BA7B9EDABA718D65754501344383C94C98A60685F890EBCAC770
          CEC80100B5A2DF6198E2EFE6420F589E3F50B9A962CDD2B35BD656635A1BE799
          0B245A92D072F93A3E6EFCDCE3199ADB7BA961AA158021E79C8BCACFAFFB4E46
          654E91F383DAED55AED2558B118E336198862853A6A310ED97BBD1D67CFD5B87
          DFECBC0040BF3CF61B76F478BD6040E14652D26C7B16A56623A407A01BBCAE3A
          1803463D8178F61D867738F448DC790B008D1B00604AE87CAFBD21D0E2B911DA
          DBD2D16B78BD73608C8886D44D1D33510FD2D3D2919695B80780609C07C71930
          4D2636140AB6D1626708C666C0286F1202AB6AC7B5AF863136E67DBFED137F87
          744687673E640BE308B624ED5106406F6DF07564E426FEE5C690F7E98A7237C2
          5417CD1689CD21C99101C54A2A6500CAFAFC97D94FDEA9664C6EA894D265A6A2
          61607200AE943C517707140C8D8E2316A41FCDD37E73AA9EF10683745F94BE4F
          8CAF2C250DFB8D86B171DFD3E5153930A8215830988124ABC1359602B0018871
          FD5FBE788101304544864E33991A45509B46D8378B74870B49F614F80253E86E
          9A6E9335E7DD2B9D034B339E203201DB3C2E9FF47717AFCC14CF0AC330C44484
          F5205882CA6730038053F68D21198D8A9AE8BA0931CB8C89A87DC13158545B1C
          0A783B424ADCA0740FC8CCAD3FFAD5C61946A012F932B3DBECD0CD1866A30144
          F410C018ECAA83D7DBFAE29B1B06B88ED4355B4E8EE5F100108D198170447329
          4C85C174AE200E676765A262EBF4FAD375C3A700189A11617C346510C2D6F8F8
          4CDDEE7BB73DB1A67495A05D33A2E81E3D839016144C08C608C5BE471E90A3C3
          70B9AB0F9FFEE37CFDC57F8D8679004C8B1A03C159DD451C2AA81103445061B8
          5D59485B24BAF72C00BDCCFD02FB72F00D16174831BBCEF90E26249D7D3064FD
          2A25AC074099A48273276BE79B9BC017B31F8A3DBB928C0B4D9EB9EEF3FED7B9
          4DAE93F4F0CB77BD5EBE2EEFA58C3C0DE158105CACAA1599B665E8681B31BA9A
          C7EE3B7DF446338008773A9FBDACA763D7B3852F97552EDA5FB8D281883CCF21
          190095ABDDE240FFD510BA9ABDFB9B8E8CFF1A4050E106BD239186C9893930AA
          7C7D3066C410253E942C2FB0DC5591F5D7BB1F5E520D20853B0460E731CA26A4
          678E8EBC37D017E88B06092C0ADF2692016E4F114F559558A18509FA7BA6062F
          364CFE91930CC020D29073F78BC58DAB372EDA90EAA6E2512C84008BD38AA04F
          A5A2A777D0181DF21F99F2463F3D5937C04B42EF797CE986F8FDCD8B9F8D8E6F
          B8DFB5BDB42AFBC8FA9A6C31FB4264A92818122C89683BE7C5D566DFF3ED277C
          1FF0EC0198728E9158B9DB7577F926D789A5E57610BB26A6410A72338A60375D
          981C0F223EE708046604A5CE640726C6A6DAEBDFEA7A0800763E9BFF6ED5F6FC
          DAAC1C2B0CAA8331EE9A412516F82763686A1C3ADBF4BE672F802900B16DDFCF
          119C337ED37ADCD33C38E03F3A7243830A2B0F9E43C85860103EBD1FD9450477
          6F2FC5E38FD5C6711F6A7757637949E1BA9D8F157F0F00FADB677E71B5C31725
          B08110158A800516C58E2BAD5E73A427BC1F40483E0318A514E49699B667E627
          B857EFCA6C585E9E5A56B0C20ECA0CF9FF24997F3B8ABA0AE3FC5E5190E72CC7
          27C72EF84ED5F7EFF00C856636EF75BF5A5993F7D25D6569E279A02A2AAE774F
          A1F9F3E13FB51CF3FF1400A72FB6F5D96CC6A463EC7C2E97F24DFF70D4DB7B6E
          6A5F7747A0ED7A6708B1B00A8B6A954E45B56420840720EEFDDA102A2B5765AD
          D9E67E0500B9D4E8FB5DF7158F4FD74443428F2AE8EA98F05FFF72EE1080B0CC
          5E4C068B430580256B9371B33D28F6E77C7AD03F143DA12693826884AD042370
          A63860B558212855D479364476A0408EDB8D91517F6924A47DE4B919F2A6BA6D
          21D5A6EEC85B928ED6E6110C74050E0C5D0A9F91F4D3D3FDAFB1D3672E4AEA65
          34FFEC7B85C9198F0603C6E48523932FF434FB9F6C3D3779A5F9DF13E8EB9C86
          774C831656602109B02021AEA8607C3488D34D5F62363A6B4D5B8AEFF2F3974E
          F8EAAE5FF5744EFB35F4754F747635CED4C9EC4DC80165F2220050F34C36A4A0
          E9BD49C1B59CF10400C9451B92CBD273AD0FD81CEA6610E654AD6419B8359DF5
          338AA016A6E76726621FDF680EB5CBF9B6966C4DDBB2AC34FBA3DE2BA37BFACF
          869A64F666F55319EC9B3FCD16F65509DB2DB0C83D2E1480215FB19A84C9CFC8
          E0ADB2E611A9C76E737407DF85CA026EFB2EA40B90B2A04B25D89D7D9CDEB92E
          BB5DFF9BBF9CFF03BCBD0FCE21DB47940000000049454E44AE426082}
      end>
  end
end
