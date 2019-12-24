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
      object lvlBillableSummary: TcxGridLevel
        GridView = viewBillableSummary
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
        OnCustomDrawCell = viewBillableSummaryCustomDrawCell
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
          00000000000000000000000000004B4B4BB86E6E6EFE6F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6E6E
          6EFE4C4C4CB80000000000000000000000000000000000000000000000000000
          00000000000000000000000000006E6E6EFE747474FF747474FF747474FF7474
          74FF747474FF747474FF747474FF747474FF747474FF747474FF747474FF7474
          74FF747474FF747474FF747474FF747474FF747474FF747474FF747474FF7474
          74FF6E6E6EFE0000000000000000000000000000000000000000000000000000
          00000000000000000000000000006F6F6FFF747474FF717171FF595959FF5555
          55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
          55FF555555FF555555FF555555FF555555FF555555FF595959FF717171FF7474
          74FF6F6F6FFF0000000000000000000000000000000000000000000000000F0F
          0F2D868686CDA6A6A6F7A6A6A6F76F6F6FFF747474FF6F6F6FFF414141FF4141
          41FF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF414141FF414141FF414141FF414141FF6E6E6EFF7474
          74FF6F6F6FFFA6A6A6F7A6A6A6F7868686CD0F0F0F2C00000000000000008686
          86CAC0C0C0FFC3C3C3FFC3C3C3FF696969FF6F6F6FFF696969FF414141FF4141
          41FF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF414141FF414141FF414141FF414141FF696969FF6F6F
          6FFF696969FFC3C3C3FFC3C3C3FFC0C0C0FF858585C80000000000000000A7A7
          A7F1C7C7C7FFC7C7C7FFC7C7C7FF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
          41FF414141FFC7C7C7FFC7C7C7FFC7C7C7FFA6A6A6F00000000000000000ABAB
          ABF1CBCBCBFFCBCBCBFFCBCBCBFF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
          41FF414141FFCBCBCBFFCBCBCBFFCBCBCBFFA9A9A9F00000000000000000AEAE
          AEF1CECECEFFCECECEFFCECECEFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCECECEFFCECECEFFCECECEFFACACACF00000000000000000B0B0
          B0F1D2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2
          D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2
          D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2
          D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFAFAFAFF00000000000000000B2B2
          B2F1D5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
          D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
          D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
          D5FFD0D0D0FFCBCBCBFFD5D5D5FFD5D5D5FFB2B2B2F00000000000000000B5B5
          B5F1D9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFC3C3
          C3FF797979FF747474FFA6A6A6FFD9D9D9FFB4B4B4F00000000000000000B8B8
          B8F1DCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
          DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
          DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFF9E9E
          9EFF747474FF747474FF7A7A7AFFDCDCDCFFB7B7B7F00000000000000000BBBB
          BBF1E0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFB8B8
          B8FF747474FF747474FF939393FFE0E0E0FFBABABAF00000000000000000BEBE
          BEF1E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFC5C5C5FFB9B9B9FFDEDEDEFFE3E3E3FFBDBDBDF00000000000000000C0C0
          C0F1E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFBFBFBFF00000000000000000C1C1
          C1F1E8E8E8FFE8E8E8FFE8E8E8FF7B7B7BFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
          4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
          4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
          4CFF7C7C7CFFE8E8E8FFE8E8E8FFE8E8E8FFC1C1C1F00000000000000000A6A6
          A6D2E8E8E8FFEAEAEAFFEAEAEAFF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
          41FF414141FFEAEAEAFFEAEAEAFFE8E8E8FFA5A5A5D100000000000000001E1E
          1E3BB8B8B8E4D5D5D5FFD4D4D4FF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
          41FF414141FFD5D5D5FFD5D5D5FFB8B8B8E41F1F1F3B00000000000000000000
          00000000000104040410060606146A6A6AFF717171FF9B9B9BFFDFDFDFFFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFDFDFDFFF9A9A9AFF7171
          71FF6A6A6AFF0505051104040410000000010000000000000000000000000000
          00000000000000000000000000036C6C6CFF747474FFA1A1A1FFEBEBEBFFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFEBEBEBFFA0A0A0FF7474
          74FF6C6C6CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000036C6C6CFF747474FFA1A1A1FFEBEBEBFFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFEBEBEBFFA0A0A0FF7474
          74FF6C6C6CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000036C6C6CFF747474FFA1A1A1FFEBEBEBFFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFEBEBEBFFA0A0A0FF7474
          74FF6C6C6CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000036C6C6CFF747474FFA1A1A1FFEBEBEBFFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFEBEBEBFFA0A0A0FF7474
          74FF6C6C6CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000036C6C6CFE747474FFA1A1A1FFEBEBEBFFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFEBEBEBFFA0A0A0FF7474
          74FF6C6C6CFE0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000494949B3696969F89A9A9AFBEBEBEBFFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFEBEBEBFF999999FB6969
          69F8484848B00000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004A4A4A7AEBEBEBFFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFEBEBEBFF4C4C4C790000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004747477AEBEBEBFFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFEBEBEBFF4A4A4A790000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002B2B2B50D2D2D2F9D7D7
          D7FDD7D7D7FDD7D7D7FDD7D7D7FDD7D7D7FDD7D7D7FDD7D7D7FDD7D7D7FDD7D7
          D7FDD7D7D7FDD7D7D7FDD7D7D7FDD7D7D7FDD7D7D7FDD2D2D2F92D2D2D500000
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
end
