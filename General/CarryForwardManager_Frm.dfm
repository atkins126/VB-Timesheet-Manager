inherited CarryForwardManagerFrm: TCarryForwardManagerFrm
  Caption = 'CarryForwardManagerFrm'
  ClientHeight = 791
  ClientWidth = 1349
  ExplicitWidth = 1365
  ExplicitHeight = 830
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 1281
    Height = 706
    ExplicitWidth = 1281
    ExplicitHeight = 706
    object grdTimesheet: TcxGrid [0]
      Left = 10000
      Top = 10000
      Width = 1228
      Height = 570
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      object viewTimesheet: TcxGridDBBandedTableView
        PopupMenu = popReleaseCFwd
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewTimesheetCustomDrawCell
        DataController.DataSource = TSDM.dtsCarryForward
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoMultiSelectionSyncGroupWithChildren]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'TIME_HOURS'
            Column = edtHours
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'ITEM_VALUE'
            Column = edtItemValue
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'CARRY_FORWARD_VALUE'
            Column = edtCFwdValue
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'ITEM_VALUE'
            Column = edtItemValue
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'TIME_HOURS'
            Column = edtHours
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'CARRY_FORWARD_VALUE'
            Column = edtCFwdValue
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'ITEM_VALUE'
            Column = edtItemValue
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'TIME_HOURS'
            Column = edtHours
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'CARRY_FORWARD_VALUE'
            Column = edtCFwdValue
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
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvGroupRow, cbvColumnHeader]
        OptionsSelection.MultiSelectMode = msmPersistent
        OptionsView.NoDataToDisplayInfoText = '<No Timesheet data to display>'
        OptionsView.Footer = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        Styles.OnGetGroupStyle = viewTimesheetStylesGetGroupStyle
        Bands = <
          item
            Caption = 'Timesheet Details'
          end
          item
            Caption = 'Calculations'
          end
          item
            Caption = 'Invoicing'
          end
          item
            Caption = 'General Information'
          end>
        object edtID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '###,##0'
          Properties.EditFormat = '###,##0'
          Properties.ReadOnly = True
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
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtFirstName: TcxGridDBBandedColumn
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
        object edtLastName: TcxGridDBBandedColumn
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
        object edtThePeriod: TcxGridDBBandedColumn
          DataBinding.FieldName = 'THE_PERIOD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          Visible = False
          OnGetDisplayText = edtThePeriodGetDisplayText
          GroupIndex = 0
          MinWidth = 60
          Options.Editing = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtPeriodName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PERIOD_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          OnGetDisplayText = edtThePeriodGetDisplayText
          MinWidth = 70
          Options.Editing = False
          Options.HorzSizing = False
          Width = 70
          Position.BandIndex = 1
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object edtLoginName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LOGIN_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          OnGetDisplayText = edtThePeriodGetDisplayText
          MinWidth = 120
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtActivityDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          OnGetDisplayText = edtThePeriodGetDisplayText
          MinWidth = 90
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtCustomerType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_TYPE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          Visible = False
          OnGetDisplayText = edtThePeriodGetDisplayText
          MinWidth = 200
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtCustomerName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          OnGetDisplayText = edtThePeriodGetDisplayText
          MinWidth = 300
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object edtActivtyType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY_TYPE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          OnGetDisplayText = edtThePeriodGetDisplayText
          MinWidth = 200
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object edtAActivty: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.ReadOnly = True
          MinWidth = 300
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object edtPriceItem: TcxGridDBBandedColumn
          Caption = 'Price Item'
          DataBinding.FieldName = 'PRICE_LIST_ITEM'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          MinWidth = 300
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object edtTimeSpent: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtHours: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtRate: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtStdRate: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtAbbreviation: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ABBREVIATION'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          MinWidth = 25
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 25
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtItemValue: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtCFwdValue: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtBillable: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object edtBillableStr: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object edtInvoiceNo: TcxGridDBBandedColumn
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
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtInvDate: TcxGridDBBandedColumn
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
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtCreditNoteNo: TcxGridDBBandedColumn
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
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtLocked: TcxGridDBBandedColumn
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
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtLockedStr: TcxGridDBBandedColumn
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
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtCFwd: TcxGridDBBandedColumn
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
          Position.BandIndex = 3
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtCFwdStr: TcxGridDBBandedColumn
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
          Position.BandIndex = 3
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtAddWork: TcxGridDBBandedColumn
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
          Position.BandIndex = 3
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtAddWorkStr: TcxGridDBBandedColumn
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
          Position.BandIndex = 3
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object edtCFwdReleaseDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DATE_CFWD_RELEASED'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd/MM/yyyy'
          Properties.EditFormat = 'dd/MM/yyyy'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          MinWidth = 90
          Options.Editing = False
          Options.ExpressionEditing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtCFwdToPeriod: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RELEASE_CFWD_TO_PERIOD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          MinWidth = 60
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object lvlTimesheet: TcxGridLevel
        GridView = viewTimesheet
      end
    end
    object docToolbarCFwd: TdxBarDockControl [1]
      Left = 10000
      Top = 10000
      Width = 1228
      Height = 54
      Align = dalNone
      BarManager = barManager
      Visible = False
    end
    object docTolbarRelease: TdxBarDockControl [2]
      Left = 25
      Top = 48
      Width = 1228
      Height = 54
      Align = dalNone
      BarManager = barManager
    end
    object grdTimesheetRelease: TcxGrid [3]
      Left = 25
      Top = 108
      Width = 1228
      Height = 570
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object viewTimesheetRelease: TcxGridDBBandedTableView
        PopupMenu = popUndoRelease
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = TSDM.dtsRelease
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoMultiSelectionSyncGroupWithChildren]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'TIME_HOURS'
            Column = edtRHours
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'ITEM_VALUE'
            Column = edtRItemValue
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'CARRY_FORWARD_VALUE'
            Column = edtRCFwdValue
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'ITEM_VALUE'
            Column = edtRItemValue
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'TIME_HOURS'
            Column = edtRHours
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'CARRY_FORWARD_VALUE'
            Column = edtRCFwdValue
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'ITEM_VALUE'
            Column = edtRItemValue
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'TIME_HOURS'
            Column = edtRHours
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'CARRY_FORWARD_VALUE'
            Column = edtRCFwdValue
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
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvGroupRow, cbvColumnHeader]
        OptionsSelection.MultiSelectMode = msmPersistent
        OptionsView.NoDataToDisplayInfoText = '<No Timesheet data to display>'
        OptionsView.Footer = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        Bands = <
          item
            Caption = 'Timesheet Details'
          end
          item
            Caption = 'Calculations'
          end
          item
            Caption = 'Invoicing'
          end
          item
            Caption = 'General Information'
          end>
        object edtRID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '###,##0'
          Properties.EditFormat = '###,##0'
          Properties.ReadOnly = True
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
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtRFirstName: TcxGridDBBandedColumn
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
        object edtRLastName: TcxGridDBBandedColumn
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
        object edtRThePeriod: TcxGridDBBandedColumn
          DataBinding.FieldName = 'THE_PERIOD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          Visible = False
          GroupIndex = 0
          MinWidth = 60
          Options.Editing = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtRPeriodName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PERIOD_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 70
          Options.Editing = False
          Options.HorzSizing = False
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtRLoginName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LOGIN_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          MinWidth = 120
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtRActivityDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          MinWidth = 90
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtRCustomerName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          MinWidth = 300
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object edtRCustomerType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_TYPE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 200
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object edtRActivtyType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY_TYPE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          MinWidth = 200
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object edtRAActivty: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.ReadOnly = True
          MinWidth = 300
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object edtRPriceItem: TcxGridDBBandedColumn
          Caption = 'Price Item'
          DataBinding.FieldName = 'PRICE_LIST_ITEM'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          MinWidth = 300
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object edtRTimeSpent: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtRHours: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtRRate: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtRStdRate: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtRAbbreviation: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ABBREVIATION'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          MinWidth = 25
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 25
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtRItemValue: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtRCFwdValue: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtRBillable: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object edtRBillableStr: TcxGridDBBandedColumn
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
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object edtRInvoiceNo: TcxGridDBBandedColumn
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
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtRInvDate: TcxGridDBBandedColumn
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
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtRCreditNoteNo: TcxGridDBBandedColumn
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
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtRLocked: TcxGridDBBandedColumn
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
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtRLockedStr: TcxGridDBBandedColumn
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
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtRCFwd: TcxGridDBBandedColumn
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
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtRCFwdStr: TcxGridDBBandedColumn
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
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtRAddWork: TcxGridDBBandedColumn
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
          Position.BandIndex = 3
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtRAddWorkStr: TcxGridDBBandedColumn
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
          Position.BandIndex = 3
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object lvlTimesheetRelease: TcxGridLevel
        GridView = viewTimesheetRelease
      end
    end
    object litCFwdToolbar: TdxLayoutItem
      Parent = grpCarryForward
      CaptionOptions.Visible = False
      Control = docToolbarCFwd
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 54
      ControlOptions.OriginalWidth = 600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCFwdGrid: TdxLayoutItem
      Parent = grpCarryForward
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = grdTimesheet
      ControlOptions.OriginalHeight = 310
      ControlOptions.OriginalWidth = 913
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpCFwdRelease: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object grpCarryForward: TdxLayoutGroup
      Parent = grpCFwdRelease
      AlignVert = avClient
      CaptionOptions.Text = 'Carried Forwared Items'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object grpRelease: TdxLayoutGroup
      Parent = grpCFwdRelease
      CaptionOptions.Text = 'Released Items'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object litReleaseToolbar: TdxLayoutItem
      Parent = grpRelease
      CaptionOptions.Visible = False
      Control = docTolbarRelease
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 54
      ControlOptions.OriginalWidth = 1349
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litReleaseGrid: TdxLayoutItem
      Parent = grpRelease
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = grdTimesheetRelease
      ControlOptions.OriginalHeight = 395
      ControlOptions.OriginalWidth = 846
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lucReleaseCarryForwardToPeriod: TcxLookupComboBox [1]
    Left = 350
    Top = 185
    BeepOnEnter = False
    Properties.DropDownAutoSize = True
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'THE_PERIOD'
    Properties.ListColumns = <
      item
        FieldName = 'PERIOD_NAME'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = TSDM.dtsAllPeriod
    Properties.OnCloseUp = lucReleaseCarryForwardToPeriodPropertiesCloseUp
    Properties.OnEditValueChanged = lucReleaseCarryForwardToPeriodPropertiesEditValueChanged
    Properties.OnInitPopup = lucReleaseCarryForwardToPeriodPropertiesInitPopup
    Properties.OnPopup = lucReleaseCarryForwardToPeriodPropertiesPopup
    Style.HotTrack = False
    Style.TransparentBorder = False
    TabOrder = 1
    Width = 100
  end
  object cbxPersistentSelection: TcxCheckBox [2]
    Left = 350
    Top = 218
    Caption = 'Persistent record selection'
    ParentShowHint = False
    Properties.ImmediatePost = True
    Properties.UseAlignmentWhenInplace = True
    Properties.OnEditValueChanged = cbxPersistentRecordSelectionPropertiesEditValueChanged
    ShowHint = True
    Style.TransparentBorder = False
    TabOrder = 2
    Transparent = True
  end
  object lucChangeToPeriod: TcxLookupComboBox [3]
    Tag = 1
    Left = 560
    Top = 191
    BeepOnEnter = False
    Properties.DropDownAutoSize = True
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'THE_PERIOD'
    Properties.ListColumns = <
      item
        FieldName = 'PERIOD_NAME'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = TSDM.dtsChangeToPeriod
    Style.HotTrack = False
    TabOrder = 3
    Visible = False
    Width = 100
  end
  object cbxGetAllCarryForwardItems: TcxCheckBox [4]
    Left = 560
    Top = 218
    Caption = 'Get all carry forward items'
    ParentShowHint = False
    Properties.ImmediatePost = True
    Properties.UseAlignmentWhenInplace = True
    Properties.OnEditValueChanged = cbxGetAllCarryForwardItemsPropertiesEditValueChanged
    ShowHint = True
    Style.TransparentBorder = False
    TabOrder = 4
    Transparent = True
    Visible = False
  end
  object lucGroupCFwdBy: TcxComboBox [5]
    Tag = 20
    Left = 350
    Top = 248
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.Items.Strings = (
      'Period'
      'Customer')
    Properties.OnEditValueChanged = lucGroupCFwdByPropertiesEditValueChanged
    TabOrder = 5
    Width = 90
  end
  object lucGroupReleaseBy: TcxComboBox [6]
    Tag = 21
    Left = 560
    Top = 245
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.Items.Strings = (
      'Period'
      'Customer')
    Properties.OnEditValueChanged = lucGroupCFwdByPropertiesEditValueChanged
    TabOrder = 6
    Visible = False
    Width = 90
  end
  inherited styRepository: TcxStyleRepository
    Left = 455
    Top = 465
    PixelsPerInch = 96
    object styGroupFormat: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
  end
  inherited actList: TActionList
    Images = img32
    Left = 155
    Top = 520
    object actCloseForm: TAction
      Caption = 'Close'
      ImageIndex = 0
      OnExecute = DoCloseForm
    end
    object actGetTimeSheetDataCFwd: TAction
      Tag = 10
      Caption = 'Get Data'
      ImageIndex = 5
      OnExecute = DoGetTimesheetData
    end
    object actGetTimesheetDataRelease: TAction
      Tag = 11
      Caption = 'Get Data'
      ImageIndex = 5
      OnExecute = DoGetTimesheetData
    end
    object actRelease: TAction
      Caption = 'Release'
      ImageIndex = 6
      OnExecute = DoRelease
    end
    object actChangeReleasePeriod: TAction
      Caption = 'Change'
      ImageIndex = 6
      OnExecute = DoChangeReleasePeriod
    end
    object actOptions: TAction
      Caption = 'Options'
      ImageIndex = 7
      OnExecute = DoOptions
    end
    object actReverseRelease: TAction
      Caption = 'Reverse'
      ImageIndex = 8
      OnExecute = DoReverseRelease
    end
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    Left = 215
    Top = 520
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
    DesignInfo = 34078775
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
          0000000000000000000000000000000000000000000000000000000000000C0C
          0C801B1B1BEB0505054100000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000404043E2828
          28FF3F3F3FFF272727F305050543000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000101010E2424
          24CD4F4F4FFF575757FF2D2D2DF3050505430000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          01142B2B2BCD595959FF5D5D5DFF323230F32920077E5B4609C3735A0CF4735A
          0CF45B4609C32B22045F01010003000000000000000000000000000000000000
          0000010101142F2F2FCD5B5955FF705B1CFF846610FF8D6D11FF8B6C0FFF8B6C
          0FFF8D6D11FF846610FF5C4809C20604000E0000000000000000000000000000
          00000000000001010114635118E88F7013FF83660FED41320780261D044B261D
          044B4132078083660FED8F7013FF534108AC0000000000000000000000000000
          00000000000017120133937314FF8C6D11F23227045B251C0440251C0440251C
          0440251C04403227045B8C6D11F2937314FF1712013300000000000000000000
          00000000000045350786A68419FF5F4A09A82920044031290D483930154F3930
          154F31290D48292004405F4A09A8A68419FF4535078600000000000000000000
          0000000000005F4A0CA6B28E1BFF513F07844940235A58503767574F3666574F
          3666585037674940235A513F0784B28E1BFF5F4A0CA600000000000000000000
          00000000000055420A96C19A1FFF6855199C70674F797068507A70674F797068
          507A7068507A7068507A6855199CC09A1FFF55420A9600000000000000000000
          000000000000281F0354CCA322FF9A7C1FE2837C638B857D668B857D668B857D
          668B857D668B837C638B9A7C1FE2CCA322FF281F035400000000000000000000
          00000000000002010005937415D9D6AB24FFA28B43DE928A719A968F7999968F
          7999928A729AA28B44DED6AB24FF937415D90201000500000000000000000000
          0000000000000000000019130235BD991EF0E3B728FFBC9826F7AF9643E2AF96
          43E2BC9826F7E3B728FFBD991EF0191302350000000000000000000000000000
          0000000000000000000000000000130F012A786512B3D6B625FFEDCA2CFFEDCA
          2CFFD6B625FF786512B3130F012A000000000000000000000000000000000000
          000000000000000000000000000000000000000000000A080018211902492119
          02490A0800180000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000003000000290000002E0000002E0000002E0000002F0000002F0000
          002E0000002E0000002B00000024000000030000000000000000000000000000
          00000000002BC0C0C0F4F9F9F9FFF9F9F9FFF9F9F9FFFAFAFAFFF9F9F9FFF9F9
          F9FFFBFBFBFFFCFCFCFFC0C0C0F40000002A0000000000000000000000000000
          00000101013AC2C1C1FFF1F1F1FFF2F2F2FFF3F2F2FFF2F2F2FFF3F3F3FFF3F3
          F3FFF2F2F2FFF4F3F3FFC2C1C1FF010101380000000000000000020202310D0D
          0D6015151580A4A2A2FFD9D6D6FFD7D5D5FFD7D4D4FFD8D6D6FFD7D5D5FFD9D7
          D7FFDCD9D9FFDCDADAFFA4A2A2FF151515830C0C0C5E0202023227272789BBBB
          BBFFB3B3B3FF4C4949FF5D5858FF5D5858FF5D5757FF5C5757FF5D5858FF5C56
          56FF5C5757FF5E5858FF4C4949FFB3B3B3FFB9B9B9FF2727278934343488D0D0
          D0FFCECECEFF444444FF393939FF383838FF373737FF363636FF363636FF3636
          36FF373737FF383838FF444444FFCDCDCDFFCBCBCBFF363636885252527ED2D2
          D2FFD3D3D3FFC1C1C1FFB6B6B6FFB7B7B7FFB5B5B5FFB9B9B9FFB9B9B9FFB5B5
          B5FFB8B8B8FFB7B7B7FFC2C2C2FFD5D5D5FFD0D0D0FF5A5A5A7E5C5C5C78E4E4
          E4FFE4E4E4FF8B8B8BFF454545FF454545FF464646FF505050FF4F4F4FFF4444
          44FF454545FF454545FF8B8B8BFFE4E4E4FFE4E4E4FF6363637852525269EDED
          EDFFEDEDEDFF9B9B9BFF565656FF565656FF565656FF565656FF565656FF5656
          56FF565656FF565656FF9B9B9BFFEDEDEDFFEDEDEDFF575757692A2A2A48C2C2
          C2FACCCCCCFAA4A4A4FC858585FE838383FE818181FE7F7F7FFE7F7F7FFE8181
          81FE838383FE858585FEA4A4A4FCCCCCCCFAC2C2C2FA2D2D2D480505050EA5A5
          A5FBBEBEBEFF969696FFBEB8B8FFCAC5C5FFD2CDCDFFD5D2D2FFD5D2D2FFD2CD
          CDFFCAC5C5FFBEB8B8FF969696FFBEBEBEFFA5A5A5FB0505050E000000000000
          0000000000005757578DD7D3D3FFE2DFDFFFE9E7E7FFEDEBEBFFEDEBEBFFE9E7
          E7FFE2DFDFFFD7D3D3FF5757578D000000000000000000000000000000000000
          0000000000004F4F4F88EAE8E8FFF5F3F3FFFAFAFAFFFCFCFCFFFCFCFCFFFAFA
          FAFFF5F3F3FFEAE8E8FF4F4F4F88000000000000000000000000000000000000
          00000000000002020209F9F8F8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFFF9F8F8FF02020209000000000000000000000000000000000000
          00000000000000000009FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFF01010109000000000000000000000000000000000000
          0000000000000000000101010109010101090101010901010109010101090101
          0109010101090101010900000001000000000000000000000000}
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000016C511D9835280F5F0000
          0001000000000000000000000000000000000000000000000000000000010000
          000100000001000000010000000100000001000000028E6C26B5D3A139FC7E61
          24AD060401160000000100000000000000000000000000000000392C116A4937
          1580493715804937158049371580493715804A381581B48932DADBA63CFED9A6
          3CFDBA8F35E6281F0C4D00000001000000000000000000000000D9A63EFCDBA7
          3EFDDBA73EFDDBA73EFDDBA73EFDDBA73EFDDDA83EFEDDA83EFEDDA83EFEDDA8
          3EFEDDA83EFED7A43DFC6E55219B0302010E0000000000000000E0AB41FEE0AB
          41FEE1AC41FFE1AC41FFE1AC41FFE1AC41FFE1AC41FFE1AC41FFE1AC41FFE1AC
          41FFE0AB40FEDFAA40FEDDA940FDB48A36DC1E17093F00000001E3AE43FFE3AE
          43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE
          43FFE3AE43FFE3AE43FFE2AD43FEE2AD42FED6A641F95E491E88E6B145FFE6B1
          45FFE6B145FFE6B145FFE6B145FFE6B145FFE6B145FFE6B145FFE6B145FFE6B1
          45FFE6B145FFE6B145FFE5B045FEE4AF45FEDEAB44FA7459238FE8B348FFE8B3
          48FFE8B348FFE8B348FFE8B348FFE8B348FFE8B348FFE8B348FFE8B348FFE8B3
          48FFE7B248FEE6B147FEE5B047FDC89A3EDF291F0C4300000001E8B349FEE8B3
          4AFEE9B44AFEE9B44AFEE9B44AFEE9B44AFEE9B44AFEE9B44AFEE9B44AFEE9B4
          4AFEE8B349FEE5B148FC86682A9E05040110000000000000000091702FA3A782
          36B9A78236B9A78236B9A78236B9A78236B9A98337BAD7A746EBEAB54CFEE9B4
          4CFDD2A245E63529114F00000001000000000000000000000000000000010000
          00010000000100000001000000010000000100000002A17D36B8E9B54DFC9776
          32AC080602160000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000185682D9A4335165D0000
          0001000000000000000000000000000000000000000000000000000000000000
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
          0000000000000005060900010405000000000000000000000000000000000000
          0000000000000001040400060708000000000000000000000000000000000000
          00000000000100416B72004D7D8F0017262D0001030400000000000000000001
          03040017262D004A798F003E6072000001010000000000000000000000000000
          00000000000000426D770088D9FD0078C5E000497686001B2A30001B2A30004A
          7685007BC6E00089DAFD00436578000000000000000000000000000000000000
          000000000000002B4651008ADBF90090E4FF0091E0FD0085CFE90085CEE90092
          DFFD0092E4FF008DDCF9002C4751000000000000000000000000000000000000
          000000000000001A2C320086D0EC0096E6FF0098E7FF0099E8FF0099E8FF0099
          E8FF0097E7FF008AD4EC001C2C32000000000000000000000000000000000000
          000000000000001522260088CEE4009BE9FF009DEBFF009FECFF009FECFF009E
          ECFF009DEAFF008ACFE400172127000000000000000000000000000000000000
          0000000304050041626D0098E1F800A0ECFF00A2EEFF00A4EFFF00A5EFFF00A4
          EFFF00A2EEFF009BE4F80043646E000305050000000000000000000000000003
          0505003A5B64008ED8EA00A0EDFF00A4EFFF00A9F1FF00AAF4FF00ACF3FF00AA
          F2FF00A7F1FF00A4EFFF0091D8EB003E5B64000204060000000000020406003C
          5D68008DD5EC009FECFF00A4EFFF00A8F2FF00ACF4FF00AFF6FF00B0F6FF00AF
          F6FF00ACF4FF00A8F1FF00A2EEFF0092D9EC003E5E6800040406001623280C7B
          B7C70B95DAEE079EE6F903A5EEFE00ABF4FF00B0F8FF00B5FAFF00B6FBFF00B4
          FAFF00AFF6FF03ABF0FE07A2E9F90B9BDCEE0C7DB8C800162528000304050112
          1C1E062430350B364B4F0F516C72188CBAC303B2F4FD00B9FCFF00BBFEFF03B6
          F7FD168FBDC40F526D720B374A4F0625313501141C1E00030405000000000000
          0000000000000000000000000000031B2426159DCBD300B8FCFF00BCFEFF15A0
          CFD3031C24260000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000020211566F7301B0F3FB03B2F4FB1157
          6F74000002020000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005171D1F139ACAD3139ACBD30517
          1D1F000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000202144D6569144D65690000
          0202000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000040406000404060000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000108050514360F0F
          38671D1D6C992D2DA6CB1B1B6385000000000000000000000000000000000000
          00000000000000000000000000000000000004040E293737CDF63939D8FF3A3A
          D9FF3A3AD9FF3636CAEE02020918000000000000000000000000000000000000
          00000000000000000000000000000000000003030D253A3AD9FF3A3AD9FF3A3A
          D9FF3A3AD9FF3232BCE007071A36000000000000000000000000000000000000
          000000000000000000000000000000000000000000003535C5E83A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF3838D2F90F0F36590000000000000000000000000000
          0000000000000000000000000000000000000000000026268DAE3A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF3A3AD9FF3838D2FA08081E3C00000000000000000001
          00080000000000000000000000000000000000000000131348733A3AD9FF2121
          7D9F25258AAA3A3AD7FD3A3AD9FF3A3AD9FF2F2FADD0000000000410052D030C
          03230000000000000000000000000000000000000000060618383131B7D80000
          01070000000008081E393232BADB3A3AD9FF3939D8FF0404112D0A270B531B67
          1F9200000000000000000000000000000000000000000000000203030B1F0000
          000000000000000000000101051029299BBC3A3AD9FF0B0B2A5409250B5035D3
          3EFF217D26A80104010F00000000000000000000000009230B48010702180000
          00000000000000000000000000000000010629299ABC0A0A274E020B032136D3
          3FFE36D33EFF2FB537E20C2F0E5600000001000100072FB637E01143146E0000
          0000000000000000000000000000000000000909254B02020A1D000000002697
          2DBA36D43FFF36D43FFF35D33EFF2DAE35DA24892AB436D43FFF28992EBF0000
          000000000000000000000000000000000000020208140000000000000000030E
          042432C53BED36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF34CF3DFB0106
          0114000000000000000000000000000000000000000000000000000000000000
          00000617073030BA38E036D43FFF36D43FFF36D43FFF36D43FFF36D43FFF0E38
          1162000000000000000000000000000000000000000000000000000000000000
          0000000000000104010F1D73229836D43FFF36D43FFF36D43FFF36D43FFF2389
          29AD000000000000000000000000000000000000000000000000000000000000
          00000000000000000000185E1C8536D43FFF36D43FFF36D13FFC2AA531C80D33
          0F52000000000000000000000000000000000000000000000000000000000000
          000000000000000000042DB035D41F7C259F0C300E5701060113000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  inherited img32: TcxImageList
    FormatVersion = 1
    DesignInfo = 34078825
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
          000000000000000000000000000000000000140E0420402F0F660F0B03180000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000030250C4C997428F3765B20BD281D
          0940030100040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003329104E9F7E2CF9A5802DFF9173
          27E54C3C14780C09031400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010100010202000302020003020200030202000302020003020200030202
          000302020003020200030202000302020003372B1150A1812FF9A88330FFA883
          30FFA1802FF9765A21B4241B0937020200030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000706
          010B4D381878694C1FA46E501CA46E501CA46E501CA46E501CA46E501CA46E50
          1CA46E501CA46E501CA46E501CA46C511DA4816325C0A98532FDAB8633FFAB86
          33FFAB8633FFA98333FE93742BE04939156E0B07021000000000000000000000
          000000000000000000000000000000000000000000000000000000000000211A
          09309F7D31EAAE8836FFAE8836FFAE8836FFAE8836FFAE8836FFAE8836FFAE88
          36FFAE8836FFAE8836FFAE8836FFAE8836FFAE8836FFAE8836FFAE8836FFAE88
          36FFAE8836FFAE8836FFAE8836FFA98232F6745A24AA21180A2F000000020000
          000000000000000000000000000000000000000000000000000000000000261E
          0C37A68335F0B28B39FFB28B39FFB28B39FFB28B39FFB28B39FFB28B39FFB28B
          39FFB28B39FFB28B39FFB28B39FFB28B39FFB28B39FFB28B39FFB28B39FFB28B
          39FFB28B39FFB28B39FFB28B39FFB28B39FFAE8839FE987832DA463617630906
          020C00000000000000000000000000000000000000000000000000000000261E
          0C37A88537F0B58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E
          3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E
          3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFFAA8837F47156
          24A01B160A28010100010000000000000000000000000000000000000000271E
          0D37AB863AF0B8903FFFB8903FFFB8903FFFB8903FFFB8903FFFB8903FFFB890
          3FFFB8903FFFB8903FFFB8903FFFB8903FFFB8903FFFB8903FFFB8903FFFB890
          3FFFB8903FFFB8903FFFB8903FFFB8903FFFB8903FFFB8903FFFB8903FFFB48F
          3EFD927137D33F3117590603010A000000000000000000000000000000002720
          0E37B0883BF0BB9341FFBB9341FFBB9341FFBB9341FFBB9341FFBB9341FFBB93
          41FFBB9341FFBB9341FFBB9341FFBB9341FFBB9341FFBB9341FFBB9341FFBB93
          41FFBB9341FFBB9341FFBB9341FFBB9341FFBB9341FFBB9341FFBB9341FFBB93
          41FFBB9341FFB08C3EF16C562696181408220100000100000000000000002920
          0E37B28B40F0BE9644FFBE9644FFBE9644FFBE9644FFBE9644FFBE9644FFBE96
          44FFBE9644FFBE9644FFBE9644FFBE9644FFBE9644FFBE9644FFBE9644FFBE96
          44FFBE9644FFBE9644FFBE9644FFBE9644FFBE9644FFBE9644FFBE9644FFBE96
          44FFBE9644FFBE9543FFBA8F3FFC8F7A3AC317150A1F00000000000000002920
          0F37B48C43F0C19847FFC19847FFC19847FFC19847FFC19847FFC19847FFC198
          47FFC19847FFC19847FFC19847FFC19847FFC19847FFC19847FFC19847FFC198
          47FFC19847FFC19847FFC19847FFC19847FFC19847FFC19847FFC19847FFC198
          47FFC09645FFC09644FFC4A057F9937D4EAD1310081900000000000000002921
          0F37B79245F0C49B4AFFC49B4AFFC49B4AFFC49B4AFFC49B4AFFC49B4AFFC49B
          4AFFC49B4AFFC49B4AFFC49B4AFFC49B4AFFC49B4AFFC49B4AFFC49B4AFFC49B
          4AFFC49B4AFFC49B4AFFC49B4AFFC49B4AFFC49B4AFFC49B4AFFC39A49FFC298
          46FFC69D4DFFBFA05FE669593979100D07140000000000000000000000002A21
          1037BA9347F0C89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E
          4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E
          4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFFC79C4BFFC79C49FFCCA4
          5BFBA48D58BE38301C4003030104000000000000000000000000000000002B23
          1137BC9649F0CBA150FFCBA150FFCBA150FFCBA150FFCBA150FFCBA150FFCBA1
          50FFCBA150FFCBA150FFCBA150FFCBA150FFCBA150FFCBA150FFCBA150FFCBA1
          50FFCBA150FFCBA150FFCBA150FFCAA04FFFC99F4DFFCDA253FFC8A964EB7566
          4186141109190000000000000000000000000000000000000000000000002B23
          1236C49B50EFCC9F4EFFCC9F4DFFCC9F4DFFCC9F4DFFCC9F4DFFCC9F4DFFCC9F
          4DFFCC9F4DFFCC9F4DFFCC9F4DFFCCA04DFFCDA14FFFCEA251FFCEA352FFCEA3
          52FFCEA352FFCEA351FFCDA150FFCDA150FFD1AC60FCAC9F65C9413A254C0404
          0106000000000000000000000000000000000000000000000000000000001B14
          091FB4965BC9D2B26FEFD2B06CF0D2B06CF0D2B06CF0D2B06CF0D2B06CF0D2B0
          6CF0D2B06CF0D2B06CF0D2B06CF0D2B16DF0D1AF67F4D0A654FFD1A655FFD1A6
          55FFD1A654FFD0A452FFD3A858FFCEB069F0816F48941C190D20010000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00021E160B22302917372F2918372F2918372F2918372F2918372F2918372F29
          18372F2918372F2918372F2918372F2919375E4D2C70D0A155F9D4A858FFD3A6
          56FFD4A656FFD6B062FDB89A6BD34D402A580705020900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003D2F1B48CEA455F7D6A958FFD8AD
          5EFFD6B76EF48E7A4DA1231B1128010100010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003D301C48D0A456F7DCB369FEC3A5
          69DB59492E650A07040D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003E352345D6B473EE9C8554AD2B23
          1431020200020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000013100917463B22500F0C06110000
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
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000010100030507000101010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000010101000305070000
          0101000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000141E2500588BA700365E6F000B
          151B000101010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000010101000B161A00355E6E00588CA60013
          1D24000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000001C313A007DD1F00082D7FA0063
          ADCB00325665000C111600000101000000000000000000000000000000000000
          00000000000000000101000B1215003154650064ACCA0081D6FA0080D0F1001E
          323B000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000121D230077C0E00087DDFF0088
          DEFF0082D8F8006FA7C300344E5B000B0F110000000000000000000000000000
          0000000B0F1100334E5B0070A6C20083D9F8008ADFFF0089DEFF0074C0E10013
          1E23000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000090E100069ACC70089DFFF008B
          DFFF008CE0FF008DE0FF0086D7F50067A2BA00314C560014212600141F260030
          4C550068A4B90086D7F5008EE1FF008DE1FF008CE0FF008BE0FF006AAFC80009
          0E10000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000010405005A92A6008CE0FF008D
          E1FF008EE2FF0090E2FF0090E3FF0091E3FF008DDCF60082CBE30082CBE3008D
          DCF60092E4FF0091E3FF0091E3FF0090E3FF008FE2FF008EE1FF005D94A70003
          0405000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000466F7F008EE1FF0090
          E3FF0091E3FF0092E4FF0093E5FF0094E5FF0094E5FF0095E6FF0095E6FF0095
          E6FF0095E5FF0094E5FF0094E5FF0093E4FF0092E4FF008FE3FF004871810000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000314E58008CDEFA0092
          E4FF0094E5FF0095E6FF0096E6FF0097E7FF0097E7FF0098E7FF0098E7FF0098
          E7FF0098E7FF0097E7FF0097E7FF0096E6FF0095E5FF0091DFFB00334F590000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000001F3138008AD5EF0095
          E6FF0096E7FF0098E7FF0099E8FF009AE8FF009AE9FF009BE9FF009BE9FF009B
          E9FF009AE9FF009AE9FF0099E8FF0098E8FF0097E7FF008BD6F0002032390000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000131E230082CBE10097
          E7FF0099E8FF009AE9FF009BEAFF009CEAFF009DEBFF009DEBFF009EEBFF009E
          EBFF009DEBFF009DEAFF009CEAFF009BE9FF009AE9FF0087CDE2001420240000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000001A272E0089D1E8009A
          E9FF009BEAFF009DEBFF009EEBFF009FECFF00A0ECFF00A0EDFF00A1EDFF00A1
          EDFF00A0EDFF00A0ECFF009FECFF009EEBFF009CEAFF008DD4E9001C282E0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000202004465710097E3FB009C
          EAFF009EEBFF009FECFF00A1EDFF00A2EEFF00A3EEFF00A3EEFF00A3EFFF00A3
          EFFF00A3EEFF00A2EEFF00A2EDFF00A0EDFF009FECFF009AE5FB004567720000
          0202000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000202002A3D450089CADE009CEAFF009E
          ECFF00A0EDFF00A2EEFF00A3EFFF00A5EFFF00A5F0FF00A6F0FF00A6F0FF00A6
          F0FF00A6F0FF00A5F0FF00A4EFFF00A3EEFF00A1EDFF00A0ECFF008CCBDF002C
          3F46000002020000000000000000000000000000000000000000000000000000
          0000000000000000000000000202002B3F480084C5DB009CEAFF009FECFF00A1
          EDFF00A2EEFF00A4EFFF00A6F0FF00A7F1FF00A8F2FF00A9F2FF00A9F2FF00A9
          F2FF00A9F2FF00A8F1FF00A7F1FF00A5F0FF00A4EFFF00A2EEFF00A0ECFF0088
          C9DB002D41490000020200000000000000000000000000000000000000000000
          00000000000000020203002C444B0084C7DE009CEAFF009EEBFF00A0EDFF00A3
          EEFF00A5EFFF00A7F0FF00A8F2FF00AAF3FF00ABF3FF00ACF4FF00ACF4FF00AC
          F4FF00ACF4FF00ABF3FF00A9F2FF00A8F1FF00A6F0FF00A4EFFF00A2EEFF00A0
          ECFF0089CADE002E444C00020303000000000000000000000000000000000000
          000000020303002D484F0085CEE0009BE9FF009DEBFF00A0ECFF00A2EEFF00A4
          EFFF00A7F1FF00A9F2FF00ABF3FF00ACF4FF00ADF5FF00AEF5FF00AFF6FF00AF
          F6FF00AEF5FF00ADF5FF00ACF4FF00AAF3FF00A8F1FF00A6F0FF00A4EFFF00A1
          EDFF009FECFF0088CBE100304750000203030000000000000000000000000002
          0303002E48540082C9E20099E8FF009CEAFF009EECFF00A1EDFF00A4EFFF00A6
          F0FF00A8F2FF00ABF3FF00ADF4FF00AEF5FF00B0F6FF00B1F7FF00B2F7FF00B2
          F7FF00B1F7FF00B0F6FF00AEF5FF00ACF4FF00AAF3FF00A8F1FF00A5F0FF00A3
          EEFF00A0EDFF009EEBFF0088CDE300304C540001030400000000000000000024
          38410485CBE30299E8FF0097E8FF009BEBFF009EECFF00A1EEFF00A4F0FF00A6
          F1FF00AAF3FF00ACF4FF00AFF5FF00B1F7FF00B2F8FF00B4F9FF00B4F9FF00B4
          F9FF00B3F9FF00B2F8FF00B0F6FF00AEF5FF00ACF4FF00A8F2FF00A6F1FF00A2
          EFFF00A0ECFF009CECFF019DEAFF058CD0E400263B4200000000000000000029
          414B0A7BB9CE2B9DD5E62AA8E2F323A9EAFB1BACEEFF13AAF0FF0AABF1FF02AA
          F2FF00AAF4FF00ADF5FF00B0F7FF00B3F8FF00B5F9FF00B6FAFF00B7FBFF00B7
          FBFF00B6FAFF00B4F9FF00B1F8FF00AFF6FF02AEF5FF0AAFF4FF13AEF2FF1BB0
          F1FF23ADECFB2AABE4F32B9FD7E60A7FBACE002B434C00000000000000000002
          0303000C12150018242902273941083D565D1055757F196F95A12387B3BE2CA1
          CED82CB3EBF70CB3F6FF00B1F7FF00B4F9FF00B6FAFF00B8FCFF00BBFCFF00B9
          FCFF00B8FBFF00B5FAFF0CB7F8FF2CB5EDF72AA1CFD92488B4BE197398A11058
          787F083E575E02283B4100192529000C13150002030300000000000000000000
          000000000000000000000000000000000000000000000002030300070A0B0013
          191D08435B612DA6D0DA13B7F8FF00B4F9FF00B8FBFF00BAFDFF00BDFEFF00BD
          FFFF00B8FCFF13BBFAFF2EABD5DB08475E6200131B1D00070A0B000203030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000202033444482FAEE2E900B5FAFF00B8FBFF00BAFDFF00BDFEFF00BC
          FFFF00BAFCFF2EAFE3EA0336474A000002020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000406061A71929A18B8F5FE00B6FBFF00B9FCFF00BAFDFF00B9
          FEFF17BBF8FE1B74969A00040606000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000042635372EB0E1E800B4F9FF00B7FBFF00B8FBFF00B7
          FBFF2FB0E2E90428373900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000506071F73969D16B7F4FE00B3F9FF00B4F9FF14B8
          F7FE1F76979D0005060700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000529373A2FAFE3E900B1F8FF00B1F8FF30AF
          E1EA072A383B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000507082377989F0DB1F4FE0DB1F4FE2378
          9BA0000608080000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000082D393D3CB1E3EA3CB3E1EB082B
          383D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000507080B59787E0B59787F0005
          0808000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000030405000305050000
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
          0000000000000000000003030D1B0E0E334D1B1B627E27278CB03030AFD90B0B
          293B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000004041121101039531D1D
          6885282892B73434BCE83939D3FF3939D7FF3A3AD8FF3A3AD9FF3636C8EB0303
          0C13000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050515213030B2DC3939D3FF3939D7FF3A3A
          D9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF1515505F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001C1C6A823A3AD9FF3A3AD9FF3A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF2B2BA0BD000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000161655683A3AD9FF3A3AD9FF3A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF1D1D6B83000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000007071D2D3A3AD9FF3A3AD9FF3A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3939D7FF2A2A98BE0404
          101A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000023737CBEF3A3AD9FF3A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD8FF3434
          BDE70B0B27360000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000029299AB63A3AD9FF3A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3A
          D9FF3737CAF30C0C2B3B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001B1B687B3A3AD9FF3A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3A
          D9FF3A3AD9FF3535C5EE07071924000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000C0C2D403A3AD9FF3A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF2D2DA6CB000001030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101050A3939D4FA3A3AD9FF3A3A
          D9FF3A3AD9FF2E2EACCA3939D5FB3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF3939D8FF161651670000000000000000000000000001
          0003051406210000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002E2EABC93A3AD9FF3A3A
          D9FF292999B4000000000505141D21217A903939D3F83A3AD9FF3A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF3A3AD9FF3232B7DD0000000100000000000000000A28
          0B3C082009330000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002020798F3A3AD9FF3838
          CEF30606171F00000000000000000000000007071B252C2CA2BF3A3AD9FF3A3A
          D9FF3A3AD9FF3A3AD9FF3A3AD9FF3939D8FF0B0B293A00000000000000001961
          1D77124314590000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000111140533A3AD9FF1A1A
          60710000000000000000000000000000000000000000000000011B1B64763939
          D4FA3A3AD9FF3A3AD9FF3A3AD9FF3A3AD9FF1B1B647A00000000000000002183
          279E28972EBE0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000101060B1C1C687B0000
          0103000000000000000000000000000000000000000000000000000000000E0E
          34413636C8EC3A3AD9FF3A3AD9FF3A3AD9FF242486A100000000000000002592
          2CB035D23EFF1D6A218B00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000007071C263333BDDE3A3AD9FF3A3AD9FF282896B200000000000000002590
          2BAE36D43FFF35D13EFF258A2BB3020903100000000000000000000000000000
          00000000000000000000000000000000000000000000030E041B000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000505131B3131B7D73A3AD9FF262690AB0000000000000000207B
          259536D43FFF36D43FFF35D23EFF2FAF36DF0B2A0D3C00000000000000000000
          000000000000000000000000000000000000030B031532BE3AF0134916600000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000060619233838D2F72020798F00000000000000001451
          186636D43FFF36D43FFF36D43FFF36D33EFF35CA3EFC1E6D228F0107020D0000
          0000000000000000000000000000000000001D6E228E36D33EFF26912CB50000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000272792AC14144E5E00000000000000000412
          051E36D23FFD36D43FFF36D43FFF36D43FFF36D43FFF35D23EFF30B437E6154E
          18680002000600000000000000000410051C33C73CF636D43FFF34CB3DF80207
          020E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001D1D6D800404101900000000000000000000
          000027982DB736D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF35D0
          3EFF30B437E61C66208609240B37217A269D36D43FFF36D43FFF36D33FFF1142
          1458000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000010103E490000000000000000000000000000
          00000A280C3636D23FFD36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D4
          3FFF36D43FFF35D23EFF35CD3EFF35D13EFF36D43FFF36D43FFF36D43FFF2387
          28A9000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000010105080000000000000000000000000000
          0000000000001E74238C36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D4
          3FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF33C5
          3BF2000301070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000002000427992EB836D43FFF36D43FFF36D43FFF36D43FFF36D4
          3FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF35D3
          3EFF0E36104B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000106010A26962DB536D43FFF36D43FFF36D43FFF36D4
          3FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D4
          3FFF207C259C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000100031D71228836D23FFD36D43FFF36D4
          3FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D4
          3FFF31BE39EA0001000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B2F0E3C2DAE34D236D4
          3FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D4
          3FFF35D33EFF0C2C0D3F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000100031E75
          238D36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D4
          3FFF36D43FFF19601D7800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002AA6
          32C836D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF36D4
          3FFF35CD3DF70A270B3300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000F3D124F36D4
          3FFF36D43FFF36D43FFF36D43FFF36D43FFF36D43FFF34CB3DF426952DB4165A
          1A6D0515061F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000012DAE34D236D4
          3FFF36D43FFF36D33FFE2DAF34D31D73228B0D340F4400030107000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000010702102EB235D7248C
          2AA9145018620411051B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
    Left = 295
    Top = 520
    PixelsPerInch = 96
    object tipClose: TdxScreenTip
      Header.Text = 'Close'
      Description.Text = 'Close timesheet detail report'
    end
    object tipPreview: TdxScreenTip
      Header.Text = 'Preview'
      Description.Text = 'Preview timesheet details'
    end
    object tipPrint: TdxScreenTip
      Header.Text = 'Print'
      Description.Text = 'Print timesheet details'
    end
    object tipPDF: TdxScreenTip
      Header.Text = 'PDF'
      Description.Text = 'Export timesheet to PDF'
    end
    object tipExcel: TdxScreenTip
      Header.Text = 'Excel'
      Description.Text = 'Export timesheet to Excel'
    end
    object tipGetCFwdData: TdxScreenTip
      Header.Text = 'Get Carry Forward Data'
      Description.Text = 
        'Fetch data for carry forward items and display in grid format on' +
        '-screen'
      Width = 250
    end
    object tipGetReleaseData: TdxScreenTip
      Header.Text = 'Get Release Data'
      Description.Text = 
        'Fetch data for released items and display in grid format on-scre' +
        'en'
      Width = 250
    end
    object tipRelease: TdxScreenTip
      Header.Text = 'Release'
      Description.Text = 'Release selected cary forward items to specified period'
      Width = 360
    end
    object tipPersistentRecordSelection: TdxScreenTip
      Header.Text = 'Persistent Record Selection'
      Description.Text = 
        'If selected, records stay selected when changing focus to other ' +
        'records. I not, only the selected records is selected when focus' +
        'ing other records.'
      Width = 360
    end
    object tipDataPeriod: TdxScreenTip
      Header.Text = 'Data Period'
      Description.Text = 'Select period for which to get carry forward data'
      Width = 325
    end
    object tipReleasePeriod: TdxScreenTip
      Header.Text = 'Release Period'
      Description.Text = 
        'Select the period into which you want to release the selected ca' +
        'rried forward items.'
      Width = 290
    end
    object tipChangeReleasePeriod: TdxScreenTip
      Header.Text = 'Change Release Period'
      Description.Text = 'Change the release period for the selected items'
      Width = 325
    end
    object tipReverseRelease: TdxScreenTip
      Header.Text = 'Reverse'
      Description.Text = 'Revert selected released items to carry forward status'
    end
  end
  object styHintController: TcxHintStyleController
    Global = False
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
      end
      item
      end>
    HintStyle.ScreenTipActionLinks = <>
    HintShortPause = 0
    HintPause = 0
    HintHidePause = 15000
    Left = 375
    Top = 520
  end
  object dlgPrint: TdxPrintDialog
    ButtonsEnabled = [pdbPrinterProperties, pdbNetwork, pdbPreview, pdbPageSetup]
    ButtonsVisible = [pdbPrinterProperties, pdbNetwork, pdbPageSetup]
    OptionsEnabled = [pdoPrintToFile, pdoAllPages, pdoCurrentPage, pdoPageRange]
    Left = 515
    Top = 520
  end
  object dlgFileSave: TSaveDialog
    Filter = 'Excel Files (*.xlsx)|*.xlsx'
    Left = 455
    Top = 520
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
    Left = 575
    Top = 520
    PixelsPerInch = 96
    object barToolbarCFwd: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Carry Forward Toolbar'
      CaptionButtons = <>
      DockControl = docToolbarCFwd
      DockedDockControl = docToolbarCFwd
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1377
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnClose'
        end
        item
          Visible = True
          ItemName = 'btnToScreen'
        end
        item
          Visible = True
          ItemName = 'btnRelease'
        end
        item
          Visible = True
          ItemName = 'btnOptions'
        end
        item
          Visible = True
          ItemName = 'lblGroupCFwdBy'
        end
        item
          Visible = True
          ItemName = 'cntGroupCFwdBy'
        end
        item
          Visible = True
          ItemName = 'lblSpace3'
        end
        item
          Visible = True
          ItemName = 'lblReleasePeriod'
        end
        item
          Visible = True
          ItemName = 'cntReleasePeriod'
        end
        item
          Visible = True
          ItemName = 'lblSpace2'
        end
        item
          Visible = True
          ItemName = 'cntPersistentSelection'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object barRelease: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Release Toolbar'
      CaptionButtons = <>
      DockControl = docTolbarRelease
      DockedDockControl = docTolbarRelease
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1377
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCloseFormR'
        end
        item
          Visible = True
          ItemName = 'btnGetDataR'
        end
        item
          Visible = True
          ItemName = 'btnReleaseR'
        end
        item
          Visible = True
          ItemName = 'btnReverse'
        end
        item
          Visible = True
          ItemName = 'lblGoupReelaseBy'
        end
        item
          Visible = True
          ItemName = 'cntGoupReleaseBy'
        end
        item
          Visible = True
          ItemName = 'lblSpacer3'
        end
        item
          Visible = True
          ItemName = 'lblChangeToPeriod'
        end
        item
          Visible = True
          ItemName = 'cntChangeToPeriod'
        end>
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
      ScreenTip = tipClose
      AutoGrayScale = False
    end
    object btnToScreen: TdxBarLargeButton
      Action = actGetTimeSheetDataCFwd
      Category = 0
      ScreenTip = tipGetCFwdData
      AutoGrayScale = False
    end
    object btnRelease: TdxBarLargeButton
      Action = actRelease
      Category = 0
      ScreenTip = tipRelease
      AutoGrayScale = False
    end
    object btnOptions: TdxBarLargeButton
      Action = actOptions
      Category = 0
      Visible = ivNever
      AutoGrayScale = False
    end
    object cntReleasePeriod: TdxBarControlContainerItem
      Caption = 'Release to period'
      Category = 0
      Hint = 'Release to period'
      ScreenTip = tipReleasePeriod
      Visible = ivAlways
      Control = lucReleaseCarryForwardToPeriod
    end
    object lblReleasePeriod: TdxBarStatic
      Caption = 'Release to period'
      Category = 0
      Hint = 'Release to period'
      Visible = ivAlways
    end
    object cntPersistentSelection: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      ScreenTip = tipPersistentRecordSelection
      Visible = ivAlways
      Control = cbxPersistentSelection
    end
    object lblSpace2: TdxBarStatic
      Caption = '   '
      Category = 0
      Hint = '   '
      Visible = ivAlways
    end
    object btnCloseFormR: TdxBarLargeButton
      Action = actCloseForm
      Category = 0
      ScreenTip = tipClose
      AutoGrayScale = False
    end
    object btnGetDataR: TdxBarLargeButton
      Action = actGetTimesheetDataRelease
      Category = 0
      ScreenTip = tipGetReleaseData
      AutoGrayScale = False
    end
    object btnReleaseR: TdxBarLargeButton
      Action = actChangeReleasePeriod
      Category = 0
      ScreenTip = tipChangeReleasePeriod
      AutoGrayScale = False
    end
    object btnReverse: TdxBarLargeButton
      Action = actReverseRelease
      Category = 0
      ScreenTip = tipReverseRelease
      AutoGrayScale = False
    end
    object cntChangeToPeriod: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = lucChangeToPeriod
    end
    object lblChangeToPeriod: TdxBarStatic
      Caption = 'Change to period'
      Category = 0
      Hint = 'Change to period'
      Visible = ivAlways
    end
    object lblSpacer3: TdxBarStatic
      Caption = '   '
      Category = 0
      Hint = '   '
      Visible = ivAlways
    end
    object cntGroupCFwdBy: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = lucGroupCFwdBy
    end
    object cntGoupReleaseBy: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = lucGroupReleaseBy
    end
    object lblGoupReelaseBy: TdxBarStatic
      Caption = 'Group By'
      Category = 0
      Hint = 'Group By'
      Visible = ivAlways
    end
    object lblGroupCFwdBy: TdxBarStatic
      Caption = 'Group By'
      Category = 0
      Hint = 'Group By'
      Visible = ivAlways
    end
    object lblSpace3: TdxBarStatic
      Caption = '   '
      Category = 0
      Hint = '   '
      Visible = ivAlways
    end
  end
  object styReadOnly: TcxEditStyleController
    Style.Color = 15132415
    Left = 365
    Top = 465
    PixelsPerInch = 96
  end
  object popReleaseCFwd: TPopupMenu
    Images = img16
    Left = 415
    Top = 380
    object Release1: TMenuItem
      Action = actRelease
    end
    object GetData1: TMenuItem
      Action = actGetTimeSheetDataCFwd
    end
  end
  object popUndoRelease: TPopupMenu
    Images = img16
    Left = 515
    Top = 380
    object GetData2: TMenuItem
      Action = actChangeReleasePeriod
    end
    object Reverse1: TMenuItem
      Action = actReverseRelease
    end
    object GetData3: TMenuItem
      Action = actGetTimesheetDataRelease
    end
  end
end
