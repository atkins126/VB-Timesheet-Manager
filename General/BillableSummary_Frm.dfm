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
    Height = 656
    ExplicitWidth = 1126
    ExplicitHeight = 656
    object docToolbar: TdxBarDockControl [0]
      Left = 11
      Top = 11
      Width = 1087
      Height = 58
      Align = dalNone
      BarManager = barManager
    end
    object grdCarryForwardDetail: TcxGrid [1]
      Left = 39
      Top = 518
      Width = 1031
      Height = 421
      TabOrder = 3
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
    object grdTimesheet: TcxGrid [2]
      Left = 10000
      Top = 10000
      Width = 1031
      Height = 421
      TabOrder = 2
      Visible = False
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
    object grdBillableSummary: TcxGrid [3]
      Left = 11
      Top = 75
      Width = 1087
      Height = 383
      TabOrder = 1
      object viewBillable: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
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
      ControlOptions.OriginalHeight = 383
      ControlOptions.OriginalWidth = 830
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litTimesheet: TdxLayoutItem
      Parent = grpData
      CaptionOptions.Text = 'Timesheet Details'
      CaptionOptions.Visible = False
      Control = grdTimesheet
      ControlOptions.OriginalHeight = 421
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCarryForward: TdxLayoutItem
      Parent = grpData
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
          Visible = True
          ItemName = 'lucFromPeriod'
        end
        item
          Visible = True
          ItemName = 'lucToPeriod'
        end
        item
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
