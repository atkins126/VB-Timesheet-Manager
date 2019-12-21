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
    LayoutLookAndFeel = lafCustomSkin
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
      Top = 75
      Width = 1104
      Height = 350
      TabOrder = 1
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
    object grdCarryForwardDetail: TcxGrid [2]
      Left = 25
      Top = 468
      Width = 1073
      Height = 210
      TabOrder = 3
      object viewCarryForwardDetail: TcxGridDBBandedTableView
        Tag = 1
        OnDblClick = viewTimesheetDblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewBillableCustomDrawCell
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
            FieldName = 'ITEM_VALUE'
            Column = edtCFItemValue
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
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
          Properties.ListSource = ReportDM.dtsSystemUser2
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
          Properties.ListSource = ReportDM.dtsPriceList2
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
          Properties.ListSource = ReportDM.dtsRateUnit2
          Properties.ReadOnly = True
          MinWidth = 60
          Options.Editing = False
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
          Properties.ListSource = ReportDM.dtsActivityType2
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
    object grdTimesheet: TcxGrid [3]
      Left = 10000
      Top = 10000
      Width = 1073
      Height = 210
      TabOrder = 2
      Visible = False
      object viewTimesheet: TcxGridDBBandedTableView
        OnDblClick = viewTimesheetDblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewBillableCustomDrawCell
        DataController.DataSource = ReportDM.dtsTimesheetDetail
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
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
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
          Properties.ListSource = ReportDM.dtsSystemUser1
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
          Properties.ListSource = ReportDM.dtsPriceList1
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
          Properties.ListSource = ReportDM.dtsRateUnit1
          Properties.ReadOnly = True
          MinWidth = 60
          Options.Editing = False
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
          Properties.ListSource = ReportDM.dtsActivityType1
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
      end
      object lvlTimesheet: TcxGridLevel
        GridView = viewTimesheet
      end
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 2
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
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 2
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
      Index = 1
    end
    object litTimesheet: TdxLayoutItem
      Parent = grpData
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Timesheet Details'
      CaptionOptions.Visible = False
      Control = grdTimesheet
      ControlOptions.OriginalHeight = 350
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCarryForward: TdxLayoutItem
      Parent = grpData
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Carry Forward Details'
      CaptionOptions.Visible = False
      Control = grdCarryForwardDetail
      ControlOptions.OriginalHeight = 421
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 1
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
          ItemName = 'lucFromPeriod'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 70
          Visible = True
          ItemName = 'lucToPeriod'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 90
          Visible = True
          ItemName = 'lucGroupBy'
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
          UserWidth = 20
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbxRemoveZeroValues'
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
    object lucFromPeriod: TcxBarEditItem
      Caption = 'From Period'
      Category = 0
      Hint = 'From Period'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.KeyFieldNames = 'THE_PERIOD'
      Properties.ListColumns = <
        item
          FieldName = 'THE_PERIOD'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = ReportDM.dtsPeriod
    end
    object lucToPeriod: TcxBarEditItem
      Caption = 'To Period'
      Category = 0
      Hint = 'To Period'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.KeyFieldNames = 'THE_PERIOD'
      Properties.ListColumns = <
        item
          FieldName = 'THE_PERIOD'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = ReportDM.dtsToPeriod
    end
    object lucGroupBy: TcxBarEditItem
      Caption = 'Group By'
      Category = 0
      Hint = 'Group By'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Period'
        'Customer')
      Properties.PostPopupValueOnTab = True
    end
    object cbxRemoveZeroValues: TcxBarEditItem
      Caption = 'Remove items with zero billable values'
      Category = 0
      Hint = 'Remove items with zero billable values'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      InternalEditValue = True
    end
  end
end
