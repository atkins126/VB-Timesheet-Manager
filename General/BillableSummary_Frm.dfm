inherited BillableSummaryFrm: TBillableSummaryFrm
  Caption = 'BillableSummaryFrm'
  ClientHeight = 754
  ClientWidth = 1299
  ExplicitWidth = 1315
  ExplicitHeight = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 1126
    Height = 706
    ExplicitWidth = 1126
    ExplicitHeight = 706
    object docToolbar: TdxBarDockControl [0]
      Left = 11
      Top = 11
      Width = 1104
      Height = 58
      Align = dalNone
      BarManager = barManager
    end
    object grdBillableSummary: TcxGrid [1]
      Left = 11
      Top = 100
      Width = 1104
      Height = 350
      TabOrder = 4
      object viewBillableSummary: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewBillableSummaryCustomDrawCell
        OnFocusedRecordChanged = viewBillableSummaryFocusedRecordChanged
        DataController.DataSource = ReportDM.dtsBillableSummary
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,###,##0.00'
            Kind = skSum
            FieldName = 'TOTAL_BILLABLE_HOURS'
            Column = edtBHours
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
            Column = edtBHours
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
            Column = edtBHours
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
            Format = 'Items: #,###,##0'
            Kind = skCount
            FieldName = 'THE_PERIOD'
            Column = edtBPeriod
          end
          item
            Format = 'Items: #,###,##0'
            Kind = skCount
            FieldName = 'NAME'
            Column = edtBName
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No Billable data to display>'
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
        OnCustomDrawGroupCell = viewBillableSummaryCustomDrawGroupCell
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
          Visible = False
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
          Options.Editing = False
          Width = 400
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtBHours: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TOTAL_BILLABLE_HOURS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          OnGetDisplayText = edtBHoursGetDisplayText
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
          OnGetDisplayText = edtBHoursGetDisplayText
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
          OnGetDisplayText = edtBHoursGetDisplayText
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
          OnGetDisplayText = edtBHoursGetDisplayText
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
      object lvlBillableSummary: TcxGridLevel
        GridView = viewBillableSummary
      end
    end
    object grdCarryForwardDetail: TcxGrid [2]
      Left = 10000
      Top = 10000
      Width = 1073
      Height = 185
      TabOrder = 8
      Visible = False
      object viewCarryForwardDetail: TcxGridDBBandedTableView
        Tag = 1
        PopupMenu = popTimesheet
        OnDblClick = viewTimesheetDetailsDblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewBillableSummaryCustomDrawCell
        DataController.DataSource = ReportDM.dtsTimesheetCF
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
            FieldName = 'CARRY_FORWARD_VALUE'
            Column = edtCFCFwdValue
          end
          item
            Format = 'Items: #,##0'
            Kind = skCount
            FieldName = 'USER_ID'
            Column = lucCFSystemuser
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No Carry Forward data to display>'
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
          Properties.ReadOnly = True
          MinWidth = 120
          Options.Editing = False
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
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowOnlyValidDates = True
          Properties.ShowTime = False
          MinWidth = 90
          Options.Editing = False
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
          Caption = 'Price Item'
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
          Properties.ReadOnly = True
          MinWidth = 300
          Options.Editing = False
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
          Properties.ReadOnly = True
          MinWidth = 80
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 80
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
          Properties.ReadOnly = True
          MinWidth = 300
          Options.Editing = False
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
          Properties.ReadOnly = True
          MinWidth = 400
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
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
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
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
          Visible = False
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
        object edtCFCFwdValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CARRY_FORWARD_VALUE'
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
          Position.ColIndex = 5
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
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd/MM/yyyy'
          Properties.EditFormat = 'dd/MM/yyyy'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Visible = False
          MinWidth = 80
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cbxCFBillable: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BILLABLE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = True
          Properties.UseAlignmentWhenInplace = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          MinWidth = 40
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 40
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
          Properties.ReadOnly = True
          Properties.UseAlignmentWhenInplace = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          MinWidth = 50
          Options.Editing = False
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
          Properties.ReadOnly = True
          Properties.UseAlignmentWhenInplace = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          MinWidth = 50
          Options.Editing = False
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
          Caption = 'Ad Wk'
          DataBinding.FieldName = 'IS_ADDITIONAL_WORK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.ReadOnly = True
          Properties.UseAlignmentWhenInplace = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          MinWidth = 45
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 45
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
    object grdTimesheetDetails: TcxGrid [3]
      Left = 25
      Top = 493
      Width = 1073
      Height = 164
      TabOrder = 5
      object viewTimesheetDetails: TcxGridDBBandedTableView
        PopupMenu = popTimesheet
        OnDblClick = viewTimesheetDetailsDblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewTimesheetDetailsCustomDrawCell
        DataController.DataSource = ReportDM.dtsTimesheetDetail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'TIME_HOURS'
            Column = edtTSTimeHours
          end
          item
            Format = '#,###,##0.00'
            Kind = skSum
            FieldName = 'ITEM_VALUE'
            Column = edtTSItemValue
          end
          item
            Format = 'Items: #,##0'
            Kind = skCount
            FieldName = 'USER_ID'
            Column = lucSystemUser
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No Timesheet data to display>'
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
          end
          item
            Caption = 'Carry Forward/Release'
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
          Properties.ReadOnly = True
          MinWidth = 120
          Options.Editing = False
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
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowOnlyValidDates = True
          Properties.ShowTime = False
          MinWidth = 90
          Options.Editing = False
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
          Caption = 'Price Item'
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
          Properties.ReadOnly = True
          MinWidth = 300
          Options.Editing = False
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
          Properties.ReadOnly = True
          MinWidth = 80
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 80
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
          Properties.ReadOnly = True
          MinWidth = 300
          Options.Editing = False
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
          Properties.ReadOnly = True
          MinWidth = 400
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
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
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
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
        object edtTSCarryForwardValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CARRY_FORWARD_VALUE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,##0.00'
          Properties.EditFormat = '###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Visible = False
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
          Position.ColIndex = 5
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
          MinWidth = 50
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 50
          Position.BandIndex = 2
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object edtTSModified: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DATE_MODIFIED'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd/MM/yyyy'
          Properties.EditFormat = 'dd/MM/yyyy'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Visible = False
          MinWidth = 80
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cbxTSBillable: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BILLABLE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = True
          Properties.UseAlignmentWhenInplace = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          MinWidth = 40
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 40
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
          Properties.ReadOnly = True
          Properties.UseAlignmentWhenInplace = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          MinWidth = 55
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 55
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cbxTSApproved: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPROVED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = True
          Properties.UseAlignmentWhenInplace = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          MinWidth = 50
          Options.Editing = False
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
          Caption = 'Ad Wk'
          DataBinding.FieldName = 'IS_ADDITIONAL_WORK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.ReadOnly = True
          Properties.UseAlignmentWhenInplace = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          MinWidth = 45
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 45
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
        object edtDateCarriedForward: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DATE_CARRIED_FORWARD'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'ddMMyyyy'
          Properties.EditFormat = 'ddMMyyyy'
          Properties.ReadOnly = True
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtDateCFwdReleased: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DATE_CFWD_RELEASED'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'ddMMyyyy'
          Properties.EditFormat = 'ddMMyyyy'
          Properties.ReadOnly = True
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtReleaseCFwdToPeriod: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RELEASE_CFWD_TO_PERIOD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          MinWidth = 65
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object lvlTimesheetDetails: TcxGridLevel
        GridView = viewTimesheetDetails
      end
    end
    object cbxRemoveZeroBillableItems: TcxCheckBox [4]
      Left = 193
      Top = 75
      Caption = 'Remove zero billable items'
      ParentShowHint = False
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.OnEditValueChanged = cbxRemoveZeroBillableItemsPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Transparent = True
    end
    object cbxIncludeReleasedItems: TcxCheckBox [5]
      Left = 375
      Top = 75
      Caption = 'Include released items'
      ParentShowHint = False
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.OnEditValueChanged = cbxIncludeReleasedItemsPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Transparent = True
    end
    object cbxFetchPreviousPeriodData: TcxCheckBox [6]
      Left = 11
      Top = 75
      Caption = 'Fetch previoius period data'
      ParentShowHint = False
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.OnEditValueChanged = cbxFetchPreviousPeriodDataPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Transparent = True
    end
    object imgCFwdItemColour: TcxImage [7]
      Left = 25
      Top = 663
      Properties.ReadOnly = True
      Style.Color = 15007690
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Height = 15
      Width = 15
    end
    object lblCFwdItemColour: TcxLabel [8]
      Left = 46
      Top = 663
      Caption = 'Items carried foward from previous periods'
      Style.HotTrack = False
      Style.TransparentBorder = False
      Transparent = True
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 3
    end
    object grpToolbar: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grpData: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 3
    end
    object litToolbar: TdxLayoutItem
      Parent = grpToolbar
      CaptionOptions.Visible = False
      Control = docToolbar
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litBillableSummary: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Visible = False
      Control = grdBillableSummary
      ControlOptions.OriginalHeight = 350
      ControlOptions.OriginalWidth = 830
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litTimesheet: TdxLayoutItem
      Parent = grpTimesheet
      AlignVert = avClient
      CaptionOptions.Text = 'Timesheet Details'
      CaptionOptions.Visible = False
      Control = grdTimesheetDetails
      ControlOptions.OriginalHeight = 350
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCarryForward: TdxLayoutItem
      Parent = grpData
      AlignVert = avClient
      CaptionOptions.Text = 'Carry Forward Details'
      CaptionOptions.Visible = False
      Control = grdCarryForwardDetail
      ControlOptions.OriginalHeight = 421
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpOptions: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litRemoveZeroValueItems: TdxLayoutItem
      Parent = grpOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxRemoveZeroBillableItems
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 176
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litIncludeReleaseditems: TdxLayoutItem
      Parent = grpOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxIncludeReleasedItems
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litFetchPreviousPeriodData: TdxLayoutItem
      Parent = grpOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxFetchPreviousPeriodData
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 176
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litReleasedItemColour: TdxLayoutItem
      Parent = grpLegend
      CaptionOptions.Visible = False
      Control = imgCFwdItemColour
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 15
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpTimesheet: TdxLayoutGroup
      Parent = grpData
      AlignVert = avClient
      CaptionOptions.Text = 'Timesheet Details'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grpLegend: TdxLayoutGroup
      Parent = grpTimesheet
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litReleasedItemDescription: TdxLayoutItem
      Parent = grpLegend
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblCFwdItemColour
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object grdBillCfwdExcel: TcxGrid [1]
    Left = 1245
    Top = 198
    Width = 913
    Height = 361
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object viewBillCfwdExcel: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = ReportDM.dtsBillCFwdExcel
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '###,##0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'ITEM_VALUE'
          Column = edtBCItemValueX
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'TIME_HOURS'
          Column = edtBCHoursX
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'CARRY_FORWARD_VALUE'
          Column = edtBCCFwdValueX
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'ITEM_VALUE'
          Column = edtBCItemValueX
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'TIME_HOURS'
          Column = edtBCHoursX
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'CARRY_FORWARD_VALUE'
          Column = edtBCCFwdValueX
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'ITEM_VALUE'
          Column = edtBCItemValueX
        end
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'ITEM_VALUE'
          Column = edtBCItemValueX
        end
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'ITEM_VALUE'
          Column = edtBCItemValueX
        end
        item
          Format = 'Billed'
          Kind = skCount
          Column = edtBCTimeSpentX
        end
        item
          Format = 'C/Fwd'
          Kind = skCount
          Column = edtBCTimeSpentX
        end
        item
          Format = 'Total'
          Kind = skCount
          Column = edtBCTimeSpentX
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'TIME_HOURS'
          Column = edtBCHoursX
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'TIME_HOURS'
          Column = edtBCHoursX
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'TIME_HOURS'
          Column = edtBCHoursX
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'CARRY_FORWARD_VALUE'
          Column = edtBCCFwdValueX
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'CARRY_FORWARD_VALUE'
          Column = edtBCCFwdValueX
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'CARRY_FORWARD_VALUE'
          Column = edtBCCFwdValueX
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '<No Timesheet data to display>'
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      Bands = <
        item
          Caption = 'Billable/Carry Forward Summary'
        end>
      object edtBillCfwdX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BILL_CFWD'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        GroupIndex = 0
        MinWidth = 95
        Options.Editing = False
        Options.IncSearch = False
        Options.HorzSizing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object edtBCIDX: TcxGridDBBandedColumn
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
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object edtBCFirstNameX: TcxGridDBBandedColumn
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
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object edtBCLastNameX: TcxGridDBBandedColumn
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
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object edtBCThePeriodX: TcxGridDBBandedColumn
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
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object edtBCLoginNameX: TcxGridDBBandedColumn
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
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object edtBCActivityDateX: TcxGridDBBandedColumn
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
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object edtBCCustomerTypeX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_TYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 200
        Options.Editing = False
        Options.HorzSizing = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object edtBCCustomerNameX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 400
        Options.Editing = False
        Options.HorzSizing = False
        Width = 400
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object edtBCActivtyTypeX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVITY_TYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 250
        Options.Editing = False
        Options.HorzSizing = False
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object edtBCAActivtyX: TcxGridDBBandedColumn
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
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object edtBCPriceItemX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE_LIST_ITEM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 400
        Options.Editing = False
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 400
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object edtBCTimeSpentX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TIME_SPENT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,##0.00'
        Properties.EditFormat = '###,##0.00'
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
      object edtBCHoursX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TIME_HOURS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,##0.00'
        Properties.EditFormat = '###,##0.00'
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
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object edtBCRateX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTUAL_RATE'
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
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object edtBCStdRateX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STD_RATE'
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
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object edtBCItemValueX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ITEM_VALUE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taTopJustify
        Properties.DisplayFormat = '###,##0.00'
        Properties.EditFormat = '###,##0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 100
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object edtBCCFwdValueX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CARRY_FORWARD_VALUE'
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
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object edtBCWeekEndingX: TcxGridDBBandedColumn
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
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object edtBCBillableX: TcxGridDBBandedColumn
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
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object edtBCBillableStrX: TcxGridDBBandedColumn
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
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object edtBCInvoiceNoX: TcxGridDBBandedColumn
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
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object edtBCInvDateX: TcxGridDBBandedColumn
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
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object edtBCCreditNoteNoX: TcxGridDBBandedColumn
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
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object edtBCLockedX: TcxGridDBBandedColumn
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
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object edtBCLockedStrX: TcxGridDBBandedColumn
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
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object edtBCCFwdX: TcxGridDBBandedColumn
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
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object edtBCCFwdStrX: TcxGridDBBandedColumn
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
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object edtBCAddWorkX: TcxGridDBBandedColumn
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
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object edtBCAddWorkStrX: TcxGridDBBandedColumn
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
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
    end
    object lvlBillCfwdExcel: TcxGridLevel
      GridView = viewBillCfwdExcel
    end
  end
  inherited styRepository: TcxStyleRepository
    Left = 840
    Top = 165
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Images = img32
    Left = 865
    Top = 110
    object actClose: TAction
      Caption = 'Close'
      ImageIndex = 0
      OnExecute = DoCloseForm
    end
    object actGetData: TAction
      Caption = 'Get Data'
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
    Left = 765
    Top = 165
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
    DesignInfo = 7209725
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
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001070C221277B7DD106BA5CB00030515000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000204111374B1D31692E0FD1690DEFC041B2B51000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000106136598BB1996E4FD1996E5FD136DA6BE00010107000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000111527A9E1D9AE8FD1D9AE9FD197FC1D60004071300000000000000000000
          0000000000000000000000000001000000020000000200000001000000010821
          3159229CEAFD219DECFD1E8FD6E8020B12240000000000000000000000000000
          000000000001221A094B846524B5B68A31EABC8F32F097742AC83D2F136D627D
          8BB12AA2EEFD2599E3F30518243A000000010000000000000000000000000000
          0002644C1C95D09E37FCD5A137FDD4A137FDD4A137FDD4A137FDD4A239FDC9A5
          59FD718086B0030D132900000001000000000000000000000000000000014534
          1471D5A23AFCD3A039F95C471E9319150C45120F09373E311776C09334E9D8A5
          3BFD866829B200000002000000000000000000000000000000000201000BC395
          37EBD9A63DFD403217740202021200000000000000000000000214100936D1A0
          3CF4D7A53DFC1813073A000000000000000000000000000000001D160843DBA8
          3FFCBA8F37DD04040317000000000000000000000000000000000404040A876B
          309EDCA93FFC56431982000000010000000000000000000000002F240E5BDEAB
          42FC90702EB906050511000000000000000000000000000000003333323D6250
          2D77E0AC43FC7459229A0000000100000000000000000000000021190A44E1AE
          45FCBA903CDB272625381313131F00000001000000032929293655555359856A
          349DE2AF45FC5F491D83000000010000000000000000000000000302010CD4A4
          43EDE6B14AFD51452B655958565D6F6F6F74737373786969686D342F253CDAA8
          47F3E3B048FC20190A3D00000000000000000000000000000000000000015A46
          1D76E7B34BFCDEAD4BF76B593281332E253E2E2A233A52472F63CA9D44E5E8B4
          4DFDA27D34B60000000100000000000000000000000000000000000000000000
          000385672C9CE9B64EFCECB750FDE5B34FFDE3B24FFDEBB64FFDEAB64EFCB990
          3DCA070502140000000000000000000000000000000000000000000000000000
          000000000001372B1253B28A3CBFE5B34EF4EAB64FF9C49942D15B471F750201
          0009000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000E744558745469746C65005072696E7465723BE7BF61C5
          0000026749444154785E7D93CB6B135114C6BF99C434A60F05698B1B57167525
          82E84AAD2822B688B8101F50B45441210BEBC285150591A250A326462AA218F2
          0FB810178A482CAD165AD0958216051F68D1966426F3B82FCFDCCC0C71512F7C
          73EE3DDCEF77EEDC87A19442D40C6AB74A332F4CD3EC05745E7FA33982F1CAF0
          E0D65D34E69127897F9B49EA3D7374A376AA901041F2E5D9ED0012A4A5019C0B
          28092C5A5E58D9808244476B0B38135111C4005AB55E7D587D191712928C1475
          790523089082725C03D2E4610064A0C0648E8E5776DF2EBF7D33385CB0BF7C7E
          0F2915494288C028C0833E69EEE33B1C3E35FA67ECE1CCF4C5DCD33D0012C9E0
          B33CD3513EB4776DD744E54930D4D5852008240CD55807A3B1EB3AB0EC1A8EF4
          ADDF547A2C4B00D66880E0AAAB7B550675CB42329186904A5754A11900012501
          5C38561DAB3B33604C75462B303D5F5042229D4AE0E78FEF3878EC4274046150
          210C686F4BE8B99EC7D00460700832347000378B252C2C542145E0931AA1A4D2
          3BBC72453B4E0F1D87C3380138026F03E032D409D2B3A107C5FC95C6A1C8F008
          4D8A8D0C744602B6CB41459B003E47CDE1A8D7194E666FE07FED5EFE2C7C9102
          F385E60600C3F704AA1643D576B0BFBF0FD981CD284CCDEBCD6402641038BFA3
          1BC5F22C7E2FDAA03F81CF1A0013009BFFF5753277E719EE8E3F070FCFDD6324
          4E002E29070DE3D4B976BD8C91CB0FF0E9C3E46B10C708EF762BA985D43632F6
          722E7B628BDE794087F846161E4DE3EAB99DEB0054490EC94E2AA54490085FA3
          655BD6ABDCFDA96DF1B6A9F8ADC2756B1300BE91C75EEA31F9B94BFDFB00A448
          66EC44FCB23D92DB6CF80BF54A6944F3A08E160000000049454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000C14052F1E310D6F2B46139F385C19CF45711EFF0000
          0000000000000000000000000000000000000000000000000000192A0B5F273F
          118F345517BF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF0000
          000045711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF0000
          000045711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF0000
          000045711EFFFFFFFFFFFFFFFFFFFFFFFFFF45711EFF45711EFF45711EFF5079
          2BFF729555FF5B8339FF45711EFF5B8339FF729555FF50792BFF45711EFF0000
          000045711EFFFFFFFFFFFFFFFFFFFFFFFFFF45711EFF45711EFF45711EFF5B83
          39FFFFFFFFFFD1DCC7FF45711EFFE8EDE3FFF3F6F1FF50792BFF45711EFF0000
          000045711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFFADC19CFFFFFFFFFF96AF80FFFFFFFFFFA2B88EFF45711EFF45711EFF0000
          000045711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF50792BFFF3F6F1FFFFFFFFFFF3F6F1FF50792BFF45711EFF45711EFF0000
          000045711EFFFFFFFFFFFFFFFFFFFFFFFFFF45711EFF45711EFF45711EFF4571
          1EFF45711EFFB9CAAAFFFFFFFFFFB9CAAAFF45711EFF45711EFF45711EFF0000
          000045711EFFFFFFFFFFFFFFFFFFFFFFFFFF45711EFF45711EFF45711EFF4571
          1EFF50792BFFF3F6F1FFFFFFFFFFF3F6F1FF50792BFF45711EFF45711EFF0000
          000045711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFFA2B88EFFFFFFFFFFADC19CFFFFFFFFFFA2B88EFF45711EFF45711EFF0000
          000045711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFFF3F6F1FFE8EDE3FF45711EFFDCE5D5FFF3F6F1FF45711EFF45711EFF0000
          000045711EFFFFFFFFFFFFFFFFFFFFFFFFFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF0000
          000045711EFFFFFFFFFFFFFFFFFFFFFFFFFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF0000
          000045711EFF45711EFF45711EFF45711EFF45711EFF45711EFF192A0B5F273F
          118F345517BF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF0000
          000045711EFF45711EFF45711EFF45711EFF45711EFF45711EFF000000000000
          000000000000000000000C14052F1E310D6F2B46139F385C19CF45711EFF0000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000003D3D
          3D63767676957777779576767695747474957373739572727295717171957070
          70956F6F6F955252527500000000000000000000000000000000000000006B6B
          6BAAEEEEEEFFEBEBEBFFE8E8E8FFE7E7E7FFE4E4E4FFE2E2E2FFDFDFDFFFDDDD
          DDFFDADADAFFE0E0E0FF62626283000000000000000000000000000000006C6C
          6CABECECECFFDCDDE4FF959BD5FFACAFD6FFE4E4E4FFE4E4E4FFE2E2E2FFE0E0
          E0FFDDDDDDFFE2E2E2FFEBEBEBFE4D4D4D6D0000000000000000000000006C6C
          6CABEAEAEAFFE6E7EDFF969EDCFFAAAED8FFA0A4D2FFE4E4E4FFE5E5E5FFE2E2
          E2FFE0E0E0FFE4E4E4FFEFEFEFFFE6E6E6FD3E3E3E5800000000000000006D6D
          6DACF0F0F0FFF0F0F0FFE9EAEFFFA9AFE0FF626BCCFFCACBDCFFE2E2E2FFE2E2
          E2FFE2E2E2FFE0E0E0FFDDDDDDFFDADADAFFA9A9A9E700000000000000006C6C
          6CACF0F0F0FFEFEFEFFFF1F1F1FFF0F0F0FFD6D8E9FF4E58C6FF777DCBFFB0B3
          D7FFDFDFE1FFBCBDD5FF8A8BC4FFD4D4D9FFABABABE900000000000000006D6D
          6DADF0F0F0FFEFEFEFFFF1F1F1FFF0F0F0FFF0F0F0FF7E87D5FFD2D3E3FF989C
          D4FF3B41B7FF191EA9FF1A1DA6FFA5A5CEFFAEAEAEE900000000000000006D6D
          6DADE7E7E7FFEFEFEFFFF1F1F1FFF1F1F1FFF0F0F0FFB4B9E3FFAEB3DFFFC6C8
          E2FF444CBDFFE4E4E7FFE6E6E6FFE3E3E3FFB1B1B1E900000000000000006D6D
          6DADEBEBEBFFEEEEEEFFF0F0F0FFF1F1F1FFF1F1F1FFE2E3EEFF8B94DBFF5963
          CBFFCACCE5FFEBEBEBFFE9E9E9FFE6E6E6FFB3B3B3E900000000000000006E6E
          6EAEEFEFEFFFEEEEEEFFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FF707BD7FF8A92
          DAFFF3F3F3FFF1F1F1FFECECECFFE9E9E9FFB6B6B6E900000000000000006A6A
          6AAEEFEFEFFFEEEEEEFFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FF818DDDFFDCDE
          EDFFF3F3F3FFF3F3F3FFF2F2F2FFEDEDEDFFB7B7B7E900000000000000006161
          61AFEFEFEFFFEEEEEEFFF0F0F0FFF0F0F0FFF0F0F0FFE9EAF0FF7685DEFFD8DB
          EDFFF2F2F2FFF3F3F3FFF3F3F3FFF2F2F2FFBBBBBBE900000000000000006161
          61AFE7E7E7FFEEEEEEFFF0F0F0FFF0F0F0FFF0F0F0FFDEE1EFFF9CA6E6FFD3D6
          EDFFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFBEBEBEE900000000000000006161
          61AFECECECFFEEEEEEFFF0F0F0FFF0F0F0FFF0F0F0FFECEDEFFFB0B9EAFFE7E9
          F0FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFBFBFBFE900000000000000006161
          61B0EFEFEFFFEEEEEEFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1
          F1FFF1F1F1FFF2F2F2FFF2F2F2FFF3F3F3FFBFBFBFE900000000000000001111
          113D232323552424245524242455242424552323235423232354232323532323
          235323232353272727522D2D2D522D2D2D522727274A00000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000212121354545
          456E515151825858588E6060609B6161619C686868A7686868A76B696AA7726A
          6FA75C625F9C53605899585A598E575255804443446B1B1B1B2B15151521B2B2
          B2E4CECECEFFCECECEFFD1D1D1FFD3D3D2FFD4D4D4FFDCD6D9FFAEC2B5FF3094
          54FF209047FF229049FF1F9047FF479A65FFACADACE00E0E0E152525253DE3E3
          E3FFDFDFDFFFE8E8E9FFE1E1E0FFE0E0E0FFE3E0E2FFC2D4C9FF22934DFF4AA6
          76FF79CEAFFF77C6A7FF73C6A6FF379B61FF3CA062FF2025223629292942E3E3
          E3FFE6E6E6FF9C9CA2FF000000FF151527FF0F051FFF278550FF4BA976FF88D3
          B4FFBAE9D6FFBAE8D5FFBAE8D4FF8ED0B3FF379D61FF1F57368929292942E3E3
          E3FFE2E2E2FFF4F4F3FF555560FF19172BFFEAF2EBFF3AA868FF72C39FFFC4EC
          DDFF89C4A3FF9FD3B8FFBDE9D7FFC4EDDDFF72BB94FF3B9260DD29292942E6E6
          E6FFE3E3E3FFEBEBEBFFFFFFFFFF98969EFF000712FF52BC81FF82BD9DFFCEF2
          E3FF8CC2A5FF309256FFC0E7D6FFD1F1E5FF61A97DFF4BA775EF2A2A2A42E7E7
          E7FFEAEAEAFF9A9AA1FF282839FFFFFFFFFF464454FF58C48BFF8EC7A8FFEAFA
          F3FFCAEADCFFDEF7EEFFBBDECCFFE8F7F1FF67B38AFF4A956EC82A2A2A42E7E7
          E7FFE6E6E6FFEEEEECFF262636FF000011FF10091FFF8CCDADFF4CAF7BFFAED0
          BBFFF3FEFBFFEBFAF4FFF8FFFEFF7CB592FF53BA87FF2A4A3A5D2C2C2B42F5F5
          EEFFF2F2EBFFF4F4EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF6FF8EE4B3FF5AC2
          89FF80C39DFF66AF84FF6EBD91FF64CF94FFAEEAC5FF2C2B2B3B11111F425A5A
          A8FF5050A1FF4F4FA2FF5353A3FF5454A3FF5454A4FF5E5CA9FF605BAAFF4873
          9BFF6FC2A8FF7AD6ACFF68B3A6FF44609AFF635AACFF11111F3D000019420000
          87FF6E6EBAFF9F9FD0FF5D5DB1FF5353ADFF6767B5FF000083FF040487FF0602
          89FF040087FF030087FF040088FF060489FF04048AFF0000193D03031C420A0A
          99FF5151B4FF0E0E97FF18189BFF2A2AA4FF4242ADFF0B0B95FF101098FF1010
          98FF0B0B96FF0B0B96FF101098FF101098FF10109AFF03031C3D03031E421212
          A7FF0D0DA1FF0808A1FF4545ADFF2929A6FF0A0AA1FF1212A4FF1212A4FF0E0E
          A2FF3838ABFF3A3AAAFF0E0EA2FF1212A4FF1212A6FF03031E3D060621421E1E
          B9FF0F0FADFF2222B2FFFFFFF8FFD8D8E7FF0202A9FF1313AEFF1313AEFF0000
          A8FFFFFFF6FFFFFFFAFF0000A8FF1212ADFF1E1EB8FF0606223E000000013636
          A4C03838BCDC4545BADFFFFFFCFFD9D9ECFB2C2CB3D93C3CBBDB3C3CBBDB2A2A
          B2D9FFFFF9FFFFFFFAFF2929B0D93B3BBDDC3434A0BC00000000000000000000
          00000000000000000000D2D2CFDB9898949A0000000000000000000000000000
          0000BBBBB7C1C0C0BDC800000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000011F144D086C48FF086C48FF086C48FF086C
          48FF011F144D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000124185A0D734EFF0D734EFF0D734EFF0D73
          4EFF0124185A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000124185A137953FF137953FF137953FF1379
          53FF0124185A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000124185A1A8059FF1A8059FF1A8059FF1A80
          59FF0124185A000000000000000000000000000000000000000000000000011C
          1246012216550122165501221655023B279121865FFF21865FFF21865FFF2186
          5FFF023B2791012216550122165501221655011D134900000000000000001C7E
          58FA288E66FF288E66FF288E66FF288E66FF288E66FF288E66FF288E66FF288E
          66FF288E66FF288E66FF288E66FF288E66FF1C825BFF00000001000000002183
          5CFA31956DFF31956DFF31956DFF31956DFF31956DFF31956DFF31956DFF3195
          6DFF31956DFF31956DFF31956DFF31956DFF22875FFF00000000000000002688
          61FA399E74FF399E74FF399E74FF399E74FF399E74FF399E74FF399E74FF399E
          74FF399E74FF399E74FF399E74FF399E74FF278C64FF00000000000000002D93
          6AFA46B185FF46B185FF46B185FF46AF84FF42A67CFF42A57BFF42A57BFF42A6
          7CFF46AF84FF46B185FF46B185FF46B185FF2F976DFF0000000000000000011C
          12460122165501221655012216550239268E4AAE84FF49AD84FF49AD84FF4AAE
          84FF033C2791012216550122165501221655011D134900000000000000000000
          00000000000000000000000000000122165550B38AFF50B38AFF50B38AFF50B3
          8AFF0225185A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000122165557BA90FF57BA90FF57BA90FF57BA
          90FF0225185A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000012216555DBF94FF5DBF94FF5DBF94FF5DBF
          94FF0225185A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000011D134947B085FF48B286FF48B286FF47B1
          85FF0220154D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000001E1E
          1E2E3333334F3E3E3E5F4747476F4A4A4A74525252805151517F5151517F5252
          52804A4A4A74484848703F3F3F62353535531F1F1F2F00000000000000001818
          18213F3F3F8043434384363636553C3B3B5F4646466B50505074505050744949
          496B4343436243434361393939532E2E2E421A1A1A2400000000000000000000
          00000808084B0B0908FF101213B21417191B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000405052B3F4F56FFB3DDF1FFC5E9F9FF92A6AAAA0F111214000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000405060BB0E9FFFFAEDBF2FFBFE2F3FFBCE3F4FF4ABBEAF3000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000A0D8F9FFB0D9F0FF83CEF0FF4EBDF1FF4DBEEFFF2182A9AC0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000085BEE1E330B4E9FF6BC7F4FF36B7EBFF59C0F1FF39B8ECFF0B3E
          5252000000000000000000000000000000000000000000000000000000000000
          0000000000002B53626237B6ECFF2FB4EAFF54BFEFFF2AB3E9FF4FBEEFFF25B3
          EBFE01070A0C0000000000000000000000000000000000000000000000000000
          00000000000000000000529ABCBC2AB4E9FF45BAEDFF2BB3E8FF32B6EBFF39B8
          EBFF108CBAC50000000000000000000000000000000000000000000000000000
          000000000000000000000205060761C3F2F926B1E9FF40B9ECFF0CABE3FF3FB9
          EDFF23B1E8FF05506C6D00000000000000000000000000000000000000000000
          0000000000000000000000000000253D474754C0F0FF2AB3E8FF22B1E8FF11AC
          E4FF30B6EBFF05AAE6FF1A202127000000000000000000000000000000000000
          000000000000000000000000000000000000558BA2A247BBEEFF26B1E8FF00A5
          E4FF44BBE5FFEBE7DAFF645F9FE0000000000000000000000000000000000000
          000000000000000000000000000000000000000000006EC0EAEB32B7F0FF9ADA
          E8FFE9D9DCFF211F99FF030393FF0909567B0000000000000000000000000000
          00000000000000000000000000000000000000000000202F3738DADED2FF857B
          B3FF00008CFF0A0A99FF1919ADFF0A0A3C4A0000000000000000000000000000
          00000000000000000000000000000000000000000000000000002D2C6C940000
          90FF10109EFF1C1C9DD303031015000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001818
          83B112125D790000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000710
          344608143F5508143F5508143F5508143F5508143F5508143F5508143F550814
          3F5508143F5508143F5508143F5508143F550711364900000000000000000C33
          BDFA062FC2FF062FC2FF062FC2FF062FC2FF062FC2FF062FC2FF062FC2FF062F
          C2FF062FC2FF062FC2FF062FC2FF062FC2FF0C34C1FF00000001000000001343
          C5FA1148CFFF1148CFFF1148CFFF1148CFFF1148CFFF1148CFFF1148CFFF1148
          CFFF1148CFFF1148CFFF1148CFFF1148CFFF1344C9FF00000000000000001C55
          CEFA1E65DDFF1E65DDFF1E65DDFF1E65DDFF1E65DDFF1E65DDFF1E65DDFF1E65
          DDFF1E65DDFF1E65DDFF1E65DDFF1E65DDFF1C58D3FF0000000000000000266C
          D9FA2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8D
          F0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF266FDFFF00000000000000000710
          344608143F5508143F5508143F5508143F5508143F5508143F5508143F550814
          3F5508143F5508143F5508143F5508143F550711364900000000000000000000
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
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000233227D054E33BB0005030D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000033624820E734EFF0E744EFF065437C40005030D0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000004382584147953FF157B55FF157B55FF157B54FF09563AC40005
          030D000000000000000000000000000000000000000000000000000000000000
          0000063A26851B815AFF1E845CFF1E845CFF1E845CFF1E845CFF1D835CFF0B58
          3CC40005030D000000000000000000000000000000000000000000000000073C
          2886248961FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF268B
          63FF0E5B3FC50005030D00000000000000000000000000000000062F20692D92
          6AFF30956CFF30956CFF30956DFF2D966CFF21855EF031966EFF30956CFF3095
          6CFF30946CFF115D41C50005030D00000000000000000000000000130C302385
          5EEC3BA176FF3A9F75FF359F73FF0737257A01150D33268861EE3BA076FF3A9E
          75FF3A9E75FF399E74FF146043C50005030D0000000000000000000000000013
          0C2E298963EB3EA97DFF07362578000000000000000001150E342C8F67EF44A9
          80FF44A77DFF44A77DFF43A77DFF176446C50005030E00000000000000000000
          000000100A2804261A560000000000000000000000000000000001160E353394
          6DEF4DB188FF4DB086FF4DB086FF4CAF85FF1A6749C50005030E000000000000
          0000000000000000000000000000000000000000000000000000000000000116
          0E35389A72EF56B98FFF55B78EFF55B78EFF4BB187FF021E1449000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001160F363DA077F05DC095FF55BC90FF0939287900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001170F373C9F76F00C3E2B7E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000030208000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000061034460103090D0000000000000000000000000000
          00000103090D0610344700000000000000000000000000000000000000000000
          0000000000000919526F062BBFFF0D2892C50103090D00000000000000000103
          090D0D2892C5062BBFFF091A5471000000000000000000000000000000000000
          0000091A526F0830C1FF042DC2FF052DC2FF0D2B93C50103090D0103090D0D2B
          93C5052DC2FF042DC2FF0830C1FF091A526F0000000000000000000000000611
          34470C37C6FF0935C5FF0935C5FF0935C5FF0935C5FF0F2D95C50F2D95C50935
          C5FF0935C5FF0935C5FF0935C5FF0C37C6FF0610344600000000000000000103
          0B0F1032A0C70D40D1FF0C3ECAFF0C3ECAFF0C3ECAFF0C3EC9FF0C3EC9FF0C3E
          CAFF0C3ECAFF0C3ECAFF0D40D2FF1032A0C701030A0E00000000000000000000
          000001030B0F1136A3C7124AD6FF1147CEFF1147CEFF1147CEFF1147CEFF1147
          CEFF1147CEFF124AD7FF1135A2C701030A0E0000000000000000000000000000
          00000000000001030B0F133AA4C71653D8FF1551D3FF1551D3FF1551D3FF1551
          D3FF1653D8FF1339A4C701030A0E000000000000000000000000000000000000
          0000000000000103090D14389BC51A5BD8FF1A5CD9FF1A5CD9FF1A5CD9FF1A5C
          D9FF1A5BD8FF133899C40103090D000000000000000000000000000000000000
          00000103090D153C9CC51E65DDFF1E66DDFF1E66DDFF1E66DDFF1E66DDFF1E66
          DDFF1E66DDFF1E65DDFF153B9BC40103090D0000000000000000000000000103
          090D173F9DC5236FE2FF2370E3FF2370E3FF2370E3FF2473E8FF2473E8FF2370
          E3FF2370E3FF2370E3FF236FE2FF163E9CC40103090D00000000000000000710
          33452673E8FF2779E8FF2779E7FF2779E7FF287DEEFF1946A6C51946A6C5287D
          EEFF2779E7FF2779E7FF2779E7FF2675E9FF0712374A00000000000000000000
          00000C1F566F2B7EEEFF2B82EBFF2C86F1FF1A49A6C501030A0E01030A0E1A49
          A6C52C86F1FF2B82EBFF2B81F0FF0E235E780000000000000000000000000000
          0000000000000C2057702E89F0FF1B4CA6C501030A0E00000000000000000103
          0A0E1B4CA6C52F8BF2FF0E245E78000000000000000000000000000000000000
          000000000000000000000712354701030A0E0000000000000000000000000000
          000001030A0E0713374A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000019130737000000000000000000000000221A0948826424ABB98D32E2C294
          34ECA47D2CCA4D3B15790302010E000000000000000000000000000000000000
          0000B38930D6513E167708060218906E27B8D8A53AFFDAA63AFFDAA63AFFDAA6
          3AFFCD9C37F16C531D8F443412660403010D0000000000000000000000000000
          0000CF9E38F3D8A53BFDC39536E9DBA73BFFDBA73BFFDBA73BFFDBA73BFF8A69
          26A8090702180000000000000000000000000000000000000000000000000403
          0111DDA93DFFDDA93DFFDDA93DFFDDA93DFFDDA93DFFD6A43BF74232125F0000
          000000000000000000000000000000000000000000000000000000000000100C
          042EDEAA3FFFDEAA3FFFDEAA3FFFDEAA3FFFD9A63EFA2E230D48000000000000
          000000000000000000000000000000000000000000000000000000000000231B
          0A4CE0AC41FFE0AC41FFE0AC41FFE0AC41FFBF9237DC0302000B000000000000
          0000000000000000000000000000000000000000000000000000000000001F18
          0941E0AC42FDE2AE42FFE2AE42FFE2AE42FFE2AE42FF8F6F2CB1000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          000006050114110D052C1E1709402E230D55403113695440197B040301110000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000030301114B3A187B3A2D
          126929200D551A1509400F0C052C050402140000000000000000000000000000
          000000000000000000000000000000000000000000000000000298752EB1E6B2
          47FFE8B449FFE8B44AFFE8B54CFFE6B34DFD211A0B4100000000000000000000
          00000000000000000000000000000000000000000000000000000302010BC699
          3DDCE8B449FFEAB64BFFEBB74DFFEDB94FFF29200D4C00000000000000000000
          000000000000000000000000000000000000000000000000000029200D48E0AD
          47FAE8B44AFFEAB64BFFECB84DFFEDB94FFF140F062E00000000000000000000
          000000000000000000000000000000000000000000003C2E125FDBA944F7E7B3
          48FFE9B54AFFEAB64CFFECB84EFFEEBA4FFF0504011100000000000000000000
          000000000000000000000000000007060218846729A8E3AF45FFE6B247FFE8B4
          49FFE9B54BFFD6A746E9EAB64EFDE2B14CF30000000000000000000000000000
          00000303010C42321366664F1E8FD0A03FF1E3AF44FFE5B146FFE6B248FFE8B4
          49FFA58035B80A0803185E491F77C79C43D60000000000000000000000000000
          0000000000000403010E58441979B38A35CAD3A33FECCB9D3EE296742FAB2B21
          0D4800000000000000000000000020190A370000000000000000}
      end>
  end
  inherited img32: TcxImageList
    FormatVersion = 1
    DesignInfo = 7209775
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000101010F09090978151515E8111111C40202022300000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000A0A0A851B1B1BF2242424FF232323FF111111B60303032A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000707
          075F202020FF282828FF303030FF303030FF262626FF151515D00303032A0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000B0B
          0B972B2B2BFF2D2D2DFF4A4A4AFF515151FF3A3A3AFF2A2A2AFF111111B60303
          032A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000404
          0439262626E83F3F3FFF484848FF5C5C5CFF5A5A5AFF444444FF2D2D2DFF1717
          17D00303032A0000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000080808642E2E2EE8484848FF505050FF616161FF5D5D5DFF424242FF3030
          30FF131313B60303032A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000305050549313131E84C4C4CFF545454FF636363FF606060FF4A4A
          4AFF343434FF1A1A1AD00605032E110D01282F2404684C3B06A7664F09DE7057
          0AF470570AF4664F09DE4C3B06A72F240468110D012702010005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000309090966343434E8545454FF575757FF676767FF6262
          62FF444444FF393834FF40340DD1614B09D2795E0DFF7A5F0DFF7B600EFF7B60
          0EFF7B600EFF7B600EFF7A5F0DFF795E0DFF614B09D1392C047D0504000D0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000305050549373737E8565656FF585858FF6161
          61FF5C543CFF6F5812FF7D620EFF816410FF826510FF866810FF8A6C11FF8D6E
          11FF8D6E11FF8A6C11FF866810FF826510FF816410FF7D620EFF664F09DC231B
          034D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000003090909663A3A3AE85A5A5AFF5752
          3FFF745D13FF82650FFF856810FF8A6B11FF967512FF957311FF8D6D0EFF886A
          0DFF886A0DFF8D6D0EFF957311FF967512FF8A6C11FF856710FF82650FFF6A53
          0AE21A1402390000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000305050549484130EA7A62
          19FF896B11FF8B6D12FF957413FF937211FF6B520AD2493907992F250462241C
          044A241C044A2F250462493907996B520AD2937211FF957413FF8B6D12FF896B
          11FF69520ADE1A14023A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003483809B6886A
          11FF907113FF997815FF8D6F10FF5B4708B92A200452221A0341211A0440211A
          0440211A0440211A0440221A03412A2004525B4708B98D6F10FF997815FF9071
          13FF886A11FF4737069800000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001812023585680FFF9575
          15FF9C7B16FF927211FF513E07A1261D0445241C0440241C0440241C0440241C
          0440241C0440241C0440241C0440241C0440261D0445513E07A1927211FF9C7B
          16FF957515FF85680EFF17120133000000000000000000000000000000000000
          0000000000000000000000000000000000000101000344340595977615FF9C7B
          17FF9E7C15FF69520ACC291F0447261D0440261D0440261D0440261D0440261D
          0440261D0440261D0440261D0440261D0440261D0440291F044769520ACC9E7C
          15FF9C7B17FF967615FF44340595010100030000000000000000000000000000
          000000000000000000000000000000000000100D012569520BCFA18018FFA684
          19FF886B10F54535067B281F0440281F0440281F04402A2206422D250A452F26
          0B472F260B472D250A452A220642281F0440281F0440281F04404535067B886B
          10F5A68419FFA18018FF69520BCF100D01250000000000000000000000000000
          0000000000000000000000000000000000001B15023D806410E7A78519FFAA88
          1AFF72590BD8362A05592A2104402B210540362D114B40371D54433B2157453D
          2358453D2358433B21573F371C53362D114B2B2105402A210440362A05597259
          0BD8AA881AFFA78519FF806410E71B15023D0000000000000000000000000000
          000000000000000000000000000000000000241C0350967614FAAF8B1BFFAF8B
          1BFF69510AC73025044733290B464940255A524A3162524A3162524A3162524A
          3162524A3162524A3162534B3263524A31624940255A33290B46302504476951
          0AC7AF8B1BFFAF8B1BFF967614FA241C03500000000000000000000000000000
          000000000000000000000000000000000000251D03539D7C16FDB5911CFFB490
          1CFF6A5109C2302504424E45275D5D553B6A5E563C6B5E563C6B5E563C6B5E56
          3C6B5E563C6B5E563C6B5E563C6B5E563C6B5E563C6B4E45275D302504426A52
          09C2B4901CFFB5911CFF9D7C16FD251D03530000000000000000000000000000
          000000000000000000000000000000000000211A024A977714F4BF981FFFBC96
          1EFF71580BCD413611566A634A756A634A756A634A756A634A756A634A756A63
          4A756A634A756A634A756A634A756A634A756A634A756A634A75413611567158
          0BCDBC961EFFBF981FFF977714F4211A024A0000000000000000000000000000
          00000000000000000000000000000000000019130238856911E2C69E21FFC29B
          20FF80640FDD594C2572746D547D756E557E766E557E766E557E756E557E766E
          557E766E557E766E557E756E557E766E557E756E557E766E557E594C25728064
          0FDDC29B20FFC69E21FF856911E2191302380000000000000000000000000000
          00000000000000000000000000000000000009070015624C0ABFCEA522FFCAA2
          22FFAA8719FF715F26A3827A6288827A62888179618781796187817961878179
          6187827A6288817961878179618781796187827A628881796187715F26A3AA87
          19FFCAA222FFCEA522FF624C0ABF090700150000000000000000000000000000
          00000000000000000000000000000000000000000001382C047BC69E20FFD4AA
          24FFC39C20FF896C14E782795D8E89826B8E89826B8E89826B8E89826B8E8982
          6B8E89826B8E89826B8E89826B8E89826B8E89826B8E82795D8E896C14E7C39C
          20FFD4AA24FFC69E20FF382C047B000000010000000000000000000000000000
          0000000000000000000000000000000000000000000008060013886B10E5DCB1
          25FFD6AB25FFC49C1FFF927B34E9948A6CA5938C7596938C7596938C7596938C
          7596938C7596938C7696938C7596938C7596948B6EA5927C34E9C49C1FFFD6AB
          25FFDCB125FF886B10E508060013000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003E300680C49C
          1EFFE5B727FFDAAF25FFBC971FFF988033EB8B8160A098927B9C99927C9C9992
          7C9C99927C9C99927C9C98927B9C8B8160A0988033EBBC971FFFDAAF25FFE5B7
          27FFC49C1EFF3E30068000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000090700154D3C
          06A2DAB024FFEBBE29FFE0B327FFD3A924FFAB881AFF937D2FE0988955C79C8F
          67C39C8F67C3988955C7937D2FE0AB881AFFD3A924FFE0B327FFEBBE29FFDAB0
          24FF4D3C06A20907001500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000C09
          011B6A530CC3D3B023FFF2C52CFFE6B929FFE0B427FFD5AA24FFC8A021FFC19A
          1FFFC19A1FFFC8A021FFD5AA24FFE0B427FFE6B929FFF2C52CFFD3B023FF6B54
          0CC40C09011B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000090700154132058DA18A19E5E3C229FFF1CB2DFFEFC42BFFEDBE2AFFEABB
          29FFEABB29FFEDBE2AFFEFC42BFFF1CB2DFFE3C229FFA18A19E54132058D0907
          0015000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000020200062019024657470AA4AA931AFFCDB524FFEAD22DFFF3DD
          30FFF3DD30FFEAD22DFFCDB524FFAA931AFF57470AA420190246020200060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000007060011241C034F3D2F05874737
          069D4737069D3D2F0587241C034F070600110000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000083C494441545847A59709
          5055D719C7696D16A335696A9CA4CBB469A7994C676A93CCB436A69349ADA442
          C724A2661A930E412448D89700420A440D112B82104040D9028A80EC5A091451
          40165934189607BC0D1EEF010F1EEB6313FFFDBE73DF9357A256D333F37BE72E
          E77EFFFF39E79E73BF677597F21D62454651CBC5AC92EB6032CD145F23A4FA8B
          E2D6250A5B915144705DD822482F68C1C9DCC64B14EB11E2BB1CF87E0B1B7888
          03FEBFE544DE5550AC55C40A0E7CBF85DD3E927AB6190B0B8B30CEDE84716601
          D38454CF0BA68C129382394C4E33F398989A131867E771FC541D1B58437C8F03
          DF6F61038F269D69C4ECDCE26DA1291299201133E3CCD42C3187B1C959818199
          6066C433B119356CE009E2810DAC8CCBACC30CF542884CB208610A2E09514D8C
          1223E3C49884DE60C4F098518C42E4892A36F003E2810CF07CAD8A4AAB16433D
          4AC199110A2A040424C242268646A70583CCC814310D033DF3597C051BF821F1
          1007BEDFC206561F4EBC28E655888C3226110A6E46A79F826E7812DAE1290C08
          26313034090DA1374C232CFA3C1B584BB0017EB9EF59B801C3C3B5E6E0E7E562
          5E974424588405048393E81F9C90D04DA04F370EB556820D064514B381A78947
          4D71797ABF61842FF00D6EC04E1F23D685449E17C3CEC135441F43027D246416
          516BC7A0A25A39C08C09141AC6200CFA1EC86703BF24781ABE4FAC2458E3B611
          FE597120E6CCB329B90D79A905CD039E1FC7C237340EFE878A68C8A78480CA24
          A0A2E04A0ACE2272A6DF606214BD7D06F4AA0DE8518FA2A76F146A32EBF6F119
          780645C325300A719935DAE8948A2207F7D05F93268F88D81B561C8ECB5D9F5D
          7A7D4C4E0F4DD3D2F9C0FF2852CEB5C367FF5931B742808353DD4B6D7A4D022C
          D4AD1E21462153514DC89423E812E8A120C3CE0199482C68C56ECF084CD26A92
          29877132AF61DCC5FFC846D2E61DD2EAE1E359B5853D2A3D2D9B59DCBA750BEF
          7B8623E16C135CC93D0FBF102021B30807971841A782D1A353AE4707216A3AEF
          900F0BB38EBE1988CDAEC3AEBD61989FBF89615A215DBD43088F3B7781B4794A
          AC56C667D68EAB070CE8D31AC800F08E7328624E5D81CD766FC20B3676DED842
          F516BBFFE62FCC364F131E78FD2D096B813BACDF9488C9BA82EDF6FB44EC5EB5
          1E72EA444442C53469F37B61B5EA587A2D64F221A8681E79046CDEF6C027B1C5
          16942C1DC72C3BB7BC1EB3BC9DF9B8049BDFDC8BC5C55BE8269DB6CE011CFCFC
          4B7E39D7B181D54768B7BA21D3A297A6E12635B2DDE9067BB708387A46C2D12B
          0A2E01F126E2E01E9C08AFD093448A45BD845B7092D436507AC6D13B0A0E1E91
          F8D35F1DB1707311EDDD3A34B7A9117254EC0FBC3CADD67C965081D6760DBA14
          C398A746FBC28ED1D0B9C266074F81199A8A65E7B6A6635BCBEBE2586A6BCB35
          5DDBB4752F7C838E6096DE81B62E2DEA5A95D827ED0F3F62038F7F125386ABD7
          D5340A3ACCCC2DA0B35B09EB379CF19AAD3336BFE16A9A4B9AD7DB98CF97E6F9
          9BE7EEF8F35637BCBAC509AFD938A0BD4B213E4ECD37FA51DDD80BBF03056CE0
          276CE0897FD08653D3A440CBD7FDE22BC71F1A55FF90706DBDF503BCF4C79D78
          6923F1CA4EBCB871071DEFC08B2F4BBCF0F276137678E10F12BFDD6087F51BB6
          6113097B054440D9372862F2478B7B5F512B8367682E1BF8291B78329086A3B2
          AE07F5D754D08F1BA1E38F09EDF986C91961487CEBBF05526766442C2DC5642E
          53EFCF5775E0C3E0D36CE0676C60ADDFC102FCEB52272E5D958B0F8A92B65733
          0A13773AB7BC2E306FC5A673DE882CDB715D5E2343E1976DB4D965B2819FB381
          A77CF6E7A3A0FC06CAE8662F6DB31DB4C998E95C567F1B2C9F2DA96C4776692B
          F67CF4051BF8051B58E7199687D3E7AFA3886E7EDD3B8C962E1D5A4DB4D08BC9
          E7E66BA2A66B96F7C5F11DDA897BCBEEE7967D85F4C226B14392367FA4AC9E76
          0FC9A18B2DC8B9D086A60E2DAEB469F0AE5B3C7EB72508BF27B8BE17DCE65EED
          38D695AF34226E56492B92731AE1E093C6067EC5069E710DCE4672EE554ABBAF
          A1FA5A1FCA1B15700FC9A479CA82919665F4251D4E340C239938D13084A4FA21
          24D60D22AE5687E0736A0495AA1158A2C247454AF81528E07D5601C73419BDF5
          B3D8E57A1CAEC1E9286F90E362B30AA9F94D88CBAA83BD9730F09C30E012740A
          09A7EB9152D02CC44B6BBA514DCB85970A67C2872B352436887822AE6610B144
          4CB50EE1151AEC23E1806215FC0B499CF0C957C28B0CEC4EEBA215354B439D86
          CA46194AABBB50562F47624E038E51A2FA778F94DB23B06E8F5FFA58646A3592
          68144A6B7B5058D589AC0BD7C879362DA7791C2CEB43F4652DA268248E56E970
          A44A8B7F566A114C3DF72FA29E17AA44CF7DF21542DC334F0E87D42E0C513263
          EF9582B4E2468AD98112EA58DCA97A1C4AAAA491491A276DB10AD6BCBECDDF61
          975BA2FE3DB764BCE79A8CBFB92460DBEE28D035B196434A5588F8B70687988A
          7E84976BB0BFAC9F4495F06548D88784BDF214F0C855C02D470EFB944E5AFF46
          BC651F8D57B70663F38E4F61FD7638AC777E8A4D7661A3BFD9F0CE87A4CDB9A2
          488F1E279E2178637896E0A159EF45ABC340A97840910201D4437F12F2CF97C3
          8F703FDD03A74C199C3264D8932E1373CEC3EE90DA49E25DB03FD9491B8F114E
          D2727B85E3119C093D4FB0068B8B8444A464C4C3A60B9CB3AD26D672423242F3
          3832C64839FF304359B28E7AA7E3AC98D0EA79A7338A7A6019A6E5F663823BC9
          7139DFE474CC9C178AC2262C61438F39F9A75D760ECCA2B44A82772F27867AC5
          F066E2E8CB6460B70F932EE19D0E07E27DEF34BCEB9A544BB158DC32233673D7
          C237CDD9313FCCFF6C9E34C1590CC34368E629139C6058C2F7F8F907FE77CCC5
          3C12E654FD4EF0B4FD2FEEFA5FC0CACACAEA3F30264B90D6BEE6360000000049
          454E44AE426082}
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
          0000040404070A0A0A1010101019171717241B1B1B2B202020322727273D2B2B
          2B432B2B2B442C2C2C4534343452373737563737375637373756373737563737
          375637373756343434522D2C2C452C2B2C442A292A402726263B212020321A1A
          1A29151515220E0E0E170909090E030303050000000000000000222222357070
          70AF878787D38E8E8EE1959595EC9A9A9AF49C9C9CF79E9E9EFAA0A0A0FDA1A1
          A1FFA1A1A1FFA0A0A0FEA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA2A1
          A1FFA9A4A7FFADA4AAFF889F90FE6E9E80FF639B78FE669A79FC789C86FA999C
          9BF6A39CA0F1969496E98D8D8DDF838383CD6565659D1212121C151515224848
          48736262629AA8A8A8E8B1B1B1F2B3B3B3F6B7B7B7F8B7B7B7FAB8B8B8FBB9B9
          B9FCBABABAFCBABABAFDBABABAFDBABABAFDBABABAFDBABABAFDBEBCBDFDC6C0
          C4FD689C7BFE2C9452FF289550FF2B9552FF2C9653FF2C9652FF2A9551FF2494
          4EFE469662FD9CA7A0F1ADA8ABE45B5B5B903B3B3B5E0808080D000000000707
          070ACECECEEEDEDEDEFFDFDFDFFFE0E0E0FFDFDFDFFFE1E1E1FFE2E2E2FFE3E3
          E3FFE3E3E3FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFEAE6E8FFDAE0DBFF3A9C
          5EFF2A9553FF309757FF2E9554FF2C9250FF2E9252FF2C904EFF2D9451FF3096
          56FF2F9756FF22934CFF8EBDA0FFD7CED4EA0303030400000000000000007878
          7886DBDBDBFFDCDCDCFFDDDDDDFFDEDEDEFFDFDFDFFFE0E0E0FFE4E4E4FFE4E4
          E4FFE5E5E5FFE5E5E5FFE6E6E6FFE6E6E6FFE9E6E7FFD9DEDAFF2C9656FF3299
          59FF349959FF37965DFF5FB28FFF7DCCB1FF54A47EFF7ECFB5FF6CBD9EFF49A1
          72FF2F9554FF369B5CFF269450FF81B795FF706E6F7C00000000000000008A8A
          8A9ADCDCDCFFDDDDDDFFDEDEDEFFDFDFDFFFDFDFDFFFF1F1EFFFCACACAFFCCCC
          CDFFCCCCCDFFCBCBCDFFCDCDCEFFCCCBCDFFDCD5DBFF44A469FF369D5EFF379C
          5EFF4EA477FF86D6BBFF82D9B7FF81D7B6FF77C6A1FF8EDABBFF88D9B8FF83D8
          BAFF6FBEA2FF359659FF3A9F62FF2C9956FF4D69588E00000000000000008A8A
          8A99DDDDDDFFDEDEDEFFDFDFDFFFDFDFDFFFF1F1F0FF3C3C4AFF000000FF0000
          05FF000000FF000000FF000000FF000000FF0A3627FF3FA968FF3DA265FF499F
          6FFF54A87DFF85DAB9FFA1DFC5FFB3E4CFFFB4E6D1FFB3E4CFFFB3E5D0FFB2E6
          D0FF61B085FF63B594FF38995CFF3FA267FF34955CEE00000000000000008A8A
          8A99DEDEDEFFDFDFDFFFE0E0E0FFE0E0E0FFEFEFEEFF585864FF000007FF0000
          11FF42424FFF5D5D69FF53535FFF584E60FF3B9E64FF43A86DFF38975DFF7CCD
          B0FF8CDCBDFFAFE0CAFFBBE9D6FFB4E5D0FFB4E4CFFFB4E4CFFFB4E4CFFFB4E5
          D0FFBCE9D6FFAAE6D0FF48A071FF41A66AFF42A66BFF1432204E000000008A8A
          8A99DFDFDFFFE0E0E0FFE1E1E1FFE2E2E2FFE3E3E3FFF6F6F6FF2D2D3BFF0000
          07FF060618FFD7D7D7FFFFFFFFFFE1EFE5FF3AA568FF45A970FF4AA071FF84D9
          B9FFB9E7D3FFB5E4CFFF73B490FFC2EDDBFFBFECDAFFBCEAD7FFB7E7D3FFB7E7
          D3FFB7E7D3FFBEEAD7FF87C7ABFF3D9E64FF47A971FF2D6A47A1000000008B8B
          8B99DEDEDEFFDFDFDFFFE2E2E2FFE3E3E3FFE4E4E4FFE5E5E5FFFFFFFFFF5454
          5DFF000000FF000000FF7C7883FFC5E7D2FF40A96EFF49AB73FF59AE85FFA5E3
          CCFFC0E9D6FFBEE9D6FFB6E3CFFF449461FF67AB83FF94CAADFFC1EBD8FFBDE8
          D4FFBDE8D4FFBDE8D5FFD2F4E9FF339358FF4BAE77FF3C8C5ECF000000008B8B
          8B99E0E0E0FFE1E1E1FFE1E1E1FFE2E2E2FFE3E3E3FFE4E4E4FFE5E5E5FFFFFF
          FFFF97979DFF000005FF000002FF2A5346FF51B77DFF4DAE79FF2B8149FF9ED0
          B6FFC3EADBFFC1E8D8FFCBF0E2FF79B794FF51B984FF328E55FFD0F2E6FFC1E8
          D8FFC0E8D8FFC9EFE1FF3B8B56FF3C9760FF50B17BFF489D6FE4000000008B8B
          8B99DFDFDFFFE2E2E2FFE3E3E3FFE4E4E4FFE4E4E4FFF2F2F1FFFDFDFBFFECEC
          EBFFF6F6F5FFE6E6E7FF000010FF1F443DFF5DC18AFF50B17CFF53AB7EFFE8FB
          F3FFC9ECDCFFC5ECDCFFB3DFCAFF42915EFF449663FF519D6DFF9BCDB3FFCCF0
          E2FFC3E9D9FFD7F1E6FFE8FAF4FF35945BFF53B481FF4C9C71D7000000008C8C
          8C99E1E1E1FFE1E1E1FFE2E2E2FFE3E3E3FFF2F2F1FF696972FF00000CFFDDDD
          DDFFEBEBEBFFF6F6F5FFA8A6ACFF03171EFF6ACD97FF56B785FF419C68FFE9F9
          F4FFDDF2E9FFD3EFE3FF9BCDB2FFD5F3E8FFD4F2E6FFD6F3E8FFA8D6BDFF8DC2
          A4FFDFF4ECFFE1F5ECFFB0D4C0FF43A56EFF55B684FF458463AF000000008C8C
          8C99E0E0E0FFE3E3E3FFE4E4E4FFE4E4E4FFF7F7F6FF393946FF000006FF4646
          53FFFFFFFFFFFFFFFFFF9A9AA0FF000000FF70D19DFF5BBB8BFF3B9B63FFCCE8
          DBFFE8F9F3FFDFF3EAFFE1F5EEFFDAF2E7FFD8F1E6FFD9F2E7FFE0F5ECFFE3F6
          F0FFC0E0D0FFEDFDF9FF5CA275FF59BB89FF64C191FF294F3C69000000008D8D
          8D99E2E2E2FFE3E3E3FFE4E4E4FFE4E4E4FFEBEBEBFFC8C8CBFF000000FF0000
          04FF222231FF3E3E4BFF000004FF000000FF4B836CFF67C896FF5EC08FFF549E
          6FFF8ABC9EFFE9F9F4FFE0F4ECFFE0F4ECFFE0F4ECFFE0F4ECFFE0F4ECFFE6F7
          F1FF9AC8ADFF98C3A8FF46A873FF5DBD8EFF6FCB9DFF01030205000000008D8D
          8D99E2E2E2FFE3E3E3FFE3E3E3FFE4E4E4FFE7E7E7FFF2F2F2FFCECED1FF3D3D
          4BFF000010FF000008FF1A1A2AFF83828AFFFAFAF9FF72D1A2FF5EBE91FF5ABB
          8BFF519A6BFFEBF9F2FFEDFBF6FFE7F7F0FFE7F8F1FFE7F7F0FFE9F8F2FFF6FF
          FDFF9EC6ACFF3A9C64FF63C295FF6DCB9CFF517C669900000000000000008D8D
          8D99E2E2E2FFE2E2E2FFE5E5E5FFE6E6E6FFE7E7E7FFE7E7E7FFEDEDECFFFAFA
          F9FFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F6FFF2EEF0FFC7E1D6FF75D7A5FF62C2
          95FF62C495FF409A64FF87B798FFD2E7DCFF418E5BFFD5E8DEFFA9CCB6FF56A0
          72FF4DB07BFF67C69AFF6DCC9EFF8DD6B1FF8181818F00000000000000009090
          8E99E6E6E3FFE7E7E4FFE9E9E6FFEAEAE7FFEBEBE8FFECECE9FFEDEDEAFFEEEE
          ECFFEEEEEBFFEFEFECFFF0F0EDFFF0F0EDFFF1F1EFFFFAF4F4FFC7E5D4FF83E1
          AFFF6ECE9FFF6ACA9EFF62C596FF4CAD79FF4FAB78FF47A873FF58B888FF69CA
          9EFF68C99BFF7DDCAAFF96DEB7FFEBE6E7FF8685849000000000000000006F6F
          7F99BFBFD2FFC0C0D2FFC1C1D4FFC2C2D3FFC2C2D4FFC2C2D5FFC4C4D7FFC4C4
          D6FFC5C5D8FFC6C6D8FFC6C6D9FFC6C6D9FFC7C7DAFFC7C7DAFFCEC9DEFFB6BF
          CFFF7EC9B0FF93F2B7FF84E0AEFF72D3A4FF70D1A3FF70D1A3FF7AD8A9FF90EA
          B5FF8AE5B4FF8CB4B6FFC9C0D7FFC0C0D1FF6868779000000000000000000707
          539900007AFF00007AFF000077FF00007AFF000077FF000076FF000075FF0000
          78FF000078FF000079FF000078FF000077FF00007AFF00007AFF00007AFF0000
          7BFF00007DFF172686FF4A7A9BFF72B3AEFF7DC7B2FF79BFB2FF5F99A5FF2D4E
          8FFF02007EFF00007DFF00007BFF00007AFF06064D9000000000000000000606
          56990C0C8AFF050587FF5353ABFF00007CFF4A4AA7FFBDBDDFFF7171BAFF1A1A
          8FFF3A3AA0FF1E1E91FF34349CFF4040A2FF060687FF0C0C8AFF0C0C8AFF0C0C
          8AFF0C0C8AFF090789FF050187FF030085FF010085FF020085FF040087FF0704
          88FF0B0A8AFF0C0C8AFF0C0C8AFF0C0C8AFF06064F9000000000000000000808
          5A990E0E8EFF000087FFCDCDE8FFA1A1D3FF8D8DCAFFC9C9E6FF4141A6FFA9A9
          D7FFACACD8FF5555B0FF8181C5FF9D9DD1FF020289FF0E0E8EFF0E0E8EFF0E0E
          8EFF0E0E8EFF0E0E8EFF0E0E8EFF0E0E8EFF0E0E8EFF0E0E8EFF0E0E8EFF0E0E
          8EFF0E0E8EFF0E0E8EFF0E0E8EFF0E0E8EFF0808539000000000000000000909
          5D99101095FF0C0C93FF21219DFFF7F7FCFF00008CFF2F2FA3FF5858B6FF0707
          91FF4C4CB0FF5252B2FF5454B4FF8F8FCDFF050590FF101095FF101095FF1010
          95FF101095FF101095FF101095FF101095FF101095FF101095FF101095FF1010
          95FF101095FF101095FF101095FF101095FF0909579000000000000000000A0A
          619911119BFF11119BFF0D0D99FF000092FF0F0F9AFF0C0C99FF0B0B98FF0F0F
          9AFF0B0B98FF0A0A98FF090997FF060696FF11119BFF11119BFF11119BFF1111
          9BFF11119BFF11119BFF11119BFF11119BFF11119BFF11119BFF11119BFF1111
          9BFF11119BFF11119BFF11119BFF11119BFF0A0A5A9000000000000000000B0B
          65991111A1FF1111A1FF1111A1FF1111A1FF1111A1FF1111A1FF07079EFF0505
          9EFF06069EFF0F0FA0FF1111A1FF1111A1FF1111A1FF1111A1FF1111A1FF1111
          A1FF1111A1FF1111A1FF0C0C9FFF05059EFF05059EFF0B0B9FFF1111A1FF1111
          A1FF1111A1FF1111A1FF1111A1FF1111A1FF0A0A5E9000000000000000000C0C
          69991313A6FF1414A7FF1414A7FF1414A7FF1313A7FF0707A1FF7878B8FF9999
          C2FF9393C1FF1A1AA3FF1111A6FF1414A7FF1414A7FF1414A7FF1414A7FF1414
          A7FF1414A7FF0E0EA5FF4040ACFF9D9DC6FF9E9EC6FF4747ADFF0E0EA5FF1414
          A7FF1414A7FF1414A7FF1414A7FF1212A6FF0B0B619000000000000000000B0B
          6C991B1BB1FF1414ACFF1616ADFF1616ADFF1010ABFF4242B8FFFFFFEFFFEFEF
          EAFFF9F9EDFF9696D1FF0A0AA9FF1616ADFF1616ADFF1616ADFF1616ADFF1616
          ADFF1616ADFF0404A7FFECECEBFFF6F6EFFFF5F5EFFFFBFBF0FF0202A7FF1616
          ADFF1616ADFF1616ADFF1414ACFF1D1DB1FF0B0B649000000000000000001919
          6D933838C5FF1313B1FF1212B1FF1414B1FF0E0EB0FF4949C0FFFFFFF5FFF1F1
          F1FFFAFAF3FF9C9CD9FF0808AEFF1414B1FF1414B1FF1414B1FF1414B1FF1414
          B1FF1414B1FF0000ABFFF0F0F2FFF5F5F3FFF3F3F3FFFFFFF7FF0000ABFF1414
          B1FF1414B1FF1212B0FF1717B1FF3535C3FF1818658900000000000000001010
          20291616B7FF6262DDFF3F3FC9FF3030C3FF2C2CC2FF5F5FCFFFFFFFFAFFF6F6
          F6FFFEFEF8FFA8A8E3FF2626C1FF3232C4FF3232C4FF3232C4FF3232C4FF3232
          C4FF3232C4FF1F1FBFFFF3F3F6FFF7F7F6FFF6F6F6FFFFFFF9FF1D1DBEFF3232
          C4FF3030C3FF4141CBFF5F5FDBFF1818B6FF0B0B1A2100000000000000000000
          0000111127311F1F7EA42A2A8DAB353590AA30308EA96060A5BFFFFFF7FFF5F5
          F5FFFBFBF6FFA4A4CADD2E2E8CA8353591AA353591AA353591AA353591AA3535
          91AA343491AA2D2D8AA7F0F0EFF9F5F5F4FFF4F4F4FFFFFFF7FF2E2E88A63333
          91AA353590AA29298CAB21217CA20F0F212A0000000000000000000000000000
          0000000000000000000000000000000000000000000030303438F3F3F0FFF0F0
          F0FFF1F1F0FF8D8D8D9600000000000000000000000000000000000000000000
          00000000000000000000EAEAE3F2EEEEEEFFEEEEEEFFF4F4EFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000087878796A4A4
          A4B5A0A0A0B11B1B1B1D00000000000000000000000000000000000000000000
          000000000000000000004B4B4B52A3A3A3B6A4A4A4B75353535C000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
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
    Left = 765
    Top = 220
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
      FloatClientHeight = 128
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnClose'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 70
          Visible = True
          ItemName = 'lucPeriod'
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
      AutoGrayScale = False
    end
    object btnGetData: TdxBarLargeButton
      Action = actGetData
      Category = 0
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
    object lucPeriod: TcxBarEditItem
      Caption = 'Billable Period'
      Category = 0
      Hint = 'Billable Period'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'THE_PERIOD'
      Properties.ListColumns = <
        item
          FieldName = 'THE_PERIOD'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.OnEditValueChanged = lucPeriodPropertiesEditValueChanged
    end
  end
  object dlgPrint: TdxPrintDialog
    ButtonsEnabled = [pdbPrinterProperties, pdbNetwork, pdbPreview, pdbPageSetup]
    ButtonsVisible = [pdbPrinterProperties, pdbNetwork, pdbPageSetup]
    OptionsEnabled = [pdoPrintToFile, pdoAllPages, pdoCurrentPage, pdoPageRange]
    Left = 670
    Top = 165
  end
  object dlgFileSave: TSaveDialog
    Filter = 'Excel Files (*.xlsx)|*.xlsx'
    Left = 670
    Top = 218
  end
  object popTimesheet: TPopupMenu
    Images = img16
    Left = 670
    Top = 280
    object EditItem1: TMenuItem
      Action = actEditItem
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object GetData1: TMenuItem
      Action = actGetData
    end
    object Preview1: TMenuItem
      Action = actPreview
    end
    object Print1: TMenuItem
      Action = actPrint
    end
    object Excel1: TMenuItem
      Action = actExcel
    end
    object PDF1: TMenuItem
      Action = actPDF
    end
  end
  object actTimesheet: TActionList
    Images = img16
    Left = 765
    Top = 280
    object actEditItem: TAction
      Caption = 'Edit Selected Item'
      ImageIndex = 8
      OnExecute = DoEditItem
    end
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
    Left = 475
    Top = 280
    PixelsPerInch = 96
    object tipExit: TdxScreenTip
      Header.Text = 'Exit'
      Description.Text = 'Exit master table manager'
    end
    object tipGetData: TdxScreenTip
      Header.Text = 'Get Data'
      Description.Text = 'Get billable data and display in grid on-screen'
      Width = 305
    end
    object tipPreview: TdxScreenTip
      Header.Text = 'Preview'
      Description.Text = 'Preview timesheet'
    end
    object tipPrint: TdxScreenTip
      Header.Text = 'Print'
      Description.Text = 'Print timesheet'
    end
    object tipPDF: TdxScreenTip
      Header.Text = 'PDF'
      Description.Text = 'Export timesheet to PDF'
    end
    object tipExcel: TdxScreenTip
      Header.Text = 'Excel'
      Description.Text = 'Export timesheet to Excel'
    end
    object tipRemoveZeroValueItems: TdxScreenTip
      Header.Text = 'Remove zero value items'
      Description.Text = 'Remove items that have a zero value balance when fetching data'
      Width = 300
    end
    object tipInclude: TdxScreenTip
      Header.Text = 'Select None'
      Description.Text = 'Clear all tiesheet item selection'
      Width = 220
    end
    object tipFetchPreviousPeriodData: TdxScreenTip
      Header.Text = 'Fetch Previous Period Data'
      Description.Text = 
        'When opening the BillableSummary screen, fetch data for the prev' +
        'ious period'
      Width = 280
    end
  end
  object styHintController: TcxHintStyleController
    Global = False
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
        ScreenTip = tipRemoveZeroValueItems
        Control = cbxRemoveZeroBillableItems
      end
      item
        ScreenTip = tipInclude
        Control = cbxIncludeReleasedItems
      end
      item
        ScreenTip = tipFetchPreviousPeriodData
        Control = cbxFetchPreviousPeriodData
      end>
    HintStyle.ScreenTipActionLinks = <>
    HintShortPause = 0
    HintPause = 0
    HintHidePause = 15000
    Left = 565
    Top = 279
  end
end
