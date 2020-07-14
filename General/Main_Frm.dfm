inherited MainFrm: TMainFrm
  Caption = 'MainFrm'
  ClientHeight = 752
  ClientWidth = 1455
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  OnClose = FormClose
  OnDestroy = FormDestroy
  ExplicitWidth = 1471
  ExplicitHeight = 791
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Top = 115
    Width = 1366
    Height = 617
    ExplicitTop = 115
    ExplicitWidth = 1366
    ExplicitHeight = 617
    object grdTimesheet: TcxGrid [0]
      Left = 11
      Top = 11
      Width = 1344
      Height = 574
      TabOrder = 0
      object viewTimesheet: TcxGridDBBandedTableView
        PopupMenu = popTimesheet
        OnDblClick = viewTimesheetDblClick
        OnKeyDown = viewTimesheetKeyDown
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeButtonAlignment = fbaLeft
        ScrollbarAnnotations.Active = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewTimesheetCustomDrawCell
        OnFocusedRecordChanged = viewTimesheetFocusedRecordChanged
        OnSelectionChanged = viewTimesheetSelectionChanged
        DataController.DataSource = TSDM.dtsTimesheet
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoMultiSelectionSyncGroupWithChildren]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'TIME_SPENT'
            Column = edtTimeSpent
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'TIME_HOURS'
            Column = edtTimeHours
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'ITEM_VALUE'
            Column = edtItemValue
          end
          item
            Format = '#,##0 Items'
            Kind = skCount
            FieldName = 'ACTIVITY'
            Column = memActivity
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.ExpressionEditing = True
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
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvGroupRow, cbvColumnHeader]
        OptionsView.NoDataToDisplayInfoText = '<No Timesheet data to display>'
        OptionsView.Footer = True
        OptionsView.ShowColumnFilterButtons = sfbAlways
        Bands = <
          item
            Caption = 'General'
          end
          item
            Caption = 'Time Spent'
          end
          item
            Caption = 'Rate/Calc'
          end
          item
            Caption = 'Other'
          end
          item
            Caption = 'Carry Forward/Release'
          end>
        object edtID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#####0'
          Properties.EditFormat = '#####0'
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseThousandSeparator = True
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
        object edtUserID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'USER_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#####0'
          Properties.EditFormat = '#####0'
          Properties.UseDisplayFormatWhenEditing = True
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
        object cbxApproved: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPROVED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.DisplayChecked = 'Yes'
          Properties.DisplayUnchecked = 'No'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          OnCustomDrawCell = cbxApprovedCustomDrawCell
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Approved status'
          MinWidth = 35
          Options.Editing = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 35
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cbxCarryForward: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CARRY_FORWARD'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.DisplayChecked = 'Yes'
          Properties.DisplayUnchecked = 'No'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Carry forward status'
          MinWidth = 40
          Options.Editing = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtPeriod: TcxGridDBBandedColumn
          DataBinding.FieldName = 'THE_PERIOD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 65
          Options.Editing = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtPeriodName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PERIOD_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 70
          Options.Editing = False
          Options.HorzSizing = False
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtDayname: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DAY_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 35
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 35
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtActivityDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd/MM/yyyy'
          Properties.EditFormat = 'dd/MM/yyyy'
          Properties.ImmediatePost = True
          Properties.ReadOnly = True
          Properties.ShowOnlyValidDates = True
          Properties.ShowTime = False
          MinWidth = 90
          Options.Editing = False
          Options.HorzSizing = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object lucCustomer: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = TSDM.dtsCustomerLookup
          Properties.ReadOnly = True
          OnGetDisplayText = lucCustomerGetDisplayText
          MinWidth = 300
          Options.Editing = False
          Options.HorzSizing = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object lucPriceItem: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRICE_LIST_ITEM_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              Width = 250
              FieldName = 'NAME'
            end>
          Properties.ListSource = TSDM.dtsPriceList
          Properties.ReadOnly = True
          MinWidth = 300
          Options.Editing = False
          Options.Filtering = False
          Options.HorzSizing = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object lucActivityType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY_TYPE_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = TSDM.dtsActivityType
          Properties.ReadOnly = True
          MinWidth = 200
          Options.Editing = False
          Options.HorzSizing = False
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object memActivity: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.IncrementalSearch = False
          Properties.ReadOnly = True
          MinWidth = 300
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cbxBillable: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BILLABLE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.DisplayChecked = 'Yes'
          Properties.DisplayUnchecked = 'No'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Billable status'
          MinWidth = 40
          Options.Editing = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 40
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtTimeSpent: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TIME_SPENT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###0.00'
          Properties.EditFormat = '#,###0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          HeaderHint = 'Time spent (Mins)'
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
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtTimeHours: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TIME_HOURS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###0.00'
          Properties.EditFormat = '###0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          HeaderHint = 'Time spent (Hrs)'
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
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cbxAddWork: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IS_ADDITIONAL_WORK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.DisplayChecked = 'Yes'
          Properties.DisplayUnchecked = 'No'
          Properties.ImmediatePost = True
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Additioal work time (Mins)'
          MinWidth = 50
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 50
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtRate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTUAL_RATE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###0.00'
          Properties.EditFormat = '#,###0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          HeaderHint = 'Actual rate value'
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtStdRate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STD_RATE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###0.00'
          Properties.EditFormat = '#,###0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          HeaderHint = 'Standard rate value'
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object lucRateUnit: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RATE_UNIT_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = TSDM.dtsRateUnit
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtItemValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ITEM_VALUE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###0.00'
          Properties.EditFormat = '#,###0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          HeaderHint = 'Item value'
          MinWidth = 80
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 80
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtInvoiceID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INVOICE_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#####0'
          Properties.EditFormat = '#####0'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseThousandSeparator = True
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtInvoiceDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INVOICE_DATE'
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtCreditNoteID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CN_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#####0'
          Properties.EditFormat = '#####0'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
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
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object lucCustomerGroup: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_GROUP_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ListColumns = <>
          Properties.ListSource = TSDM.dtsCustomerGroup
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
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cbxLocked: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LOCKED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.DisplayChecked = 'Yes'
          Properties.DisplayUnchecked = 'No'
          Properties.ImmediatePost = True
          Properties.ReadOnly = True
          Properties.UseAlignmentWhenInplace = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Item lock status'
          MinWidth = 40
          Options.Editing = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object dteModified: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DATE_MODIFIED'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd/MM/yyyy'
          Properties.EditFormat = 'dd/MM/yyyy'
          Properties.ImmediatePost = True
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Visible = False
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object edtDayOrder: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DAY_ORDER'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '###0'
          Properties.EditFormat = '###0'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Visible = False
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          VisibleForCustomization = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object edtDateCarriedForward: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DATE_CARRIED_FORWARD'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd/mm/yyyy'
          Properties.EditFormat = 'dd/mm/yyyy'
          Properties.ReadOnly = True
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtDateReleased: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DATE_RELEASED'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd/mm/yyyy'
          Properties.EditFormat = 'dd/mm/yyyy'
          Properties.ReadOnly = True
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtReleaseToPeriod: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RELEASE_TO_PERIOD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          MinWidth = 65
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object lvlTimesheet: TcxGridLevel
        GridView = viewTimesheet
      end
    end
    object lblCFwdItemColour: TcxLabel [1]
      Left = 32
      Top = 592
      Caption = 'Items carried foward from previous periods'
      Style.HotTrack = False
      Style.TransparentBorder = False
      Transparent = True
    end
    object imgCFwdItemColour: TcxImage [2]
      Left = 11
      Top = 591
      Properties.ReadOnly = True
      Style.Color = 15007690
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 15
      Width = 15
    end
    object litTimesheet: TdxLayoutItem
      Parent = layMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Timesheet'
      CaptionOptions.Visible = False
      Control = grdTimesheet
      ControlOptions.OriginalHeight = 426
      ControlOptions.OriginalWidth = 786
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpLegend: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Legend'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
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
    object litReleasedItemDescription: TdxLayoutItem
      Parent = grpLegend
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblCFwdItemColour
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object ribMain: TdxRibbon [1]
    Left = 0
    Top = 0
    Width = 1455
    Height = 118
    BarManager = barManager
    Style = rs2019
    ColorSchemeName = 'UserSkin'
    Fonts.ApplicationButton.Charset = ANSI_CHARSET
    Fonts.ApplicationButton.Color = clWindowText
    Fonts.ApplicationButton.Height = -11
    Fonts.ApplicationButton.Name = 'Verdana'
    Fonts.ApplicationButton.Style = []
    Fonts.AssignedFonts = [afTabHeader, afGroup, afGroupHeader, afApplicationButton]
    Fonts.Group.Charset = ANSI_CHARSET
    Fonts.Group.Color = 9126421
    Fonts.Group.Height = -11
    Fonts.Group.Name = 'Verdana'
    Fonts.Group.Style = []
    Fonts.GroupHeader.Charset = ANSI_CHARSET
    Fonts.GroupHeader.Color = 11168318
    Fonts.GroupHeader.Height = -11
    Fonts.GroupHeader.Name = 'Verdana'
    Fonts.GroupHeader.Style = []
    Fonts.TabHeader.Charset = ANSI_CHARSET
    Fonts.TabHeader.Color = clWindowText
    Fonts.TabHeader.Height = -11
    Fonts.TabHeader.Name = 'Verdana'
    Fonts.TabHeader.Style = []
    Contexts = <>
    TabOrder = 1
    TabStop = False
    OnTabChanged = ribMainTabChanged
    object tabTimesheet: TdxRibbonTab
      Active = True
      Caption = 'Timesheet'
      Groups = <
        item
          ToolbarName = 'barTimesheet'
        end>
      Index = 0
    end
    object tabReports: TdxRibbonTab
      Caption = 'Reports'
      Groups = <
        item
          ToolbarName = 'barReports'
        end>
      Index = 1
    end
    object tabAdmin: TdxRibbonTab
      Tag = 3
      Caption = 'Admin'
      Groups = <
        item
          ToolbarName = 'barAdmin'
        end>
      Index = 2
    end
  end
  object grdTimesheetBillable: TcxGrid [2]
    Left = 1397
    Top = 189
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
        MinWidth = 64
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
        MinWidth = 64
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
  object btnSelectAll: TcxButton [3]
    Left = 285
    Top = 135
    Width = 85
    Height = 25
    Action = actSelectAll
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object btnSelectNone: TcxButton [4]
    Tag = 1
    Left = 376
    Top = 135
    Width = 85
    Height = 25
    Action = actClearAllSelectedItems
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object sbrMain: TdxRibbonStatusBar [5]
    Left = 0
    Top = 729
    Width = 1455
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Ribbon = ribMain
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object btnPDF: TcxButton [6]
    Left = 1250
    Top = 135
    Width = 75
    Height = 25
    Caption = 'btnPDF'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btnPDFClick
  end
  object edtName: TcxTextEdit [7]
    Left = 1300
    Top = 108
    BeepOnEnter = False
    TabOrder = 7
    Text = 'Christian'
    Width = 120
  end
  inherited styRepository: TcxStyleRepository
    Left = 500
    Top = 235
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Images = img32
    Left = 190
    Top = 350
    object actInvoce: TAction
      Category = 'Invoice'
      Caption = 'Invoice'
      Hint = 'Set invoice no and date'
      ImageIndex = 24
      OnExecute = DoInvoicing
    end
    object actGetTimesheetData: TAction
      Category = 'General'
      Caption = 'Get Data'
      Hint = 'Get timesheet data'
      ImageIndex = 14
      OnExecute = DoGetTimesheetData
    end
    object actLayoutManager: TAction
      Category = 'General'
      Caption = 'Layout Manager'
      Hint = 'Layout manager'
      ImageIndex = 15
      OnExecute = DoLayoutManager
    end
    object actInsert: TAction
      Category = 'System'
      Caption = 'Insert Ins'
      Hint = 'Add a new timesheet item'
      ImageIndex = 6
      OnExecute = DiEditInsertEntry
    end
    object actEdit: TAction
      Tag = 1
      Category = 'System'
      Caption = 'Edit F2'
      Hint = 'Edit selected timesheet item'
      ImageIndex = 7
      OnExecute = DiEditInsertEntry
    end
    object actApprove: TAction
      Tag = 100
      Category = 'Approval'
      Caption = 'Approve'
      Hint = 'Approve selected timesheet items'
      ImageIndex = 20
      OnExecute = DoApprovalStatus
    end
    object actUnApprove: TAction
      Tag = 101
      Category = 'Approval'
      Caption = 'Un-Approve'
      Hint = 'Un-approve selected timesheet items'
      ImageIndex = 21
      OnExecute = DoApprovalStatus
    end
    object actDelete: TAction
      Tag = 2
      Category = 'System'
      Caption = 'Delete Del'
      Hint = 'Delete selected timesheet item'
      ImageIndex = 8
      OnExecute = DoDeleteEntry
    end
    object actRefresh: TAction
      Tag = 3
      Category = 'System'
      Caption = 'Refresh'
      Hint = 'Refresh timesheet data'
      ImageIndex = 11
      OnExecute = DoRefresh
    end
    object actExit: TAction
      Tag = 4
      Category = 'System'
      Caption = 'Exit'
      Hint = 'Exit Timesheet Manager'
      ImageIndex = 0
      ShortCut = 32883
      OnExecute = DoExitTimesheetManager
    end
    object actPreview: TAction
      Category = 'Reports'
      Caption = 'Preview'
      Hint = 'Preview timesheet report on screen'
      ImageIndex = 2
      ShortCut = 16466
      OnExecute = DoPrint
    end
    object actPrint: TAction
      Tag = 1
      Category = 'Reports'
      Caption = 'Print'
      Hint = 'Print timesheet report'
      ImageIndex = 3
      ShortCut = 16464
      OnExecute = DoPrint
    end
    object actPDF: TAction
      Category = 'Reports'
      Caption = 'PDF'
      Hint = 'Export timesheet data in PDF format'
      ImageIndex = 5
      ShortCut = 16452
      OnExecute = DoPDF
    end
    object actExcel: TAction
      Category = 'Reports'
      Caption = 'Excel'
      Hint = 'Export timesheet data in Excel format'
      ImageIndex = 4
      ShortCut = 16453
      OnExecute = DoExcel
    end
    object actTimsheetDetail: TAction
      Category = 'Reports'
      Caption = 'Timsheet Detail'
      Hint = 'Timesheet detail report'
      ImageIndex = 1
      OnExecute = DoTimeSheetDetail
    end
    object actOptions: TAction
      Category = 'System'
      Caption = 'Options'
      Hint = 'User options'
      ImageIndex = 13
      OnExecute = DoOptions
    end
    object actCopyCell: TAction
      Category = 'System'
      Caption = 'Copy Cell Content'
      Hint = 'Copy selected cell content'
      ImageIndex = 33
      ShortCut = 16451
      OnExecute = DoCopyCell
    end
    object actCopyRecord: TAction
      Tag = 1
      Category = 'System'
      Caption = 'Copy Record'
      Hint = 'Copy selected record'
      ImageIndex = 34
      ShortCut = 16466
      OnExecute = DoCopyCell
    end
    object actRefreshLookupTables: TAction
      Category = 'System'
      Caption = 'Refresh Lookups'
      Hint = 'Refresh lookup tables'
      ImageIndex = 18
      OnExecute = DoRefreshLookupTables
    end
    object actBillableSummary: TAction
      Category = 'Reports'
      Caption = 'Billable Summary'
      Hint = 'Billable summary report'
      ImageIndex = 15
      OnExecute = DoBillableSummary
    end
    object actActivitySummary: TAction
      Category = 'Reports'
      Caption = 'Activity Summary'
      Hint = 'Activity summary report'
      ImageIndex = 16
      OnExecute = DoActivitySummary
    end
    object actBilable: TAction
      Tag = 110
      Category = 'Billable'
      Caption = 'Billable'
      Hint = 'Set selected timesheet items as billable'
      ImageIndex = 22
      OnExecute = DoBillable
    end
    object actNonBillable: TAction
      Tag = 111
      Category = 'Billable'
      Caption = 'Non Billable'
      Hint = 'Set selected timesheet items as non-billable'
      ImageIndex = 23
      OnExecute = DoBillable
    end
    object actUnInvoice: TAction
      Tag = 121
      Category = 'Invoice'
      Caption = 'Un-Invoice'
      Hint = 'Un-Invoice seleted timesheet item(s)'
      ImageIndex = 25
      OnExecute = DoUnInvoice
    end
    object actCarryForward: TAction
      Tag = 130
      Category = 'Carry Forward'
      Caption = 'Carry Items Forward'
      Hint = 'Set selected timesheet items as carried forward'
      ImageIndex = 27
      OnExecute = DoCarryForward
    end
    object actCarryForwardManagaer: TAction
      Tag = 131
      Category = 'Carry Forward'
      Caption = 'Carry Forward Manager'
      Hint = 'Launch carry forward managaer'
      ImageIndex = 28
      OnExecute = DoReleaseCarryForwardManager
    end
    object actMonthlyBilling: TAction
      Category = 'Reports'
      Caption = 'Monthly Billing'
      Hint = 'Monthly billing summary report'
      ImageIndex = 26
      OnExecute = DoMonthlyBilling
    end
    object actSelectAll: TAction
      Tag = 5
      Category = 'System'
      Caption = 'Select All'
      Hint = 'Select all timesheet items'
      OnExecute = DoSelectAllTimesheetItems
    end
    object actClearAllSelectedItems: TAction
      Tag = 6
      Category = 'System'
      Caption = 'Clear All'
      Hint = 'Clear all selected timesheet items'
      OnExecute = DoSelectAllTimesheetItems
    end
    object actCustomerContactInfo: TAction
      Category = 'Customer'
      Caption = 'Customer Contact Info'
      ImageIndex = 38
      OnExecute = DoCustomerContactInfo
    end
    object actDirectorLink: TAction
      Category = 'Customer'
      Caption = 'Directors for this customer'
      ImageIndex = 39
      OnExecute = DoDirectorlink
    end
    object actInvoiceSchedule: TAction
      Category = 'Invoice'
      Caption = 'Invoice Schedule'
      ImageIndex = 40
      OnExecute = DoInvoiceList
    end
    object actdirecorOfCompany: TAction
      Category = 'Customer'
      Caption = 'Director of Company'
      ImageIndex = 41
      OnExecute = DoDirectorOfCompany
    end
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    Left = 350
    Top = 230
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
    DesignInfo = 15073460
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
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000001313131E2E2E
          2E483B3B3B5C434343694A4A4A734D4D4D795050507D525252805151517F4F4F
          4F7C4D4D4D7848484870414141663838385729292940090909101414141F9C9C
          9CCABBBBBBEFBFBFBFF4C2C2C2F7C3C3C3F8C5C5C5F9C5C5C5F9C5C5C5F9C5C5
          C5F9C3C3C3F8C2C2C2F6BEBEBEF3BABABAED969696C20C0C0C122C2C2C46CDCD
          CDFFDADADAFFCDCDCDFFDEDEDEFFCFCFCFFFDFDFDFFFD8D8D8FFD8D8D8FFDFDF
          DFFFCFCFCFFFDDDDDDFFCDCDCDFFDADADAFFCDCDCDFF2D2D2D423030304BCBCB
          CBFFD2D2D2FFA6A6BFFF6767B4FF8282B4FFD6D6D6FFD0D0D0FFD0D0D0FFD6D6
          D6FFC8C8C8FFD5D5D5FFC5C5C5FFD2D2D2FFCACACAFF313131473030304BCDCD
          CDFFB3B3CBFF6060B2FFD0D0D6FF9898C4FF8181C1FFD3D3D3FFD3D3D3FFDADA
          DAFFCBCBCBFFD8D8D8FFC9C9C9FFD6D6D6FFCCCCCCFF323232473131314BCECE
          CEFF7A7ABFFFC3C3C8FFD9D9D9FFCCCCCCFF6969BCFFD4D4D4FFD4D4D4FFDBDB
          DBFFCCCCCCFFD9D9D9FFCACACAFFD7D7D7FFCDCDCDFF323232473131314BCECE
          CEFFBABAD0FFA5A5C5FFA6A6CAFF8585BDFF8989C5FFD5D5D5FFD5D5D5FFDCDC
          DCFFCCCCCCFFDADADAFFCACACAFFD7D7D7FFCECECEFF323232473131314BD0CE
          CAFFDBD4C8FFCDC6BCFF9891B4FF9C96AEFFDED7CBFFD6D0C5FFD6D0C5FFDED7
          CBFFCEC8BEFFDDD5CAFFCDC7BCFFDBD4C8FFD0CECAFF323232473131314BD8D5
          D2FFDDD1BEFFD2C7B6FFDED2BEFFD3C8B7FFDFD3BFFFD9CEBBFFD9CEBBFFDFD3
          BFFFD3C8B7FFDED2BEFFD2C7B6FFDDD1BEFFD7D5D2FF323232471515254B5E5E
          A9FF5F5FAAFF6060AAFF6161ABFF6161ACFF6262ACFF6262ACFF6262ACFF6262
          ACFF6161ABFF6161ABFF6060AAFF5F5FA9FF5E5EA8FF1616264702021E4B0D0D
          8DFF0D0D8DFF0D0D8DFF0D0D8DFF0D0D8DFF0D0D8DFF0D0D8DFF0D0D8DFF0D0D
          8DFF0D0D8DFF0D0D8DFF0D0D8DFF0D0D8DFF0D0D8DFF03031F470303214B1111
          99FF111199FF111199FF111199FF111199FF111199FF111199FF111199FF1111
          99FF111199FF111199FF111199FF111199FF111199FF030322470404244B1313
          A5FF1313A5FF1313A4FF4A4AB0FF3636ABFF1313A5FF1313A5FF1313A5FF1313
          A5FF4040AEFF4242AFFF1313A5FF1313A5FF1313A5FF04042547080826492020
          B5FF1717B0FF3333B8FFEDEDEDFFC0C0E0FF1717B0FF1717B0FF1717B0FF1717
          B0FFE4E4ECFFEAEAEEFF1717B0FF1717B0FF2020B5FF080827450404060D2F2F
          8CB43333A8D34E4EB2D9F6F6F6FFCBCBE5F63535A8D33333A8D33333A8D33636
          A8D3EBEBF1FCF2F2F4FE3737A8D33333A8D32E2E8AB10303060B000000000000
          00000000000009090C12C3C3C3D28D8D8F9A0000000000000000000000000000
          0000ADADADBCB2B2B2C200000000000000000000000000000000}
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
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000F744558745469746C650075703B666F6C64657203118AA0000002F6
          49444154785EA58C5F681C551487BF999DC44D77A40AFE096DB0A0C6EE4369A4
          A129124D42A4482458252F2AB5D454B0F8D052845A9582D217C10A16B251B491
          528A3441AB42D1425B9414046B131B63D7C4268B4936660DD95DB79BCCCECC9D
          7B8F25DB17E9A31F7CE7770E077E88C86D02BCDADF5035D50060EDF970FD4BDD
          87DDDD80DDF5D61AB6BF11A7F3F538B8AE6BDF34764BE756DAAFF4AD6374EA3B
          00EBF923F7351E38DE54DE75F4C195F6BD751B016BE4FA59DA0FC4712E1FDB76
          D1B6E94000400CACF8FAC58E4357065F7B0A936C5B537B47C23EB9FDD15E37D2
          21FDF9774FDDBF31D6D6DCD8EDB7EDAB152B7DBC5392BB4F5045D04199EB436F
          E67F9CA86C19FAC52EDCDD3E7AF889A6670F3EF9D816945EE1DCF7639CBDF4E5
          FBC37D95B781C81AFFA84336EDE983308B188D6519221527979E66BA38CB377F
          9FE7E5AEBD04F1318C0896F730A9D303E6B75F279E1E39155E7074644034E800
          CB442011B1D85A12C916BE184AF14CEB2E96CC79ECC0592D08F40FF474EEB0E7
          E6670736B4462D8E51BA5A10F9A03D8CF2D0F1068E7D75884D0FB451490CE37B
          0B800D18421D519328D2DDDAB3FE9399939F5A97DF7B5CB6EEFB00298D919FB8
          C23FF38B24923DBCF0792F22AC7AE7DA18BD3B5B2807450607FFA054D440F5E7
          A8505329E40817329472CB3CF4DC11C4B99773EF4CA38DC2AF54D8D9DF4CA07C
          421D22229CD97F114BF964AF8ECC3A3AD094FF9AA1343945A2A109094BF8BF9F
          06D1600CF65DAD6823F82A4045D1EAEE0439B21706488FCE9D7094D2E4673278
          8B05EA9B3710E6C6D12B45446B8C682C37609DD3C8C7A96B1860737D124B852C
          4D2F726DDE3BE3A820A290C950571BA7C6D1F87357D1DE0D108D98881A7781A3
          3B0EA25404627062366AE94F0AC54A3AF5533EE354BC10C9E5B867F323F80B69
          827C16B4418C468C4195BF468CACDE160625C2ECD432F995E85B4039DE72F433
          EAC6D6C94B234C0E8388805453000C0088548711509164C77395CF80D0725DB7
          0EA8016C6EC7E2BF08A0007FA0AB5E035822C2FFE15F8752B4E0E48162E60000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000171717243B3B
          3B5C4A4A4A74535353825B5B5B8E5C5C5C8F6464649C6565659E6565659E6464
          649C5C5C5C8F5B5B5B8E535353824A4A4A743B3B3B5C171717240808080F1D1D
          1D2D737373A59F9F9FDEA2A2A2E2A8A8A8EAA8A8A8EAA8A8A8EAA8A8A8EAA8A8
          A8EAA8A8A8EAA2A2A2E29F9F9FDE787878AC1D1D1D2D0909090F000000000000
          00009D9D9DCFC3C3C3FFBBB8B2FFBBB7B1FFBBB7B1FFBBB7B1FFBBB7B1FFBBB7
          B1FFBBB7B1FFBCB9B3FFC3C3C3FFA6A6A6DB0000000000000000000000000000
          0000A0A0A0CFC6C6C6FFC2C1C0FF70A4D1FFBBBEC1FFC0BEBBFFBEBBB6FFBEBB
          B6FFBEBBB6FFBFBDB8FFC6C6C6FFAAAAAADB0000000000000000000000000000
          0000A5A5A5CFCCCCCCFF91BAD8FF1C99ECFF46A5E4FFC7C6C4FFC2C0BBFFC2C0
          BBFFC0BEB9FFC2C0BCFFCCCCCCFFAFAFAFDB0000000000000000000000000000
          0000A9A9A9CFD1D1D1FF9BC2DCFF0CA0F5FF69B6E6FFC6C4C1FFBAB6AEFFBAB6
          AEFFD0D0D0FFD1D1D1FFD1D1D1FFB3B3B3DB0000000000000000000000000000
          0000ADADADCFD6D6D6FFC8CED3FF66BCE6FFB2CAD7FFD2D1D0FFD2D1D0FFD2D1
          D0FFD2D1D0FFD3D2D1FFD6D6D6FFB7B7B7DB0000000000000000000000000000
          0000B1B1B1CFDADADAFFC4C0BAFF9BAFBEFFC3C0BAFFC3C0BAFFC4C0BAFFC4C0
          BAFFC4C0BAFFC6C3BDFFDADADAFFBBBBBBDB0000000000000000000000000000
          0000B4B4B4CFDEDEDEFFAFCCE2FF259AECFF79B9E6FFD0CECAFFC0BCB4FFC0BC
          B4FFC0BCB4FFC5C2BBFFDEDEDEFFBEBEBEDB0000000000000000000000000000
          0000B7B7B7CFE2E2E2FFADCFE8FF1BA3F3FF6CBAEDFFD3D0CDFFC1BDB5FFC1BD
          B5FFE1E1E0FFE2E2E2FFE2E2E2FFC2C2C2DB0000000000000000000000000000
          0000B9B9B9CFE5E5E5FFC2DAE9FF2DB0F8FF91CCEEFFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFC4C4C4DB0000000000000000000000000000
          0000BCBCBCCFC3D7E5FF9CC4E1FF95C0E2FF9CC4E1FF9CC4E1FF9CC4E1FF9CC4
          E1FF9CC4E1FF9CC4E1FFC3D7E5FFC7C7C7DB0000000000000000000000000000
          0000BEBEBECF76B6E4FF1589DDFF1589DDFF1589DDFF1589DDFF1589DDFF1589
          DDFF1589DDFF1589DDFF76B6E4FFC8C8C8DB0000000000000000000000000000
          0000BFBFBFCFAAD1ECFF71BCEDFF71BCEDFF71BCEDFF71BCEDFF71BCEDFF71BC
          EDFF71BCEDFF72838EFF727475FE3232326A0000000000000000000000000000
          0000C0C0C0CFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFF6B6B6BFE2424246A000000000000000000000000000000000000
          000087878792C1C1C1CFC1C1C1CFC1C1C1CFC1C1C1CFC1C1C1CFC1C1C1CFC1C1
          C1CFBFBFBFCF2626266A00000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000161616223C3C
          3C5F474747714E4E4E7D5656568A565656895F5F5F986060609A6060609A5F5F
          5F98565656895656568A4E4E4E7D474747713C3C3C5F151515220808080D1B1B
          1B28808080ABB4B1B3E3B3B1B3E4BBB8BAEDBBB8BAECBAB8B9ECBBB8BAECBAB8
          B9ECBBB9BAEDB3B2B3E4B4B2B3E3828282AD1A1A1A270808080D000000000000
          0000D0CECFDDBFDBCCFFBFDECDFFC0DECEFFB6D7C7FFC8DDD4FFB8D8C7FFC2D9
          CCFFC1D8CCFFC1D8CCFFBBD7C8FFD3D1D2E10000000000000000000000000000
          0000CFCDCEDBBAE5CDFFDBFDEBFFDDFFEDFFA7C9B4FFA3AA9DFFA3C5AFFFE8E2
          E6FFE6E1E3FFE8E1E5FFC0D6CBFFD1D1D1DF0000000000000000000000000000
          0000D3CFD1DBA8D7BEFFB5E1C9FFB6E1CBFF9FD1B7FFC4DDD0FFA1D1B8FFBEDB
          CCFFBFDCCDFFC1DCCEFFA7D2BAFFD5D2D4DF0000000000000000000000000000
          0000D4D0D2DBBDE5CFFFDCFAEBFFDCFCECFFBCD8CAFFF3E9EEFFC1DBCEFFC8CA
          C4FFACB5AAFFADB4AAFFBBD3C5FFD7D4D6DF0000000000000000000000000000
          0000D7D3D5DBA7D8BFFFB2E2C9FFB4E2C9FFA0D1B6FFC1DACEFFA2D2B8FFB4D2
          C1FFADCEBAFFAFCEBAFFA4D1B9FFD9D7D8DF0000000000000000000000000000
          0000D8D5D6DBB3DDC6FFC8EDDAFFC9EEDBFFAFD7C2FFDFE7E2FFB4D9C6FFBDCD
          C1FFAABFB0FFABBFB0FFAFD2C0FFDBD8DADF0000000000000000000000000000
          0000DBD6D9DBB3E1C8FFC8F1DBFFCAF3DDFFA6CEB7FFAFBFB1FFA5CBB5FFE0E8
          E4FFDEE7E3FFE0E8E4FFBBDACAFFDCDADBDF0000000000000000000000000000
          0000DBD8DADBA9D8BFFFB3E1C8FFB5E2CAFF9ACCB1FFA6C7B3FF9ACBB0FFC2DE
          D0FFC4E0D1FFC5E1D2FFA8D5BDFFDEDBDDDF0000000000000000000000000000
          0000DBD8DADBBCE6D0FFDBFBEBFFDBFCEBFFC0DECEFFFDF2F8FFC6E1D3FFC8CD
          C5FFAAB4A7FFABB3A7FFBFD6C8FFDEDCDEDF0000000000000000000000000000
          0000DBDADBDBBCDECCFFC6E6D4FFC7E7D6FFB4D7C5FFD5E2DBFFB6D8C6FFD3E4
          DCFFD7E5DEFFD8E5DFFFBCDCCBFFDFDDDFDF0000000000000000000000000000
          0000DBDADBDBC3E0CFFF90D2ADFF94D3B0FF96D4B2FF94D4B0FF96D4B2FF94D4
          B0FF94D4B0FF88D8ADFFC4EAD5FFE5E5E5E50000000000000000000000000000
          0000DBDBDBDB72D3A4FF09BC65FF12BE6AFF12BE6AFF12BE6AFF12BE6AFF12BE
          6AFF0BC469FF737B77FF6C6A6CFF333333640000000000000000000000000000
          0000DEDCDEDEB8E6D3FF89E2BCFF8EE2BEFF8EE2BEFF8EE2BEFF8EE2BEFF8EE2
          BEFF92EEC7FF615C5EFF25252565000000000000000000000000000000000000
          000096969698C5C1C2CFC5BFC1CCC5BFC1CCC5BFC1CCC5BFC1CCC5BFC1CCC5BF
          C1CCD1CCCFD11D1C1C6100000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000001
          01010014252D00253D4800253D4800253D4800253D4800253D4800253D480025
          3D4800253D4800253D4800253D480018262E0000020200000000000000000006
          080A00599BB70085D9F70087DCF70088DFF70089E0F70089E0F70089E0F70089
          E0F70089E0F70088DDF70086DAF70064A2BE00070B0E00000000000000000006
          0A0C0065A8C30283D3FF156391FF14608CFF125F8CFF105C8CFF0F5A88FF0D59
          86FF0C5785FF0A5684FF017ECCFF006BB1CB00090E1100000000000000000006
          0A0C0069AAC3008EE3FF0582CCFF0385D0FF0385D0FF0384CEFF0283CDFF0086
          D6FF0183D1FF0181CEFF008CE0FF006FB1CB00090F1100000000000000000006
          0A0C006FADC3038DDAFF156390FF12618CFF0F5D8BFF0D5A87FF086396FF0096
          ECFF0098EFFF0096EBFF0094E7FF0073B5CB00090F1100000000000000000006
          0A0C0073B0C30097E7FF0984C2FF0884C4FF0785C4FF0684C2FF0680BEFF057C
          BAFF0577B3FF0188CFFF0098EAFF0077B5CB000A0F1100000000000000000008
          0A0C0076B0C3009BE7FF0B81BCFF0981BCFF0881BEFF0880BDFF077EBBFF067A
          B6FF0674AEFF0389CCFF009DEDFF007BB8CB000A0F1100000000000000000008
          0C0C0079B3C3019CE5FF13729DFF126D98FF0F6D98FF0D6A95FF0A6794FF086C
          9BFF00A1EEFF00A5F5FF00A2F0FF007EBCCB000A0F1100000000000000000008
          0C0C007CB5C300A8F3FF0598DAFF039BDEFF039BDFFF029CDEFF019ADEFF0199
          DCFF00A5ECFF00A0E7FF00A7F1FF0083BECB000B101100000000000000000008
          0C0C007FB7C301A4E8FF15729AFF137097FF126F97FF116D96FF0F6B94FF0E68
          90FF0D638AFF0B5F86FF019BDDFF0086C1CB000B101100000000000000000009
          0C0C0083BAC300AFF4FF0993CAFF0894CBFF0794CBFF0693CAFF0592C8FF0392
          C9FF00B3FDFF00B6FFFF00B4FBFF008BC3CB000B101100000000000000000009
          0C0C0087BDC300B3F7FF0B96CAFF0896CBFF0795CDFF0694CCFF0593CAFF0393
          CBFF00BAFFFF00C1FFFF00BFFFFF0093CACB000C101100000000000000000009
          0C0C008CC0C301B0EFFF157A9DFF14769AFF137599FF107498FF0F7197FF0E6F
          93FF0C7093FF0665AAFF045CAEFF005D99C7000A0C0E00000000000000000009
          0C0C008EC1C300BDFFFF02B4F4FF01B6F6FF00B5F6FF00B6F6FF01B6F7FF00B8
          F7FF01B1F2FF05237BFF024094FF007DB3C300090C0C00000000000000000008
          0A0A0087B5B700BEF6F700BFF6F700BFF6F700BFF6F700BFF6F700BFF6F700C1
          F6F700B7F3F7004F98F700B3EFF7008AB6B700080A0A00000000000000000001
          0101001F2C2D0036474800364748003647480036474800364748003647480036
          474800364548002D3F48003A474800212C2D0001010100000000}
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
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E483232327B3232327B3232327B3232
          327B3232327B3232327B3232327B3232327B2323235100000000000000000000
          00000000000000000000000000006D6D6EAACDCECFFFCDCECFFFCDCECFFFCDCE
          CFFFCDCECFFFCDCECFFFCDCECFFFCDCECFFF828384B800000000000000004343
          4381717272CA717172CA717172CAA3A3A4EDD1D1D2FFCCCDCDFFCCCDCDFFCCCD
          CDFFCCCDCDFFCCCDCDFFCFCFD0FFD3D3D4FF898A8AB800000000000000007D7D
          7DB1CDCDCEFFCACACBFFC9CACBFFC6C6C7FFD5D5D6FFD1D1D2FFD1D1D2FFD1D1
          D2FFD1D1D2FFD1D1D2FFD1D1D2FFD7D7D8FF8C8C8CB800000000000000008181
          81B1D0D0D1FFCACACAFFCACACAFFC8C9C9FFD8D8D9FFD0D0D1FFD0D0D1FFD0D0
          D1FFD0D0D1FFD1D1D2FFD5D5D6FFDBDBDCFF8F8F8FB800000000000000008383
          84B1D9D9DAFFD6D6D7FFD6D6D7FFCFCFD0FFDFDFE0FFD9D9DAFFD9D9DAFFD9D9
          DAFFD9D9DAFFD9D9DAFFD9D9DAFFE0E0E1FF929292B800000000000000008585
          86B1DADADBFFD2D2D3FFD2D2D3FFD1D1D1FFE1E1E2FFD8D8D8FFD8D8D8FFD8D8
          D8FFD8D8D8FFD8D8D8FFDCDCDDFFE4E4E5FF949595B800000000000000008888
          88B1E1E1E2FFDBDBDCFFDBDBDCFFD6D6D7FFE8E8E9FFE1E1E2FFE1E1E2FFE1E1
          E2FFE1E1E2FFE1E1E2FFE6E6E7FFECECEDFF979798B800000000000000008A8A
          8AB1E6E6E7FFE0E0E0FFDFDFE0FFDADADBFFE9E9EAFFDEDEDEFFDEDEDEFFDEDE
          DEFFDEDEDEFFDEDEDEFFD7D7D7FFC9C8C8FF888888B600000000000000008C8C
          8DB1E8E8E8FFDDDDDDFFDCDCDDFFDBDBDCFFEFEFF0FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE0E0E0FFD7D7D7FFC2C2C1FB2A2A2A4700000000000000008E8E
          8EB1ECECEDFFE1E1E1FFE1E1E1FFDFDFDFFFF0F0F0FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE1E1E1FFEEEEEEFE484848690000000000000000000000008F8F
          8FB1F1F1F1FFE7E7E8FFE7E7E8FFE3E3E3FFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
          FBFFFBFBFBFFE7E7E7FB4B4B4B68000000000000000000000000000000009191
          91B1F9F9F9FFF6F6F6FFF6F6F6FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
          F2FF9A9A9ABF1919192500000000000000000000000000000000000000006E6F
          6F99C9C9C9E9C9C9C9E9C9C9C9E9C9C9C9E9C9C9C9E9C9C9C9E9C9C9C9E9C9C9
          C9E96E6E6E970000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000030416000A0F3300121A4700192355001E
          2B5F00202E630025356A012C3E74000A0F300000000000000000000000000000
          0003000D133A00415E8C0099D9E401B0F9FF01B2FBFF01B3FDFF00AEF7FF03B1
          F9FF1AC1FDFF26C9FFFF27CAFFFF12AAE3ED000000010000000000000000005F
          87A900ADF7FF03B2FAFF08B8FFFF0AB9FFFF0AB9FFFF0AB9FFFF04B0F8FF02B0
          F9FF11B9F8FF16BBF8FF17BCF8FF0CA6E2EE00000005000000000000000001A1
          E3EC06B5FCFF0CBAFEFF10BDFFFF13BEFFFF14BFFEFF13BEFFFF06B2F7FF02B1
          FAFF15BFFEFF24C8FFFF26C9FFFF24C7FDFF01334777000000000000000005A3
          E5ED0FBCFFFF15BFFFFF19C2FFFF1CC3FEFF15BCFAFF0BB3F5FF05AEF4FF01B1
          FAFF13BEFDFF22C6FEFF23C7FDFF1FC3FBFF01364D7B000000000000000009A7
          E6EE16C0FFFF1DC4FFFF22C7FFFF24C8FFFF25C9FFFF21C5FDFF03AAEFFF00AF
          F8FF0AB5F9FF16BCF8FF1ABFF9FF1DC1FAFF066C94B200000000000000000CA9
          E7EF1DC4FFFF24C8FFFF26C9FFFF27CAFFFF27CAFFFF27CAFFFF0EB5F6FF01B3
          FEFF15BFFFFF25C9FFFF27CAFFFF27CAFFFF10A0D7E100000000000000000DA4
          DDE724C8FFFF26C9FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF0FB5F4FF00AC
          F5FF08B3F8FF12B9F8FF16BBF8FF0DACEBF700141D400000000000000000001A
          26500B87B7CC1FC2FAFE27CAFFFF27CAFFFF27CAFFFF27CAFFFF08B2F6FF04B6
          FFFF1DC4FFFF26C9FFFF27CAFFFF20C4FCFF000E143B00000000000000000000
          000000000000000F163A0A7EABC523C7FDFF27CAFFFF27CAFFFF1CC0FAFF0083
          BCCE0AA6E4ED16BAF7FE18BBF7FE0C92C7D70001020F00000000000000000000
          0000000000000000000000000002034F6D9624C7FDFF27CAFFFF24C7FDFF0018
          2351000000000000000300000003000000000000000000000000000000000000
          0000000000000000000000000000000000040F95C7D927CAFFFF27CAFFFF044A
          6793000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000023C548527CAFFFF27CAFFFF0D91
          C2D2000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000026376C27CAFFFF27CAFFFF13A7
          DFE8000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000023316626C9FEFF21C4FCFF0240
          5B83000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000102100027386A00161F490000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000102100026366A00151E4A0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000023316626C9FEFF21C4FCFF023F
          5A83000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000026366C27CAFFFF27CAFFFF13A7
          DFE8000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000023B538527CAFFFF27CAFFFF0D91
          C3D2000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000040F94C7D927CAFFFF27CAFFFF044B
          6793000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000002034D6C9624C7FDFF27CAFFFF24C7FDFF0018
          2351000000000000000300000003000000000000000000000000000000000000
          000000000000000E153A0A7DAAC523C7FDFF27CAFFFF27CAFFFF1CC0FAFF0083
          B9CE0AA6E4ED16BAF7FE18BBF7FE0C91C4D60001020F0000000000000000001A
          24500B86B5CC1FC2FAFE27CAFFFF27CAFFFF27CAFFFF27CAFFFF08B2F6FF04B6
          FFFF1DC4FFFF26C9FFFF27CAFFFF20C4FCFF000E143A00000000000000000DA4
          DDE724C8FFFF26C9FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF0FB5F4FF00AC
          F5FF08B3F8FF12B9F8FF16BBF8FF0DACEBF700141D4000000000000000000CA9
          E7EF1DC4FFFF24C8FFFF26C9FFFF27CAFFFF27CAFFFF27CAFFFF0EB5F6FF01B3
          FEFF15BFFFFF25C9FFFF27CAFFFF27CAFFFF10A0D6E1000000000000000009A7
          E6EE16C0FFFF1DC4FFFF22C7FFFF24C8FFFF25C9FFFF21C5FDFF03AAEFFF00AF
          F8FF0AB5F9FF16BCF8FF1ABEF9FF1DC1FAFF066C95B1000000000000000005A3
          E5ED0FBCFFFF15BFFFFF19C2FFFF1CC3FEFF15BCFAFF0BB3F5FF05AEF4FF01B1
          FAFF13BEFDFF22C7FEFF23C7FDFF1FC3FBFF01364C7B000000000000000001A1
          E3EC06B5FCFF0CBAFEFF10BDFFFF13BEFFFF14BFFEFF13BEFFFF06B2F7FF02B1
          FAFF15BFFEFF24C8FFFF26C9FFFF24C7FDFF013348770000000000000000005F
          88A900ADF7FF03B2FAFF08B8FFFF0AB9FFFF0AB9FFFF0AB9FFFF04B0F8FF02B0
          F9FF11B9F8FF16BBF8FF17BCF8FF0CA6E2EE0000000500000000000000000000
          0003000E143A0043608C0099DAE401B0F9FF01B2FBFF01B3FDFF00AEF7FF03B1
          F9FF1AC1FDFF26C9FFFF27CAFFFF12ABE3ED0000000100000000000000000000
          000000000000000000000000000000030416000B103300131B47001A2556001F
          2C5F002130630026376A012D4074000B10310000000000000000}
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
          0000000000000000000000000000000101010008060B010A060E010A060E0004
          0206000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000005150F1A1B905FAD18A067C51C9963C5104E
          3069000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000071F162521BE84E41FD086FF27C980FF176C
          428F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000061F172521BE84E41FD086FF27C980FF176C
          428F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000071F172522BE84E41FD086FF27C980FF166E
          428F000000000000000000000000000000000000000000000000000000000000
          000000000000000000000005030707281D2F21BF87E520D086FF27C980FF1771
          45940107040B0001000400000000000000000000000000000000000000000000
          000000000000000100010E503F5F16A873C71ECE8BF820D086FF26C980FF24AC
          69E320814BB1081F112D00000000000000000000000000000000000000000000
          00000000000000000000061E19231EAF84CD1DD58DFF20D087FF26C980FF29BF
          75FC1B6E41970106030A00000000000000000000000000000000000000000000
          00000000000000000000000100010F43345021C889ED1FD086FF26C980FF2396
          61CA05160F210000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000503071874538A21CD87FB20B673EB0B37
          264B000100010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000515101A209A69BB116542830004
          0206000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000051C1222020E09110000
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
          0000000000000000000000000000000000000000000000000406000002030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000060A0E0E538204042B450000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020C0C415D151599F20B0B7AC70101
          121F000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000006061F2C181893D711119CFF0F0F8FFC0606
          4F93000004090000000000000000000000000000000000000000000000000000
          0000000000000000000001010B0F181878A71515A4FE11119DFF0F0F94FF0B0B
          80F1030329590000010100000000000000000000000000000000000000000000
          00000000000000000101111145601919A5EC1515A4FE12129DFF0F0F94FF0D0D
          88F908085DC700000F2100000000000000000000000000000000000000000000
          0000000000000000010105051C270B0B425F1818A0EE11119CFF0F0F94FF0808
          58A002021C3A0000091100000000000000000000000000000000000000000000
          000000000000000000000000000007071F2C19199BE911119CFF0F0F94FF0707
          4883000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000707212C18189BE911119CFF0F0F93FF0707
          4883000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000707212C19199BE911119CFF0F0F93FF0707
          4883000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000006061D29181895DF0F0F96F50C0C8BF50505
          437B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000005090505263B04042943030325430101
          101E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000001212121D3535
          35534444446B4E4E4E7A555555855A5A5A8C5C5C5C905E5E5E925E5E5E925C5C
          5C905A5A5A8C555555854F4F4F7B4444446B353535531212121D0707070D1A1A
          1A29707070A19C9C9CDAA1A1A1E1A4A4A4E5A6A6A6E7A6A6A6E7A6A6A6E796A4
          9DE74DA872F3789F89E39C9C9CDA767676A91A1A1A290707070D000000000000
          00009D9D9DCFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FF98C2ADFF37BE
          77FF2BBD71FF2DBD72FF8CC1A6FFA6A6A6DB0000000000000000000000000000
          0000A0A0A0CFC3C3C3FFBFBFBFFFBFBFBFFFC0C0C0FF73C7A1FF27C77CFF29C8
          7EFF4FCD92FF2BC980FF27C77CFF6EAB8FDB0000000000000000000000000000
          0000A5A5A5CFCCCCCCFFCCCCCCFFCCCCCCFFCBCCCCFF5ED2A0FF2AD18AFF87D2
          B1FFCBCCCCFF8BD1B2FF27D189FF20CD85FD0E58396D00000000000000000000
          0000A9A9A9CFD0D0D0FFCECECEFFCECECEFFCECECEFFC6CECBFFAED1C2FFCECE
          CEFFCECECEFFCECECEFF91D5B9FF24D790FF1CD48CFE0D614075000000000000
          0000ADADADCFD2D2D2FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
          CEFFCECECEFFCECECEFFD2D2D2FF93D3BAF723D894FC22996BB0000000000000
          0000B1B1B1CFDBDBDBFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
          DCFFDCDCDCFFDCDCDCFFDBDBDBFFB8BBBADB1433273D01050308000000000000
          0000B4B4B4CFD7D7D7FFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCD
          CDFFCDCDCDFFCDCDCDFFD7D7D7FFBEBEBEDB0000000000000000000000000000
          0000B7B7B7CFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
          E2FFE2E2E2FFE2E2E2FFE2E2E2FFC2C2C2DB0000000000000000000000000000
          0000B9B9B9CFDEDEDEFFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
          D5FFD5D5D5FFD5D5D5FFDEDEDEFFC4C4C4DB0000000000000000000000000000
          0000BCBCBCCFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFC7C7C7DB0000000000000000000000000000
          0000BEBEBECFE6E6E6FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFEAEAEAFFEAEAEAFFEAEAEAFFC8C8C8DB0000000000000000000000000000
          0000BFBFBFCFE9E9E9FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFECECECFF8F8F8FFF767676FE3232326A0000000000000000000000000000
          0000C0C0C0CFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFF6B6B6BFE2525256A000000000000000000000000000000000000
          000087878792C1C1C1CFC1C1C1CFC1C1C1CFC1C1C1CFC1C1C1CFC1C1C1CFC1C1
          C1CFBFBFBFCF2626266A00000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000001212121D3535
          35534444446B4E4E4E7A555555855A5A5A8C5C5C5C905E5E5E925E5E5E925C5C
          5C905A5A5A8C555555854F4F4F7B4444446B353535531212121D0707070D1A1A
          1A29707070A19C9C9CDAA1A1A1E1A4A4A4E5A6A6A6E7A6A6A6E7A6A6A6E75E5E
          8EEC313184F396969DE19C9C9CDA71717EBC24247AE51C1C355E000000000000
          00009D9D9DCFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC0C0C2FF1A1A
          8AFF0A0A84FF303093FF9E9EB7FF20208EFF0A0A84FF111170D0000000000000
          0000A0A0A0CFC3C3C3FFBFBFBFFFBFBFBFFFC0C0C0FFC6C6C6FFC6C6C6FFA2A2
          BFFF1C1C95FF0E0E91FF0F0F92FF0E0E91FF181888E708081829000000000000
          0000A5A5A5CFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFF8F8FBFFF11119BFF11119DFF12129BFE0909263A00000000000000000000
          0000A9A9A9CFD0D0D0FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFB5B5
          C8FF2727A5FF1313A5FF1414A7FF1313A5FF0F0F7ECB00000811000000000000
          0000ADADADCFD2D2D2FFCECECEFFCECECEFFCECECEFFCECECEFFCCCCCDFF2828
          A2FF1313A5FF3131B6FF9B9BCFFF2424B3FF1313A5FF0F0F75BD000000000000
          0000B1B1B1CFDBDBDBFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFF6D6D
          C1FF3838B7FFC4C4DAFFDBDBDBFFA6A6C9F22525AAF31616567C000000000000
          0000B4B4B4CFD7D7D7FFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCD
          CDFFC9C9CCFFCDCDCDFFD7D7D7FFBDBDBEDB0202030600000000000000000000
          0000B7B7B7CFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
          E2FFE2E2E2FFE2E2E2FFE2E2E2FFC2C2C2DB0000000000000000000000000000
          0000B9B9B9CFDEDEDEFFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
          D5FFD5D5D5FFD5D5D5FFDEDEDEFFC4C4C4DB0000000000000000000000000000
          0000BCBCBCCFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFC7C7C7DB0000000000000000000000000000
          0000BEBEBECFE6E6E6FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFEAEAEAFFEAEAEAFFEAEAEAFFC8C8C8DB0000000000000000000000000000
          0000BFBFBFCFE9E9E9FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFECECECFF8F8F8FFF767676FE3232326A0000000000000000000000000000
          0000C0C0C0CFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFF6B6B6BFE2525256A000000000000000000000000000000000000
          000087878792C1C1C1CFC1C1C1CFC1C1C1CFC1C1C1CFC1C1C1CFC1C1C1CFC1C1
          C1CFBFBFBFCF2626266A00000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000001515
          15223D3D3D604D4D4D79575757885B5B5B8E626262996565659E6565659E6262
          62995B5B5B8E585858894D4D4D793D3D3D601515152100000000000000000808
          080E2F2F2F45C9C9C9F4D0D0D0FBD1D1D1FCD2D2D2FDD2D2D2FDD2D2D2FDD2D2
          D2FDD1D1D1FCD0D0D0FBCECECEF8949494BB0808080E00000000000000000000
          0000949494C0DBD8D6FFDBCFC3FFDFD4C9FFD4C7B9FFCDC6BDFFCFC7BEFFD0C6
          BCFFD6D0CAFFD6D0CAFFD2C9C0FFADADADC70000000000000000000000000000
          0000999999C7DCD8D5FFE3DACFFFE8E1D8FFDACEC2FFC9C5BEFFCDC8C1FFD5CD
          C6FFDFDDDBFFDFDDDBFFD6CEC7FFAFAFAFC70000000000000000000000000000
          00009A9A9AC7DEDBD8FFDCD0C2FFE1D6C9FFD5C6B8FFDAD4CFFFD9D3CDFFC8BD
          B0FFC0B8ABFFC0B8ABFFCCC1B5FFB1B1B1C70000000000000000000000000000
          00009A9A9AC7E0DDDAFFD9CCBFFFDDD2C6FFD3C4B5FFD9D2CBFFD8D1C9FFCEC2
          B6FFD0C8BEFFD0C8BEFFD0C5BAFFB3B3B3C70000000000000000000000000000
          00009A9A9AC7E2DEDBFFE7DED3FFEDE6DDFFDDD2C6FFE8E8E8FFE6E6E5FFCEC7
          BDFFC2BFB5FFC2BFB5FFD2CBC3FFB5B5B5C70000000000000000000000000000
          00009A9A9AC7E3E0DDFFD9CCBFFFDDD2C6FFD3C4B6FFD0C7BEFFD1C9BFFFD3C7
          BCFFDCD4CEFFDCD4CEFFD4C9BFFFB5B5B5C70000000000000000000000000000
          00009C9C9CC7E4E1DEFFDACEC1FFDFD4C8FFD4C6B7FFC3BBAFFFC8BFB3FFD4C9
          BEFFDED7D1FFDED7D1FFD6CBC1FFB7B7B7C70000000000000000000000000000
          0000A0A0A0C7E5E2DFFFE5DBD0FFEAE2D9FFDCD0C4FFEAE9E8FFE8E7E5FFD0C8
          BEFFC6C1B8FFC6C1B8FFD4CCC3FFB8B8B8C70000000000000000000000000000
          0000A4A4A4C7E8E5E3FFDCD1C6FFDFD6CCFFD6CABDFFDFD9D3FFDED8D2FFD5CB
          C1FFDAD3CCFFDAD3CCFFD8CFC7FFB8B8B8C70000000000000000000000000000
          0000A6A7A7C7EDEDEDFFEDEDEDFFD7C9ABFFD1BE98FFE1D9C9FFCAB383FFE8E4
          DDFFCAB383FFDFD6C4FFEBEBEBFFB7B7B7C7000000000000000000000000010D
          162893A6B4D7E1E6EAFFEDEDEDFFE3D7C0FFE0D1B2FFE7E1D4FFDDCAA4FFEAE7
          E1FFDDCAA4FF918B81FF727272FF2A2A2A540000000000000000000000000001
          010483A2B9DAA2C7E1FFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFF797979FFB5B5B5FF0A0A0A130000000000000000000000000000
          0000B0B0B0C6BBD4E5FFBBD6E8FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFEBEBEBFFC8C8C8FFE3E3E3FF090909120000000000000000000000000000
          00002020202D3B505F69324D5F693A3A3A4F3939394F3939394F3939394F3939
          394F3939394F3939394F32323245000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000141414203939
          395A4646466F5050507F545454855D5D5D935E5E5E955E5E5E955E5E5E955E5E
          5E955D5D5D9354545485515151804C4C4C773D3D3D5F15151522050505086B6B
          6B989B9B9BD9A0A0A0DFA5A5A5E6A6A6A6E8ABABABEFABABABEFABABABEFABAB
          ABEFAEAEA9E8AAAAA7E8828282BA262626391F1F1F2C0808080D00000000B2B2
          B2D9C3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFCBCBC6FFCDCDC6FFCDCDC6FFD5D5
          C9FF6161A1FFB2B2BCFFC3C3BBE500000000000000000000000000000000B2B2
          B2D6C5C5C5FFC5C5C5FFC5C5C5FFCDCDC7FF7474ACFF5D5DA4FF6060A5FF6666
          A7FF202092FF000085FF6F6FA2E800000000000000000000000000000000B7B7
          B7D6CCCCCCFFCCCCCCFFCCCCCCFFDBDBD0FF1B1B98FF040492FF070793FF0707
          93FF0D0D94FF0F0F95FF060693FF0A0A7ACB01010A120000000000000000BCBC
          BCD6D1D1D1FFD1D1D1FFD1D1D1FFE0E0D4FF2424A4FF0E0E9EFF1111A0FF1111
          A0FF1111A0FF1111A0FF1111A0FF0F0F9EFF1515A6FF0303101C00000000C1C1
          C1D6D6D6D6FFD6D6D6FFD6D6D6FFE5E5D9FF1F1FABFF0808A5FF0B0BA6FF0B0B
          A6FF1111A7FF1414A8FF0B0BA5FF2323AEF41111343E0000000000000000C4C4
          C4D6DADADAFFDADADAFFDADADAFFE1E1DBFF8787CEFF7373CCFF7575CCFF7B7B
          CEFF3131B9FF0505B0FF6565C2F100000000000000000000000000000000C7C7
          C7D6DEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFE5E5DFFFE7E7DFFFE7E7DFFFF1F1
          E0FF6262CDFFAEAEDAFFE0E0D3E300000000000000000000000000000000CBCB
          CBD6E2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
          E2FFECECE3FFE7E7E2FFD5D5D5E400000000000000000000000000000000CDCD
          CDD6E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFE5E5E5FFD9D9D9E400000000000000000000000000000000D0D0
          D0D6E8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFDBDBDBE400000000000000000000000000000000D2D2
          D2D6EAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFF3F3F3FFF5F5F5FFE9E9E9E900000000000000000000000000000000D4D4
          D4D6ECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFF5F5
          F5FF808080FF6A6A6AFF3333336700000000000000000000000000000000D8D8
          D8D9EDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFF9F9
          F9FF5D5D5DFF2424246500000000000000000000000000000000000000009292
          9293C1C1C1CFBEBEBECCBEBEBECCBEBEBECCBEBEBECCBEBEBECCBEBEBECCCCCC
          CCD11F1F1F620000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010100084F45329D09080723000000000000000000000000000000000000
          00000909091E262626503E3E3E6C4F4F4F7D5D5D5D885B5B5B8C5A5A5A8C5454
          54877D6C4CC2EABD68FFA78A54E20A0A092B0000000000000000000000000707
          071CF7F7F7FDF6F6F6FFF1F1F1FFF0F0F0FFEFEFF0FFECECECFFE2E2E2FFC9B2
          86FFEDC06BFFEABF6FFFE3B765FFBE9C60FB0B0A082C00000000000000000909
          0920FBFBFBFFF6F6F6FFF1F1F1FFF1F1F1FFF2F2F3FFE8E8E8FFC9AE7CFFE5B3
          57FFE9BC66FFE7BA68FFE1B462FFD2A24BFF9C793DE70A09082A000000000707
          071CD8D9DAFEDCDCDDFFDEDEDEFFE0E0E1FFE2E2E2FFC9C4BCFFD7A74DFFDCAB
          50FFC2A267FFDFB15BFFBE9F66FFC19649FFC08D33FF382F208A000000000808
          081DFAFAFAFEF6F6F6FFF1F1F1FFF0F0F0FFF0F0F0FFECECEDFFCCC3B4FFC3B5
          9BFFC0AC88FFD2A045FFB39764FFB1ABA2FF4034229500000001000000000909
          0920FBFBFBFFF6F6F6FFF1F1F1FFF1F1F1FFF2F2F3FFF0F0F0FFEDEDEDFFEAEA
          EBFFBBA57EFFC48F2FFFAD905BFFC3C3C4FF0202020B00000000000000000707
          071BD2D3D4FED7D7D8FFD9DADAFFDCDCDDFFDEDEDFFFDDDDDDFFDADADBFFD7D7
          D8FFAD9977FFAF802CFF9E8456FFAEAFB0FC0101010900000000000000000707
          071CF8F8F8FDF6F6F6FFF1F1F1FFF0F0F0FFEFEFF0FFECECECFFE9E9E9FFE6E6
          E6FFD4D4D5FFC6C6C7FFC2C2C3FFBEBEBFFC0101010900000000000000000909
          0920FBFBFBFFF6F6F6FFF1F1F1FFF1F1F1FFF2F2F3FFF0F0F0FFEDEDEDFFEAEA
          EBFFDCDCDDFFCCCCCDFFC7C7C8FFC3C3C4FF0202020B00000000000000000707
          071CD3D4D5FED7D8D9FFD9DADBFFDCDDDDFFDEDFDFFFDDDDDEFFDADBDBFFD7D8
          D8FFCECECFFFC4C4C5FFBBBCBDFFAFAFB1FD0101010900000000000000000707
          071CF7F7F7FDF6F6F6FFF1F1F1FFF0F0F0FFEFEFF0FFECECECFFE9E9E9FFE5E5
          E6FFD8D8D9FFCCCCCDFFC7C7C8FFBDBDBEFB0101010900000000000000000909
          0920FBFBFBFFF6F6F6FFF1F1F1FFF1F1F1FFF2F2F3FFF0F0F0FFEDEDEDFFEAEA
          EAFFDCDCDDFFCCCCCDFFC7C7C8FFC3C3C4FF0202020B00000000000000000707
          071CE5E5E5FED8D8D8FFD1D1D2FFCECECFFFCDCDCEFFCDCDCEFFCCCDCEFFCCCC
          CDFFCBCBCCFFC9C9CAFFC9C9CAFFC4C4C5FD0101020900000000000000000000
          000017171739424242725D5D5D8D6A6A6B9B6A6A6A9F6B6B6BA06B6B6BA06A6A
          6A9F696A6A9B5C5C5C8C4040406F141414330000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000002E60788F1A74
          9DC51C6B91B81A303B6A37383889565656B3646464C4646565C45B5C5CBA4848
          48A11E2F38750070B0CA0087D2EF0082CEEA0079BED90016243E3DB4EDFE1898
          D2FF1C96D2FF5597B9FF959696FF979898FF989898FF818181FF989999FF9798
          98FF2999D0FF00A6EDFF00B0F2FF009EE9FF00A3ECFF0087CADF39B0EAFD1998
          D1FF1C96D2FF5A9DC1FFA3A4A4FF9FA0A0FF717171FF292929FF7C7C7CFFA0A1
          A1FF21A7E0FF00B1F4FF00B7F6FF00ABF1FF00ACF1FF00A2E6F439B0EAFD179A
          D5FF1B97D4FF5EA1C5FFABABABFF585858FF4E4E4EFF454545FF515151FF5E5F
          5FFF71B0C6FF01B7F8FF00BBFAFF00B5F7FF00B6F8FE00506C7D01547E9921AA
          DAF72DA7DBFF81AAC1FFB0B0B0FF747474FF9F9F9FFF5E5E5EFF848484FF6060
          60FFAFB0B0FF9DB8C0FF84B8C7FF6998A6E10112182E00000000000000008A8A
          8ACEBCBCBCFFBEBEBEFFBEBEBEFFB3B3B3FF8F8F8FFF747474FF787878FF9596
          96FFBDBEBEFFBEBEBEFFBBBCBCFF868686CA0000000000000000000000006262
          629DC1C1C1FFC5C5C5FFC4C4C4FF8D8D8DFF929292FF888888FFB9B9B9FFBDBD
          BDFFC5C5C5FFC5C5C5FFBFBFBFFF5D5D5D950000000000000000000000001F1F
          1F4AC2C2C2FFCCCCCCFFCBCBCBFF9D9D9DFFA5A5A5FF969696FF9F9F9FFFA7A7
          A7FFCCCCCCFFCACACAFFBABABAFA0F0F0F290000000000000000000000000000
          0001959595CACDCECEFFD2D2D2FFCACACAFFB4B4B4FFA0A0A0FFB9B9B9FFCECE
          CEFFD1D1D1FFC7C7C7FF47474772000000000000000000000000000000000000
          00000E0E0E27B9B9B9EDD3D4D4FFD7D8D8FFD4D4D4FFBBBBBBFFD7D7D7FFD5D5
          D5FFC9C9C9FD4F4F4F7900000000000000000000000000000000000000000000
          0000000000001212122CA9A9A9D7D5D5D5FFDCDCDCFFDCDCDCFFD5D5D5FFB0B0
          B0DF252525460000000000000000000000000000000000000000000000000000
          000000000000000000000101010641414D808686BCFF8989BFFF646478AC0101
          0108000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000169696999D9D9D9FFDDDDDDFFB5B5B5E60303
          030D000000000000000000000000000000000000000000000000000000000000
          000000000000000000026F6F6FA1AFAFAFE4CCCCCCFED2D2D2FFBBBBBBEF5151
          517F000000000000000000000000000000000000000000000000000000000000
          0000000000002F2F2F595151517C020202076666668E7A7A7AAA4F4F4F794D4D
          4D72000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002C2C2C49000000030F0F0F290000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001171305250B0702110000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000200000366511B976E561DAE2018
          0832020000020000000000000000000000000000000000000000050401092F25
          0D49392C1057392C10573A2D10573A2E10573B2F1159806725C1A68232FE8C73
          2CDC423514670807020D000000000000000000000000000000001A1508279A7A
          30E1AA8835FBAA8835FBAA8835FBAA8835FBAA8835FBAC8637FEB08A37FFB08A
          37FFA68534F5705723A41D180A2B0000000200000000000000001D18092BA580
          37E8B68F3DFFB68F3DFFB68F3DFFB68F3DFFB68F3DFFB68F3DFFB68F3DFFB68F
          3DFFB68F3DFFB28B3DFE9A7A37D64235175D0806020A000000001E190A2BA987
          3EE8BC9443FFBC9443FFBC9443FFBC9443FFBC9443FFBC9443FFBC9443FFBC94
          43FFBC9443FFBC9443FFBC9342FFAF8A3DF26D5626930C09040F201A0B2BB08A
          41E8C39A48FFC39A48FFC39A48FFC39A48FFC39A48FFC39A48FFC39A48FFC39A
          48FFC39A48FFC39947FFC29846FFB9934AEE6D5B34870A07040D211B0B2BB68F
          44E8C89E4CFFC89E4CFFC89E4CFFC89E4CFFC89E4DFFC89E4DFFC99F4EFFC99F
          4EFFC89E4CFFC69E4DFDA58450CD4237255005050207000000001C180D22AD8F
          4ECEC19B55E8C19B55E8C19B55E8C19B55E8C19B55E8C99F54F6D0A353FFCFA4
          52FFC5A056F2806C40991D191023010100010000000000000000030100041E1A
          12222620142B2620142B2620142B2520142B2722152C90753BADD3A758FEBD98
          55D65345285D0806030A00000000000000000000000000000000000000000000
          000000000000000000000000000000000000020000027E6A3C90927948A62720
          142B000000020000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001B170D1F0B0A050E0000
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
          0000000000000000000000000000000000000000000000000000000000020101
          0D1C010112250101102200000207100D031817120527161106250703000B0000
          00000000000000070A0B031B2B33000F181D000305070000000000000E1D0404
          63C5030371E4000170DA040322497A5E0FAC8F6C1FE58D6C1FE33A2B06600101
          010100000001002E464D0079CCE90070BDD9004E849900090E10000014261717
          7AE55C5C8DFF1D1E8CF905032E5F95741CCB998964FFA3884CFF4B3709780000
          000000000101005278834090C1FF3B8FC4FF006FB7CF000A1115000014264141
          87E59B9B78FF535494F904032F5F9D7F34CB777E8EFF9B927DFF533D11780000
          0000000508080C719DB48F8883FF87898BFF056196A700030405000015260909
          85E534349CFF0B0C92F90404325F9F7B1CCBB39551FFB38F40FF56400F780000
          000000101A1C007FC8D9199FE4FF199AE0FE00446B7500000000010117262828
          92E55C5CADFF3738A5F90505335FA98631CBBFA776FFC0A36BFF5A4215780000
          000000273A3D42A6D3F157B0D7FF0F9EDFF400283F4500000000000018266262
          A2E5CCCCADFF8E8EB7F90705355FB0934FCBAAB2C1FFB9B6B2FF62481A780000
          00000044646A9DB5BEFDCDAC9CFF4C9EC0DF001420220000000000001826605D
          A5E5C9CAB3FF8B8DBCF90403365FB2974FCBB2B7C0FFC0BBB1FF694817780002
          03030B6D969DBFC3C4FFC2B6B2FF2381ACBD00050A0C00000000000018266D6D
          B4E5FFFFF1FFA2A4D5F90504385FBC9E55CBEBEFF8FFE4DED5FF704A1778000C
          11113697BFC8FFF2EAFFD8E3E9FF065F878E0001010100000000010118266666
          AEE5C8C8AFFF9292C2F906043C5FBC9F56CBAFB4BEFFC4BFB6FF734C1A78001E
          2A2B5AA6C6E7B39588FF9CC4D6FB003C585B000000000000000001011B266464
          ABE5A6A692FF8888B9F90A083F5FBC9F56CB94989EFFB4AFA3FF754E1F78003B
          51526BBCE1F9ADA2A0FF64ABCCEB00213032000000000000000002021B261E1C
          AAE53333C4FF2021BCF90B09425EC49B3FCBDEB66BFFDDB367FF764F1B770059
          757600BCFCFD0BC0FFFF0698CECF000F1415000000000000000002020F141212
          739818188BB4161682A908062633826A2E839F7F4EB49A7B44B1432E1245001B
          232400577071007FA2A3005A7677000304040000000000000000000000000000
          0405000005070000040600000101030400040505020705050207010101010000
          0000000000000003040400030404000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000000003051C0A43
          66D80B486EE70B486EE70B486EE7144E72E7C5C7C8ECCDCDCDEFCDCDCDEFCDCD
          CDEFCDCDCDEFCDCDCDEFCDCDCDEFCDCDCDEFCCCCCCEE16161633010A10430C53
          80FF0C5380FF0C5380FF0C5380FF1D5E88FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FF1F1F1F43010A11430D54
          82FF0D5482FF0D5482FF0D5482FF1E608AFFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FF20202043010B11430E56
          84FF0E5684FF0E5684FF0E5684FF1F618CFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFF20202043020B11430F57
          86FF0F5786FF0F5786FF0F5786FF21638EFFECECECFFECECECFFECECECFFECEC
          ECFFECECECFFECECECFFECECECFFECECECFFECECECFF20202043020B11431159
          88FF115988FF115988FF115988FF226590FFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF21212143020B1143125B
          89FF125B89FF125B89FF125B89FF236692FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF21212143020C1243135C
          8BFF135C8BFF135C8BFF135C8BFF246894FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FF22222243020C1243145E
          8DFF145E8DFF145E8DFF145E8DFF266A95FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FF22222243020C1243155F
          8FFF155F8FFF155F8FFF155F8FFF276B97FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF9F9F9FFF9F9F9FFF9F9F9FFECD096FFDBBE82F10F0E0B24020C12431661
          91FF166191FF166191FF166191FF286D99FFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
          FBFFFBFBFBFFFBFBFBFFFBFBFBFFD3A442F1221A093A00000000030C13431763
          93FF176393FF176393FF176393FF1D6695FF9DBDD1FFA4C1D4FFA4C1D4FFA4C1
          D4FFA4C1D4FFA4C1D4FF939FA6C321190B3A0000000000000000020C123F1964
          95FF196495FF1783C7FF1784C9FF1784C9FF1784C9FF1784C9FF1784C9FF177C
          BCFF196495FF196495FF0619256200000000000000000000000000000004081F
          2E6C0A283C7B1C94E1F91C99E8FF198AD1E60E4F79911C96E4FB1C99E8FF187E
          BEDD0925377B082232730001020C000000000000000000000000000000000000
          000000000000082639580D3F5F7F15537A9B000000041970A6B90C3B587F0517
          233D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000015537A8A2381BCD10A283C52000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000878787FF878787FF878787FF8787
          87FF878787FF878787FF878787FF878787FF878787FF878787FF000000000000
          000000000000000000000000000000000000B5B5B5FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF878787FF000000000000
          000000000000000000000000000000000000B5B5B5FFFFFFFFFFFBFBFBFFFBFB
          FBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFFFFFFFF878787FF878787FF8787
          87FF878787FF878787FF878787FF878787FFB6B6B6FFFFFFFFFFDBCDBFFFDBCD
          BFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCDBFFFFFFFFFFF878787FFB5B5B5FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6FFFFFFFFFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFF878787FFB5B5B5FFFFFF
          FFFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFB6B6B6FFFFFFFFFFC4B7ACFFB388
          5BFFAB8056FFD2C9C1FFFEFEFEFFFEFEFEFFFFFFFFFF878787FFB6B6B6FFFFFF
          FFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCDBFFFB6B6B6FFFFFFFFFFB09B8BFFB191
          71FFB18F6CFFB6A79CFFFFFFFFFFFFFFFFFFFFFFFFFF878787FFB6B6B6FFFFFF
          FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFB6B6B6FFFFFFFFFFF6F4F3FFA1BF
          D4FFACC8DEFFF6F4F3FFFFFFFFFFFFFFFFFFFFFFFFFF878787FFB6B6B6FFFFFF
          FFFFC4B7ACFFB3885BFFAB8056FFD2C9C1FFB6B6B6FFFFFFFFFFFFFFFFFF6CAA
          D8FF5997C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF878787FFB6B6B6FFFFFF
          FFFFB09B8BFFB19171FFB18F6CFFB6A79CFFB6B6B6FFFFFFFFFFFFFFFFFFA8C5
          E2FF4F7DAEFFFFFFFFFFC8C8C8FFDBDBDBFFD1D1D1FF949494FFB6B6B6FFFFFF
          FFFFF6F4F3FFA1BFD4FFACC8DEFFF6F4F3FFB6B6B6FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFDBDBDBFFFAFAFAFFC4C4C4FF6B6B6B9FB6B6B6FFFFFF
          FFFFFFFFFFFF6CAAD8FF5997C4FFFFFFFFFFB6B6B6FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD1D1D1FFC4C4C4FF7171719F00000000B6B6B6FFFFFF
          FFFFFFFFFFFFA8C5E2FF4F7DAEFFFFFFFFFFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB6B6B6FFB6B6B6FFB6B6B6FF7171719F0000000000000000B6B6B6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBFFFAFAFAFFC4C4C4FF6B6B
          6B9F000000000000000000000000000000000000000000000000B6B6B6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1FFC4C4C4FF7171719F0000
          0000000000000000000000000000000000000000000000000000B6B6B6FFB6B6
          B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FF7171719F000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000010744558745469746C6500477269643B436172643B911129FE000001
          D249444154785EA593CF4A234110C6BB7B7AE260D87750587C83C092648D1A70
          C1D758C8698F7B597C00C19B274F6210512288DEC4434427BA2C420EFB14CBC2
          9255A3A333D37FFCAAA71344F494868FEAEE5FE59BAE2AC2ADB56C9225D8848B
          43818FFC153390F54CBCC3355F6DF7CF85081A943BAA8682512A5EFB5AF9F263
          EBFA940B394F60542E05A3F378BDF5A92939178D5A7586594F109D0E0F7FD38F
          A4E5C17CB53A3B361E191D74FAC403698C650FA9617F6E33667D151F22812F18
          DA0A8A0F19F80DB875EF04974C2B4D9C3B030D522E05FEEB386BCB5461C01DC7
          7EBA24C625D2599BE2201F93A4DBD9FDD9B4C6B953929356E919B84A86F767FB
          EDDE920520EEF3C073E286DE5C864AAFBA6CA11CCA887989579C58C2BF6DC43D
          29C37A511FE49FA0B2EC72F3FBE24A6BBD7B12C852CD370F2A629EA557DBABCB
          988290F54AED23338E7813C4E3CE751DDB08BC56F93C47B7C8E1850903DFFB45
          A6525237874F9AFDC514405C51E550A049AE898152860D53CDFEDDE5CED930F0
          A900668E0B49DDA6A42814E3396B4AC41D2DA5B59B4A24393844773037A3290C
          07FFCF8F76E2050B475F3E16F5E0E9023CBD1BDC5C1CB5BB0D00CF20449D3DC6
          E4C5A94E287C630ACA4BBEC373289DF8EFFC0C90E42D2306428AF80000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000015744558745469746C6500477269644C696E65733B4772
          69643BC10351250000015649444154785EA5533D4B0341107DB33910042D14C1
          8868672BDA8858497AFF82FFC0C6BF606BFE81E437D8098AA649A10741B11341
          257A65B08CBAB323B3C766201F07E2C20E77F7DEBCB76F778F0094B36254E042
          CD567E4DA0FD481140648895D54A89112929A22184369D9EE57274B83D2493A4
          56D399369AAD3B64CC2192980542D50D06129C23686FE639A0D32DF0FCD6379A
          485A69FA007B2CCB6A7D1EDE075D0163776B053B9B75F330275321050DA939C2
          EDFD075C8C103151676B961139194FE75384ABCE2B5E7AFD92A44E1527918496
          97E6C0CCC8D8331A7BEB605EC3A4219606643A7113F387775884D146F3B7FCA2
          C5500E3182E0FCF209BDE233829657609EE30E8B0BB3F1E8B3C08C83C6063824
          466A2C4568CA6D7044E83E16C85263CD2513D26942E37B3A140D1AE1FB6B7073
          7C72B11FDDC4B263E2B55696C5F23F83B6BECD00C894FFD73F51354844F09FF1
          0BE602D325DBCC0A030000000049454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000161616223D3D
          3D5F474747714F4F4F7D5757578A56565689606060986161619A6161619A6060
          6098565656895757578A4F4F4F7D474747713C3C3C5F151515220808080D1B1B
          1B28757575A8A4A4A4E3A4A4A5E4ABABACEDAAAAABECAAAAABECAAAAABECAAAA
          AAECAAAAAAEDA3A3A3E4A3A3A3E37B7B7BB01A1A1A270808080D000000000000
          0000B1B1B1D8C4C4C5FFB9B6AEFFBAB5AEFFBAB5AEFFBAB5AEFFBBB5AEFFBFBF
          C0FFC6C4C3FFC3C3C3FFC3C3C3FFB9B9B9E60000000000000000000000000000
          0000B2B2B2D6C6C6C6FFC2C2C2FFC3C2C2FFC3C2C2FFC3C2C2FFD0CFCEFF0F0F
          10FFC0D5DDFFD1CCC9FFC7C5C4FFBBBBBBE40000000000000000000000000000
          0000B7B7B7D6CDCDCFFFB8B3AAFFB9B4ABFFB9B4ACFFB9B4ACFFBBB1A5FFAFD8
          EFFFB6E1F8FF60C8F5FFBEC8CBFFC4C2C1E40000000000000000000000000000
          0000BCBCBCD6D2D3D4FFB7B2A9FFB8B4ABFFB8B4ABFFB7B3AAFFC7C0B9FFA2CD
          E5FF3FB9EFFF3FB9EEFF3FB8EAFFD1C6C3E30000000000000000000000000000
          0000C1C1C1D6D6D6D6FFD6D5D4FFD5D5D5FFD5D5D5FFD5D5D5FFD5D4D3FFDAD5
          D0FF46BAEBFF33B6ECFF2BB3EBFF4CAFD4E70000000000000000000000000000
          0000C4C4C4D6DBDCDDFFC0BBB4FFC1BEB8FFC1BEB8FFC1BEB8FFC1BEB8FFC3BE
          B6FFC7C7C6FF3CBBF1FF0FACE5FF1FB6ECFF41525B6700000000000000000000
          0000C7C7C7D6E0E1E1FFBBB6ADFFBDB8B0FFBDB8B1FFBDB8B1FFBDB7AFFFBAB4
          ACFFD8D0CAFFBDDAE9FF51C6EFFFA1A4C8FF0A0499FF00000308000000000000
          0000CBCBCBD6E3E3E3FFD3D1CDFFD3D1CDFFD3D1CDFFD2D1CDFFD9D8D7FFE5E6
          E7FFE3E3E3FFEEEAE3FF9189BBFF000094FF0C0C425400000000000000000000
          0000CDCDCDD6E6E6E6FFD4D2CEFFD4D2CEFFD4D2CEFFD3D1CEFFDBDBD8FFE9E9
          EBFFE8E8E9FFE7E7E7FFE7E6E7FFC8C8D4E20000000000000000000000000000
          0000D0D0D0D6EFECEFFFC5B8B3FFC7BAB5FFC7BAB5FFC7BAB5FFC7BAB4FFC5B9
          B3FFC4B7B1FFD9D1CFFFEFEBEDFFDEDEDCE40000000000000000000000000000
          0000D6D3D5D6BDDDCBFF8FD3ADFF93D5B1FF93D5B1FF93D5B1FF93D5B1FF93D5
          B1FF93D5B1FF86D8ABFFBEE7D2FFE9E9E9E90000000000000000000000000000
          0000D6D6D6D672D1A3FF09BC65FF12BE6AFF12BE6AFF12BE6AFF12BE6AFF12BE
          6AFF0BC46AFF727D77FF6C6A6BFF333333670000000000000000000000000000
          0000D9D9D9D9B8E6D3FF89E2BCFF8EE2BEFF8EE2BEFF8EE2BEFF8EE2BEFF8EE2
          BEFF92EEC7FF625E60FF25242565000000000000000000000000000000000000
          000092929293C5C1C2CFC5BFC1CCC5BFC1CCC5BFC1CCC5BFC1CCC5BFC1CCC5BF
          C1CCD1CDD0D11F1F1F6200000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000300
          00040A04000F0D0601140A04010D030000040000000000000000000000000000
          030416121C24181C4257262969812326769015165D7504042030251002348231
          0197BA5112C6C56126CFB5632CC38B4D239E4A3B315E150B021C04050C142830
          6A82A493CBDC6E80F6F96F7CFFFF606CFFFF454EFCFD1C1FB7DDAD723FC4FD77
          20FEFF8230FFFF944FFFFF9F5EFFFFA265FFDCBDACF9CA6C2ACD504066AC6479
          F8F9D8CBEDFFA3AFFFFF8998FFFF7786FFFF5C66FFFF2D33D3F0B47746CAFF85
          33FFFF8C47FFFFA367FFFFAD77FFFFBC93FFDFDAD6FFFFA056FFA37993FE728E
          FFFFDBD5E1FFE0E4FFFF9CADFFFF8695FFFF6673FFFF2E32A7C68C5931A2FF97
          4EFFFF9552FFFFAD77FFFFBB8AFFFFE3CCFFE2E4E4FFFFA96BFFD7875EF66E7D
          E2EDA4ACCEFF9EB1C6FF97A8F3FF8B99FFFF5F6BEDF1171B4B6246271356F1A0
          63F5FF9B59FFFFB27BFFFFC397FFDADCE2FFD7D3D2FFFDAD73FEA8612DAE2634
          528249608FE6285578FF4A6DA0FF616BC6DD23235263010005090803000D7F56
          3490F29E5FF3FFA66BFF8C8891FF30659DFF87858EFCBD7B4ABE201F1B53174C
          69D9375A77F7355C77FF315E6AFF2B4F54C3040C091700000000000000000904
          020B4D311A56775445C8305B84FE285479FF3C536AF01F1F2054000D14323C6A
          8EEA688EB5FF5E84AAFF466C8BFF3D6B78F716272B5000000000000000000000
          0000000000010D1721442F577CF1416688FF41698CFF314D67BB070C121F6180
          A1C288AEDDFF7BA2D0FF5D83ABFF497A8AFE223B3F6D00000000000000000000
          000000000001121A2258486A8EF45E84A9FF6890B7FF6081A7ED1420293C768C
          A4AABBD7F8FF99BCE9FF5B87AAFF4A7F88FA1E31375800000000000000000000
          0000030202172E3E4DCA5E86AEFF769FCCFF82A9D8FF86AAD5F82837455A3B54
          66AB80A7C6FF6597ADFF5B94A9FF5F939CDF0C16182800000000000000000000
          00000D0D0C2F292828EB4E667EFF8DB6E6FFAECEF0FFB3D0ECF8384755702645
          4FCE4D818EF7629DADF76CA3B7E3425C66730001030400000000000000000000
          00001313132A343230E7495562FF94B7DEFFA3C4E4FF95B1D0EA1F2830350810
          11271929304B1E30364B121C202B020604060000000000000000000000000000
          0000090909114A4947BE5A5856FF666669FF707071FE6F7071D8151516250000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001171717353C3C3B96525254B45858588E2D2B2B3D050404050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000003020202070000000200000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000C1E1A19B425201FD8282422E7282321E5221E1ECB1D19
          189E000000000000000200000000000000000000000000000000000000060000
          000008070750252220ED2A2725FF2B2827FF2E2A28FF232323FF281B14FA281C
          16CC2C2725F70000000A00000000000000000000000000000000010101060000
          00001F1B1AC72E2B29FF2E2B29F7302E2BFA2B2725FB191E21FA6D422AFCA44F
          10FF1F2326FF2C2826FA01000005000000000000000000000000010101070000
          00001F1C1AB9322E2CFC2D2A28F92B2927FD1C1917FD363A3BFDB78D7CFCA44F
          10FF222526FD2E2927FE1514141C000000000000000100000000010101090000
          00001A18179C373331FF2F2C2AF6282523FC171312FD747878FDD2D2D3FFA44F
          10FF202323FC2E2927FD0101010B000000000000000000000000000000040000
          0000040404102E2928E4353230FF242322F62C2822FBD1D2D3FFA44F10FFD1D2
          D3FF1E1C1AFF232222A500000000000000000000000000000000000000000000
          0001000000000606062B2D2B2ADD221C17FF4D4D4FFD75A3E5FB5196FBFC3141
          5DF3150A00BA0303012600000000000000000000000000000000000000000000
          000000000001000000000403020E120D087D446394F24684EEFC4177DAFC2E62
          BBEA081A39480000000000000001000000000000000000000000000000000000
          0000000000000000000100000001000000002441748A3D78DEFF3E85E1F54C93
          F2FE3971CEDD060C1D1D00000000000000010000000000000000000000000000
          000000000000000000000000010202050A0E1B3977A6408BEBFE5894EAF97DA6
          EEFA79A4F3FF1624434B00000000000101020000000000000000000000000000
          0000000000000000000200000000000A227D3A75DCFF4890EEF979A6F1FDAFC7
          F1F9B8CDF5FE313D5B6500000000000000010000000000000000000000000000
          0000000000000000000000030405020E35BE0C2D71FE3C79D9F883AEF6FCC8D9
          F1F8E2EBF9FE3D48636600000000010101020000000000000000000000000000
          0000000000010000000001070C12000E3CCF000935FC2963C5FA73AFFCFC9FBE
          EEF7A0BCF2FC23304E5B00000000000000010000000000000000000000000000
          000000000000000000000002050F001B4DD5001747FF052360FA174293FE1131
          77FB0E2A73FF030D2A7300000000000000020000000000000000000000000000
          0000000000000000000000000000000B1E5800163CC8001D54F3001C5AF1001F
          5AEB001642C100030B2A00000000000000010000000000000000000000000000
          00000000000000000000000000010000000000060F34001B47B9021E4CB70215
          329100030A200000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000012F282544695E5B83887C
          78A4948783B3958783B68F827FAE7B706C975148446A100D0C1B000000170000
          0020000000200000002000000020000000201E1B1A55E3D8D4FEEFE8E5FFF5F0
          EFFFF5F0EFFFF5F0EFFFF5F0EFFFF5F0EFFFEDE6E4FFABA3A1C04D4D4D9EF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFE4D8D5FFF3EEECFFF6F3
          F2FFF7F3F2FFF7F3F2FFF7F3F2FFF7F3F2FFF2ECEAFF6D6A69764D4D4D9EDB85
          DFFFF7F7F7FFF7F7F7FFD5D5D5FFD3D3D3FFD3D3D3FFCBC6C5FFDAD3D1FFF2ED
          EBFFEFECECFFE6E5E8FFF8F4F3FFF4F0F0FE797776A40707070B4D4D4D9EF8F8
          F8FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF4F2
          F1FFB4C8DBFF839CB6FFD4DCE5FFE0E0E0FF34343487000000004D4D4D9EDC86
          E0FFF8F8F8FFF8F8F8FFD6D6D6FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
          D4FF93B5D8FF8AB2D9FFB2C0CFFFD4D4D4FF525252A4000000004D4D4D9EF9F9
          F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFDBE8
          F4FFA4CAEEFFB1D3F2FFB8D4EFFFF9F9F9FF535353A4000000004D4D4D9EDD87
          E1FFFAFAFAFFFAFAFAFFD7D7D7FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFA3C2
          E2FFBBD8F1FFC8DFF4FFB4D2F0FFC9D1D9FF525252A4000000004D4D4D9EFBFB
          FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFF96AF
          CCFFBDD8F1FFCDE1F5FFADC8E3FFD3DAE3FF525252A3000000004D4D4D9EDE88
          E2FFFCFCFCFFFCFCFCFFD9D9D9FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FF8092
          A7FF6D89A8FF748DABFF718BABFFC7CACDFF525252A3000000004D4D4D9EFBF9
          F6FFFCF9F6FFFCF9F7FFFCF9F7FFFCF9F7FFFCF9F7FFFCF9F7FFFCF9F7FFEDED
          EEFF8B99AEFF92A2B9FFD2D7DFFFFBF8F6FF525050A3000000005A361C98CC76
          32FFD17C39FFD68341FFDB8948FFE08E50FFE49356FFE69559FFE69559FFE493
          56FFE18F50FFDC8B4CFFD78646FFD27E3DFF603A1EA1000000005A371D98CF7A
          36FFD5823FFFDB8948FFE29053FFE8985CFFEE9D64FFF1A168FFF1A168FFEE9D
          64FFE9985CFFE59B63FFDE9257FFD78848FF603B1FA1000000005A381F98D27D
          3AFFD88543FFE08D4FFFE7965AFFEF9F66FFF7A871FFFBAE79FFFBAE79FFF7A8
          71FFEF9F66FFECAA79FFE2965BFFD98949FF603C21A1000000005D3B2398DF92
          57FFE49B63FFEAA571FFF0AE80FFF6B88EFFFDC39DFFFFC8A3FFFFC5A0FFFDC0
          98FFF6B589FFF0AB7AFFEAA26CFFE4985EFF623F25A0000000000301000E0603
          0116060301160603011606030116060301160603011606030116060301160603
          0116060301160603011606030116060301160402001000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000011813
          0C1D554C426B9F7E5DB5C99D6EE0D29D66E7A57545BF3E2B1851000000000000
          00000000000000000000000000000000000000000000000000001D170F23BE96
          6DC2DDCDB8FBFFE1B9FFFFDBA9FFFFD29AFFFFC786FFAF8357C2000000000208
          050C071F15330A38255C0D432B700C351E5D02100722000000014D3A2954F9D2
          A1FAE1D9CEFFFFF3DEFFFFE1B8FFFFD7A8FFFFCC92FF98744CAD032115382F7D
          61B040BE98EA1ECE9BFB2ACB92FE29BA7AFB1A713EB60004010E2D221932E3BD
          95E4DCD2C5FFDDE0E5FFFFE9C2FFFFDFAEFFF8C890F959422B69158964C24FD2
          B0FF96E9D6FF1BE2B9FF27D8AAFF2BCE94FF1D854EC60005010F030301056049
          3465928A86EA316094FFA0A3A3FFF0C696F18C6E4D990D090614168764BA4AD7
          B6FFE6E8E9FF3CECCBFF26E4B5FF29CE91FE14673FA60D2C3444054C6A750A50
          71992C4A65E6285175FF2E5070E5372F24560907040B0000000005291C3A1E9D
          7DCD60799CFE4090A5FF23D1A3FA1E9F75E82191A5DD64C6D1F019DCFDFE41A4
          CFFF5F7CA2FF53799DFF2C4C68CB000306160000000000000000000101051731
          3E892E4D71FC324F76FB1647428B116475962BD4FAFEBEE9E2FF29FCFFFF67B8
          DDFF8AA6D4FF759FCBFF4B6F91F6111519630000000000000000090E141D4E6D
          8ED75B7EA6FF49698CF711151E5A08404A5821D5EBF2C4D2D4FF64E5EEFF88DE
          F9FFBCD5F8FF92BCECFF404E5EFF272623960000000200000000141E25307B9E
          C6EB83AADAFF6791BAFF2B2F3DC50408092410676F9839718FF534628DFF64A4
          BFFF95A0B6FF7B92AAFF454849FE323130820000000100000000151C23279BB9
          DBE3A8CEF8FF6C8BAEFF332C28E20F171E50294D68D73C5979F9335772FF5373
          79FF7D7D7CE8645E5ADC4B4B49BB15151530000000000000000008090D12676E
          79C27A818CFE606468FE47413BC509161C404A749AE46E94BEFF5B82AAFF3A69
          82FF2E5460AA0F0F0F210505050F000000010000000000000000020202032322
          2134413F3E7533312F7B15131133050A0C0F7991B5C39CC0EBFF7BA2D1FF4A78
          92FF3B5B64AD0102020600000000000000000000000000000000000000000000
          00000000000000000000000000000204060A6A7F97B3A0C1E1FF6F9CBCFF528B
          9BFD30454C7E0001010100000000000000000000000000000000000000000000
          0000000000000000000000000000050A0B2332525DD2518599FA619CAEF65F92
          A5C8121A1D290000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000102060F1A1C351E3036541E2F35490C13
          161D010101010000000000000000000000000000000000000000}
      end>
  end
  inherited img32: TcxImageList
    OnChange = DoGetTimesheetData
    FormatVersion = 1
    DesignInfo = 15073530
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
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          00000000000000000000000000000101010202020204050505080909090E0909
          090E0909090E0E0E0E161212121C1212121C1212121C1212121C1212121C1212
          121C1212121C1212121C0E0E0E170909090F0909090E0909090E050505090202
          0204010101020000000000000000000000000000000000000000000000000101
          01022C2C2C455151517E616161986F6F6FAC767676B87C7C7CC1858585CF8686
          86D0868686D08D8D8DDB919191E2919191E2919191E2919191E2919191E29191
          91E2919191E2929292E38E8E8EDD868686D1868686D0868686D07D7D7DC37777
          77B96F6F6FAD6363639A5151517F2C2C2C450101010200000000000000000000
          0000202020323D3D3D5F4F4F4F785D5D5D9C646464936767679C757575B37777
          77B9777777B9767676B8797979BC848484CD848484CE848484CE848484CE8484
          84CE848484CD797979BC767676B8767676B8777777B9737373B36565659E6565
          659D585858894D4D4D793D3D3D5F202020320000000000000000000000000000
          0000000000000000000000000000222222DD2B2B2BB50C0C0C1F000000000101
          01030303030503030305040404070909090E0A0A0A0F0A0A0A0F0A0A0A0F0A0A
          0A0F0909090E0404040703030305030303050303030502020204000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001D1D1DB7212121FF161616FF0E0E0EA70303
          0314000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000141414941C1C1CFF141414FF000000FF687B
          84FF7B929A9C0A0C0C0D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000A0A0A750A0706FF000000FF738E9AFFC9F4
          FFFFC0E5F4FFC7E8F3FF73848A90050607070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000161C1F535C7787FFADDCF4FFB7E6FDFFB6DE
          F1FFBCE3F2FFC1E6F4FFC9E9F5FFCFECF4FF6E7A7D8100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000202B3134A7DDFAFFA7D8F1FFACDAF1FFB2DD
          F2FFB8DFF3FFBEE4F2FFC4E7F3FFD7EEF5FF97D9F2FF22688692000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C1013139BD0EFFFA2D3F0FFA8D8EFFFAEDB
          F0FFB4DEF2FFBEE2F3FFC2E5F4FF6FC9F1FF40B8EEFF38B6EBFF0B2834380000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000097CEEDFF9ED2EEFFA4D4F0FFAAD9
          F1FFB7DEF0FF94D3F0FF58C2F2FF60C3F3FF50BFF0FF40B9ECFF2EACDEF20000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000088BDDBEA9AD0EFFFA3D3EEFFADD9
          F1FF80CCF3FF47BBEFFF35B5EBFF67C6F4FF58C1F1FF48BCEFFF37B6EBFF1C78
          9DAC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000074A2BEC99DCFEEFF80C9ECFF45BC
          EDFF79CAF7FF5BC2F2FF40BAEDFF36B6EBFF65C5F3FF4FBEF0FF3FB8EDFF2DB4
          E9FF0B394B520000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005D849CA468C3EEFF20B0E9FF05A7
          E3FF69C6F3FF67C4F3FF4CBCEEFF2EB4E9FF46BBEEFF59C1F1FF46BAEEFF36B7
          EAFF24B0E7FE01080B0C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000E1A202158C2F2FF42B9ECFF25B2
          E8FF11ABE5FF74CAF6FF55C0F1FF3CB9EDFF1CAFE7FF56BFF1FF4DBDEFFF3BB9
          EDFF2BB3E9FF1687B2C500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002E576C7157C0F1FF3DB9
          EDFF1CAFE6FF2EB4E9FF66C4F3FF46BAEDFF2CB3E9FF1CAFE7FF5AC1F1FF43BB
          EEFF33B6EBFF21B0E7FF094A626D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000549DC1CA51BF
          F0FF38B6ECFF12ACE4FF4DBDEEFF51BFF0FF37B7ECFF19AEE6FF2DB4E9FF50BE
          EFFF3AB8EBFF2AB2EAFF18AEE6FF02131A1D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000060C0E0F67C5
          F3FF4BBCEEFF32B5EBFF14ACE5FF58C1F1FF3FB9EDFF28B1E8FF07A9E3FF44BA
          EEFF41BAEDFF31B4EBFF21B1E8FF0E93C3DB0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002643
          525662C4F3FF46BCEDFF2BB2E9FF24B0E7FF4FBEEEFF2FB5EBFF16ACE5FF0CAA
          E4FF4CBDEFFF37B7ECFF26B1E9FF15ADE5FF065B7A8800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000508DABB25CC2F2FF41B9ECFF22B1E7FF38B7ECFF3CB8ECFF20B1E8FF08A9
          E3FF21B0E7FF44BAEDFF2EB3E9FF1DB0E8FF0EA9E4FF02202B30000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000102026DBFEAF457BFF1FF3CB9EDFF1EAFE7FF3FB9ECFF2AB3E8FF10AA
          E5FF06A9E3FF35B6EBFF37B6EBFF25B2E9FF13ACE5FF049DD4ED000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001C303A3C6CC7F4FF52BFEFFF36B6EBFF23B1E7FF36B7EBFF19AE
          E6FF0AAAE4FF0AAAE3FF3DB8EDFF2AB4EAFF0CACE9FF2DAEDCFF939899CD0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004978929766C5F4FF4DBCEEFF30B4EAFF2AB3EAFF25B1
          E8FF0CA9E4FF0AAAE4FF12ADE6FF26B4EDFF83BED5FFDCCCC4FFEEEBDDFF3737
          4964000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000006EB6DDE561C4F3FF48BBEDFF2BB3E8FF29B3
          E9FF13ACE5FF00A6E4FF1DAFE3FFCDD4D6FFF2E9E0FFE2E2E2FF30309BFF0000
          88F5000003050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000131F262777CAF6FF5BC1F2FF42B9EEFF27B2
          EAFF07A9E7FF74C9E8FFFCEBE4FFFFFFF1FFA5A5CCFF01018AFF090992FF1111
          99FF0C0C6FB70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003F64797C72C9F5FF51C0F2FF3FB8
          EBFFC6D9E2FFF6EAE2FFECEBE4FF4C4CA8FF00008AFF0E0E96FF111199FF1212
          9DFF1111A0FF0303182300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000065A8CBD08CC8E6FFDED6
          D1FFE5E1D5FFB0B0C8FF0B0B8EFF05058FFF0F0F97FF11119CFF11119FFF1010
          A0FF2020B6FF0000050800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000282C2F38D0C8C0FFD5D5
          C9FF5C5CA9FF00008AFF0D0D94FF11119AFF12129EFF10109EFF1414A6FF2626
          A9DE040417200000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000063626B921E1E
          9DFF03038EFF0F0F98FF11119AFF11119EFF10109FFF1F1FB5FF16166A8C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001616
          85C10F0F96FF10109CFF10109FFF1212A3FF2727B5EF07072633000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          060A2424B7FE0F0F9EFF1C1CB1FF1C1C80A80000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000040419231A1A72930A0A3446000000000000000000000000000000000000
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
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001E170831614B1B7E8D6C28B4A981
          2FD5B18831DFA8812FD48B6B27B25E481A791812072800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003B2D104F6D541F8C0000000100000000000000000000
          000000000000000000013E2F1154A27C2DCDD19F38FFD6A338FFD9A539FFD9A5
          39FFD9A539FFD9A539FFD8A439FFD6A338FFCF9E38FE95722ABD281F0B390000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008364239FD7A439FF674F1D8300000000000000000000
          00001A1407289B772BC4D4A239FFD9A539FFD9A539FFD9A539FFD9A539FFD9A5
          39FFD9A539FFD9A539FFD9A539FFD9A539FFD9A539FFCF9E37F4C09335EA745A
          2195040301080000000000000000000000000000000000000000000000000000
          000000000000000000009E792BBDDAA63AFFD5A23AFE4837145D000000004C3A
          1563C89A37F5DAA63AFFDAA63AFFDAA63AFFDAA63AFFDAA63AFFDAA63AFFDAA6
          3AFFDAA63AFFDAA63AFFDAA63AFFAC832ECA392B0F460100000200000000100C
          041B2119092D0000000000000000000000000000000000000000000000000000
          00000000000000000000B88D33DADBA73BFFDBA73BFFCF9D39F8846525A7D6A3
          3AFFDBA73BFFDBA73BFFDBA73BFFDBA73BFFDBA73BFFDBA73BFFDBA73BFFDBA7
          3BFFDBA73BFFC89836E9523E1660000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D2A03AF6DCA83CFFDCA83CFFDCA83CFFDBA73CFFDCA8
          3CFFDCA83CFFDCA83CFFDCA83CFFDCA83CFFDCA83CFFDCA83CFFDCA83CFFDCA8
          3CFF8E6C27A50D0A031300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000A070215DCA83DFFDCA83DFFDCA83DFFDCA83DFFDCA83DFFDCA8
          3DFFDCA83DFFDCA83DFFDCA83DFFDCA83DFFDCA83DFFDCA83DFFD1A03AF34C3B
          155A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001D160832DDA93EFFDDA93EFFDDA93EFFDDA93EFFDDA93EFFDDA9
          3EFFDDA93EFFDDA93EFFDDA93EFFDDA93EFFDDA93EFFC39537E1241B0A2D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000036290F4FDEAA3FFFDEAA3FFFDEAA3FFFDEAA3FFFDEAA3FFFDEAA
          3FFFDEAA3FFFDEAA3FFFDEAA3FFFDEAA3FFFC09337DD1611061D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005541196CDFAB3FFFDFAB3FFFDFAB3FFFDFAB3FFFDFAB3FFFDFAB
          3FFFDFAB3FFFDFAB3FFFDFAB3FFFCF9F3BED1C16082400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000074592289E0AC40FFE0AC40FFE0AC40FFE0AC40FFE0AC40FFE0AC
          40FFE0AC40FFE0AC40FFE0AC40FF6F5520800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008F6E2AA6E1AD41FFE1AD41FFE1AD41FFE1AD41FFE1AD41FFE1AD
          41FFE1AD41FFE1AD41FFE1AD41FFCF9F3DF2231A0A2F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000009E7A2FB5E1AD42FFE1AD42FFE1AD42FFE1AD42FFE1AD42FFE1AD
          42FFE1AD42FFE1AD42FFE1AD42FFE1AD42FFBE933AE2110D0519000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000046361451DDAA42FAE2AE43FFE2AE43FFE2AE43FFE2AE43FFE2AE
          43FFE2AE43FFE2AE43FFE2AE43FFE2AE43FFE2AE43FFA88234CA040301080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000E0B0417281F0C3A3C2E124F53401963695120777B5F
          258B8D6D2A9FA07B30B4B28935C8C3973BDCD5A540F0E0AC44FD32270F450000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002E240E45D6A743FDCB9D
          40F0B9903BDCA78336C8977531B484672C9F745A278B604B20774A3A1963362A
          124F231C0C3A0C09041700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000004030108B48B37CAE5B1
          46FFE6B247FFE6B247FFE7B348FFE8B449FFE7B44AFFE7B34BFFE6B34BFFE5B3
          4CFFE4B34CFFDDAD4BFA44351751000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000120E0519CA9C
          3EE1E6B247FFE7B348FFE7B349FFE8B449FFE9B54AFFEAB64BFFEBB74CFFEBB7
          4DFFECB84EFFEDB94FFFA48037B5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000261D
          0B2FDAA944F2E7B348FFE8B449FFE8B44AFFE9B54BFFEAB64BFFEBB74CFFECB8
          4DFFECB84EFFEDB94FFF9A7833A6000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000072582480E7B348FFE8B449FFE9B54AFFE9B54BFFEAB64CFFEBB74CFFECB8
          4DFFEDB94EFFEDB94FFF7F642B89000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001913
          0824CFA141EDE7B348FFE8B449FFE9B54AFFEAB64BFFEAB64CFFEBB74DFFECB8
          4EFFEDB94EFFEEBA4FFF634E216C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000130F061DBD92
          3CDDE6B248FFE7B349FFE8B449FFE9B54AFFEAB64BFFEBB74CFFEBB74DFFECB8
          4EFFEDB94FFFEEBA4FFF4233164F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000020190A2DBF953CE1E6B2
          47FFE7B348FFE8B449FFE8B44AFFE9B54AFFEAB64BFFEBB74CFFECB84DFFECB8
          4EFFEDB94FFFEEBA50FF241C0C32000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004737165AD0A241F3E5B146FFE6B2
          47FFE7B348FFE8B449FFE9B54AFFE9B54BFFEAB64CFFEBB74CFFECB84DFFECB8
          4EFFEDB94FFFEEBA50FF0D0A0415000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000B08031387692AA4DFAC44FFE5B146FFE6B247FFE6B2
          47FFE7B348FFE8B449FFE9B54AFFEAB64BFFEAB64CFFEBB74DFFECB84DFFEDB9
          4EFFEEBA4FFFE5B34DF600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000014B3A1860C3973CE9E2AE44FFE4B045FFE5B146FFE6B247FFE7B3
          48FFE7B349FFE8B449FFE9B54AFFEAB64BFFEBB74CFF997832A7E5B34CF8EDB9
          4FFFEEBA4FFFCB9F44DA00000000000000000000000000000000000000000000
          00000000000000000000000000001C1608290F0C041B00000000000000023328
          1046A68133CADDAB42FFE3AF44FFE4B044FFE4B045FFE5B146FFE6B247FFE7B3
          48FFE7B349FFE8B44AFFE9B54AFFE0AF48F55A461D630000000055421C5DECB8
          4FFEEEBA50FFB18A3BBD00000000000000000000000000000000000000000000
          000000000000000000000000000004030108795D2495C09439EACB9C3DF4DAA8
          41FFE1AD42FFE2AE43FFE3AF44FFE4B045FFE4B045FFE5B146FFE6B247FFE7B3
          48FFE8B449FFE9B54AFFB38B3AC4221A0B29000000000000000000000000795F
          2883EEBA50FF9574329F00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002E230D39A67F2FBDE0AC
          41FEE2AE42FFE2AE43FFE3AF44FFE4B045FFE5B146FFE6B247FFE6B247FFE7B3
          48FFBA903BCD4B3A175400000001000000000000000000000000000000000000
          000182662C8C4939184F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001D16
          08286A521F799D792FB2BC9139D4C79A3CDFBF943BD5A27D32B47158237E271E
          0C31000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000101
          010202020204040404070707070B0909090E0B0B0B120E0E0E16101010191212
          121C1313131F1515152116161623171717241717172519191927181818261717
          17241717172415151522141414201212121D1111111B0E0E0E170C0C0C140A0A
          0A100707070C05050509030303060101010300000001000000001212121D3A3A
          3A5B5151517E606060956A6A6AA5727272B1787878BB7D7D7DC2808080C88484
          84CD868686D1888888D4898989D68A8A8AD78B8B8BD88C8C8CDA8B8B8BD98A8A
          8AD7898989D6898989D5878787D2858585CF828282CB7E7E7EC57A7A7ABE7575
          75B66E6E6EAB6565659D585858894646466E2626263B030303050E0E0E173030
          304B5050507A929292CAA4A4A4DDA8A8A8E3ACACACE8AEAEAEEBB1B1B1EEB3B3
          B3F0B4B4B4F2B5B5B5F3B6B6B6F4B7B7B7F4B7B7B7F4B7B7B7F4B7B7B7F4B7B7
          B7F4B7B7B7F4B5B5B5F3B4B4B4F2B3B3B3F1B2B2B2EFB0B0B0EDADADADE9A9A9
          A9E5A6A6A6E0A0A0A0D88C8C8CC14545456A1E1E1E3002020204000000001515
          151CC0C0C0E4DDDDDDFFD3D3D3FFD2D2D2FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4
          D4FFD4D4D4FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
          D5FFD5D5D5FFD5D5D5FFD5D5D5FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FFD3D3
          D3FFD2D2D2FFD3D3D3FFDDDDDDFFBDBDBDE01010101600000000000000007070
          7083DBDBDBFFBCBCBCFFCFCFCFFFD3D3D3FFD3D3D3FFB8B8B8FFD5D5D5FFD5D5
          D5FFD6D6D6FFBABABAFFD6D6D6FFD7D7D7FFD7D7D7FFC9C9C9FFC9C9C9FFD7D7
          D7FFD7D7D7FFD6D6D6FFBABABAFFD6D6D6FFD5D5D5FFD5D5D5FFB8B8B8FFD3D3
          D3FFD2D2D2FFCFCFCFFFBCBCBCFFDBDBDBFF6767677900000000000000008181
          8197DCDCDCFFC2C2C2FFE3E3E3FFE4E4E4FFE5E5E5FFC5C5C5FFE6E6E6FFE6E6
          E6FFE7E7E7FFC7C7C7FFE8E8E8FFE8E8E8FFE8E8E8FFD8D8D8FFD8D8D8FFE8E8
          E8FFE8E8E8FFE8E8E8FFC7C7C7FFE7E7E7FFE6E6E6FFE6E6E6FFC5C5C5FFE4E4
          E4FFE4E4E4FFE3E3E3FFC1C1C1FFDCDCDCFF7A7A7A8F00000000000000008282
          8297DDDDDDFFAFAFAFFFC3C3C3FFC4C4C4FFC5C5C5FFADADADFFC6C6C6FFC6C6
          C6FFC7C7C7FFAEAEAEFFC7C7C7FFC7C7C7FFC8C8C8FFBBBBBBFFBBBBBBFFC7C7
          C7FFC7C7C7FFC7C7C7FFAEAEAEFFC6C6C6FFC6C6C6FFC6C6C6FFADADADFFC5C5
          C5FFC4C4C4FFC3C3C3FFAFAFAFFFDDDDDDFF7A7A7A8F00000000000000008282
          8297DEDEDEFFC0C0C0FFE0E0E0FFE1E1E1FFD2D2DDFF5353AFFF1414A5FF0000
          9FFF2020A9FF6F6FB0FFE5E5E6FFE6E6E6FFE6E6E6FFD6D6D6FFD6D6D6FFE6E6
          E6FFE6E6E6FFE6E6E6FFC5C5C5FFE5E5E5FFE4E4E4FFE3E3E3FFC3C3C3FFE2E2
          E2FFE1E1E1FFE0E0E0FFC0C0C0FFDDDDDDFF7B7B7B8F00000000000000008282
          8297DFDFDFFFB3B3B3FFC9C9C9FFBCBCC6FF2121A8FF4444A3FFAAAAC0FFC9C9
          CBFF9797BBFF2828AAFF6161B5FFCCCCCCFFCDCDCDFFC0C0C0FFC0C0C0FFCDCD
          CDFFCCCCCCFFCCCCCCFFB2B2B2FFCCCCCCFFCBCBCBFFCBCBCBFFB1B1B1FFCACA
          CAFFCACACAFFC9C9C9FFB3B3B3FFDEDEDEFF7C7C7C8F00000000000000008383
          8397DFDFDFFFC1C1C1FFE2E2E2FF6464BDFF5656B9FFC4C4C4FFE5E5E5FFE6E6
          E6FFE7E7E7FFB8B8C5FF1212A5FFC3C3DCFFE8E8E8FFD8D8D8FFD8D8D8FFE8E8
          E8FFE8E8E8FFE7E7E7FFC6C6C6FFE6E6E6FFE6E6E6FFE5E5E5FFC4C4C4FFE3E3
          E3FFE2E2E2FFE1E1E1FFC1C1C1FFDFDFDFFF7C7C7C8F00000000000000008484
          8497E0E0E0FFB4B4B4FFCACACAFF0F0FA4FFAFAFC3FFB2B2B2FFCCCCCCFFCCCC
          CCFFCDCDCDFFB3B3B3FF5151B0FF7474BAFFCDCDCDFFC0C0C0FFC0C0C0FFCDCD
          CDFFCDCDCDFFCDCDCDFFB3B3B3FFCCCCCCFFCCCCCCFFCCCCCCFFB2B2B2FFCBCB
          CBFFCACACAFFCACACAFFB4B4B4FFE0E0E0FF7D7D7D8F00000000000000008484
          8497E1E1E1FFC2C2C2FFDCDCE1FF3737B0FFE5E5E5FFC5C5C5FFE7E7E7FFE7E7
          E7FFE8E8E8FFC8C8C8FF5C5CBCFF8686CAFFEAEAEAFFD9D9D9FFD9D9D9FFEAEA
          EAFFE9E9E9FFE9E9E9FFC8C8C8FFE8E8E8FFE7E7E7FFE6E6E6FFC5C5C5FFE5E5
          E5FFE4E4E4FFE3E3E3FFC2C2C2FFE0E0E0FF7D7D7D8F00000000000000008484
          8497E1E1E1FFBBBBBBFFD6D6D6FF7474BCFFC8C8D3FF9393B6FFD9D9D9FFD9D9
          D9FFDADADAFFACACBEFF1010A3FFB8B8CFFFDBDBDBFFCCCCCCFFCCCCCCFFDBDB
          DBFFDADADAFFDADADAFFBCBCBCFFDADADAFFD9D9D9FFD9D9D9FFBBBBBBFFD7D7
          D7FFD7D7D7FFD6D6D6FFBBBBBBFFE1E1E1FF7D7D7D8F00000000000000008484
          8497E1E1E1FFBCBCBCFFD8D8D8FFC6C6D5FFDADADAFF5F5FB1FF4D4DAFFF9898
          C7FF7878BDFF1313A1FF7B7BC6FFDEDEDEFFDEDEDEFFCFCFCFFFCFCFCFFFDEDE
          DEFFDEDEDEFFDEDEDEFFBFBFBFFFDDDDDDFFDCDCDCFFDBDBDBFFBDBDBDFFDADA
          DAFFD9D9D9FFD8D8D8FFBCBCBCFFE1E1E1FF7D7D7D8F00000000000000008585
          8597E2E2E2FFC6C6C6FFE8E8E8FFE9E9E9FFEAEAEAFFC8C8C9FF8484CBFF4141
          B6FF5959BEFF9595BCFFEEEEEEFFEEEEEEFFEFEFEFFFDDDDDDFFDDDDDDFFEFEF
          EFFFEEEEEEFFEEEEEEFFCBCBCBFFEDEDEDFFECECECFFEBEBEBFFC9C9C9FFEAEA
          EAFFE9E9E9FFE8E8E8FFC6C6C6FFE1E1E1FF7D7D7D8F00000000000000008585
          8597E2E2E2FFB7AEA0FFCEBFA8FFCEBFA8FFCEBFA8FFB3A897FFCEBFA8FFCEBF
          A8FFCEBFA8FFB3A897FFCEBFA8FFCEBFA8FFCEBFA8FFC0B49FFFC0B49FFFCEBF
          A8FFCEBFA8FFCEBFA8FFB3A897FFCEBFA8FFCEBFA8FFCEBFA8FFB3A897FFCEBF
          A8FFCEBFA8FFCEBFA8FFB7AEA0FFE2E2E2FF7E7E7E8F00000000000000008585
          8597E2E2E2FFC8BFB2FFEFD9B5FFEFD9B5FFEFD9B5FFCCBBA1FFEFD9B5FFEFD9
          B5FFEFD9B5FFCCBCA1FFEFD9B5FFEFD9B5FFEFD9B5FFDDCAABFFDDCAABFFEFD9
          B5FFEFD9B5FFEFD9B5FFCCBCA1FFEFD9B5FFEFD9B5FFEFD9B5FFCCBBA1FFEFD9
          B5FFEFD9B5FFEFD9B5FFC8BFB2FFE2E2E2FF7E7E7E8F00000000000000008585
          8597E2E2E2FFD2D2D1FFCAC9C7FFCCCAC7FFCDCBC8FFC0BFBCFFCECCC8FFCECC
          C9FFCECCC9FFC2C0BEFFCFCDCAFFCFCDCAFFCFCDCAFFC9C7C4FFC9C7C4FFCFCD
          CAFFCFCDCAFFCFCDCAFFC2C0BDFFCECCC9FFCECCC9FFCECCC8FFC0BFBCFFCDCB
          C7FFCCCAC7FFCAC9C7FFD2D2D2FFE2E2E2FF7D7D7D8F00000000000000006464
          7697B3B3CDFFB4B4CEFFB5B5CFFFB6B6D0FFB6B6D0FFB7B7D1FFB8B8D2FFB9B9
          D3FFB9B9D3FFBABAD3FFBABAD4FFBABAD4FFBBBBD5FFBBBBD5FFBBBBD5FFBBBB
          D5FFBABAD4FFBABAD4FFB9B9D3FFB9B9D3FFB8B8D2FFB8B8D2FFB7B7D1FFB6B6
          D0FFB5B5CFFFB5B5CEFFB4B4CDFFB3B3CDFF5E5E708F00000000000000000F0F
          51970B0B84FF0B0B84FF0B0B84FF0B0B84FF0B0B84FF0B0B84FF0B0B84FF0B0B
          84FF0B0B84FF0B0B84FF0B0B84FF0B0B84FF0B0B84FF0B0B84FF0B0B84FF0B0B
          84FF0B0B84FF0B0B84FF0B0B84FF0B0B84FF0B0B84FF0B0B84FF0B0B84FF0B0B
          84FF0B0B84FF0B0B84FF0B0B84FF0B0B84FF0E0E4D8F00000000000000000707
          51970C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C
          8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C
          8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C
          8AFF0C0C8AFF0C0C8AFF0C0C8AFF0C0C8AFF07074D8F00000000000000000808
          54970E0E90FF0E0E90FF0E0E90FF0E0E90FF0E0E90FF0E0E90FF0E0E90FF0E0E
          90FF0E0E90FF0E0E90FF0E0E90FF0E0E90FF0E0E90FF0E0E90FF0E0E90FF0E0E
          90FF0E0E90FF0E0E90FF0E0E90FF0E0E90FF0E0E90FF0E0E90FF0E0E90FF0E0E
          90FF0E0E90FF0E0E90FF0E0E90FF0E0E90FF0808508F00000000000000000A0A
          5897101096FF101096FF101096FF101096FF101096FF101096FF101096FF1010
          96FF101096FF101096FF101096FF101096FF101096FF101096FF101096FF1010
          96FF101096FF101096FF101096FF101096FF101096FF101096FF101096FF1010
          96FF101096FF101096FF101096FF101096FF0909538F00000000000000000A0A
          5C9711119CFF11119CFF11119CFF11119CFF11119CFF11119CFF11119CFF1111
          9CFF11119CFF11119CFF11119CFF11119CFF11119CFF11119CFF11119CFF1111
          9CFF11119CFF11119CFF11119CFF11119CFF11119CFF11119CFF11119CFF1111
          9CFF11119CFF11119CFF11119CFF11119CFF0A0A578F00000000000000000B0B
          5F971212A2FF1212A2FF1212A2FF1212A2FF1212A2FF1212A2FF1212A1FF1212
          A1FF1212A1FF1212A2FF1212A2FF1212A2FF1212A2FF1212A2FF1212A2FF1212
          A2FF1212A2FF1212A2FF1212A2FF1212A1FF1212A1FF1212A2FF1212A2FF1212
          A2FF1212A2FF1212A2FF1212A2FF1212A2FF0A0A5A8F00000000000000000C0C
          63971414A7FF1414A7FF1414A7FF1414A7FF1414A7FF1515A6FF7575BBFF9292
          C3FF8989C0FF2929A9FF1414A7FF1414A7FF1414A7FF1414A7FF1414A7FF1414
          A7FF1414A7FF1414A7FF4A4AB1FF9393C5FF9494C5FF5151B2FF1414A7FF1414
          A7FF1414A7FF1414A7FF1414A7FF1414A7FF0B0B5D8F00000000000000000D0D
          66971C1CB1FF1616ADFF1616ADFF1616ADFF1616ADFF4949BBFFE9E9E9FFE9E9
          E9FFE9E9E9FF8D8DCEFF1616ADFF1616ADFF1616ADFF1616ADFF1616ADFF1616
          ADFF1616ADFF1616ADFFD1D1E4FFECECECFFECECECFFDDDDE7FF1616ADFF1616
          ADFF1616ADFF1616ADFF1616ADFF1D1DB1FF0D0D618F00000000000000001A1A
          668E3232C1FF1B1BB5FF1717B3FF1717B3FF1717B3FF5454C5FFF1F1F1FFF1F1
          F1FFF1F1F1FF9999D8FF1717B3FF1717B3FF1717B3FF1717B3FF1717B3FF1717
          B3FF1717B3FF1717B3FFDFDFEDFFF3F3F3FFF3F3F3FFECECF1FF1717B3FF1717
          B3FF1717B3FF1717B3FF1D1DB6FF3131C0FF18185F8500000000000000001313
          27342727B7F95353D5FF3D3DCAFF3232C5FF3232C5FF6969D3FFF6F6F6FFF6F6
          F6FFF6F6F6FFA7A7E2FF3232C5FF3232C5FF3232C5FF3232C5FF3232C5FF3232
          C5FF3232C5FF3232C5FFE4E4F2FFF6F6F6FFF6F6F6FFF0F0F5FF3232C5FF3232
          C5FF3232C5FF3E3ECAFF5252D5FF2626B6F70E0E212C00000000000000000000
          000014142D3A2222789D282886A7303089A731318AA76868A8C0F5F5F5FFF5F5
          F5FFF5F5F5FFA0A0C8DB35358AA730308AA730308AA730308AA730308AA73030
          8AA730308AA738388BA7E0E0E9F6F4F4F4FFF4F4F4FFEEEEF1FC3B3B8BA73030
          8AA7303089A7272785A72323779B121229350000000000000000000000000000
          0000000000000000000000000000000000000000000035353C42F1F1F1FFF1F1
          F1FFF1F1F1FF8383899300000000000000000000000000000000000000000000
          00000000000000000000D4D4D4E3EFEFEFFFEFEFEFFFE1E1E1F1000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000505050689898996A7A7
          A7B79F9F9FAF2424242800000000000000000000000000000000000000000000
          000000000000000000005252525AA4A4A4B6A5A5A5B75A5A5A63000000000000
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
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000F744558745469746C650075703B666F6C64657203118AA00000074B
          49444154785EC5977F8C1D5515C73F7766DEBEADDBB245DAEDAEA5B58506224A
          5AB121802D4401C1A251D00069B081AA51D462AAF10FB469508C5AB48A102254
          D04423224DFCA398B64ADA12A454932214D4FEA2407761DBEDFE783FF7BD99B9
          F79E63E9CCEEA468A4241ABEC9C93DF7BEE47CBFE7DC3367DE1855E5ED44C45B
          80318653842183F22608F8DFC2E431C3DC02E0BFAA8E3A3B3B014E353525C7CA
          7567114586B0044108F77DF9504E4EB4EAFE051B40C37BBF78E8738005E4961F
          CE536715EFC059E5D13BFB3301856A823729A594CB65499244F303EEBE6D1B60
          3098E302E61A205AF983799F3E7FFE921510B0E2BBF6F15FADE9FF1D607FF98D
          57A4911E54506EBEE3F2937A20D8BEFEE20F777795BE1704663139544FCE79BC
          6D972F5DFDF4C6E322FCEB22C483E08180A9A5F90608AFB9B5F7ECBEDEBEFBAF
          5DF21544130EBDBAF7BE2B5726CF3DFE8BA17D8035381504EFA5C8F078C0D233
          3FBB7460DE4756CDEAEA39BB602CD871AD060737DD35BC6377FFA2AF3DF08F63
          809043448CF73E3CBD37EABAF6EB7336AFFAD4BA8B66F59419F787A90C7770F7
          6FBEBFFBB17B07AEAA1D730DC055923DBAE25B1FE5B11F0D161550D1595DBDEF
          03BB1FD03C7D01CDFC288AE8BBE0B299173636FD18F86C2E00553540608C295F
          B1B2F79B572EBEF1A2DE9ED3A824CF63B545F71933B8FA924F2EAE571F59B369
          FD91B5809E5E5EE897ADEE53A0E8015540253334F78B15B54C9F3B8F05975D77
          C35F7EC20D2800A809E93E7719876A23ECAC3FCBA58B2F67B4FD2CB11B4180C4
          1EE6C20F9CC79E03EFF9EA92E5F689A71E1ED906C4DEAB2F0400EA2688FC1B88
          85C252A6CFEE63D12D7780998622A46E2A957A8BCD1B6FE30BD7AFA6123FCF58
          FCCA64F7AA2AB17B811BAFF944F072FFE107E62E6C2DEDDFD37AF58FF71C55E0
          844580112F8003F1FF4E2C024C884BA15107EFF09C46EC67F1D0E69F72F94557
          31CE018E55F71218250A23C0E0C5629DA5A2635CB76C59EFC8C823F71E177013
          90134226407252F1279117623CC8C499C3FB9024E861C79E1D982921EF9A3B85
          97C67612BB0606433130F31008A7F794B8F8C2455737ABBB57EEDE58D900B400
          97F580D78C5C5C417C12A99FDCABB3B88E73E83F32C0D617B6F2F99B3EC391DA
          0B589712994E8C3134D31A4695AEF2741450F5D4DA4759B2E41C5E7C79E03BCD
          0FB95DFB76349E017C04205E411D88CB85E484E47BEF519F0910E71062EEDFF2
          738E8C1EE1DBEBEF02A3A842777707577C7C01ED3401203031DBFEF012956A1B
          4300E6EF18B473E9250B9EFCF5ADCB775FBCFCF64BB32B7082A431C40D541CA4
          29EA5310878AC7780F78C40BEA1D9839ACF9D897A85613CA3D0B88BA66D06834
          58FBF08D4CEB9CC9687310C51012E1ACB2EEE647993AB58B5214118621815AF3
          EA93BF3F2B0802269BD0C5E348B385A66DC6478E30F2DA5192D8822A2A822A18
          F1885744F7306DEEFB99F3C1EB09422539BA1DE7CF3C4196D836716AC1404882
          B530C5BEC694C167298506139518DC7788FDDB776DA2780A14173770F53A9A8C
          3378708073AF5B43C7D41964508CD1DC55D47B44058D07F143CF13C46D82E84C
          BC55E2B4456A2D182520C15B2140098DA514189490B1970FD388DD56638C4C0A
          489B4DD27A9DD6E830D1B43E3ABAA6E15FDB823A5B0C27511445C50380085E05
          118B318AB34ADB8E63821030243E214D213082A631A2010A0C0F0CC55BFE39BE
          1DC804F8D4639B75E26A8DEAD03033165E80B68691A405282AC57052325F2704
          A960BC500AA1AFBB8FDF3EB8376B4A0113C07BFBCEA164001723448CBE7EB56D
          FBE7CDFB9BE3F91580774ADCA8D1AA346856C6397BF6BB91F1812C7B55104155
          118AC1A4C5E34AE01D65AD71E70DAB89E314EF1CA24A68A0B35CA2C38F816DA1
          36E0D8A1019A6DFF27408A41643D71AD4673AC421075F08EA99DA4AFEC444530
          51194384070232212AAE684EF188F7E8D02E4AA92350873A0F08F86C847BB1E0
          1D94CA0C1D1EE5C048BA15F0934DE8ACA75DAF501FA931F3BCF391F630BE318A
          A259924631A603893A4003340C50EB010F3E5F9D1088076FC15AD45BC4591401
          04C550ABC634EBF1FE7BFE5A3D0C685181C4D11EABD16AB678E7ECD9D86A3FDE
          5A4040003C5EDA208228C53BC298E27A9CC3E04FF86495CACC2B26108C1A46FA
          1B3462DD3191FD43CB66651548ADD0AA551107D36775E346F7A3362982A8271B
          D79207CF7D2D880C925D8951109D3C4724D31A1A4687C7A9B4DCD38000AAA244
          4060134F73648CE9BD6740D2C0558751E7C008E205340F0E04EAB380AA28023E
          23D57C6F848C580539B12A1845D28091A138D9F462EB09C003884004A8738EB8
          D964FEC239B8C62092C6A89F28A5648155C12B425EF29C040102411D80E25102
          5124270670A950194DA8B7FCAEE78E254D40375C3953D1AC023649F95B54E682
          BD3B0FB0EFA9FDA8024650316410508089ECC83303152583A2F9B9024CFA8A88
          1227BEB2EB68B216480109C260F24F6907D00994FFE387C41BF76FFD37053C90
          006DC03E7875AF804E0A0880CC4E1D86B70605243705348E6300A2E210CFFF1F
          CA1BF0B67F1D07BCCDF8170EDF2FED44D790E90000000049454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000303
          03050707070B0C0C0C131010101916161623171717251D1D1D2D222222362323
          233723232337242424382D2D2D473030304C3030304C3030304C3030304C3030
          304C3030304C2D2D2D47242424382323233723232337222222361D1D1D2D1717
          172516161623101010190C0C0C130707070B03030305000000001010101A4848
          48716464649C757575B67E7E7EC4878787D28A8A8AD78F8F8FDE939393E59494
          94E6949494E7949494E7999999EE9A9A9AF09B9B9BF19B9B9BF19B9B9BF19B9B
          9BF19A9A9AF0999999EE949494E7949494E7949494E6939393E58F8F8FDE8A8A
          8AD7878787D27E7E7EC4757575B66464649C484848711010101A0707070B2020
          20333232324E3F3F3F634C4C4C77707070A87C7C7CBA838383C3838383C38787
          87CA8E8E8ED48F8F8FD58F8F8FD58F8F8FD58F8F8FD58F8F8FD58F8F8FD58F8F
          8FD58F8F8FD58F8F8FD58F8F8FD58E8E8ED4878787CA838383C3838383C37C7C
          7CBA727272AB4D4D4D793F3F3F633232324E202020330707070B000000000000
          0000000000000000000155555576C3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FF6969698F00000001000000000000000000000000000000000000
          000000000000000000007979799FC3C3C3FFC3C3C3FFC3C3C3FFC6C6C6FFC6C6
          C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
          C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5C5FFC3C3C3FFC3C3
          C3FFC3C3C3FF8B8B8BB700000000000000000000000000000000000000000000
          000000000000000000007979799FC3C3C3FFC3C3C3FFC3C3C3FFB1AA9FFFAFA9
          9DFFAFA99DFFAFA99DFFAFA99DFFAFA99DFFAFA99DFFAFA99DFFAFA99DFFAFA9
          9DFFAFA99DFFAFA99DFFAFA99DFFAFA99DFFAFA99DFFB4AEA5FFC3C3C3FFC3C3
          C3FFC3C3C3FF8C8C8CB700000000000000000000000000000000000000000000
          000000000000000000007A7A7A9FC4C4C4FFC4C4C4FFC4C4C4FFBDBBB8FFBCBA
          B7FFB4B7B9FF74A1C9FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBA
          B7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBEBDBAFFC4C4C4FFC4C4
          C4FFC4C4C4FF8C8C8CB700000000000000000000000000000000000000000000
          000000000000000000007C7C7C9FC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC7C7
          C8FF84AFD9FF148AE9FFACBDCFFFC8C8C8FFC8C8C8FFC0BDB6FFBFBCB5FFBFBC
          B5FFBFBCB5FFBFBCB5FFBFBCB5FFBFBCB5FFBFBCB5FFC2C0BCFFC8C8C8FFC8C8
          C8FFC8C8C8FF8E8E8EB700000000000000000000000000000000000000000000
          000000000000000000007E7E7E9FCACACAFFCACACAFFCACACAFFCACACAFF58A4
          E1FF0D98EBFF0E96EAFF0B93EBFF97B8D6FFCACACAFFB4AFA7FFB3AEA5FFB3AE
          A5FFB3AEA5FFB3AEA5FFB3AEA5FFB3AEA5FFB3AEA5FFBBB7B2FFCACACAFFCACA
          CAFFCACACAFF919191B700000000000000000000000000000000000000000000
          000000000000000000007F7F7F9FCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFF53AC
          E8FF47A4EDFF0E92F0FF0697EDFF70B2E1FFCDCDCDFFD1D1D1FFD1D1D1FFD1D1
          D1FFD1D1D1FFD1D1D1FFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCD
          CDFFCDCDCDFF939393B700000000000000000000000000000000000000000000
          000000000000000000008181819FD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FF80B5
          E0FF0BA2F3FF0FA7F2FF48B0EEFFBDC8D4FFD0D0D0FFADA69AFFABA497FFABA4
          97FFABA497FFABA497FFCDCCCBFFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0
          D0FFD0D0D0FF949494B700000000000000000000000000000000000000000000
          000000000000000000008383839FD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FF49B1
          EDFF0DA0F8FF0B99F7FF07A1F8FF9BBEDEFFD2D2D2FFCBC9C7FFCAC8C6FFCAC8
          C6FFCAC8C6FFCAC8C6FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2
          D2FFD2D2D2FF969696B700000000000000000000000000000000000000000000
          000000000000000000008484849FD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFACC7
          DEFF3CB7F5FF11B4FBFF5ABAEFFFCBD1D6FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
          D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
          D5FFD5D5D5FF989898B700000000000000000000000000000000000000000000
          000000000000000000008686869FD7D7D7FFD7D7D7FFD7D7D7FFD1D0CDFFD0CE
          CBFFC6CACDFF88B9DBFFD0CECBFFD0CECBFFD0CECBFFD0CECBFFD0CECBFFD0CE
          CBFFD0CECBFFD0CECBFFD0CECBFFD0CECBFFD0CECBFFD2D1CEFFD7D7D7FFD7D7
          D7FFD7D7D7FF9A9A9AB700000000000000000000000000000000000000000000
          000000000000000000008787879FD9D9D9FFD9D9D9FFD9D9D9FFAEA79BFFABA4
          98FFABA498FFABA498FFABA498FFABA498FFABA498FFABA498FFABA498FFABA4
          98FFABA498FFABA498FFABA498FFABA498FFABA498FFB5AFA5FFD9D9D9FFD9D9
          D9FFD9D9D9FF9B9B9BB700000000000000000000000000000000000000000000
          000000000000000000008888889FDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDB
          DBFFC7D2DEFF4EA1EAFFDBDBDBFFDBDBDBFFDBDBDBFFDCDCDCFFDCDCDCFFDCDC
          DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDBDBDBFFDBDB
          DBFFDBDBDBFF9D9D9DB700000000000000000000000000000000000000000000
          000000000000000000008989899FDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFC7D3
          E0FF53A6EAFF0B8BE8FF78B4E7FFDADCDEFFDDDDDDFFB2ABA0FFAFA99DFFAFA9
          9DFFAFA99DFFAFA99DFFAFA99DFFAFA99DFFAFA99DFFBFBAB2FFDDDDDDFFDDDD
          DDFFDDDDDDFF9E9E9EB700000000000000000000000000000000000000000000
          000000000000000000008B8B8B9FDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF39A2
          ECFF1B9FEEFF1A9AEFFF0E99EBFF84BAE9FFDFDFDFFFD2D0CDFFD1CFCBFFD1CF
          CBFFD1CFCBFFD1CFCBFFD1CFCBFFD1CFCBFFD1CFCBFFD6D5D2FFDFDFDFFFDFDF
          DFFFDFDFDFFFA0A0A0B700000000000000000000000000000000000000000000
          000000000000000000008C8C8C9FE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FF92C6
          ECFF42A4F4FF0496F1FF0AA0EEFF8FC3EBFFE1E1E1FFD3D1CDFFD2D0CCFFD2D0
          CCFFD2D0CCFFD2D0CCFFE0E0E0FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFA1A1A1B700000000000000000000000000000000000000000000
          000000000000000000008D8D8D9FE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF5EB3
          F0FF0EAAF4FF1AA7F5FF48A9F6FFD3DCE5FFE3E3E3FFB3ADA2FFB0AA9EFFB0AA
          9EFFB0AA9EFFB1AA9FFFDFDEDDFFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFA2A2A2B700000000000000000000000000000000000000000000
          000000000000000000008E8E8E9FE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF66BE
          F2FF0AA7F9FF01A0FAFF0CB1F8FFACCDEBFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFA3A3A3B700000000000000000000000000000000000000000000
          000000000000000000008F8F8F9FE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFD8E0
          E7FF7EC4F3FF2BB6FBFFA3CEEEFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFA5A5A5B700000000000000000000000000000000000000000000
          000000000000000000009090909FE7E7E7FFE7E7E7FFE8E8E8FFE8E8E8FFE8E8
          E8FFE7E8E8FFCDDCEBFFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE7E7
          E7FFE7E7E7FFA5A5A5B700000000000000000000000000000000000000000000
          000000000000000000009090909FE9E9E9FFE4E7EAFF57A4DCFF4E9FDBFF4E9F
          DBFF4E9FDBFF4E9FDBFF4E9FDBFF4E9FDBFF4E9FDBFF4E9FDBFF4E9FDBFF4E9F
          DBFF4E9FDBFF4E9FDBFF4E9FDBFF4E9FDBFF4E9FDBFF4E9FDBFF58A4DCFFE5E7
          EAFFE9E9E9FFA6A6A6B700000000000000000000000000000000000000000000
          000000000000000000009191919FEAEAEAFFD7E1E9FF1386DAFF1386DAFF1386
          DAFF1386DAFF1386DAFF1386DAFF1386DAFF1386DAFF1386DAFF1386DAFF1386
          DAFF1386DAFF1386DAFF1386DAFF1386DAFF1386DAFF1386DAFF1386DAFFD7E1
          E9FFEAEAEAFFA7A7A7B700000000000000000000000000000000000000000000
          000000000000000000009191919FEBEBEBFFD8E3EBFF178DE1FF178DE1FF178D
          E1FF178DE1FF178DE1FF178DE1FF178DE1FF178DE1FF178DE1FF178DE1FF178D
          E1FF178DE1FF178DE1FF178DE1FF178DE1FF178DE1FF178DE1FF178DE1FFD8E3
          EBFFEBEBEBFFA5A5A5B700000000000000000000000000000000000000000000
          000000000000000000009292929FECECECFFDBE5ECFF32A2EBFF32A1EBFF32A1
          EBFF32A1EBFF32A1EBFF32A1EBFF32A1EBFF32A1EBFF32A1EBFF32A1EBFF32A1
          EBFF32A1EBFF32A1EBFF32A1EBFF32A1EBFF548CB3FF7B8084FF747C82FF7E80
          80FF7A7A7AFB3434345600000000000000000000000000000000000000000000
          000000000000000000009393939FECECECFFECECECFFAED4EDFFB1D8EFFFB1D8
          EFFFB1D8EFFFB1D8EFFFB1D8EFFFB1D8EFFFB1D8EFFFB1D8EFFFB1D8EFFFB1D8
          EFFFB1D8EFFFB1D8EFFFB1D8EFFFB1D8EFFF83888BFF757575FF6F6F6FFF6565
          65FB222222570000000000000000000000000000000000000000000000000000
          000000000000000000009393939FEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF808080FF676767FF5D5D5DFB1F1F
          1F57000000000000000000000000000000000000000000000000000000000000
          000000000000000000009393939FEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF707070FF535353FB1C1C1C570000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008A8A8A95EFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF5E5E5EFB19191957000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B1B1B1E8A8A8A959393939F9393939F9393939F9393
          939F9393939F9393939F9393939F9393939F9393939F9393939F9393939F9393
          939F9393939F9393939F9393939F8D8D8D9F2A2A2A5700000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000010101030707070B0A0A0A101010101A1111111B171717241D1D1D2D1D1D
          1D2E1D1D1D2E1D1D1D2E2727273E2B2B2B432B2B2B432B2B2B432B2B2B432B2B
          2B432B2B2B432727273E1D1D1D2E1D1D1D2E1D1D1D2E1D1D1D2D171717241111
          111B1010101A0A0A0A100707070B0101010300000000000000000E0E0E174F4F
          4F7B6C6C6CA87D7D7DC2868686D08C8C8CDD8F8F8FE1939393E8989898EF9898
          98EF989898F0989898F09D9D9DF79E9E9EF99F9F9FFA9F9F9FFA9F9F9FFA9F9F
          9FFA9E9E9EF99D9D9DF7989898F0989898F0989898EF989898EF939393E88F8F
          8FE18C8C8CDD868686D07D7D7DC26C6C6CA84F4F4F7B0E0E0E17050505082020
          20333232324E3F3F3F63464646726E6E6EA47B7B7BB5818181BF7F7F7FBD8585
          85C58D8D8DD18D8D8DD28D8D8DD18D8D8DD18D8D8DD18D8D8DD18D8D8DD18D8D
          8DD18D8D8DD18D8D8DD18D8D8DD28D8D8DD1858585C57F7F7FBD818181BF7A7A
          7AB5707070A5464646723F3F3F633232324E2020203305050508000000000000
          0000000000000000000068686880E0E0E0FFDFDEDFFFE0DFDFFFE0DFDFFFE0DF
          DFFFE0DFDFFFE0DFDFFFE0DFDFFFE0DFDFFFE0DFDFFFE0DFDFFFE0DFDFFFE0DF
          DFFFE0DFDFFFE0DFDFFFE0DFDFFFE0DFDFFFE0DFDFFFE0DFDFFFE0DFDFFFDFDE
          DFFFE0E0E0FF6D6D6D8500000000000000000000000000000000000000000000
          000000000000000000009A9A9AACDCDBDBFFE0DEDFFFD0DBD6FFD1DBD6FFD1DB
          D6FFD1DBD6FFD1DBD6FFD5DDD9FFD1DCD7FFD1DCD7FFD1DCD7FFD1DCD7FFD5DD
          D9FFD1DCD7FFD1DCD7FFD1DCD7FFD1DCD7FFD1DCD7FFD1DCD7FFD0DCD6FFDDDE
          DDFFDCDBDCFFA0A0A0B500000000000000000000000000000000000000000000
          00000000000000000000999999AAE2DFE1FF9FCDB5FFADE0C4FFAEDFC4FFADDF
          C4FFADDFC4FFB1E1C7FF7AC69EFFB8D4C6FFB6D5C5FFB6D5C5FFB9D5C6FF7DC5
          A0FFB3D2C1FFB1D1C0FFB1D1C0FFB1D1C0FFB1D1C0FFB1D1C0FFB3D2C2FF92CB
          ABFFE4DFE1FF9F9F9FB300000000000000000000000000000000000000000000
          000000000000000000009A9A9AAAE4E0E2FF9DCCB4FFDCFCEBFFD8F8E7FFD8F8
          E7FFD8F8E7FFDEFCECFF8DCFACFFCACAC5FFABB6A9FFACB7AAFFC0C2BBFF93CD
          AEFFE5E0E3FFE2DFE1FFE2DFE1FFE2DFE1FFE2DFE1FFE2DFE1FFE8E1E5FF9ECE
          B5FFE4E0E2FFA0A0A0B300000000000000000000000000000000000000000000
          000000000000000000009A9A9AAAE5E1E3FF9ECEB4FFDAFBEAFFD6F8E6FFD6F8
          E6FFD6F8E6FFDCFBEBFF8DCFACFFC2C3BDFF9CAA9AFF9CAB9BFFB4B9B0FF94CE
          B0FFE4E0E2FFE1E0E1FFE1E0E1FFE1E0E1FFE1E0E1FFE1E0E1FFE7E1E4FF9FCF
          B4FFE4E1E3FFA0A0A0B300000000000000000000000000000000000000000000
          000000000000000000009A9A9AAAE8E3E5FF9FCFB5FFC9E9D8FFC6E6D6FFC6E6
          D6FFC6E6D6FFCCE9DAFF87CAA6FFD6E2DCFFD3E2DBFFD3E2DBFFD7E3DDFF8BC9
          A8FFCEDED6FFCDDED5FFCDDED5FFCDDED5FFCDDED5FFCDDED5FFD1DFD8FF99CE
          B1FFE8E3E6FFA1A1A1B300000000000000000000000000000000000000000000
          000000000000000000009C9C9CAAE9E4E6FF9FCFB5FFA7DFC0FFA6DEBFFFA6DE
          BFFFA6DEBFFFAADFC2FF7EC7A1FFB2D4C1FFADD3BEFFADD3BEFFB1D4C1FF83C6
          A2FFB0D6C1FFB6DAC7FFB6DAC7FFB6DAC7FFB6DAC7FFB6DAC7FFB3D6C5FF90CB
          ABFFE9E4E7FFA2A2A2B300000000000000000000000000000000000000000000
          000000000000000000009D9D9DAAE9E5E7FF9FCEB6FFDCFCEBFFD8F8E8FFD8F8
          E8FFD8F8E8FFDEFDECFF89CCAAFFF0E7EBFFE8E5E7FFE8E5E7FFEFE7EBFF93CC
          ADFFDEDBDCFF8FA08CFF94A492FF94A492FF94A492FF91A18EFFC8C8C4FFA3D2
          BAFFE9E5E7FFA3A3A3B300000000000000000000000000000000000000000000
          000000000000000000009E9E9EAAEAE6E8FFA1D0B6FFE0FCEDFFDCF9E9FFDCF9
          E9FFDCF9E9FFE2FCEEFF8CCDAAFFF4E8EEFFECE6E9FFECE6E9FFF3E9EEFF94CD
          AEFFEBE6E8FFCACCC8FFCCCECAFFCCCECAFFCCCECAFFCBCDC8FFE4DEE0FFA4D2
          B8FFEAE6E8FFA4A4A4B300000000000000000000000000000000000000000000
          000000000000000000009E9E9EAAECE7EAFFA1D0B7FF8CCAA9FF8ECAA9FF8ECA
          A9FF8ECAA9FF8FCBABFF7AC59DFF8FCBABFF8DCBA9FF8DCBA9FF8FCCABFF79C4
          9EFF8FCCABFF94D0B1FF94D0B1FF94D0B1FF94D0B1FF94D0B1FF90CEADFF87C8
          A5FFEDE8EBFFA5A5A5B300000000000000000000000000000000000000000000
          000000000000000000009F9F9FAAECE8EAFFA2D1B7FFDEFDEDFFDAFAE9FFDAFA
          E9FFDAFAE9FFE1FEEEFF8CCEAAFFF6EBF1FFEEE8EBFFEEE8EBFFF5EBF0FF94CC
          AEFFEDE6E9FFC5C9C2FFC7CBC5FFC7CBC5FFC7CBC5FFC5CAC3FFE4DEDFFFA5D3
          BAFFECE8EAFFA5A5A5B300000000000000000000000000000000000000000000
          00000000000000000000A0A0A0AAEEE9EBFFA1D0B7FFDBFCEBFFD7F8E7FFD7F8
          E7FFD7F8E7FFDEFCECFF8ACDA9FFF4EBEFFFECE9EAFFECE9EAFFF3EBEFFF93CE
          AEFFE2DFE0FF94A391FF99A796FF99A796FF99A796FF95A493FFCECDC9FFA5D3
          BBFFEDE9EBFFA6A6A6B300000000000000000000000000000000000000000000
          00000000000000000000A0A0A0AAEFEAEDFFA1D1B8FFB6DFC9FFB5DEC8FFB5DE
          C8FFB5DEC8FFB9DFCBFF82C8A3FFBFDACCFFBAD9C8FFBAD9C8FFBEDACBFF86C8
          A5FFBDDCCCFFC1DECFFFC1DECFFFC1DECFFFC1DECFFFC1DECFFFC0DCCDFF94CC
          AEFFF0EBEDFFA7A7A7B300000000000000000000000000000000000000000000
          00000000000000000000A0A0A0AAF0EBEEFFA3D1B9FFB6E7CDFFB5E5CBFFB5E5
          CBFFB5E5CBFFB9E8CFFF83C9A4FFCDE2D7FFCAE2D6FFCAE2D6FFCDE3D8FF89C9
          A7FFC5DDD1FFC3DCCEFFC3DCCEFFC3DCCEFFC3DCCEFFC3DCCEFFC6DED1FF97CD
          B0FFF1ECEEFFA7A7A7B300000000000000000000000000000000000000000000
          00000000000000000000A1A1A1AAF0EBEDFFA2D1B7FFDBFBEBFFD7F8E6FFD7F8
          E6FFD7F8E6FFDDFCECFF8FD1ADFFBFC3BCFF91A18FFF92A290FFAEB6AAFF98D1
          B3FFF1ECEEFFEDEBECFFEDEBECFFEDEBECFFEDEBECFFEDEBECFFF3EDF0FFA2D2
          B9FFEFEBEDFFA7A7A7B300000000000000000000000000000000000000000000
          00000000000000000000A2A2A2AAF1ECEFFFA2D2B9FFE2F9EDFFDEF7E9FFDEF7
          E9FFDEF7E9FFE4FAEEFF8FD0AEFFDCD8D8FFBEC4BCFFBFC5BDFFD4D1CDFF97CF
          B2FFF4EDF1FFF1ECEFFFF1ECEEFFF1ECEEFFF1ECEEFFF1ECEEFFF7EEF3FFA3D2
          BAFFF1ECEFFFA9A9A9B300000000000000000000000000000000000000000000
          00000000000000000000A2A2A2AAF2EEF0FFA4D2B9FF88CBA7FF89CBA8FF89CB
          A8FF89CBA8FF8CCDAAFF79C49DFF92CEAEFF91CFAEFF91CFAEFF92CFAFFF7AC5
          9DFF8FCBABFF91CEADFF91CEADFF91CEADFF91CEADFF91CEADFF8FCCACFF87C8
          A5FFF4EFF2FFA8A8A8B300000000000000000000000000000000000000000000
          00000000000000000000A3A3A3AAF2EDF0FFA2D3B9FFDFFDEDFFDBFAE9FFDBFA
          E9FFDBFAE9FFE1FEEEFF8BCDA9FFFCF0F6FFF3EEF1FFF3EEF1FFFBF0F6FF95CE
          B0FFF2EBEFFFCECFCBFFD0D2CEFFD0D2CEFFD0D2CEFFCED0CCFFEAE5E6FFA6D4
          BBFFF2EDF0FFA9A9A9B300000000000000000000000000000000000000000000
          00000000000000000000A2A2A2AAF3EEF1FFA3D2B8FFD8FAE8FFD4F7E5FFD4F7
          E5FFD4F7E5FFDAFAE9FF89CCA9FFF5EFF2FFEDEDEDFFEDEDEDFFF4EFF2FF93CD
          AFFFE0E2DFFF899D87FF8FA18EFF8FA18EFF8FA18EFF8B9E89FFC9CCC5FFA6D5
          BDFFF3EFF1FFA9A9A9B300000000000000000000000000000000000000000000
          00000000000000000000A4A4A4AAF3EEF1FFA0D2B6FFE0F9ECFFDCF6E8FFDCF6
          E8FFDCF6E8FFE2F9EDFF88CDA8FFF9F0F5FFF2EDEFFFF2EDEFFFF9F0F5FF91CC
          ADFFF5F0F4FFFAF4F8FFF9F4F8FFF9F4F8FFF9F4F8FFF9F4F8FFFBF2F8FFA1D2
          B8FFF3EEF1FFAAAAAAB300000000000000000000000000000000000000000000
          00000000000000000000A3A3A3AAF0EDEEFFCEE1D7FFA0D0B6FFA4D1BAFFA4D1
          BAFFA4D1BAFFA5D2BAFF9CD1B5FFA3D2BAFFA2D2B9FFA2D2B9FFA3D2BAFF9DD1
          B5FFA3D2B8FFA2D2B9FFA2D2B9FFA2D2B9FFA2D2B9FFA2D2B9FFA1D2B8FFB5D9
          C7FFF1EEF0FFAAAAAAB300000000000000000000000000000000000000000000
          00000000000000000000A3A3A3AAEDEDEDFFF0EEEFFFFFF3FDFFFFF4FDFFFFF4
          FDFFFFF4FDFFFFF4FDFFFFF4FEFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4
          FEFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FDFFFFF4FDFFFFF3FCFFF2EE
          F0FFEDEDEDFFAAAAAAB300000000000000000000000000000000000000000000
          00000000000000000000A3A3A3AAEDEDEDFFF2EDF0FF1AB35EFF20B562FF21B5
          62FF21B562FF21B562FF21B562FF21B562FF21B562FF21B562FF21B562FF21B5
          62FF21B562FF21B562FF21B562FF21B562FF1CB862FF18BB61FF15BA5FFFFBF8
          F9FFF9F8F9FFB0B0B0B800000000000000000000000000000000000000000000
          00000000000000000000A3A3A3AAEEEDEEFFE8EBEAFF16BA67FF29BE72FF29BE
          72FF29BE72FF29BE72FF29BE72FF29BE72FF29BE72FF29BE72FF29BE72FF29BE
          72FF29BE72FF29BE72FF29BE72FF24C271FF5D9B7BFF867B82FF787979FF7878
          78FF717171FF3232324D00000000000000000000000000000000000000000000
          00000000000000000000A3A3A3AAEEEDEDFFE9EBEAFF10C26FFF20C578FF20C5
          78FF20C578FF20C578FF20C578FF20C578FF20C578FF20C578FF20C578FF20C5
          78FF20C578FF20C578FF20C578FF19CC78FF7C7A7CFF767475FF706F6FFF6464
          64FF1B1B1B480000000000000000000000000000000000000000000000000000
          00000000000000000000A3A3A3AAEEEDEDFFEDECEDFF1ED385FF3EDA94FF3DDA
          94FF3DDA94FF3DDA94FF3DDA94FF3DDA94FF3DDA94FF3DDA94FF3DDA94FF3DDA
          94FF3DDA94FF3DDA94FF3DDA94FF3AE398FF6E7170FF676667FF5C5C5CFF1C1C
          1C4F000000000000000000000000000000000000000000000000000000000000
          00000000000000000000A4A4A4ABECECECFFEFEDEEFFE7EBEAFFDDE9E4FFDDE9
          E5FFDDE9E5FFDDE9E5FFDDE9E5FFDDE9E5FFDDE9E5FFDDE9E5FFDDE9E5FFDDE9
          E5FFDDE9E5FFDDE9E5FFDDE9E5FFE8F6F0FF616062FF515151FF1818184F0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000A2A2A2A9EFEFEFFFEFEFEFFFF0EFF0FFF2EFF0FFF2EF
          F0FFF2EFF0FFF2EFF0FFF2EFF0FFF2EFF0FFF2EFF0FFF2EFF0FFF2EFF0FFF2EF
          F0FFF2EFF0FFF2EFF0FFF2EFF0FFFFFFFFFF484848FF1515154F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001A1A1A1B8D8D8D998E8E8E9A8E8E8E9A8E8E8E9A8E8E
          8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E
          8E9A8E8E8E9A8E8E8E9A8F8F8F9A9090909D2020204A00000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000025744558745469746C6500436F70793B426172733B526962626F6E3B
          5374616E646172643B436C6F6E656D0EDF5B0000057B49444154785E9D966FA8
          1CE515C67FE79DB97BD3264B3F09458A16ADD70F516323681383F562488A4844
          2828164429A4B548A129A237B635BDDA8622041411691114C42F1614D18A70EB
          9F264255B4C44AD5226D28422842B4DA9BBB3B33EF797ADD7D9997C1DD4DE859
          06CE0ECB9C679EF99D67D62431A9FAFD3EA9C2C38F1F5EC16C11093040743A81
          0432C60DF09F4F57EFD97FDBD5CB8003FACDC32B428E803B6FDD452A4A669701
          86D9E2F7F66C6152555543139DA6890CEBC8DA5AC3894F4E32A89A9FFFF2D053
          76F7BEEB968178C70F77F2E737FFAE95573F00E80A303326D5A64D9B005A97A2
          3B9241EB01B800406608C3255E7BFB43F6DE70292707CDCF967EFD7B3BB8FFBB
          CB40F3AD4B16F8C57DCF08382D07ACAA2A2BCB32B83B92882EA0F51A01160C13
          94211083036258D7005C76F15944F7BBF61D78C20E1DB8712462F9F63D0E689A
          00836C7D8CD1CC2C7CEDAB7DDC7D74C8F3F39740886006065618C2A8063500A1
          086CDFFA75BC8EFBABA547EDC183372F0335898B8902EE7FF4D531702E0C4388
          BFBEFF11EFAC1FD380BB60E10CB6AD0F9284476730AC0028831109ECB8EC1B34
          EE4BC37DBFE57787F67644949380FBF14DDBA6025747A7A923C3BA1901F7D1C7
          AB7CFAD9803FBDFEC1BAE567836038AC3183B23042308A425CB563018F71A96A
          1EE2B1077E7400501690CB94A86ADC9177818B0E123886CB685CBCFCDA3FF8E9
          F7AFE0D917DFE5C87A7FE1E633E96FEC71C7AF9EC6A1750CC48E4BCF65E1BC73
          96807B813881814CBC3B193840E99982A3221043C07086550DC0E2F6F35839F2
          3EAFFFE518D77D670B83AAA16A228AD04451C74861F0AFE39F0114D320A4134C
          09326B7B278440908F80738CE15A0540510476EE389F175EFA1B6F1CFD27576E
          5B40A14451B86B9413C140FE610BF94407DCD36C07ACE50CE100388C44984570
          B19681C308EC5EDCCC732B6FF3E29177D9B57801A15720416C4ACA021CCFDB06
          7C0142A5B8541A47EA25DAF2B47AC2260277EDEE8B78EA0F6FF1FCCA51AED9F5
          4D2C046CCE982B0C6FC802263A20B576A390AC1060092AB50ECECD177CA5BF81
          1FDCF904EEEA00B7FBCACDBC77EC2475DDD09B9FC7828DC2CADD670AC0DB6C05
          703C275F2BDCDD0985F1E50D3D6EBEFE72FE7B724055D5C446D48DD3C44869B6
          9E1FFF267A83D4A308612442640133B70029C715F99C003300A3578E1DE86F9C
          27A67CA8D38BA92C6C74CE5D48421AB3E351A780300A1011A0BB0DD9010C5C98
          416FAEC025A482D82BE84527363E12E02401CA37E25227F22740A80C9D916FDE
          8D56461B0F46BADE18C41012C0C65C3906CE951D90382503E61E532B945A7594
          90604CBDA53E090F165070CA22E01E9184B291C4F4653603CA778C921872657B
          5AF2B3684130C3424038D145FAE4DFCE0E22471938D48AB0E43DB8BA92D46D90
          A048C0C91D8FE041EDDB726610354D8E20243C8F41DEFD47286534BB090E4AC0
          29392025F1D22C063234DEBD2202B23043E468508E0A7021AC052E0D24CD47A7
          82501E11A0AEB769887598686F3DB94AE83E8E18D3E0165265A766E7408ED4EC
          8081BA562868428A3A109293CE865EE04BBD403957220CF7BC431319F0D6AB2E
          601946E50DF134388583E4A031FD620CDCF37F7C8763C7570956804135583B0C
          0C019FB905DEEE8C65D07CDC39B9A4D68EFC12039480DB77EB9EAD65597E1242
          A881080C80B524405F142047AD0386486001DE12E94040780634CBEAA45ED334
          278013EB22EA10828038E95FB1E5E798C112C2276C8208A0CEC06EE5F8C5DDEB
          75113550F57ABD7C89295B204521A0BF712ED32EBAA104F9BC947BD4119480F3
          CFABAA2A0D8743C1F42876A05E1BACBEF293BB9FFCB6484E5B0A204BC3D4DD12
          29F748C83217F5B00B1CC034014AC7F09143B7EC01E68102303A75DADF13325D
          E0A60BC82232A9B3069D7E65E0A6D4FF00EBFB1275126F380F0000000049454E
          44AE426082}
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
          0000000000000303040F04040413040404130404041304040413040404130404
          0413040404130404041304040413040404130404041304040413040404130404
          0413040404130404041304040411000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000013131332858686DF898A8BE2898A8BE2898A8BE2898A8BE2898A8BE2898A
          8BE2898A8BE2898A8BE2898A8BE2898A8BE2898A8BE2898A8BE2898A8BE2898A
          8BE2898A8BE2898A8BE2898989E1232323510000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000026262655CCCDCEFFCCCDCEFFCCCDCEFFCCCDCEFFCCCDCEFFCCCDCEFFCCCD
          CEFFCCCDCEFFCCCDCEFFCCCDCEFFCCCDCEFFCCCDCEFFCCCDCEFFCCCDCEFFCCCD
          CEFFCCCDCEFFCCCDCEFFCCCDCEFF424343710000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002A2A2A55CFD0D1FFCFCFD0FFCFCFD0FFCFCFD0FFCFCFD0FFCFCFD0FFCFCF
          D0FFCFCFD0FFCFCFD0FFCFCFD0FFCFCFD0FFCFCFD0FFCFCFD0FFCFCFD0FFCFCF
          D0FFCFCFD0FFCFCFD0FFCFCFD0FF494949710000000000000000000000000000
          0000090909192F2F2F8D30303095303030953030309530303095303030953030
          3095484949B8D2D3D4FFD2D2D3FFCECFCFFFCDCECEFFCDCECEFFCDCECEFFCDCE
          CEFFCDCECEFFCDCECEFFCDCECEFFCDCECEFFCDCECEFFCDCECEFFD0D1D1FFD2D2
          D3FFD2D2D3FFD2D2D3FFD2D2D3FF4A4B4B710000000000000000000000000000
          000035353561CBCCCDFFCACBCCFFCACBCCFFCACBCCFFCACBCCFFCACBCCFFCACB
          CCFFB3B4B4FFD5D5D6FFD5D5D6FFCDCDCEFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCDCDCDFFCECE
          CEFFD4D4D5FFD5D5D6FFD5D5D6FF4B4B4B710000000000000000000000000000
          00003A3A3A63CECECFFFCECECFFFCDCECFFFCDCECFFFCDCECFFFCDCECFFFCDCE
          CFFFB5B5B6FFD8D8D9FFD7D7D8FFD1D1D2FFD0D0D1FFD0D0D1FFD0D0D1FFD0D0
          D1FFD0D0D1FFD0D0D1FFD0D0D1FFD0D0D1FFD0D0D1FFD0D0D1FFD0D0D1FFD0D0
          D1FFD0D0D1FFD7D7D8FFD7D7D8FF4C4C4C710000000000000000000000000000
          00003C3D3D63D1D1D2FFD1D1D2FFC8C8C9FFC6C6C7FFC6C6C7FFC6C6C7FFC6C6
          C7FFB0B1B1FFDADADBFFDADADBFFD4D4D4FFD2D2D3FFD2D2D3FFD2D2D3FFD2D2
          D3FFD2D2D3FFD2D2D3FFD2D2D3FFD2D2D3FFD2D2D3FFD2D2D3FFD2D2D3FFD2D2
          D3FFD9D9DAFFDADADBFFDADADBFF4C4D4D710000000000000000000000000000
          00003D3D3D63D4D4D5FFD4D4D5FFCDCDCDFFCBCBCCFFCBCBCCFFCBCBCCFFCBCB
          CCFFB4B4B5FFDDDDDEFFDCDCDDFFD0D0D1FFCDCDCEFFCDCDCEFFCDCDCEFFCDCD
          CEFFCDCDCEFFCDCDCEFFCDCDCEFFCDCDCEFFCDCDCEFFCFCFD0FFD4D4D5FFD4D4
          D5FFD5D5D6FFDCDCDDFFDCDCDDFF4D4D4D710000000000000000000000000000
          00003D3D3D63D7D7D8FFD7D7D8FFCBCBCBFFC8C8C9FFC8C8C9FFC8C8C9FFC8C8
          C9FFB2B2B3FFDFDFE0FFDFDFE0FFD6D6D7FFD4D4D5FFD4D4D5FFD4D4D5FFD4D4
          D5FFD4D4D5FFD4D4D5FFD4D4D5FFD4D4D5FFD4D4D5FFD4D4D5FFD5D5D6FFD5D5
          D6FFDDDDDEFFDFDFE0FFDFDFE0FF4E4E4E710000000000000000000000000000
          00003D3D3D63DADADBFFDADADBFFD9D9DAFFD9D9DAFFD9D9DAFFD9D9DAFFD9D9
          DAFFBDBEBEFFE2E2E3FFE1E1E2FFD3D3D3FFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
          CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
          CFFFD6D6D7FFE1E1E2FFE1E1E2FF4F4F4F710000000000000000000000000000
          00003D3E3E63DCDCDDFFDCDCDDFFD5D5D6FFD4D4D5FFD4D4D5FFD4D4D5FFD4D4
          D5FFBABABBFFE4E4E5FFE4E4E5FFE4E4E5FFE4E4E5FFE4E4E5FFE4E4E5FFE4E4
          E5FFE4E4E5FFE4E4E5FFE4E4E5FFE4E4E5FFE4E4E5FFE4E4E5FFE4E4E5FFE4E4
          E5FFE4E4E5FFE4E4E5FFE4E4E5FF4F4F4F710000000000000000000000000000
          00003E3E3E63DFDFE0FFDFDFE0FFD0D0D0FFCDCDCEFFCDCDCEFFCDCDCEFFCDCD
          CDFFB6B6B6FFE6E6E7FFE6E6E7FFD6D6D7FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2
          D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD8D8D9FFDCDC
          DDFFE5E5E6FFE6E6E7FFE6E6E7FF505050710000000000000000000000000000
          00003E3E3E63E2E2E3FFE2E2E3FFD9D9DAFFD8D8D9FFD8D8D9FFD8D8D9FFD8D8
          D8FFBDBDBEFFE9E9EAFFE9E9EAFFE0E0E1FFDDDDDEFFDDDDDEFFDDDDDEFFDDDD
          DEFFDDDDDEFFDDDDDEFFDDDDDEFFDDDDDEFFDDDDDEFFDDDDDEFFDDDDDEFFDDDD
          DEFFDEDEDFFFE9E9EAFFE9E9EAFF515151710000000000000000000000000000
          00003F3F3F63E4E4E5FFE4E4E5FFDCDCDCFFDADADBFFDADADBFFDADADBFFDADA
          DBFFBFBFC0FFEBEBECFFEBEBECFFE2E2E3FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0
          E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0E1FFE1E1E2FFEBEB
          ECFFEBEBECFFEBEBECFFEBEBECFF515152710000000000000000000000000000
          00003F3F3F63E7E7E8FFE7E7E8FFDEDEDEFFDCDCDDFFDCDCDDFFDCDCDDFFDCDC
          DDFFC1C1C1FFEEEEEFFFEEEEEFFFE4E4E5FFE2E2E3FFE2E2E3FFE2E2E3FFE2E2
          E3FFE2E2E3FFE2E2E3FFE2E2E3FFE2E2E3FFE2E2E3FFE2E2E3FFE2E2E3FFEAEA
          EAFFEDEDEEFFEDEDEEFFEDEDEEFF515151710000000000000000000000000000
          00003F3F3F63EAEAEBFFE9E9EAFFD6D6D7FFD3D3D4FFD3D3D4FFD3D3D4FFD3D3
          D4FFBBBBBCFFF0F0F1FFF0F0F1FFDCDCDCFFD6D6D7FFD6D6D7FFD6D6D7FFD6D6
          D7FFD6D6D7FFD6D6D7FFD6D6D7FFD6D6D7FFD6D6D7FFD6D6D7FFD6D6D6FFD5D5
          D5FFD1D1D1FFE0E0E0FFE9E9E9FF4F4F4F710000000000000000000000000000
          00003F3F3F63ECECEDFFECECEDFFECECEDFFECECEDFFECECEDFFECECEDFFECEC
          EDFFCCCCCDFFF2F2F3FFF2F2F3FFE8E8E9FFE5E5E6FFE5E5E6FFE5E5E6FFE5E5
          E6FFE5E5E6FFE5E5E6FFE5E5E6FFE5E5E6FFE5E5E6FFE5E5E6FFE1E1E1FFCFCF
          CFFFBABABAFFB7B6B6FFC7C6C6FF404040690000000000000000000000000000
          00003F3F4063EFEFF0FFEFEFF0FFDADADBFFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
          D7FFBEBEBFFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFE7E7E7FFCDCDCDFFB5B5
          B4FFA5A4A4FFB2B2B2FF919191DD0909090F0000000000000000000000000000
          000040404063F1F1F2FFF1F1F2FFE5E5E5FFE3E3E3FFE3E3E3FFE2E2E3FFE2E2
          E3FFC6C6C6FFF5F5F6FFF5F5F6FFE0E0E0FFDADADBFFDADADBFFDADADBFFDADA
          DBFFDADADBFFDADADBFFDADADBFFDADADBFFDADADBFFCACACAFFEDEDEDFFEEEE
          EEFFEEEEEEFFC3C3C2F11A1A1A32000000000000000000000000000000000000
          000040404063F3F3F4FFF3F3F4FFDEDEDFFFDADADBFFDADADBFFDADADBFFDADA
          DBFFC1C1C1FFF7F7F7FFF7F7F7FFE9E9EAFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFEFEFEFFFDEDEDEFFF1F1F1FFF1F1
          F0FFDBDBDBFA2B2B2B4A00000000000000000000000000000000000000000000
          000040404063F5F5F6FFF5F5F6FFE9E9EAFFE7E7E8FFE7E7E8FFE7E7E8FFE7E7
          E8FFCACACAFFF9F9F9FFF9F9F9FFE5E5E6FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE1E1E1FFD8D8D8FFF4F4F3FFE3E3
          E3FB3535355F0000000000000000000000000000000000000000000000000000
          000040404063F7F7F7FFF7F7F7FFEBEBEBFFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFCBCBCBFFFAFAFBFFFAFAFBFFFAFAFBFFFAFAFBFFFAFAFBFFFAFAFBFFFAFA
          FBFFFAFAFBFFFAFAFBFFFAFAFBFFFAFAFBFFFAFAFBFFE3E3E3FFE5E5E4FA3131
          3159000000000000000000000000000000000000000000000000000000000000
          000040404063F9F9F9FFF9F9F9FFE9E9E9FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFCCCCCCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
          FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFAFAFAFFC8C8C7F13434344E0000
          0000000000000000000000000000000000000000000000000000000000000000
          000040404063FAFAFBFFFAFAFAFFF1F1F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
          F0FFEAEAEAFFE5E5E5FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FF6D6D6DA54A4A4A7415151520000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000040404063FCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
          FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
          FCFFFCFCFCFFFBFBFBFFFBFBFBFF3B3B3B590000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003D3D3D63FDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFF383838590000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001C1C1C33979797D19B9B9BD49B9B9BD49B9B9BD49B9B9BD49B9B9BD49B9B
          9BD49B9B9BD49B9B9BD49B9B9BD49B9B9BD49B9B9BD49B9B9BD39B9B9BD39B9B
          9BD39B9B9BD39B9B9BD3979797D11E1E1E340000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          00000006091B00141D3F0023335B00344B730044608600527597006088A5006B
          9AB10075A7BA007DB3C20081B9C70080B7C60085BCCB0393CFDD059BD9E8059B
          D9E8006C99AC0005081700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000300233254006895AA0099
          DBEA00AAF3FF00ACF5FF00AEF7FF00AFF9FF00B0FAFF00B1FCFF00B1FCFF00AB
          F4FF00A8F1FF02AFF6FF0EB8FAFF1CC2FDFF25C8FFFF26C9FFFF27CAFFFF27CA
          FFFF1EC2FBFF0077AABA00000000000000000000000000000000000000000000
          0000000000000002030C0026375D0049698A008ECADA00ADF6FF00B2FCFF02B4
          FFFF03B5FFFF03B5FFFF04B5FFFF04B5FFFF03B5FFFF02B5FFFF00AEF7FF00AC
          F6FF00B3FEFF0AB9FFFF19C2FFFF25C9FFFF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF09ADEFFD00010107000000000000000000000000000000000000
          000000080C1F0092D0DF00ADF7FF00A9F1FF00ABF3FF03B5FFFF05B6FFFF06B7
          FFFF07B7FFFF08B8FFFF08B8FFFF08B8FFFF08B8FFFF07B7FFFF03AEF6FF00AE
          F8FF00B3FFFF09B9FFFF18C1FFFF24C8FFFF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF26C9FEFF049DDCEB00000001000000000000000000000000000000000000
          0000006590A500B0FBFF00B3FFFF00ACF5FF03B0F8FF07B7FFFF09B9FFFF0AB9
          FFFF0CBAFFFF0CBAFFFF0DBBFFFF0DBBFFFF0CBAFFFF0BBAFFFF0AB9FEFF03AD
          F4FF00A9F1FF01ADF5FF04ADF2FF05ACF1FF05ADF1FF06ADF1FF07AEF1FF08AE
          F1FF07ADF0FF0087C0D000040613000000000000000000000000000000000000
          0000008DC9D801B4FFFF04B5FFFF03AFF7FF08B6FCFF0BBAFFFF0DBBFFFF0FBC
          FFFF10BDFFFF11BDFFFF11BDFFFF11BDFFFF11BDFFFF10BDFFFF0EBBFEFF03AC
          F2FF00ABF3FF01B0FAFF0AB8FDFF15BFFFFF1FC5FFFF24C8FFFF26C9FFFF26C9
          FFFF26C9FFFF1DC1FAFF0078ABBC000000000000000000000000000000000000
          0000008FCCDB04B6FFFF08B8FFFF08B6FBFF0DBBFFFF10BCFFFF12BEFFFF13BF
          FFFF15BFFFFF16C0FFFF16C0FEFF16C0FFFF15C0FFFF15BFFFFF0AB3F6FF00AE
          F8FF00B3FFFF08B8FFFF15C0FFFF22C7FFFF26C9FFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF0DB3F3FF00090E230000000000000000000000000000
          00000090CEDC08B8FFFF0BBAFFFF0FBCFFFF11BDFFFF14BFFFFF16C0FFFF18C1
          FFFF19C2FFFF1AC2FEFF0EB6F6FF09B0F3FF0AB2F4FF13BBFAFF0CB4F6FF00AE
          F8FF00B3FFFF08B8FFFF14BFFFFF21C6FFFF26C9FFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF0FB4F4FF000D122C0000000000000000000000000000
          00000091CFDD0CBAFFFF0FBCFFFF12BEFFFF15C0FFFF18C1FFFF1AC3FFFF1CC4
          FFFF1EC4FFFF1FC5FFFF1FC5FFFF1FC5FEFF12B9F7FF00A6EDFF04ACF0FF04AB
          F0FF00AAF3FF00AFF8FF07B5FBFF11BCFDFF1BC2FDFF20C5FDFF21C5FDFF1FC3
          FBFF1CC0FAFF14B8F6FF007DB3C1000000010000000000000000000000000000
          00000091CFDD0FBCFFFF13BEFFFF16C0FFFF19C2FFFF1CC4FFFF1FC5FFFF21C6
          FFFF22C7FFFF23C8FFFF24C8FFFF24C8FFFF23C8FFFF16BCF8FF00A6EDFF02AA
          EFFF01A9EFFF00ABF4FF00ACF4FF04ADF3FF06AEF2FF09B0F2FF0CB2F3FF10B5
          F4FF13B8F6FF13B8F6FF049FDEED000F162C0000000000000000000000000000
          00000192D0DE12BEFFFF16C0FFFF1AC2FFFF1DC4FFFF20C6FFFF23C7FFFF25C9
          FFFF26C9FFFF26C9FFFF26CAFFFF26CAFFFF26C9FFFF26C9FFFF0BB0F2FF00A8
          F0FF00B2FDFF02B4FFFF0DBBFFFF18C1FFFF22C7FFFF26C9FFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF21C4FCFF00709FB00000000000000000000000000000
          00000194D1DF16C0FFFF1AC2FFFF1EC4FFFF21C6FFFF24C8FFFF26C9FFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF1ABEF9FF00AB
          F4FF00B3FFFF06B7FFFF12BEFFFF1FC5FFFF26C9FFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF0392CDDC0000000000000000000000000000
          00000294D1DF19C2FFFF1DC4FFFF21C6FFFF25C8FFFF26C9FFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF21C4FCFF00A7
          EEFF00B0FBFF01B4FFFF0CBAFFFF17C1FFFF22C7FFFF26C9FFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF1FC3FBFF006B99AA0000000000000000000000000000
          00000294D1DF1CC3FFFF20C6FFFF24C8FFFF26C9FFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF21C5FCFF00A6
          EDFF00A6EDFF00A9F1FF00ADF5FF05B1F7FF0CB6F8FF11B9F8FF14BAF8FF14B9
          F7FF11B6F5FF0CB2F3FF018BC5D400090D1E0000000000000000000000000000
          0000007BAFBF1CC2FDFF23C8FFFF26C9FFFF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF1DC1FAFF00A7
          EFFF00AEF8FF01B3FDFF09B6FAFF10B8F8FF14BAF7FF16BBF7FF17BCF8FF19BE
          F9FF14B9F6FF0193D0DF0004060E000000000000000000000000000000000000
          000000161F3805A1E2F117BCF8FF24C7FDFF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF12B7F5FF00AF
          F9FF00B3FFFF08B8FFFF16C0FFFF23C7FFFF26C9FFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF17BCF8FF0031476A000000000000000000000000000000000000
          0000000000000006081700334A6A0081B8C70EB3F3FE20C4FCFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF0FB5F4FF00AD
          F7FF00B3FFFF09B8FFFF17C1FFFF24C8FFFF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF1CC0FAFF00425F81000000000000000000000000000000000000
          00000000000000000000000000000000000000141D3600709FB20EB2F2FE23C6
          FDFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF24C8FEFF0AB0
          F2FF00ABF5FF02B2FBFF0EBBFEFF1AC2FFFF24C8FFFF26C9FFFF27CAFFFF27CA
          FFFF26C9FEFF0DB2F2FE0019233F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000001A253F018D
          C8D71ABEF9FF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF1BBF
          F9FF00638FA500587E960084BCCB029EDFED06ACF0FE09AFF2FF0AB0F2FF09AD
          EFFD049DDCEB00415C7300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0209006691A716BBF7FF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF1DC1
          FAFF004A6988000000000000000000000000000000030002030B0001020A0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002006E9CB11DC1FAFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF25C8
          FEFF007BB0BF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000040613059DDCEB26C9FEFF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF08A9EAF80002030B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000425F7C1ABEF9FF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF13B8F6FF001E2B4B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000A0F250DB3F3FF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF1EC2FBFF004F708C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000006A4E3F227CAFFFF27CAFFFF27CAFFFF27CA
          FFFF25C9FEFF007DB1C000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000392CDDC27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF0391CCDB00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000028DC6D527CAFFFF27CAFFFF27CAFFFF27CA
          FFFF25C8FEFF0083BAC900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000028BC5D427CAFFFF27CAFFFF27CAFFFF27CA
          FFFF13B8F6FF00364D6800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000081B8C624C7FDFF27CAFFFF25C8FEFF12B7
          F5FF006692A50000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000001A2640007DB2C1059BD9E80082B9C70030
          4560000000010000000000000000000000000000000000000000000000000000
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
          000000000000000000000000000000192440007DB2C2059BD9E80081B8C7002E
          4361000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000081B8C624C7FDFF27CAFFFF25C8FEFF12B7
          F5FF006591A50000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000028BC4D327CAFFFF27CAFFFF27CAFFFF27CA
          FFFF13B8F6FF00354B6800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000028BC5D427CAFFFF27CAFFFF27CAFFFF27CA
          FFFF25C8FEFF0083B9C800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000392CDDC27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF0390CBDA00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000006A4E3F227CAFFFF27CAFFFF27CAFFFF27CA
          FFFF25C9FEFF007CB0BF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000A0F250DB3F3FF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF1EC2FBFF004F718C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000415D7C1ABEF9FF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF13B8F6FF001E2B4B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000040613049DDCEB26C9FEFF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF08A9EAF80002030B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002006D9BB11CC0FAFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF25C8
          FEFF007BAFBE0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          020A006590A716BBF7FF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF1DC1
          FAFF00496987000000000000000000000000000000030001020B0001020A0000
          0002000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000019243F018D
          C7D71ABEF9FF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF1BBF
          F9FF00638DA5005579960084BCCB029EDFED06ACF0FE09AFF2FF0AB0F2FF08AC
          EFFD049DDBEA003E597200000000000000000000000000000000000000000000
          00000000000000000000000000000000000000131B36006F9EB20EB2F2FE23C6
          FDFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF24C8FEFF0AB0
          F2FF00ABF4FF02B2FBFF0DBBFEFF1AC2FFFF24C8FFFF26C9FFFF27CAFFFF27CA
          FFFF26C9FEFF0DB2F2FE0018223E000000000000000000000000000000000000
          000000000000000608180031476A0081B7C80EB2F2FE20C4FCFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF0FB5F4FF00AD
          F7FF00B3FFFF09B8FFFF17C1FFFF24C8FFFF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF1CC0FAFF00415D81000000000000000000000000000000000000
          000000151F3905A1E2F117BCF8FF24C7FDFF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF12B7F5FF00AF
          F9FF00B3FFFF08B8FFFF16C0FFFF23C7FFFF26C9FFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF17BCF8FF0032486A000000000000000000000000000000000000
          0000007BAFBF1CC2FDFF23C8FFFF26C9FFFF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF1DC1FAFF00A7
          EFFF00AEF8FF01B3FDFF09B6FAFF0FB8F8FF14BAF7FF16BAF7FF17BCF8FF19BE
          F9FF15B9F6FF0193D1E00004060E000000000000000000000000000000000000
          00000294D1DF1CC3FFFF20C6FFFF24C8FFFF26C9FFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF21C5FCFF00A6
          EDFF00A6EDFF00A9F1FF00ADF5FF05B1F7FF0CB6F8FF11B9F8FF14BAF8FF14B9
          F7FF11B6F5FF0CB2F3FF018CC6D500090D1F0000000000000000000000000000
          00000194D1DF19C2FFFF1DC4FFFF21C6FFFF25C8FFFF26C9FFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF21C4FCFF00A7
          EEFF00B0FBFF01B4FFFF0CBAFFFF17C1FFFF22C7FFFF26C9FFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF1FC3FBFF006A98AA0000000000000000000000000000
          00000193D1DF16C0FFFF1AC2FFFF1EC4FFFF21C6FFFF24C8FFFF26C9FFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF1ABEF9FF00AB
          F4FF00B3FFFF06B7FFFF12BEFFFF1EC5FFFF26C9FFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF27CAFFFF0392CDDC0000000000000000000000000000
          00000192D0DE12BEFFFF16C0FFFF1AC2FFFF1DC4FFFF20C6FFFF23C7FFFF25C9
          FFFF26C9FFFF26C9FFFF26CAFFFF26CAFFFF26C9FFFF26C9FFFF0BB0F2FF00A8
          F0FF00B2FDFF02B4FFFF0DBBFFFF18C1FFFF22C7FFFF26C9FFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF21C4FCFF00709FAF0000000000000000000000000000
          00000091CFDD0FBCFFFF13BEFFFF16C0FFFF19C2FFFF1CC4FFFF1FC5FFFF21C6
          FFFF22C7FFFF23C8FFFF24C8FFFF24C8FFFF23C8FFFF16BCF8FF00A6EDFF02AA
          EFFF01A9F0FF00ABF4FF00ACF4FF04ADF3FF06AEF2FF09B0F2FF0CB2F3FF0FB5
          F4FF13B8F6FF13B8F6FF049EDDEC000F162B0000000000000000000000000000
          00000091CFDD0CBAFFFF0FBCFFFF12BEFFFF15C0FFFF18C1FFFF1AC3FFFF1CC4
          FFFF1EC4FFFF1FC5FFFF1FC5FFFF1FC5FEFF12B9F7FF00A6EDFF04ACF0FF04AB
          F0FF00AAF3FF00AFF8FF08B5FBFF11BCFDFF1BC2FDFF21C5FDFF21C5FDFF1FC3
          FBFF1CC0FAFF14B9F6FF007DB3C1000000010000000000000000000000000000
          00000090CDDC08B8FFFF0BBAFFFF0FBCFFFF11BDFFFF14BFFFFF16C0FFFF18C1
          FFFF19C2FFFF1AC2FEFF0EB6F6FF09B0F3FF0AB2F4FF13BBFAFF0CB4F6FF00AE
          F8FF00B3FFFF08B8FFFF14BFFFFF21C6FFFF26C9FFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF0FB4F4FF000C122C0000000000000000000000000000
          0000008FCCDB04B6FFFF08B8FFFF08B6FBFF0DBBFFFF10BCFFFF12BEFFFF13BF
          FFFF15BFFFFF16C0FFFF16C0FEFF16C0FFFF15C0FFFF15BFFFFF0AB3F6FF00AE
          F8FF00B3FFFF08B8FFFF15BFFFFF22C7FFFF26C9FFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF27CAFFFF0DB3F3FF00090E230000000000000000000000000000
          0000008DC9D801B4FFFF04B5FFFF03AFF7FF08B6FCFF0BBAFFFF0DBBFFFF0FBC
          FFFF10BDFFFF11BDFFFF11BDFFFF11BDFFFF11BDFFFF10BDFFFF0EBBFEFF03AC
          F2FF00AAF3FF01B0F9FF0AB8FDFF15BFFFFF1FC5FFFF24C8FFFF26C9FFFF26C9
          FFFF26C9FFFF1DC1FAFF0079ACBC000000000000000000000000000000000000
          0000006591A500B0FBFF00B3FFFF00ACF5FF03B0F8FF07B7FFFF09B9FFFF0AB9
          FFFF0CBAFFFF0CBAFFFF0DBBFFFF0DBBFFFF0CBAFFFF0BBAFFFF0AB9FEFF03AD
          F4FF00A9F1FF01ADF5FF04ADF2FF05ACF1FF05ADF1FF06ADF1FF07AEF1FF08AE
          F1FF07ADF0FF0087C0D000050713000000000000000000000000000000000000
          000000090D1F0093D1E000ADF7FF00A9F1FF00ABF3FF03B5FFFF05B6FFFF06B7
          FFFF07B7FFFF08B8FFFF08B8FFFF08B8FFFF08B8FFFF07B7FFFF03AFF6FF00AD
          F8FF00B3FFFF09B9FFFF18C1FFFF24C8FFFF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF26C9FEFF049DDCEB00000001000000000000000000000000000000000000
          0000000000000002030C00293B5E004C6C8A008ECADA00ADF6FF00B2FCFF02B4
          FFFF03B5FFFF03B5FFFF04B5FFFF04B5FFFF03B5FFFF02B5FFFF00AEF7FF00AC
          F6FF00B3FEFF0AB9FFFF19C2FFFF25C9FFFF27CAFFFF27CAFFFF27CAFFFF27CA
          FFFF27CAFFFF09ADEFFD00010107000000000000000000000000000000000000
          0000000000000000000000000000000000000000000300253554006A98AA0099
          DBEA00AAF3FF00ACF5FF00AEF7FF00AFF9FF00B0FBFF00B1FCFF00B1FDFF00AB
          F4FF00A8F1FF02AFF6FF0DB8FAFF1BC2FDFF25C8FFFF26C9FFFF27CAFFFF27CA
          FFFF1EC2FBFF0077AABA00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000070A1B00151F3F0026365B00364E730046648600567B9800638EA60070
          9FB10079ADBB007DB3C20081B9C70081B8C70085BCCB0393CFDD059BD9E8059B
          D9E8006E9CAD0006081700000000000000000000000000000000000000000000
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
          0000000000000000000000020002000302030003020300030203000302030003
          0203000200020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000010E0910196F5085168257A4178053A4167C50A4147B4EA41779
          4CA414643D89020C081300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000523182A31C895E71CD38BFF20D189FF22CE86FF24CB82FF27C8
          7DFF27B36FEC0724143000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000004241A2B32CA95E81BD38AFF20D189FF22CE86FF24CB82FF27C8
          7DFF25B36FED0725163200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000004241A2B32CA95E81BD38AFF20D189FF22CE86FF24CB82FF27C8
          7DFF25B36FED0725163200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000004241A2B32CA95E81BD38AFF20D189FF22CE86FF24CB82FF27C8
          7DFF25B36FED0725163200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000004241A2B32CA95E81BD38AFF20D189FF22CE86FF24CB82FF27C8
          7DFF25B36FED0725163200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000004241A2B32CA95E81BD38AFF20D189FF22CE86FF24CB82FF27C8
          7DFF25B36FED0725163200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000424192B32CA95E81BD38AFF20D189FF22CE86FF24CB82FF27C8
          7DFF25B36FED0724153200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000523192B32CA95E81BD38AFF20D189FF22CE86FF24CB82FF27C8
          7DFF25B36FED0724143200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0101000101010525192C33CA95E81CD38AFF20D189FF22CE86FF24CB82FF27C8
          7DFF25B36FED0726143300010101000101010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000624192C1679
          4F91107C4C96128D5BA82DD39BF51DD48CFF20D189FF22CE86FF24CB82FF27C8
          7DFF28BE73F71E7A45A81D663492216A3592163E225800000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000031C142026B0
          8DCB1FDB96FF1AD78FFF1DD690FF1ED48BFF20D189FF22CE86FF24CB82FF27C8
          7DFF29C478FF2CC074FF2EBC6FFF2DAB63F0123B235600010001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000100010C43
          324E2BCD98EC1BD791FF1CD68EFF1FD48CFF20D189FF22CE86FF24CB82FF27C8
          7DFF29C478FF2CC074FF2BBA6EFC1B683B910105030900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000005
          03071775578726D79AFB1BD58DFF1FD48CFF20D189FF22CE86FF24CB82FF27C8
          7DFF29C478FF2DC074FF259A5BC506180D1E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001150E1924A67BBE22D893FF1ED48BFF20D189FF22CE86FF24CB82FF27C8
          7DFF29C478FF25AD6BE90D362047000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000083728402AC691E51FD58CFF1FD188FF22CE86FF24CB82FF27C8
          7DFF25BE73F9155E397E00040105000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000003010415664A772DD297F81FD087FF21CE86FF24CB82FF28C4
          7DFE1B8B56B5030F091500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000020E091224976EB028D18EFE20CE85FF24CB82FF22B0
          6DDF082A1B370000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000092B1F3332B886DC24CE88FF22C07CF51054
          356B000200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000002000215563E6632CB8CF3168251A4010A
          060E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010A070D145D3F69051F14250000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000000000
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
          0000000000000000000000000000000000000000000000000406000001010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000202121E12125D9502021A2F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000509121263921B1BA1FB0A0A65AE0000
          0912000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000001010B0B39581E1EA4F010109AFF101092F80606
          4375000001040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004041B2821218ED31515A2FF10109AFF101096FF0D0D
          81E50303233F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000080D191975A21D1DA9FD11119FFF11119BFF101096FF0F0F
          92FF09096ABE00000E1A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000202101048672323AEF51313A3FF1313A0FF11119BFF101096FF0F0F
          92FF0D0D8BFB0606498800000307000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000707233425259DDD1616AAFF1313A3FF1313A0FF11119BFF101096FF0F0F
          92FF0D0D8DFF0A0A7CED03032C50000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          0D131E1E84B11E1EB0FE1515A8FF1414A4FF1313A0FF11119BFF101096FF0F0F
          92FF0D0D8DFF0C0C88FF08086FCD010112240000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000003041414
          5A772626B8F81515ADFF1616A9FF1414A4FF1313A0FF11119BFF101096FF0F0F
          92FF0D0D8DFF0C0C88FF0B0B83FD06064E9B0000060B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000070729392929
          ADE31818AFFD1515A9FE1818AAFF1313A3FF1313A0FF11119BFF101096FF0F0F
          92FF0D0D8DFF0C0C87FD0B0B83FD08087AF103032E5A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000004041B250C0C
          4964080847650D0D5E882525AEF71212A4FF1313A0FF11119BFF101096FF0F0F
          92FF0A0A84EE04044078040432620303306101011B3400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707293A2626ADF11111A3FF1313A0FF11119BFF101096FF0F0F
          92FF0B0B7DE30101132400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707293A2525ADF11111A3FF1313A0FF11119BFF101096FF0F0F
          92FF0B0B7DE30101132400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707293A2525ADF11111A3FF1313A0FF11119BFF101096FF0F0F
          92FF0B0B7DE30101132400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707293A2525ADF11111A3FF1313A0FF11119BFF101096FF0F0F
          92FF0B0B7DE30101132400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707293A2525ADF11111A3FF1313A0FF11119BFF101096FF0F0F
          92FF0B0B7DE30101132400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707293A2525ADF11111A3FF1313A0FF11119BFF101096FF0F0F
          92FF0B0B7DE30101132400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707293A2525ADF11111A3FF1313A0FF11119BFF101096FF0F0F
          92FF0B0B7DE30101132400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707293A2626ADF11111A3FF1313A0FF11119BFF101096FF0F0F
          92FF0B0B7DE30101132400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000060625362424A9ED1212A1FE13139EFE111199FE101094FE0F0F
          90FE0B0B7BDE0101122100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001010A0E0A0A4361080849740707487406064774070743740606
          4374040430580000030800000000000000000000000000000000000000000000
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
          2000000000000010000000000000000000000000000000000000000000000202
          0204050505090909090F0D0D0D151111111B14141420181818261B1B1B2B1E1E
          1E2F20202033222222362525253A2525253A2626263B2828283F2828283F2626
          263B2525253A2525253A22222236202020331E1E1E2F1B1B1B2B181818261515
          15211111111B0D0D0D150909090F0505050902020204000000000A0A0A113B3B
          3B5D5A5A5A8D6B6B6BA7777777B97E7E7EC5848484CE898989D58C8C8CDA8F8F
          8FDE919191E2929292E4949494E6949494E7949494E7969696E9969696E99494
          94E7949494E7949494E6929292E4919191E28F8F8FDF8C8C8CDA898989D58484
          84CE7E7E7EC5777777B96C6C6CA85B5B5B8E3C3C3C5E0B0B0B12040404071C1C
          1C2C2E2E2E483B3B3B5C4646466D6C6C6CA3787878B37C7C7CBA818181C08484
          84C5878787C9898989CC8B8B8BCF8B8B8BD08B8B8BD08B8B8BD08B8B8BD08B8B
          8BD08B8B8BD08B8B8BCF768F80D754A773F7768A7ECF818181C07C7C7CBA7878
          78B36F6F6FA64747476F3B3B3B5C2E2E2E481C1C1C2C05050508000000000000
          0000000000000000000155555576C3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC2C2C2FF82BD9BFF33B66AFF30B668FF3BB76FFFA4C0B0FFC3C3C3FFC3C3
          C3FFC3C3C3FF6969698F00000001000000000000000000000000000000000000
          000000000000000000007979799FC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFBAC2
          BEFF5CBE8AFF2DBB6EFF2DBB6EFF2DBB6EFF2DBB6EFF36BB73FFA1C1B0FFC3C3
          C3FFC3C3C3FF8B8B8BB700000000000000000000000000000000000000000000
          000000000000000000007979799FC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFA6C2B4FF3FC0
          80FF2AC074FF2AC074FF2AC074FF2AC074FF2AC074FF2AC074FF30C077FF9CC2
          AFFFC3C3C3FF8C8C8CB700000000000000000000000000000000000000000000
          000000000000000000007A7A7A9FC4C4C4FFC4C4C4FFC8C8C8FFC9C9C9FFC9C9
          C9FFC9C9C9FFC9C9C9FFC9C9C9FFC7C7C7FFC4C4C4FF86C4A7FF2CC57BFF27C5
          79FF27C579FF27C579FF29C57AFF2FC77EFF27C579FF27C579FF27C579FF2CC5
          7CFF97C4AFFF8A8C8CB700000000000000000000000000000000000000000000
          000000000000000000007C7C7C9FC8C8C8FFC8C8C8FFB7B7B7FFB4B4B4FFB4B4
          B4FFB4B4B4FFB4B4B4FFB4B4B4FFBBBCBBFF61C99BFF24C97EFF24C97EFF24C9
          7EFF24C97EFF32CE87FF69D5A2FF7DD3AAFF3AD18BFF24C97EFF24C97EFF24C9
          7EFF28C981FF5A9078B800000000000000000000000000000000000000000000
          000000000000000000007E7E7E9FCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
          CBFFCBCBCBFFCBCBCBFFCBCBCBFFC8CBC9FF51D59AFF22CD84FF21CD84FF21CD
          84FF3AD591FF7CD3ADFFC7CBC9FFCBCBCBFF8FD1B3FF39D490FF21CD84FF21CD
          84FF21CD84FF21C981FA0D462E58000000000000000000000000000000000000
          000000000000000000007F7F7F9FCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCD
          CDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFB6CEC4FF4FDA9EFF1FD188FF47DA
          9BFF97D3B9FFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFF96D3B8FF3AD894FF1FD1
          88FF1FD188FF1FD188FF1FCE86FC0B4E33600000000000000000000000000000
          000000000000000000008181819FD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0
          D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFB1D2C4FF72DCAFFFAED2
          C3FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FF9BD5BCFF3BDB
          99FF1DD48BFF1DD48BFF1DD48BFF1DD28AFD0B57396900000000000000000000
          000000000000000000008383839FD2D2D2FFD2D2D2FFCDCDCDFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCDCDCDFFA0D7
          C0FF3CDD9DFF1BD68EFF1BD68EFF1BD68EFF1BD58DFE0C5D3E6F000000000000
          000000000000000000008484849FD5D5D5FFD5D5D5FFC7C7C7FFC5C5C5FFC5C5
          C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC6C6C6FFD5D5
          D5FFA7D8C4FF3FDFA0FF1AD891FF1AD891FF1CD992FF26AB77C6000000000000
          000000000000000000008686869FD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
          D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
          D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
          D7FFD7D7D7FF8FC0ADE13AD99BF61ADA93FF39C38DDD0519111D000000000000
          000000000000000000008787879FD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FF939C98B717362B3F33A377B7061C142000000000000000000000
          000000000000000000008888889FDBDBDBFFDBDBDBFFDFDFDFFFDFDFDFFFDFDF
          DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDBDB
          DBFFDBDBDBFF9C9D9DB700000000000000000000000000000000000000000000
          000000000000000000008989899FDEDEDEFFDEDEDEFFC7C7C7FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC6C6C6FFDEDE
          DEFFDEDEDEFF9E9E9EB700000000000000000000000000000000000000000000
          000000000000000000008B8B8B9FDFDFDFFFDFDFDFFFD9D9D9FFD7D7D7FFD7D7
          D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
          D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD9D9D9FFDFDF
          DFFFDFDFDFFFA0A0A0B700000000000000000000000000000000000000000000
          000000000000000000008C8C8C9FE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFA1A1A1B700000000000000000000000000000000000000000000
          000000000000000000008D8D8D9FE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFA2A2A2B700000000000000000000000000000000000000000000
          000000000000000000008E8E8E9FE4E4E4FFE4E4E4FFDFDFDFFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDEDEDEFFE4E4
          E4FFE4E4E4FFA3A3A3B700000000000000000000000000000000000000000000
          000000000000000000008F8F8F9FE6E6E6FFE6E6E6FFD0D0D0FFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCFCFCFFFE6E6
          E6FFE6E6E6FFA5A5A5B700000000000000000000000000000000000000000000
          000000000000000000009090909FE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFA5A5A5B700000000000000000000000000000000000000000000
          000000000000000000009090909FE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFA6A6A6B700000000000000000000000000000000000000000000
          000000000000000000009191919FEAEAEAFFEAEAEAFFEAEAEAFFEBEBEBFFEBEB
          EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFEBEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFA7A7A7B700000000000000000000000000000000000000000000
          000000000000000000009191919FEBEBEBFFEBEBEBFFD7D7D7FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFE9E9E9FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFEBEBEBFFA5A5A5B700000000000000000000000000000000000000000000
          000000000000000000009292929FECECECFFECECECFFDFDFDFFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFEAEAEAFFECECECFFB4B4B4FF848484FF838383FF8181
          81FF7B7B7BFB3535355600000000000000000000000000000000000000000000
          000000000000000000009393939FECECECFFECECECFFECECECFFECECECFFECEC
          ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
          ECFFECECECFFECECECFFECECECFFECECECFF8B8B8BFF767676FF6F6F6FFF6565
          65FB222222570000000000000000000000000000000000000000000000000000
          000000000000000000009393939FEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF808080FF686868FF5E5E5EFB1F1F
          1F57000000000000000000000000000000000000000000000000000000000000
          000000000000000000009393939FEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF717171FF545454FB1C1C1C570000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008A8A8A95EFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF5E5E5EFB19191957000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B1B1B1E8A8A8A959393939F9393939F9393939F9393
          939F9393939F9393939F9393939F9393939F9393939F9393939F9393939F9393
          939F9393939F9393939F9393939F8D8D8D9F2A2A2A5700000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000202
          0204050505090909090F0D0D0D151111111B14141420181818261B1B1B2B1E1E
          1E2F20202033222222362525253A2525253A2626263B2828283F2828283F2626
          263B2525253A2525253A22222236202020331E1E1E2F1B1B1B2B181818261515
          15211111111B0D0D0D150909090F0505050902020204000000000A0A0A113B3B
          3B5D5A5A5A8D6B6B6BA7777777B97E7E7EC5848484CE898989D58C8C8CDA8F8F
          8FDE919191E2929292E4949494E6949494E7949494E7969696E9969696E99494
          94E7949494E7949494E6929292E4919191E28F8F8FDF8C8C8CDA898989D58484
          84CE7E7E7EC5777777B96C6C6CA85B5B5B8E3C3C3C5E0B0B0B12040404071C1C
          1C2C2E2E2E483B3B3B5C4646466D6C6C6CA3787878B37C7C7CBA818181C08484
          84C5878787C9898989CC8B8B8BCF8B8B8BD08B8B8BD08B8B8BD08B8B8BD08B8B
          8BD08B8B8BD05E5E87E3363687F8696984D7848484C5818181C07C7C7CBA7878
          78B36F6F6FA64747476F42426DBE2F2F77DB2929355804040408000000000000
          0000000000000000000155555576C3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FF7474A7FF0A0A81FF0A0A81FF101083FF9191B1FFC3C3C3FFC3C3C3FFC3C3
          C3FFC2C2C2FF474784DB0A0A81FF0A0A81FF0B0B77EB0606182E000000000000
          000000000000000000007979799FC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFBCBC
          C0FF0F0F84FF0A0A81FF0A0A81FF0A0A82FF111186FF9191B2FFC3C3C3FFC2C2
          C2FF5E5EA1FF0A0A83FF0A0A82FF0A0A81FF0A0A81FF0A0A60BA000000000000
          000000000000000000007979799FC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC1C1
          C2FF4646A3FF0A0A83FF0B0B85FF0B0B87FF0C0C89FF12128CFF9292B4FF5F5F
          A4FF0C0C8AFF0C0C89FF0B0B87FF0B0B85FF0E0E86FF17175287000000000000
          000000000000000000007A7A7A9FC4C4C4FFC4C4C4FFC8C8C8FFC9C9C9FFC9C9
          C9FFC9C9C9FFC9C9C9FFC9C9C9FFC7C7C7FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFBBBBC4FF4747A8FF0C0C8AFF0D0D8CFF0D0D8EFF0E0E8FFF101090FF0E0E
          8FFF0E0E8FFF0D0D8EFF0D0D8CFF10108DFF23236AA000000102000000000000
          000000000000000000007C7C7C9FC8C8C8FFC8C8C8FFB7B7B7FFB4B4B4FFB4B4
          B4FFB4B4B4FFB4B4B4FFB4B4B4FFBCBCBCFFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
          C8FFC8C8C8FFBFBFC8FF4949ADFF0E0E91FF0F0F93FF0F0F94FF0F0F95FF0F0F
          95FF0F0F94FF0F0F93FF121294FF23236DA00000010200000000000000000000
          000000000000000000007E7E7E9FCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
          CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
          CBFFCBCBCBFFCBCBCBFFC1C1CBFF4B4BB2FF101098FF111199FF11119AFF1111
          9AFF111199FF14149AFF23236FA0000001020000000000000000000000000000
          000000000000000000007F7F7F9FCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCD
          CDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCD
          CDFFCDCDCDFFCDCDCDFFCDCDCDFF6060B0FF11119DFF12129EFF12129FFF1212
          9FFF12129EFF12129CFE07072C47000000000000000000000000000000000000
          000000000000000000008181819FD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0
          D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0
          D0FFD0D0D0FFD0D0D0FF6767B3FF12129EFF1212A1FF1313A3FF1313A4FF1313
          A4FF1313A3FF1212A1FF121299F6050529440000000000000000000000000000
          000000000000000000008383839FD2D2D2FFD2D2D2FFCDCDCDFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCBCBCCFF6969B5FF12129FFF1313A2FF1414A6FF1414A8FF1515AAFF1515
          AAFF1414A8FF1414A6FF1313A3FF121299F60404294400000000000000000000
          000000000000000000008484849FD5D5D5FFD5D5D5FFC7C7C7FFC5C5C5FFC5C5
          C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FF6262ABFF12129DFF1212A2FF1414A6FF1515AAFF1919AFFF7878CCFF5151
          C3FF1616ADFF1515AAFF1414A6FF1212A2FF111197F604042842000000000000
          000000000000000000008686869FD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
          D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFCECE
          D4FF19199FFF12129FFF1313A4FF1414A9FF1919AFFF7B7BCFFFD5D5D7FFCDCD
          D7FF5252C5FF1616AEFF1414A9FF1313A4FF12129FFF141478BF000000000000
          000000000000000000008787879FD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FF6262BFFF1515A2FF1313A6FF1919ADFF7C7CCFFFD7D7D9FFD9D9D9FFD9D9
          D9FFCFCFD9FF5252C5FF1515ABFF1414A6FF2020A9FF15154E72000000000000
          000000000000000000008888889FDBDBDBFFDBDBDBFFDFDFDFFFDFDFDFFFDFDF
          DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFD7D7DDFF6767C6FF3232B8FF8282D1FFDDDDDFFFDFDFDFFFDFDFDFFFDBDB
          DBFFDBDBDBFF9999ACCB35359FD23232B8FE1A1A5C8000000000000000000000
          000000000000000000008989899FDEDEDEFFDEDEDEFFC7C7C7FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC2C2C3FFB3B3C0FFC3C3C3FFC3C3C3FFC3C3C3FFC6C6C6FFDEDE
          DEFFDEDEDEFF9A9A9DB70101030404040F150000000000000000000000000000
          000000000000000000008B8B8B9FDFDFDFFFDFDFDFFFD9D9D9FFD7D7D7FFD7D7
          D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
          D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD9D9D9FFDFDF
          DFFFDFDFDFFFA0A0A0B700000000000000000000000000000000000000000000
          000000000000000000008C8C8C9FE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFA1A1A1B700000000000000000000000000000000000000000000
          000000000000000000008D8D8D9FE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFA2A2A2B700000000000000000000000000000000000000000000
          000000000000000000008E8E8E9FE4E4E4FFE4E4E4FFDFDFDFFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDEDEDEFFE4E4
          E4FFE4E4E4FFA3A3A3B700000000000000000000000000000000000000000000
          000000000000000000008F8F8F9FE6E6E6FFE6E6E6FFD0D0D0FFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCFCFCFFFE6E6
          E6FFE6E6E6FFA5A5A5B700000000000000000000000000000000000000000000
          000000000000000000009090909FE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFA5A5A5B700000000000000000000000000000000000000000000
          000000000000000000009090909FE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFA6A6A6B700000000000000000000000000000000000000000000
          000000000000000000009191919FEAEAEAFFEAEAEAFFEAEAEAFFEBEBEBFFEBEB
          EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFEBEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFA7A7A7B700000000000000000000000000000000000000000000
          000000000000000000009191919FEBEBEBFFEBEBEBFFD7D7D7FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFE9E9E9FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFEBEBEBFFA5A5A5B700000000000000000000000000000000000000000000
          000000000000000000009292929FECECECFFECECECFFDFDFDFFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFEAEAEAFFECECECFFB4B4B4FF848484FF838383FF8181
          81FF7B7B7BFB3535355600000000000000000000000000000000000000000000
          000000000000000000009393939FECECECFFECECECFFECECECFFECECECFFECEC
          ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
          ECFFECECECFFECECECFFECECECFFECECECFF8B8B8BFF767676FF6F6F6FFF6565
          65FB222222570000000000000000000000000000000000000000000000000000
          000000000000000000009393939FEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF808080FF686868FF5E5E5EFB1F1F
          1F57000000000000000000000000000000000000000000000000000000000000
          000000000000000000009393939FEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF717171FF545454FB1C1C1C570000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008A8A8A95EFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF5E5E5EFB19191957000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B1B1B1E8A8A8A959393939F9393939F9393939F9393
          939F9393939F9393939F9393939F9393939F9393939F9393939F9393939F9393
          939F9393939F9393939F9393939F8D8D8D9F2A2A2A5700000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000000000000030303050707070C0D0D0D151313131E171717251B1B1B2A2222
          223623232337232323372828283F3030304C3030304C3030304C3030304C3030
          304C3030304C2828283F2323233723232337222222361C1C1C2C171717251313
          131E0D0D0D150707070C03030305000000000000000000000000000000000000
          00000C0C0C144747476F686868A2787878BB838383CC898989D68D8D8DDB9292
          92E4949494E6949494E7969696EA9A9A9AF09B9B9BF19B9B9BF19B9B9BF19B9B
          9BF19A9A9AF0969696EA949494E7949494E6939393E58D8D8DDC898989D68383
          83CC787878BB686868A24646466E0B0B0B120000000000000000000000000000
          00000505050820202033363636544545456BACACACE0C2C2C2F4C4C4C4F7C4C4
          C4F7C6C6C6F9C7C7C7FAC8C8C8FBC8C8C8FBC8C8C8FBC8C8C8FBC8C8C8FBC8C8
          C8FBC8C8C8FBC8C8C8FBC7C7C7FAC6C6C6F9C4C4C4F7C4C4C4F7C2C2C2F4C0C0
          C0F1B7B7B7E85252527820202032040404070000000000000000000000000000
          000000000000000000000000000140404055DCDCDCFFDCDCDCFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDCDC
          DCFFDCDCDCFF7575758C00000000000000000000000000000000000000000000
          0000000000000000000056565672C8C8C8FFDDDDDDFFD9D6D3FFCEBFB1FFD1C3
          B6FFD1C3B6FFD1C3B6FFD1C3B6FFC8B7A7FFCEC1B6FFCEC1B6FFCEC1B6FFCDC0
          B4FFC8B8A8FFCEC1B6FFCEC1B6FFCEC1B6FFCEC1B6FFCEC1B6FFCEC1B6FFCEC2
          B6FFDDDDDDFF7C7C7C8F00000000000000000000000000000000000000000000
          000000000000000000006D6D6D8FC8C8C8FFDFDFDFFFD5CFC8FFE1D6C9FFEDE6
          DDFFEDE6DDFFEDE6DDFFEDE6DDFFCBBCADFFD0CEC9FFCAC7C0FFCAC7C0FFD5D3
          CFFFCCBEB2FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCDC0
          B5FFDFDFDFFF7D7D7D8F00000000000000000000000000000000000000000000
          000000000000000000006D6D6D8FC8C8C8FFE0E0E0FFD6D0C9FFE1D6C9FFEDE6
          DDFFEDE6DDFFEDE6DDFFEDE6DDFFCCBCADFFBCB9AFFFAEA99BFFAEA99BFFCBC8
          C1FFCCBFB3FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFCDC1
          B5FFE0E0E0FF7D7D7D8F00000000000000000000000000000000000000000000
          000000000000000000006D6D6D8FC8C8C8FFE2E2E2FFD7D1CAFFDACFC3FFE4DD
          D4FFE4DDD4FFE4DDD4FFE4DDD4FFCAB9AAFFDEDAD7FFDEDAD7FFDEDAD7FFDCD7
          D2FFCBBCAEFFDEDAD7FFDEDAD7FFDEDAD7FFDEDAD7FFDEDAD7FFDEDAD7FFCDBF
          B2FFE2E2E2FF7E7E7E8F00000000000000000000000000000000000000000000
          000000000000000000006D6D6D8FC9C9C9FFE3E3E3FFD8D2CBFFCFBEACFFD5C6
          B6FFD5C6B6FFD5C6B6FFD5C6B6FFC4B19FFFD0C4B9FFD0C4B9FFD0C4B9FFCFC2
          B7FFC5B3A2FFD2C6BBFFD3C7BCFFD3C7BCFFD3C7BCFFD3C7BCFFD1C6BBFFC8B8
          A8FFE3E3E3FF7F7F7F8F00000000000000000000000000000000000000000000
          000000000000000000006D6D6D8FC9C9C9FFE4E4E4FFD9D2CCFFE1D6C9FFEDE6
          DDFFEDE6DDFFEDE6DDFFEDE6DDFFCDBDAEFFE4E4E4FFE4E4E4FFE4E4E4FFE2E0
          DFFFCEC1B4FFBEBAB0FFAEA99BFFAEA99BFFAEA99BFFAEA99BFFC6C3BCFFCFC3
          B7FFE4E4E4FF7F7F7F8F00000000000000000000000000000000000000000000
          000000000000000000006D6D6D8FC9C9C9FFE5E5E5FFDAD3CDFFE0D6CBFFECE6
          DFFFECE6DFFFECE6DFFFECE6DFFFCDBEAFFFE6E6E6FFE6E6E6FFE6E6E6FFE3E2
          E0FFCFC2B5FFD9D8D4FFD3D1CCFFD3D1CCFFD3D1CCFFD3D1CCFFDCDBD8FFD0C4
          B8FFE5E5E5FF8080808F00000000000000000000000000000000000000000000
          000000000000000000006D6D6D8FC9C9C9FFE6E6E6FFDAD4CEFFCAB8A6FFCEBE
          ADFFCEBEADFFCEBEADFFCEBEADFFC3AF9BFFCDBEB0FFCDBEB0FFCDBEB0FFCCBD
          AEFFC4B09EFFCDBEB0FFCDBEB0FFCDBEB0FFCDBEB0FFCDBEB0FFCDBEB0FFC7B6
          A6FFE6E6E6FF8181818F00000000000000000000000000000000000000000000
          000000000000000000006D6D6D8FC9C9C9FFE7E7E7FFDBD5CFFFE1D6C9FFEDE6
          DDFFEDE6DDFFEDE6DDFFEDE6DDFFCDBEAFFFE7E7E7FFE7E7E7FFE7E7E7FFE5E3
          E2FFCFC2B6FFCAC8C0FFBEBBB0FFBEBBB0FFBEBBB0FFBEBBB0FFD1CFC9FFD1C4
          B9FFE7E7E7FF8181818F00000000000000000000000000000000000000000000
          000000000000000000006D6D6D8FCACACAFFE8E8E8FFDCD5CFFFE1D6C9FFEDE6
          DDFFEDE6DDFFEDE6DDFFEDE6DDFFCEBEAFFFE8E8E8FFE8E8E8FFE8E8E8FFE6E4
          E3FFD0C3B6FFD0CEC8FFC5C2BAFFC5C2BAFFC5C2BAFFC5C2BAFFD5D4CFFFD1C5
          B9FFE8E8E8FF8282828F00000000000000000000000000000000000000000000
          000000000000000000006D6D6D8FCACACAFFE9E9E9FFDDD6D0FFC9B8A8FFCEBF
          B0FFCEBFB0FFCEBFB0FFCEBFB0FFC3AF9CFFCDBFB1FFCDBFB1FFCDBFB1FFCCBD
          AFFFC4B19EFFCDBFB1FFCDBFB1FFCDBFB1FFCDBFB1FFCDBFB1FFCDBFB1FFC8B7
          A6FFE9E9E9FF8282828F00000000000000000000000000000000000000000000
          000000000000000000006D6D6D8FCACACAFFEAEAEAFFDDD7D0FFE1D6C9FFEDE6
          DDFFEDE6DDFFEDE6DDFFEDE6DDFFCEBEAFFFD6D4D0FFCECBC4FFCECBC4FFDDDB
          D7FFD0C3B7FFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFD2C6
          BAFFEAEAEAFF8383838F00000000000000000000000000000000000000000000
          000000000000000000006D6D6D8FCBCBCBFFEBEBEBFFDED7D1FFE1D6C9FFEDE6
          DDFFEDE6DDFFEDE6DDFFEDE6DDFFCEBFAFFFBFBCB2FFAEA99BFFAEA99BFFD1CE
          C7FFD1C4B7FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFD2C6
          BAFFEBEBEBFF8383838F00000000000000000000000000000000000000000000
          000000000000000000006F6F6F8FCECECEFFEBEBEBFFDED8D2FFCCBBABFFD1C3
          B4FFD1C3B4FFD1C3B4FFD1C3B4FFC4B19EFFD1C4B7FFD1C4B7FFD1C4B7FFCFC2
          B5FFC5B3A1FFD1C4B7FFD1C4B7FFD1C4B7FFD1C4B7FFD1C4B7FFD1C4B7FFC9B9
          A9FFEBEBEBFF8383838F00000000000000000000000000000000000000000000
          000000000000000000007171718FD0D0D0FFECECECFFDED8D2FFDDD1C4FFE8DF
          D5FFE8DFD5FFE8DFD5FFE8DFD5FFCDBCACFFE7E5E3FFE7E5E3FFE7E5E3FFE5E1
          DDFFCFC1B4FFE1DEDAFFDEDAD6FFDEDAD6FFDEDAD6FFDEDAD6FFE3E0DDFFD1C4
          B8FFECECECFF8383838F00000000000000000000000000000000000000000000
          000000000000000000007272728FD3D3D3FFECECECFFDFD8D2FFE1D6C9FFEDE6
          DDFFEDE6DDFFEDE6DDFFEDE6DDFFCEBFB0FFECECECFFECECECFFECECECFFE9E8
          E7FFD1C5B8FFBFBBB1FFAEA99BFFAEA99BFFAEA99BFFAEA99BFFC9C6BEFFD3C7
          BBFFECECECFF8484848F00000000000000000000000000000000000000000000
          000000000000000000007474748FD5D5D5FFEDEDEDFFDFD9D2FFE0D6CAFFECE6
          DDFFECE6DDFFECE6DDFFECE6DDFFCEBFB0FFECECECFFECECECFFECECECFFE9E8
          E7FFD1C5B8FFE5E4E2FFE1E0DDFFE1E0DDFFE1E0DDFFE1E0DDFFE7E6E5FFD3C7
          BBFFEDEDEDFF8484848F00000000000000000000000000000000000000000000
          000000000000000000007575758FD7D7D7FFEDEDEDFFE7E4E2FFD1C3B7FFD2C6
          BAFFD2C6BAFFD2C6BAFFD2C6BAFFCCBDAEFFD2C6BAFFD2C6BAFFD2C6BAFFD2C5
          B9FFCDBEAFFFD2C6BAFFD2C6BAFFD2C6BAFFD2C6BAFFD2C6BAFFD2C6BAFFD5CA
          C0FFEDEDEDFF8484848F00000000000000000000000000000000000000000000
          000000000000000000007676768FD9D9D9FFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEAE9E6FFE0D9CAFFE0D9CAFFE6E2D9FFEDEDEDFFE5E1D7FFE0D9CAFFE0D9
          CAFFEBEAE8FFECEBEBFFE0D9CAFFE0D9CAFFE4DFD4FFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFF8484848F00000000000000000000000000000000000000000000
          000000000000000000007175778FDBDBDBFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFDFD5C1FFB58E3CFFB58E3CFFCAB17EFFEDEDEDFFC6AB73FFB58E3CFFB58E
          3CFFE2DBCBFFE6E1D7FFB58E3CFFB58E3CFFC3A668FFE7E7E7FFE9E9E9FFECEC
          ECFFEDEDEDFF8080808F00000000000000000000000000000000000000000000
          000000000000051929366F8BA1C6DDDDDDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFE5DBC9FFCEA85BFFCEA85BFFD9C293FFEDEDEDFFD8BE8AFFCEA85BFFCEA8
          5CFFE6DFD1FFE9E4DBFFCEA85CFFCEA85BFFAC976DFF808080FF797979FF7373
          73FF656565E81919192A00000000000000000000000000000000000000000000
          0000000000000330526B69768099A0BED6FFC0D4E3FFECECECFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFA1A1A1FF747474FF6C6C6CFF6E6E
          6EFF2222223E0000000000000000000000000000000000000000000000000000
          00000000000002080D11759CB8DC77AED6FF80B4DBFFD9E2E8FFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF989898FF646464FF666666FFC7C7
          C7FF1F1F1F270000000000000000000000000000000000000000000000000000
          0000000000000000000075797C8F93BCDAFFB9D2E4FF77B4DFFFEBEBEBFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF8C8C8CFF5C5C5CFFC7C7C7FFDFDF
          DFFF222222270000000000000000000000000000000000000000000000000000
          000000000000000000007E7E7E8FE1E1E1FF7BB8E3FFBDD6E7FF9CC8E7FFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF8E8E8EFFC7C7C7FFE1E1E1FFE1E1
          E1FF222222270000000000000000000000000000000000000000000000000000
          000000000000000000007B7B7B8BE7E7E7FFD9E0E5FFD9E1E6FF95C4E6FFCBDB
          E6FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE2E2E2FFE6E6E6FFE6E6E6FFE3E3
          E3FF1E1E1E220000000000000000000000000000000000000000000000000000
          000000000000000000001C1C1C20878787978A8D8F9F8FB2CBDE7BAACBDF6D82
          90A38D8E8E9F8F8F8F9F8F8F8F9F8F8F8F9F8F8F8F9F8F8F8F9F8F8F8F9F8F8F
          8F9F8F8F8F9F8F8F8F9F8F8F8F9F8F8F8F9F8F8F8F9F8F8F8F9F8E8E8E9F6868
          6875000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000A1A242708161F220000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000010101030707070B0A0A0A110F0F0F181313131E191919281A1A1A291A1A
          1A29222222362727273D2727273E2727273E2727273E2727273E2727273E2727
          273E2727273E2727273E2727273D232323371A1A1A291A1A1A29191919281212
          121C0F0F0F180A0A0A110606060A0202020400000000000000000D0D0D154D4D
          4D796C6C6CA97A7A7ABF838383CE8A8A8ADA8D8D8DDF959595EB959595EB9595
          95EB9A9A9AF39C9C9CF69D9D9DF79D9D9DF79D9D9DF79D9D9DF79D9D9DF79D9D
          9DF79D9D9DF79D9D9DF79C9C9CF69A9A9AF2969696EC959595EB959595EA9191
          91E18D8D8DDC868686D17D7D7DC26C6C6CA94E4E4E7A0E0E0E16030303062020
          20332D2D2D485B5B5B8A6767679C727272AD747474AF7E7E7EBE828282C48181
          81C3828282C4898989CF8E8E8ED68E8E8ED78E8E8ED78E8E8ED78E8E8ED78E8E
          8ED78E8E8ED78E8E8ED68A8A8AD0828282C4818181C3828282C47C7C7CBD5252
          528354545484494949723F3F3F633232324E2020203204040407000000000000
          000055555572C6C6C6FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FFC5C5C5FFC5C5C5FFC8C8C6FFCACAC7FFC5C5C5FFC5C5C5FFC6C6C6FF6A6A
          6A8F000000000000000000000000000000000000000000000000000000000000
          0000838383A4C3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC6C6C3FFA2A2B7FF8C8CAFFFD3D3C8FFC3C3C3FFC3C3C3FF9393
          93BE000000000000000000000000000000000000000000000000000000000000
          0000818181A2C2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2
          C2FFC2C2C2FFC2C2C2FFC3C3C2FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFCACAC5FF8787ADFF000078FF4A4A9BFFCFCFC5FFC8C8C4FF9393
          92BC000000000000000000000000000000000000000000000000000000000000
          0000828282A2C3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFCDCDC7FFC6C6C4FFC7C7C4FFC7C7C4FFC7C7C4FFC7C7
          C4FFC7C7C4FFCDCDC6FF8C8CB2FF010186FF030386FF0D0D89FFA6A6BAFF9999
          94BB000000000000000000000000000000000000000000000000000000000000
          0000848484A2C8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
          C8FFC8C8C8FFD2D2CBFF5555A4FF000086FF000089FF000089FF000089FF0000
          89FF000089FF000089FF03038BFF0E0E8FFF0E0E8FFF0B0B8DFF000088FF3F3F
          85D2000000000000000000000000000000000000000000000000000000000000
          0000868686A2C9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9
          C9FFC9C9C9FFD6D6CDFF4747A3FF080892FF0E0E94FF0E0E94FF0E0E94FF0E0E
          94FF0E0E94FF0E0E94FF0E0E94FF0E0E94FF0E0E94FF0E0E94FF0E0E94FF0808
          92FF090982E30202172700000000000000000000000000000000000000000000
          0000888888A2CDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCD
          CDFFCDCDCDFFD9D9D0FF4B4BA8FF0A0A95FF111197FF111197FF111197FF1111
          97FF111197FF111197FF111197FF111197FF111197FF111197FF111197FF1111
          97FF111197FF111197FF08084B7E000000000000000000000000000000000000
          0000898989A2D0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0
          D0FFD0D0D0FFDCDCD3FF4B4BACFF0B0B9BFF12129DFF12129DFF12129DFF1212
          9DFF12129DFF12129DFF12129DFF12129DFF12129DFF12129DFF12129DFF1212
          9DFF12129DFF12129DFF12129CFF0B0B82D70303141F00000000000000000000
          00008B8B8BA2D1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
          D1FFD1D1D1FFDEDED5FF4E4EB0FF0A0AA0FF1111A2FF1111A2FF1111A2FF1111
          A2FF1111A2FF1111A2FF1111A2FF1111A2FF1111A2FF1111A2FF1111A2FF1111
          A2FF1111A2FF1111A1FF0B0B9DFF2A2AB1FF16164E6A00000000000000000000
          00008D8D8DA2D5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
          D5FFD5D5D5FFE1E1D8FF5050B4FF0D0DA5FF1414A7FF1414A7FF1414A7FF1414
          A7FF1414A7FF1414A7FF1414A7FF1414A7FF1414A7FF1414A7FF1414A7FF1414
          A7FF1111A5FF1010A4FF3D3DB3EB0C0C232F0000000000000000000000000000
          00008F8F8FA2D7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
          D7FFD7D7D7FFE3E3D9FF4E4EB7FF0B0BA7FF1212A9FF1212A9FF1212A9FF1212
          A9FF1212A9FF1212A9FF1212A9FF1414AAFF1414AAFF1414AAFF1414AAFF0E0E
          A7FF2828B7FF2D2D7B9D00000000000000000000000000000000000000000000
          0000909090A2D9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFE2E2DAFF6B6BC9FF2323BEFF2929BFFF2929BFFF2929BFFF2929
          BFFF2929BFFF2A2AC0FF2525BBFF1414AEFF1717B0FF1414AEFF0C0CADFF3A3A
          BDF3111131400000000000000000000000000000000000000000000000000000
          0000919191A2DBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDB
          DBFFDBDBDBFFDCDCDBFFD7D7D9FFBEBED8FFC2C2D8FFC2C2D8FFC2C2D8FFC2C2
          D8FFC2C2D8FFC7C7D9FF9292D1FF0C0CB2FF1010B2FF1B1BBCFF7979D5FF9999
          9EB9000000000000000000000000000000000000000000000000000000000000
          0000929292A2DDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDEDEDDFFE0E0DDFFE0E0DDFFE0E0DDFFE0E0DDFFE0E0
          DDFFE0E0DDFFE6E6DEFFA5A5D3FF0202B4FF3A3ACDFFB1B1DAFFECECDEFFA7A7
          A7BC000000000000000000000000000000000000000000000000000000000000
          0000949494A2DFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFDFDFDFFFE3E3DFFFAEAEDBFF5E5ED5FFDBDBDDFFE6E6DFFFDFDFDFFFA8A8
          A8BC000000000000000000000000000000000000000000000000000000000000
          0000959595A2E1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE1E1E1FFE5E5E1FFEBEBE1FFE2E2E1FFE1E1E1FFE1E1E1FFA9A9
          A9BC000000000000000000000000000000000000000000000000000000000000
          0000979797A2E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFABAB
          ABBC000000000000000000000000000000000000000000000000000000000000
          0000979797A2E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFABAB
          ABBC000000000000000000000000000000000000000000000000000000000000
          0000999999A2E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFADAD
          ADBC000000000000000000000000000000000000000000000000000000000000
          0000999999A2E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFAEAE
          AEBC000000000000000000000000000000000000000000000000000000000000
          00009A9A9AA2E9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFAEAE
          AEBC000000000000000000000000000000000000000000000000000000000000
          00009B9B9BA2EAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFB0B0
          B0BC000000000000000000000000000000000000000000000000000000000000
          00009B9B9BA2EBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFEBEBEBFFEBEBEBFFF0F0F0FFF5F5F5FFF5F5F5FFF5F5F5FFF6F6F6FFB7B7
          B7C1000000000000000000000000000000000000000000000000000000000000
          00009C9C9CA2ECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
          ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
          ECFFECECECFFF1F1F1FFB1B1B1FF757575FF787878FF777777FF717171FF3232
          3251000000000000000000000000000000000000000000000000000000000000
          00009C9C9CA2EBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFEBEBEBFFF5F5F5FF7D7D7DFF747474FF6F6F6FFF646464FF1E1E1E4F0000
          0000000000000000000000000000000000000000000000000000000000000000
          00009C9C9CA2EDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFF7F7F7FF767676FF666666FF5C5C5CFF1C1C1C4F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009E9E9EA2ECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
          ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
          ECFFECECECFFF9F9F9FF666666FF515151FF1818184F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009797979CEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFFEFEFEFF4E4E4EFF1515154F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121213898989958E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E
          8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E
          8E9A8F8F8F9A9090909D2525254F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000808072122211F75000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000A090823877655DFD9B36AFF3430298A0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000101010103020202080505050D09090914090909190A0A0A1C0909091B0909
          0918080808140404040D0C0C0B2A8D7B59E1EABD67FFE7B962FFD7B067FF3833
          2B8E000000010000000000000000000000000000000000000000000000000000
          000000000000000000000C0C0C1B3B3B3B5F6161618F808081B29A9A9ACDB9B9
          B9E1D2D2D2EFE9E9E9FAEEEEEFFEEEEEEEFFECECECFFEAEAEAFFE8E8E8FFE6E6
          E6FFE4E4E4FFCACACBFEB6A27AFDEEC16CFFECBF6CFFE9BD6AFFE4B763FFD4AD
          64FF39342D980505051300000000000000000000000000000000000000000000
          0000000000001717172FEFEFEFF8FAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF1F1F2FFF0F0F0FFEEEEEEFFECECECFFEAEAEBFFE9E9E9FFE7E7
          E7FFCCCCCDFFB8A176FFEEC16BFFEDC06CFFECC06FFFEAC070FFE7BC6AFFDFB2
          5DFFD0A85DFF878277F005040411000000000000000000000000000000000000
          00000000000023232341FCFCFCFFFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF3F3F3FFF1F1F1FFEFEFF0FFEEEEEEFFECECECFFEAEAEBFFCECE
          CFFFB89F70FFEABB61FFEDBF68FFECBF6BFFEBBF6FFFE9BE6FFFE6BB6AFFE0B4
          61FFD8A953FFCCA254FF3A342C9B000000030000000000000000000000000000
          00000000000023232341FCFCFCFFFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF4F4F4FFF2F2F3FFF1F1F1FFEFEFF0FFEEEEEEFFCFCFD0FFB99E
          6BFFE6B456FFE7B75DFFECBD67FFEABD69FFE9BD6BFFE7BB6AFFE4B867FFE0B3
          60FFD6A751FFD2A14AFFC69A4AFF3C362C9F0000000300000000000000000000
          00000000000023232341FCFCFCFFFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF5F5F5FFF4F4F4FFF2F2F3FFF1F1F1FFD0D0D0FFB99C66FFE4B1
          4FFFE3B152FFE3B156FFE8B962FFE8BB66FFE6BA66FFE4B865FFE2B563FFDEB0
          5DFFD3A34DFFCF9E46FFC9983DFFBF913EFF3F382CA301010004000000000000
          00000000000023232341FCFCFCFFF3F3F3FFE4E4E5FFDBDBDCFFD5D5D7FFD1D1
          D3FFD0D0D1FFD4D4D5FFD5D5D6FFD6D6D7FFD1D2D3FFA28F6CFFE2AD48FFE1AD
          4BFFE1AE4EFFE0AE51FFD5AB5DFFDBB368FFE4B661FFE2B460FFE0B360FFB397
          65FFD1A14AFFCB9940FFC59237FFC18D31FFB6893AFF1F1D1C70000000000000
          00000000000017171730B3B4B6FDC0C1C3FFD3D3D5FFDEDEDFFFE5E6E6FFEAEA
          EAFFECECEDFFF1F1F1FFEFEFEFFFEDEDEDFFEBEBEBFFC6C6C6FFBB995BFFDEA9
          46FFDEAA4AFFD1A654FF90897EFFC9A15AFFDCAC55FFDCAD56FFDBAC57FF8A85
          7BFFA28A60FFC59339FFC18D32FFBA8933FF453C2EB101010107000000000000
          00000000000019191933F8F8F8FDFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF1F1F2FFF0F0F0FFEEEEEEFFECECECFFEBEBEBFFC6C6C5FFB796
          59FFCEA14EFFABA59AFFBBBBBCFFC69E54FFD7A64CFFD5A44BFFCE9D44FF9C96
          8CFFB2B3B4FF9C845AFFBB8A34FF453B2EB00101010700000000000000000000
          00000000000023232341FCFCFCFFFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF3F3F3FFF1F1F1FFEFEFF0FFEEEEEEFFECECEDFFEBEBEBFFC6C6
          C6FFACA7A0FFE5E5E5FFBDBDBEFFC3994FFFD19E43FFCA973BFFC79439FF9B95
          8BFFC3C3C4FFB2B2B4FF35322BA0010101070000000000000000000000000000
          00000000000023232341FCFCFCFFFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF4F4F4FFF2F2F3FFF1F1F1FFF0F0F0FFEEEEEEFFEDEDEDFFEBEB
          ECFFEAEAEAFFE9E9E9FFBEBEBFFFB98E40FFC79233FFC59031FFC28E31FF9B94
          8AFFC3C3C4FFC2C2C4FF08080817000000000000000000000000000000000000
          00000000000023232341FCFCFCFFFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF5F5F5FFF4F4F4FFF3F3F3FFF1F1F2FFF0F0F0FFEFEFEFFFEDED
          EEFFECECECFFEBEBEBFFBFBFC0FFB58939FFC38D2CFFC08B2BFFBE892AFF9A93
          88FFC3C3C4FFC2C2C4FF0A0A0A17000000000000000000000000000000000000
          00000000000023232341FCFCFCFFEEEEEFFFDFDFE0FFD6D6D7FFD0D1D2FFCCCD
          CEFFCACBCCFFCDCDCEFFCECECFFFCFCFD0FFCFD0D0FFCFD0D1FFCFCFD0FFCECE
          CFFFCDCDCEFFCBCCCDFFAEAFB0FFB18433FFBE8825FFBC8524FFB98323FF9790
          85FFC1C1C2FFC2C2C4FF0A0A0A17000000000000000000000000000000000000
          0000000000001414142CA7A8AAFCBABABCFFCECECFFFDADADBFFE2E2E3FFE7E7
          E7FFEAEAEAFFF0F0F0FFEEEEEFFFEDEDEDFFEBEBEBFFE9E9E9FFE7E7E7FFE5E5
          E6FFE3E3E4FFE1E1E1FFBBBBBCFF99773EFFA37A35FFA07833FF9F7732FF8A86
          7DFFA4A5A7FF929295F40505050E000000000000000000000000000000000000
          00000000000017171731F3F3F3FAFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF1F1F2FFF0F0F0FFEEEEEEFFECECECFFEBEBEBFFE9E9E9FFE7E7
          E7FFE5E5E6FFE4E4E4FFD5D5D6FFC9C9CAFFC1C1C2FFBEBEBFFFBCBCBDFFBFBF
          C0FFC3C3C4FFB1B1B2F306060610000000000000000000000000000000000000
          00000000000023232341FCFCFCFFFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF3F3F3FFF1F1F1FFEFEFF0FFEEEEEEFFECECECFFEBEBEBFFE9E9
          E9FFE7E7E8FFE6E6E6FFDADADAFFD9D9DAFFCECECEFFCBCBCCFFC8C8C9FFC6C6
          C7FFC3C3C4FFC2C2C4FF0A0A0A17000000000000000000000000000000000000
          00000000000023232341FCFCFCFFFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF4F4F4FFF2F2F3FFF1F1F1FFEFEFF0FFEEEEEEFFEDEDEDFFEBEB
          ECFFEAEAEAFFE8E8E9FFDBDBDCFFDCDCDCFFCECECEFFCBCBCCFFC8C8C9FFC6C6
          C7FFC3C3C4FFC2C2C4FF0A0A0A17000000000000000000000000000000000000
          00000000000023232341FCFCFCFFFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF5F5F5FFF4F4F4FFF2F2F3FFF1F1F1FFF0F0F0FFEFEFEFFFEDED
          EEFFECECECFFEBEBEBFFDCDCDDFFDFDFDFFFCECECEFFCBCBCCFFC8C8C9FFC6C6
          C7FFC3C3C4FFC2C2C4FF0A0A0A17000000000000000000000000000000000000
          00000000000023232341FDFDFDFFF1F2F2FFE2E2E3FFD9D9DAFFD3D4D5FFD0D0
          D1FFCECECFFFCFD0D1FFCFD0D1FFD0D0D1FFD0D1D2FFD0D1D2FFD0D0D1FFCFCF
          D0FFCECECFFFCDCDCEFFC9C9CAFFCACACBFFC4C5C6FFC3C3C5FFC2C2C3FFC1C1
          C3FFC2C2C3FFC2C2C4FF0A0A0A17000000000000000000000000000000000000
          0000000000001616162FAAABADFDB7B8BAFFCBCCCDFFD7D8D8FFDFDFE0FFE4E4
          E5FFE7E8E8FFEEEEEEFFEDEDEEFFECECEDFFEAEAEBFFE9E9E9FFE7E7E7FFE5E5
          E5FFE3E3E3FFE0E0E1FFD5D5D6FFD0D0D1FFC7C7C8FFC1C1C2FFBABABCFFB1B1
          B3FFA4A5A7FF969799F70505050F000000000000000000000000000000000000
          0000000000001616162FF0F0F0F9FAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF1F1F2FFF0F0F0FFEEEEEEFFECECECFFEAEAEBFFE9E9E9FFE7E7
          E7FFE5E5E5FFE3E3E4FFD8D8D9FFD7D7D7FFCECECEFFCBCBCCFFC8C8C9FFC6C6
          C7FFC3C3C4FFADADAEF10505050F000000000000000000000000000000000000
          00000000000023232341FCFCFCFFFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF3F3F3FFF1F1F1FFEFEFF0FFEEEEEEFFECECECFFEAEAEBFFE9E9
          E9FFE7E7E8FFE6E6E6FFDADADAFFD9D9DAFFCECECEFFCBCBCCFFC8C8C9FFC6C6
          C7FFC3C3C4FFC2C2C4FF0A0A0A17000000000000000000000000000000000000
          00000000000023232341FCFCFCFFFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF4F4F4FFF2F2F3FFF1F1F1FFEFEFF0FFEEEEEEFFECECEDFFEBEB
          ECFFEAEAEAFFE8E8E9FFDBDBDCFFDCDCDCFFCECECEFFCBCBCCFFC8C8C9FFC6C6
          C7FFC3C3C4FFC2C2C4FF0A0A0A17000000000000000000000000000000000000
          00000000000023232341FCFCFCFFFAFAFAFFF7F7F7FFF4F4F5FFF2F2F2FFEFEF
          F0FFEEEEEEFFF5F5F5FFF4F4F4FFF2F2F3FFF1F1F1FFF0F0F0FFEFEFEFFFEDED
          EEFFECECECFFEBEBEBFFDCDCDDFFDEDEDFFFCECECEFFCBCBCCFFC8C8C9FFC6C6
          C7FFC3C3C4FFC2C2C4FF0A0A0A17000000000000000000000000000000000000
          00000000000023232341FCFCFCFFF5F5F6FFE8E9E9FFDFDFE0FFD8D8D9FFD3D3
          D4FFD0D0D1FFD1D1D2FFCFD0D1FFCFCFD0FFCECFD0FFCECECFFFCECECFFFCDCD
          CFFFCDCDCEFFCDCDCEFFC9CACBFFCBCCCDFFC6C7C8FFC6C6C8FFC6C6C7FFC5C5
          C7FFC3C3C5FFC2C2C4FF0A0A0A17000000000000000000000000000000000000
          00000000000017171831D9D9D9FECCCCCDFFCCCCCDFFCCCCCDFFCCCCCDFFCCCC
          CDFFCCCCCDFFCCCCCDFFCCCCCDFFCCCCCDFFCCCCCDFFCCCCCDFFCCCCCDFFCCCC
          CDFFCCCCCDFFCCCCCDFFCCCCCDFFCCCCCDFFCCCCCDFFCCCCCDFFCCCCCDFFCCCC
          CDFFCCCCCDFFC0C0C1F806060610000000000000000000000000000000000000
          00000000000000000000232324476161619D8F8F90D1C4C4C4F2D9D9D9FED9D9
          DAFFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9DAFFD8D9D9FEBEBFBFEF8989
          89CB5B5B5B951A1A1A3800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010104080808121212
          12261D1D1D341D1D1D3C1F1F1F401F1F1F411F1F1F411F1F1F411F1F1F411F1F
          1F411F1F1F411E1E1E3F1C1C1C3B1B1B1B321111112407070710010101030000
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
          20000000000000100000000000000000000000000000000000000204060A223B
          48551F526C83084B6B92074563871638495E03080A1100000000010101041111
          11312526265B36363676404040864344448D4344448D414141883B3C3C7E3030
          306D2222225411111131010101060000000000335261006EB0C90082CFED0074
          BAD40069A8C10081CDEB0079C1DC004C7A8C00060A100000000036A3D4DE6FC9
          F2FF2FA5D9FF098FC9FF0B8CC7FF42A9DAFF3B9AC9EE46555DA87A7B7BF18485
          85FF868787FF878888FF888989FF898989FF898A8AFF888989FF888989FF8788
          88FF868686FF848585FF7E7E7EF72373A0D40092E3FF0090E1FF0096E4FF008F
          E1FF0092E3FF0090E1FF008FE0FF0091E3FF007BBFD700080C1226AAECFF53BB
          EDFF35A0D5FF0C84BFFF0C85C0FF33A1D9FF269AD9FF788C95FF8F9090FF9192
          92FF939494FF949595FF949595FF959595FF959595FF959595FF949595FF9495
          95FF939494FF929292FF6992A6FF0098E6FF0098E6FF00ABF0FF00B7F5FF00AD
          EFFF0097E4FF0098E7FF00A1EAFF0099E5FF0098E7FF0058869535B6F1FE47B7
          ECFF1AA3DEFF0598D6FF0693D4FF29A0DCFF33A0D8FF84969FFF9A9B9BFF9B9C
          9CFF9C9C9CFF9C9D9DFF9C9D9DFF9A9A9AFF656565FF727272FF9C9D9DFF9C9D
          9DFF9C9C9CFF9B9C9CFF3E9CC9FF009FEBFF00A4EEFF00B2F3FF00AAF0FF00B0
          F4FF00A9EDFF009FEBFF00A5EEFF00AEF1FF009FEBFF0090D6EA1E9FE3FA5EBF
          EFFF3BA2D4FF0D82BCFF0E83BDFF3AA3D9FF2198DBFF8D9EA7FFA1A1A1FFA1A2
          A2FFA1A2A2FFA1A2A2FFA1A2A2FF7C7C7CFF222222FF222222FF9A9B9BFFA1A2
          A2FFA1A2A2FFA1A2A2FF35A2D3FF00A7F0FF00A7F0FF00B2F4FF00BDFAFF00B8
          F7FF00A8EFFF00A7F0FF00A6EEFF00AAF0FF00A7F0FF00A2EBFD2FB3F0FE3AB2
          EAFF18A2DEFF0598D6FF0593D4FF219DDCFF2D9DD7FF90A2AAFFA6A6A6FFA6A6
          A6FFA6A6A6FF959696FF656565FF444444FF303030FF303030FF4C4C4CFF6A6B
          6BFF9A9A9AFFA6A6A6FF51AACCFF00ABF2FF00AFF4FF00BBF9FF00B1F2FF00B5
          F6FF00AEF1FF00AEF4FF00AFF3FF00B1F3FF00AFF5FF008EC8D523A2E3F96BC5
          F1FF3EA2D4FF0D82BCFF0E83BCFF42A6D8FF279BDBFF97A7AFFFAAABABFFAAAB
          ABFF848484FF414141FF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
          3EFF444444FF919292FF97ADB4FF06AFF0FF00B6F9FF00BCFAFF00C0FBFF00BC
          F9FF00B6F9FF00AFF4FF00BAF8FF00B6F9FF00AFF5FF004862662AAFEEFE2DAC
          E8FF0DA3E2FF02A0E1FF0399DDFF199BDDFF279AD7FF97A9B2FFAFAFAFFFA6A7
          A7FF4F4F4FFF4C4C4CFF4F4F4FFF6B6B6BFF4C4C4CFF4C4C4CFF7A7A7AFF4D4D
          4DFF4C4C4CFF595A5AFFAEAFAFFF7BB4C5FF08B6F3FF00B6F9FF00B9FBFF00B6
          FAFF00B5F7FF00B8F8FF00B7FAFF00B4F7FE00698B8F000000000083CAE8019F
          E5FF03ACEBFF03B0EDFF02A8E9FF0099E2FF058DDBFFA4B0B7FFB3B4B4FF9F9F
          9FFF585858FF585858FF909090FF979797FF585858FF585858FFACADADFF6868
          68FF585858FF595959FFA7A7A7FFB3B4B4FFA3B5BAFF63BCD4FF49BADDFF59B9
          D5FF61B4CBFF2E99BBDB0164818400253035000000000000000000080D14023E
          5B693698BAE144B7D9FF4BB1D6FF65ABCBFFA1B3BDFFB8B8B8FFB8B8B8FFB7B7
          B7FF909090FF909191FFB7B8B8FF9E9E9EFF646464FF646464FF939393FF6565
          65FF646464FF696969FFACACACFFB8B8B8FFB8B8B8FFB8B8B8FFB7B8B8FFB4B4
          B4FFABABABFF6C6D6DAE00000000000000000000000000000000000000000000
          00006F7070AEB0B0B0FFB9B9B9FFBBBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBC
          BCFFBCBCBCFFBCBCBCFFB5B6B6FF929292FF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
          6FFF727272FF8B8B8BFFBBBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBBBCBCFFB8B8
          B8FFAEAFAFFF696969A400000000000000000000000000000000000000000000
          00005B5B5B8DB2B2B2FFBCBCBCFFBFC0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
          C0FFBDBDBDFF979797FF7B7B7BFF797979FF797979FF797979FF7D7D7DFF8787
          87FF9D9D9DFFBBBBBBFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFBFBFBFFFBABB
          BBFFB0B1B1FF5858588700000000000000000000000000000000000000000000
          00003838385DB5B5B5FFBEBEBEFFC3C3C3FFC3C4C4FFC3C4C4FFC3C4C4FFC3C4
          C4FF979797FF848484FF848484FF8A8A8AFF848484FF858585FFADAEAEFFBCBC
          BCFFC3C4C4FFC3C4C4FFC3C4C4FFC3C4C4FFC3C4C4FFC3C4C4FFC2C2C2FFBCBC
          BCFFB3B4B4FF3434345400000000000000000000000000000000000000000000
          00000D0D0D1CB3B4B4FEBEBEBEFFC5C6C6FFC7C7C7FFC7C7C7FFC7C7C7FFC2C2
          C2FF8D8D8DFF8C8C8CFF939393FFA6A6A6FF8C8C8CFF8C8C8CFFC2C3C3FFB8B8
          B8FFACACACFFC2C3C3FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC4C4C4FFBBBC
          BCFFABABABF40606060D00000000000000000000000000000000000000000000
          0000000000008B8C8CC7BDBDBDFFC7C7C7FFCACACAFFCACBCBFFCACBCBFFC6C7
          C7FF979797FF939393FFA0A0A0FFB9B9B9FF939393FF939393FFB6B7B7FF9494
          94FF939393FFAEAEAEFFCACBCBFFCACBCBFFCACBCBFFC9C9C9FFC3C3C3FFBBBB
          BBFF656565920000000000000000000000000000000000000000000000000000
          00000000000040404060BEBEBEFFC6C6C6FFCCCCCCFFCECECEFFCECECEFFCECE
          CEFFADADADFF9D9D9DFF999999FFA2A2A2FF999999FF999999FF9A9A9AFF9999
          99FF9F9F9FFFBDBDBDFFCECECEFFCECECEFFCDCDCDFFC9C9C9FFC0C0C0FFACAC
          ACEC0B0B0B150000000000000000000000000000000000000000000000000000
          00000000000002020205A2A2A2DDC3C3C3FFCCCCCCFFD0D0D0FFD1D1D1FFD1D1
          D1FFCDCDCDFFB3B3B3FFA7A7A7FFA1A1A1FF9E9E9EFF9E9E9EFFA5A5A5FFAAAA
          AAFFBEBEBEFFD1D1D1FFD1D1D1FFD0D0D0FFCCCDCDFFC5C5C5FFBFBFBFFE3737
          3750000000000000000000000000000000000000000000000000000000000000
          000000000000000000003434344DC1C1C1FEC9C9C9FFD0D1D1FFD3D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFCACACAFFBCBDBDFFA2A2A2FFA3A3A3FFC5C5C5FFD1D1
          D1FFD4D4D4FFD4D4D4FFD3D3D3FFCFCFCFFFC8C8C8FFC3C3C3FF5959597B0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000006F6F6F98C6C6C6FFCDCDCDFFD4D4D4FFD6D6
          D6FFD6D7D7FFD6D7D7FFD6D7D7FFC9C9C9FFAAAAAAFFAAAAAAFFD4D4D4FFD6D7
          D7FFD6D6D6FFD5D5D5FFD1D1D1FFCACACAFFC4C4C4FE5F5F5F81000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020205898989B7C8C9C9FFCFCFCFFFD5D5
          D5FFD8D8D8FFD9D9D9FFD9D9D9FFD9D9D9FFC9C9C9FFCECECEFFD9D9D9FFD8D8
          D8FFD6D6D6FFD1D1D1FFCACACAFFC1C1C1F84A4A4A6500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004040408808080AACACBCBFFCFCF
          CFFFD5D5D5FFDADADAFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDADADAFFD6D6
          D6FFD0D0D0FFCBCBCBFFA9A9A9D9252525350000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005151516DC1C1
          C1F3CECECEFFD5D5D5FFDBDBDBFFDDDDDDFFDDDDDDFFDCDCDCFFD6D6D6FFCECE
          CEFFC5C5C5F86767678705050509000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001010
          101B747474969898B8F74444A4FF3636A4FF3636A3FF4747A6FF7474B1FF7A7A
          7DA2161616220000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002D2D4974BCBCCAFFDFDFDFFFE0E0E0FFC5C5D1FF8A8AAFFA0C0C
          0E16000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010101038F8F8FBBD4D4D4FFDEDEDEFFE0E0E0FFDBDBDBFFCECFCFFF7777
          779F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000202
          02057C7C7CA5CACACAFFD5D5D5FFDCDCDCFFDEDEDEFFDADADAFFD1D1D1FFC3C3
          C3FD242424350000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000505050B8989
          89B7C4C4C4FFC9C9C9FFD0D0D0FFD5D5D5FFD8D8D8FFD6D6D6FFCFCFCFFFC7C7
          C7FF8E8E8EBE0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000505050B919191C3C0C0
          C0FFB7B7B7F4797979A0C6C6C6FFC6C6C6FCCECECEFFCECECEFFBCBCBCF19C9C
          9CCFBFBFBFFF2C2C2C4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000007B7B7BA6C0C0C0FE8181
          81AD1313131E00000000AFAFAFE9424242599C9C9CCEC6C6C6FFAAAAAAE10404
          04077F7F7FA7878787B200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000020202078E8E8EBA313131430000
          00000000000000000000949494C51E1E1E3009090911999999CBBDBDBDFA0000
          0002000000015252526F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000808080A80B0B0B17000000000808080E7C7C7CA20101
          0103000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004B4B4B65000000000000000000000000000000000000
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
          0000000000000000000000000000000000002A200B45826425B5151006240000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004C3A146DD4A137FCBB9033F14636
          1566000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001503D156FD7A339FDD8A339FED09F
          38FD836426B30E0B041900000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001513E166FD9A53AFDDBA63AFFDAA5
          3AFED7A43AFDB58B33E93A2C1154000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010101
          0005020100060201000602010006020100060201000602010006020100060201
          00060201000602010006020100060201000758431872DBA63BFEDDA83CFFDCA7
          3CFFDBA63BFEDBA63BFED19F3AFD765B23A20907021100000000000000000000
          00000000000000000000000000000000000000000000000000007D6026A8C497
          3AFCC4973AFCC4973AFCC4973AFCC4973AFCC4973AFCC4973AFCC4973AFCC497
          3AFCC4973AFCC4973AFCC4973AFCC5983AFCCF9F3BFDDCA73CFEDEA93DFFDEA9
          3DFFDEA93DFFDDA83CFFDCA73CFED9A53CFDAD8533E02E240E45000000010000
          0000000000000000000000000000000000000000000000000000D7A43DFCDDA8
          3DFEDEA93DFFDEA93DFFDEA93DFFDEA93DFFDEA93DFFDEA93DFFDEA93DFFDEA9
          3DFFDEA93DFFDEA93DFFDEA93DFFDEA93DFFDEA93DFFDEA93DFFDFAA3EFFDFAA
          3EFFDFAA3EFFDFAA3EFFDEA93EFFDDA83DFEDDA83DFECE9E3BFB6A5221910503
          010A000000000000000000000000000000000000000000000000DEA93FFEDEA9
          3FFEE0AB3FFFE0AB3FFFE0AB3FFFE0AB3FFFE0AB3FFFE0AB3FFFE0AB3FFFE0AB
          3FFFE0AB3FFFE0AB3FFFE0AB3FFFE0AB3FFFE0AB3FFFE0AB3FFFE0AB3FFFE0AB
          3FFFE0AB3FFFE0AB3FFFE0AB3FFFE0AB3FFFDEA93FFEDEA93EFEDAA73EFDA37F
          32D5231C0B360000000100000000000000000000000000000000E1AC40FFE1AC
          40FFE1AC40FFE1AC40FFE1AC40FFE1AC40FFE1AC40FFE1AC40FFE1AC40FFE1AC
          40FFE1AC40FFE1AC40FFE1AC40FFE1AC40FFE1AC40FFE1AC40FFE1AC40FFE1AC
          40FFE1AC40FFE1AC40FFE1AC40FFE1AC40FFE1AC40FFE0AB40FFDFAA40FEDFAA
          40FECB9C3DF85D481D7F02010005000000000000000000000000E2AD42FFE2AD
          42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD
          42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD
          42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE0AB
          41FEE0AB41FEDAA840FD997630C81A1408290000000100000000E3AE43FFE3AE
          43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE
          43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE
          43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE
          43FFE2AD42FFE1AC42FEE1AC42FEC79A3DF4503F1A6E01000003E4AF44FFE4AF
          44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF
          44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF
          44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF
          44FFE4AF44FFE4AF44FFE2AD43FEE2AD43FEDBA842FD8B6C2DB4E5B045FFE5B0
          45FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B0
          45FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B0
          45FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B0
          45FFE5B045FFE5B045FFE4AF45FEE3AE44FEE2AD44FDA88233BFE6B146FFE6B1
          46FFE6B146FFE6B146FFE6B146FFE6B146FFE6B146FFE6B146FFE6B146FFE6B1
          46FFE6B146FFE6B146FFE6B146FFE6B146FFE6B146FFE6B146FFE6B146FFE6B1
          46FFE6B146FFE6B146FFE6B146FFE6B146FFE6B146FFE6B146FFE6B146FFE6B1
          46FFE6B146FFE5B046FEE4AF45FEDCAA43F76E54217C03020005E7B247FFE7B2
          47FFE7B247FFE7B247FFE7B247FFE7B247FFE7B247FFE7B247FFE7B247FFE7B2
          47FFE7B247FFE7B247FFE7B247FFE7B247FFE7B247FFE7B247FFE7B247FFE7B2
          47FFE7B247FFE7B247FFE7B247FFE7B247FFE7B247FFE7B247FFE7B247FFE6B1
          47FEE6B147FEE4AF47FDBB9039D129200C320000000100000000E8B349FFE8B3
          49FFE8B349FFE8B349FFE8B349FFE8B349FFE8B349FFE8B349FFE8B349FFE8B3
          49FFE8B349FFE8B349FFE8B349FFE8B349FFE8B349FFE8B349FFE8B349FFE8B3
          49FFE8B349FFE8B349FFE8B349FFE8B349FFE8B349FFE8B349FFE7B249FEE6B1
          48FEE2AE47FA7B5E268905040108000000000000000000000000E9B44AFFE9B4
          4AFFE9B44AFFE9B44AFFE9B44AFFE9B44AFFE9B44AFFE9B44AFFE9B44AFFE9B4
          4AFFE9B44AFFE9B44AFFE9B44AFFE9B44AFFE9B44AFFE9B44AFFE9B44AFFE9B4
          4AFFE9B44AFFE9B44AFFE9B44AFFE9B44AFFE8B34AFEE8B34AFEE6B149FDC598
          3FDA3428103D0000000100000000000000000000000000000000E9B44BFEE9B4
          4BFEEAB54BFFEAB54BFFEAB54BFFEAB54BFFEAB54BFFEAB54BFFEAB54BFFEAB5
          4BFFEAB54BFFEAB54BFFEAB54BFFEAB54BFFEAB54BFFEAB54BFFEAB54BFFEAB5
          4BFFEAB54BFFEAB54BFFEAB54BFFE9B44BFEE9B44AFEE7B349FC886A2C970907
          020D000000000000000000000000000000000000000000000000D4A544E7E9B4
          4BFDEAB54CFDEAB54CFDEAB54CFDEAB54CFDEAB54CFDEAB54CFDEAB54CFDEAB5
          4CFDEAB54CFDEAB54CFDEAB54CFDE9B44CFDEAB54CFEEAB54CFEECB74CFFECB7
          4CFFECB74CFFECB74CFFEBB64CFEE9B44BFDCFA043E240321449000000010000
          00000000000000000000000000000000000000000000000000002C220E346B53
          23766C5423776C5423776C5423776C5423776C5423776C5423776C5423776C54
          23776C5423776C5423776C5423776C542377A57F36B4EBB64CFEEDB84DFFEDB8
          4DFFECB74DFEEBB64CFEEAB54CFD977531A50D0A041200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000010000000100000001000000010000
          000100000001000000010000000100000002604A2073EBB64DFDEEB94EFFEDB8
          4EFEEBB64DFDD7A746E94D3B1955000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000015F4A2073ECB74FFDEDB84FFEECB7
          4FFDA48037B2130F061900000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005E4A2072ECB84FFCDFAE4BEF5B47
          1E63000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003E31154BA58038B21B1509210000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000A130202142A0202162B0404172C0303172C04051224000003050000
          00000504010919140A291C16092E1C160A2E1C16092E1C15092C0A0905100000
          0000000000000000000000000000000000000000000001091014032D4857092D
          43530616222A00070A0D00000002000000000000000000000000000000000000
          0A15060657B00A0A75E7090974E8080873E8090975E907076FDD00002B510203
          000347360F738E6C23E5927024EA927025EA927125EA8E6E23E95E4717970604
          000A010101010101010101010101010101010101010100375C700081D8F80083
          D7F90078C4E40063A8BF004A7D8D002139400002020300000000000000000101
          172C070775E9080882FF070781FF060681FF070781FF090982FF00004C8C0502
          01076E5317B0A07B28FFA07A26FFA07A26FFA07A26FFA07B28FF836421D40D0A
          01180000000000000000000000000000000000010606005891AB0088DFFF0087
          E0FF0088DEFF0086DEFF0087DDFF006BB6D1000E151A00000000000000000101
          172D060677EA020283FF161687FF1E1E88FF050583FF050584FF00004F8F0502
          0107725719B1A47B24FFA37E2DFFA3843CFFA37E2EFFA47B25FF896923D6100A
          021900000000000000000000000000000000000D15180076B7D2008BE4FF0D8D
          DAFF0A8CDAFF0089E2FF0088DFFF006FB6D1000C121600000000000000000000
          172D03037BEA3F3F95FFA3A3A0FFA3A39AFF6C6C9FFF040488FF0000528F0502
          010774591AB1A88436FFA8A396FF92969EFFA7A39AFFA9863AFF896923D6100C
          041900000000000000000000000000000000001F2E350084D4ED57A1CAFFA49D
          98FFA39F9CFF3F9AD0FF008AE4FF005D95A90002040600000000000000000000
          182D03037DEA8888A7FF6B6B5DFF4F4F47FFA3A3A0FF16168FFF0000548F0502
          0107765B1BB1AF975CFF828792FF3D3F43FF7A7E8BFFB19A66FF8D6A24D6100C
          041900000000000000000000000000000000003755600192E1FBA1A7AAFF584C
          46FF65574EFF8FA5B4FF008CE2FE004268770000000000000000000000000101
          182D03037FEA7777AFFF979784FF7D7D6BFFA4A4B4FF0F0F8FFF0000548F0302
          0107775B1CB1B49652FFA3A6ACFF5E626DFF9DA1AAFFB6995BFF8E6F26D6100C
          041900000000000000000000000000000202005684940095E8FF9DB6C6FF826C
          62FF8E776CFF81AFC9FF0089DEF500293E470000000000000000000000000101
          1A2D080881EA141495FF6E6EB2FF8080B6FF2D2D9EFF05058FFF0000578F0505
          0107785E20B1AF8830FFBDA369FFC2B495FFBFA66EFFAF8731FF93712AD6100C
          041900000000000000000000000000070B0E0074ADC10095EAFF1BA2EAFF7BB8
          D8FF72B6DAFF0E9DEAFF0081C9E000141F240000000000000000000000000101
          1A2D0E0E87EA090992FF030390FF01018FFF070791FF0D0D93FF00005B8F0505
          0107795E24B1B18935FFB08730FFB0852EFFB0862FFFB18935FF947530D6100D
          0519000000000000000000000000001621250087CEE20098E8FF0095EAFF0093
          EBFF0094E9FF0095E8FF0073A9BE00060A0C0000000000000000000000000101
          1A2D080888EA0A0A9AFF060699FF040499FF0B0B9AFF090996FF00005B8F0505
          01077B6024B1B88E39FFBA903AFFBA8E36FFBA8F39FFB98F39FF96742DD6110D
          0519000000000000000000000000002D434A0099E5F620ADEBFF02A3EEFF009C
          EFFF0099EDFF0098EAFF00578291000002020000000000000000000000000101
          1A2D0C0C8FEA9191C4FFB3B3C6FFAEAEC7FFB5B5C9FF3939B0FF00005C8F0505
          01077E6225B1CAAF7BFFCBC7BEFFCBC4B9FFCBC6BEFFCCB995FF9D7930D6110D
          0419000000000000000000000000004A727A27ADE8FED4C8BFFFBEC5C6FFA2C6
          D2FF66BDE0FF009CE8FB003A555D000000000000000000000000000000000000
          1B2D0A0A93EAB4B4C4FFABAB9FFFA0A099FFC9C9B5FF4C4CB5FF00005D8F0505
          0107806225B1CBB58CFFA9AFB8FF989A9EFFA0A5ADFFC9BFACFF9D7A2FD6110C
          0619000000000000000000030507006EA2AC56BCE8FFC5B2AAFF9E9896FFB3A2
          9BFFB4C4C9FF0097DBEC00202F33000000000000000000000000000000000000
          1A2D080994EAB7B6CAFFAEAEA8FFA3A3A3FFCBCBBFFF4B4BB8FF00005E8F0505
          0107846426B1CFB88CFFB3B7BFFFA3A3A3FFAAADB2FFD0C4AFFF9E7A2FD6120E
          05190000000000000000001016180088CAD390C9E1FFB8ACA7FFA1A1A0FFBEB1
          ABFF88C5DEFF0082C4D0000E1416000000000000000000000000000000000101
          1D2D090794EABBBCD0FFB2B2ACFFA8A8A7FFD2D2C4FF4D4DBBFF0000608F0505
          0007866727B1D0BB8FFFB8BCC4FFA8A8A8FFAFB2B6FFD2C8B1FFA07B31D6120E
          0519000000000000000000233436009DE1EEBACDD5FFAEA7A4FFA8A7A6FFCEBE
          B7FF53BEEBFF00699EA800040505000000000000000000000000000000000101
          1B2D080795EABEBFD1FFB8B8B2FFAEAEADFFD7D7C8FF4D4DBBFF0000618F0505
          0207866727B1D1BA90FFBDC1C9FFAEAEAEFFB6B8BDFFD4C8B3FFA37C32D6120D
          05190000000000000000003D5C610FACECFCE3DEDCFFCAC7C6FFB4B2B1FFD3C8
          C3FF22B0EEFE004B6E7600000000000000000000000000000000000000000101
          1D2D090798EAC9CADCFFEDEDE7FFE7E7E6FFF8F8E9FF4D4DBBFF0000618F0505
          0207896B27B1D2BC91FFE7EBF3FFE6E6E6FFE6E9EEFFD9CEB9FFA37F32D6140D
          06190000000000020202005F8E943DB8EEFFF9E8E2FFE6E5E5FFECE7E4FFD7DF
          E2FF00A2E8F5002D434600000000000000000000000000000000000000000101
          1E2D0A0899EACCCBDEFFEDEDE7FFE6E6E5FFF9F9EAFF4E4DBBFF0000638F0505
          02078D6B29B1D2BC8FFFE8ECF4FFE5E5E5FFE7EAEFFFDACFB8FFA57F36D61410
          061900000000000A0D0E0080BBC17ECBECFFFDF0E9FFE9E9E9FFF3E9E5FFAFD4
          E6FF0093D5DF0016202300000000000000000000000000000000000000000101
          1E2D0B0B9DEAD5D4E6FFF5F5EFFFEFEFEEFFFFFFF4FF5451C0FF0000668F0505
          02078F6D2CB1D7C196FFF1F5FDFFEEEEEEFFF0F2F7FFE1D7C0FFA88038D61410
          061900000000001B2526009CDBE2BADAECFFD9D0CCFFE2E2E2FFFFF3ECFF78C9
          EFFF0081B5BD00080C0C00000000000000000000000000000000000000000101
          1F2D0E0C9FEAC5C3D5FF75756FFF636363FFBBBBABFF5857C5FF0000678F0505
          020791702EB1DAC498FF94989EFF636363FF7C7E84FFDBD1BAFFAB843AD61410
          05190000000000354A4B06ADEFF6C0C2C5FF46413FFF4C4B4AFFC3B4ADFF3FBF
          F6FF00658A8F0000020200000000000000000000000000000000000000000101
          1F2D0E0EA0EAC1C2D1FF595951FF464644FFABAA99FF5B5AC7FF00006A8F0505
          0207937430B1DBC59AFF7C8089FF444546FF5F6268FFD9CFBAFFAD853CD61610
          061900000000005A7B7C33B8F2FEF1D7CFFF81756FFF605854FFC7BEBDFF14B1
          F3FB00415A5C0000000000000000000000000000000000000000000000000303
          202D1310A4EAD4D2E4FFEBEBDFFFE4E5DDFFFBFBEAFF5956C3FF00006E8F0603
          0207947435B1D5C096FFE3E7F0FFDADDE0FFDEE3E9FFDDD3BBFFAE8940D61710
          061900050607007FACAD12B1F6FF92D1F2FFC6E2F4FFE8E5E6FFD4E0ECFF00A7
          E6EB002532330000000000000000000000000000000000000000000000000303
          202D0F0FA6EA2A29BAFF2E2DBBFF2C2ABBFF3130BCFF1715B6FF00006E8F0605
          020796763BB1CFA555FFD2AC63FFD2AA5FFFD2AC62FFCFA658FFB58E47D61810
          051900121818009FD2D400BCFFFF00B8FFFF00B4FDFF06B5F9FF15B2F5FF0094
          CDCF000F15160000000000000000000000000000000000000000000000000404
          212D1818ACEA1516BCFF1314BCFF1313BCFF1515BCFF1819BEFF0000718F0605
          0207967740B1DDB05EFFDDAE5BFFDDAE5BFFDDAE5BFFDDAE5CFFB99451D61810
          0519001B242500AEDFE100C1FFFF00BEFFFF00BDFFFF00BEFFFF00BEFFFF007B
          A5A7000405050000000000000000000000000000000000000000000000000303
          1A232424A8DC2525C2FE2323C2FF2323C2FF2323C4FF2626C3FB01055E760404
          01048A703E9DDEB66CFDDFB66AFFDFB66AFFDFB56AFFDDB56CFEA8894BC2110A
          041100060808004F696A008DB7B900ADDADC00BDF1F300C1FBFD00C1F9FB0053
          6D6E000000000000000000000000000000000000000000000000000000000000
          03040909374913135D7714145C7814145C7814145C780D0D5269000012180000
          0000221C0C276250317169583578695635786956357866553275312412380101
          0101000000000001010100080A0A001720200033414200556E6F005774750012
          1818000000000000000000000000000000000000000000000000000000000000
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
          2000000000000010000000000000000000000000000000000000000000000001
          0106082D44940B3E5FCE0B3F60CF0B3F60CF0B3F60CF0B3F60CF0B3F60CF0B3F
          60CF0B3F60CF124363CF9DA3A7D6B9B9B9DFB9B9B9DFB9B9B9DFB9B9B9DFB9B9
          B9DFB9B9B9DFB9B9B9DFB9B9B9DFB9B9B9DFB9B9B9DFB9B9B9DFB9B9B9DFB9B9
          B9DFB9B9B9DFB9B9B9DFB9B9B9DFB5B5B5DB3939394800000000000000000520
          316B0B517DFF0B517EFF0B517EFF0B517EFF0B517EFF0B517EFF0B517EFF0B51
          7EFF0B517EFF2B678DFFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF757575870000000000000000062B
          41870C527EFF0C527EFF0C527EFF0C527EFF0C527EFF0C527EFF0C527EFF0C52
          7EFF0C527EFF2D698FFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF787878870000000000000000062C
          44870C5380FF0C5380FF0C5380FF0C5380FF0C5380FF0C5380FF0C5380FF0C53
          80FF0C5380FF2E6A90FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF797979870000000000000000072C
          44870D5481FF0D5481FF0D5481FF0D5481FF0D5481FF0D5481FF0D5481FF0D54
          81FF0D5481FF2F6B91FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FF7A7A7A870000000000000000072C
          45870E5582FF0E5582FF0E5582FF0E5582FF0E5582FF0E5582FF0E5582FF0E55
          82FF0E5582FF306B92FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FF7A7A7A870000000000000000072D
          45870E5583FF0E5583FF0E5583FF0E5583FF0E5583FF0E5583FF0E5583FF0E55
          83FF0E5583FF306C93FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FF7B7B7B870000000000000000072D
          46870F5684FF0F5684FF0F5684FF0F5684FF0F5684FF0F5684FF0F5684FF0F56
          84FF0F5684FF316D94FFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFF7B7B7B870000000000000000082E
          46870F5785FF0F5785FF0F5785FF0F5785FF0F5785FF0F5785FF0F5785FF0F57
          85FF0F5785FF326E95FFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
          ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
          ECFFECECECFFECECECFFECECECFFECECECFF7C7C7C870000000000000000082E
          4787105886FF105886FF105886FF105886FF105886FF105886FF105886FF1058
          86FF105886FF326F96FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF7D7D7D870000000000000000082E
          4787105987FF105987FF105987FF105987FF105987FF105987FF105987FF1059
          87FF105987FF337097FFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
          EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
          EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFF7E7E7E870000000000000000092F
          4887115988FF115988FF115988FF115988FF115988FF115988FF115988FF1159
          88FF115988FF337198FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF7E7E7E870000000000000000092F
          4887125A89FF125A89FF125A89FF125A89FF125A89FF125A89FF125A89FF125A
          89FF125A89FF347299FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF7F7F7F8700000000000000000A30
          4987125B8AFF125B8AFF125B8AFF125B8AFF125B8AFF125B8AFF125B8AFF125B
          8AFF125B8AFF35729AFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FF8080808700000000000000000A31
          4987135C8BFF135C8BFF135C8BFF135C8BFF135C8BFF135C8BFF135C8BFF135C
          8BFF135C8BFF35739BFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FF8080808700000000000000000A31
          4A87135D8CFF135D8CFF135D8CFF135D8CFF135D8CFF135D8CFF135D8CFF135D
          8CFF135D8CFF36749CFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FF8181818700000000000000000B31
          4A87145E8DFF145E8DFF145E8DFF145E8DFF145E8DFF145E8DFF145E8DFF145E
          8DFF145E8DFF37759DFFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FF8181818700000000000000000B32
          4B87145E8EFF145E8EFF145E8EFF145E8EFF145E8EFF145E8EFF145E8EFF145E
          8EFF145E8EFF38769EFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF8282828700000000000000000B32
          4B87155F8FFF155F8FFF155F8FFF155F8FFF155F8FFF155F8FFF155F8FFF155F
          8FFF155F8FFF38779FFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF4EFE5FFF0E4CBFFF0E5CFFFF0E7D4FF7C79738300000000000000000B33
          4B87166090FF166090FF166090FF166090FF166090FF166090FF166090FF1660
          90FF166090FF3978A0FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFE9BD62FFE5B146FFE2AE43FFB08733C90A08040F00000000000000000C33
          4C87166191FF166191FF166191FF166191FF166191FF166191FF166191FF1661
          91FF166191FF3A78A1FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
          FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
          FAFFE4B451FFE0AC40FFAE8531C90A08020F0000000000000000000000000C33
          4C87176192FF176192FF176192FF176192FF176192FF176192FF176192FF1761
          92FF176192FF3A79A2FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
          FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
          FCFFE0B04CFFAC832FC90A08020F000000000000000000000000000000000C34
          4D87176293FF176293FF176293FF176293FF176293FF176293FF176293FF1762
          93FF176293FF2C709CFFF8F9FAFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFAF893ACB0A08020F00000000000000000000000000000000000000000D34
          4E87186394FF186394FF186394FF186394FF186394FF186394FF186394FF1863
          94FF186394FF186394FF3577A1FF4A86ABFF4A86ABFF4A86ABFF4A86ABFF4A86
          ABFF4A86ABFF4A86ABFF4A86ABFF4A86ABFF4A86ABFF4A86ABFF487895D92729
          29370907040E0000000000000000000000000000000000000000000000000D35
          4E87196495FF196495FF196495FF196495FF1773AEFF1774B0FF1774B0FF1774
          B0FF1774B0FF1774B0FF1774B0FF1774B0FF1774B0FF1774B0FF1774B0FF1774
          B0FF1774B0FF186CA3FF196495FF196495FF196495FF196495FF145178CF0000
          0000000000000000000000000000000000000000000000000000000000000B2E
          4576196595FF196595FF196595FF196595FF1691DEFF1693E2FF1693E2FF1693
          E2FF1693E2FF1693E2FF1693E2FF1693E2FF1693E2FF1693E2FF1693E2FF1693
          E2FF1693E2FF177CBDFF196595FF196595FF196595FF196595FF12496DBB0000
          0000000000000000000000000000000000000000000000000000000000000104
          0610134A6DBA196291F61A6391F71A6391F71A93E0FE1A97E6FF1A97E6FF1A97
          E6FF1A97E6FF1A97E6FF1A97E6FF1A97E6FF1A97E6FF1A97E6FF1A97E6FF1A97
          E6FF1A97E6FF1A7EBDFB1A6391F71A6391F71A6391F716567FD804131C330000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001B8CD4E81D9BEAFF1D9BEAFF1D9B
          EAFF1D9BEAFF125D8D9B0105080C0621323C1C92DDF11D9BEAFF1D9BEAFF1D9B
          EAFF1D9BEAFF0E496E7D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000D43646C2098E3F5219FEEFF219F
          EEFF219FEEFF030E151F0000000000000000166495A7219FEEFF219FEEFF219F
          EEFF1C85C7D70310191F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002194DDEA0F2A3B6400000001020304102082BFDC0D3C5962000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001861909728A3F0FC206A99C5248ACBE5269EE9F3030E141B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000030508185E8B8F2590D4DA217FBAC00924363A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000050000000E00000013000000130000
          0013000000130000001300000013000000130000001300000013000000130000
          00130000001300000013000000130000000E0000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000E0000002B0000003A0000003A0000
          003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
          003A0000003A0000003A0000003A0000002B0000000E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AEAEAEFF8C8C8CFF878787FF878787FF8787
          87FF878787FF878787FF878787FF878787FF878787FF878787FF878787FF8787
          87FF878787FF878787FF878787FF0000003A0000001300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF878787FF0000003A0000001300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B6B6B6FFFFFFFFFFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFFFFFFFFF878787FF0000003A0000001300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B6B6B6FFFFFFFFFFF9F9F9FFF9F9F9FFF9F9
          F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF9F9F9FFFFFFFFFF878787FF0000003A0000001300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B6B6B6FFFFFFFFFFFBFBFBFFFBFBFBFFFBFB
          FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
          FBFFFBFBFBFFFFFFFFFF878787FF0000003A0000001300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B6B6B6FFFFFFFFFFFCFCFCFFDBCDBFFFDBCD
          BFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCD
          BFFFFCFCFCFFFFFFFFFF878787FF0000003A0000001300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B6B6B6FFFFFFFFFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFFFFFFFF878787FF0000003A0000001300000000000000000000
          0000000000050000000E00000013000000130000001300000013000000130000
          0013000000130000001300000013B6B6B6FFFFFFFFFFFDFDFDFFDBCDBFFFDBCD
          BFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCD
          BFFFFDFDFDFFFFFFFFFF878787FF0000003A0000001300000000000000000000
          00000000000E0000002B0000003A0000003A0000003A0000003A0000003A0000
          003A0000003A0000003A0000003AB6B6B6FFFFFFFFFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFD4CFCAFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFFFFFFFF878787FF0000003A0000001300000000000000000000
          0000AEAEAEFF8C8C8CFF878787FF878787FF878787FF878787FF878787FF8787
          87FF878787FF878787FF878787FFB6B6B6FFFFFFFFFFFEFEFEFFE9E6E4FFAE95
          7AFFAF8357FFAE8257FFA67B53FFA08771FFDFDBD7FFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFFFFFFFF878787FF0000003A0000001300000000000000000000
          0000B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6FFFFFFFFFFFFFFFFFFBEAFA2FFB08B
          64FFC59865FFC99864FFBD8D5FFF966E4DFFB2A59AFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF878787FF0000003A0000001300000000000000000000
          0000B6B6B6FFFFFFFFFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFB6B6B6FFFFFFFFFFFFFFFFFFB9AA9EFF9973
          55FFA98561FFC7AB8BFFB08B64FF856245FFB0A399FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF878787FF0000003A0000001300000000000000000000
          0000B6B6B6FFFFFFFFFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF9F9F9FFF9F9F9FFF9F9F9FFB6B6B6FFFFFFFFFFFFFFFFFFF6F4F3FF9E85
          71FFCDCAC6FF7CB7E8FFC2C1C2FF8E7561FFF6F4F3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF878787FF0000003A0000001300000000000000000000
          0000B6B6B6FFFFFFFFFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
          FBFFFBFBFBFFFBFBFBFFFBFBFBFFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF86BBE4FF6FB6ECFF6BA7DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF8B8B8BFF0000003A0000001300000000000000000000
          0000B6B6B6FFFFFFFFFFFCFCFCFFDBCDBFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCD
          BFFFDBCDBFFFDBCDBFFFDBCDBFFFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFB0D5
          F2FF7CC9F9FF7DC9F9FF65B7EFFFADCFEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF7F7F7FFEEEEEEFFABABABFF000000380000001200000000000000000000
          0000B6B6B6FFFFFFFFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFF96B3
          D0FF75AFDAFF9AD6FCFF63A7D6FF92AAC2FFFFFFFFFFEBEBEBFFE6E6E6FFDADA
          DAFFD9D9D9FFCECECEFFAEAEAEFF0000002C0000000D00000000000000000000
          0000B6B6B6FFFFFFFFFFFDFDFDFFDBCDBFFFDBCDBFFFDBCDBFFFDBCDBFFFDBCD
          BFFFDBCDBFFFDBCDBFFFDBCDBFFFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFC7D5
          E5FF92B7DBFF70ABDCFF538DC5FF9CAFC4FFFFFFFFFFE6E6E6FFFFFFFFFFFFFF
          FFFFF4F4F4FFC5C5C5FF939393D8000000160000000500000000000000000000
          0000B6B6B6FFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD4CFCAFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB8CDE5FF7E9DBEFF98AFC9FFF1F4F7FFFFFFFFFFE0E0E0FFFFFFFFFFF4F4
          F4FFD0D0D0FF939393D80B0B0B25000000050000000000000000000000000000
          0000B6B6B6FFFFFFFFFFFEFEFEFFE9E6E4FFAE957AFFAF8357FFAE8257FFA67B
          53FFA08771FFDFDBD7FFFEFEFEFFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4FFF4F4F4FFCCCC
          CCFF939393D80B0B0B2600000005000000000000000000000000000000000000
          0000B6B6B6FFFFFFFFFFFFFFFFFFBEAFA2FFB08B64FFC59865FFC99864FFBD8D
          5FFF966E4DFFB2A59AFFFFFFFFFFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2FFCCCCCCFF9393
          93D80B0B0B280000000600000000000000000000000000000000000000000000
          0000B6B6B6FFFFFFFFFFFFFFFFFFB9AA9EFF997355FFA98561FFC7AB8BFFB08B
          64FF856145FFB0A399FFFFFFFFFFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB3B3B3FFA9A9A9FFAAAAAAF02222
          223C000000060000000100000000000000000000000000000000000000000000
          0000B6B6B6FFFFFFFFFFFFFFFFFFF6F4F3FF9E8671FFCDCAC6FF7CB7E8FFC2C1
          C1FF8E7561FFF6F4F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8787
          87FF0000003A0000001300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86BBE4FF6FB6ECFF6BA7
          DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B8B
          8BFF0000003A0000001300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFB0D5F2FF7CC9F9FF7DC9F9FF65B7
          EFFFADCFEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFABAB
          ABFF000000380000001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFF96B3D0FF75AFDAFF9AD6FCFF63A7
          D6FF92AAC2FFFFFFFFFFE9E9E9FFE7E7E7FFE2E2E2FFDADADAFFCECECEFFAEAE
          AEFF0000002C0000000D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFC7D5E5FF92B7DBFF70ABDCFF538D
          C5FF9CAFC4FFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFF4F4F4FFC5C5C5FF9393
          93D8000000160000000500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8CDE5FF7E9DBEFF98AF
          C9FFF1F4F7FFFFFFFFFFE0E0E0FFFFFFFFFFF4F4F4FFD0D0D0FF939393D80B0B
          0B25000000050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE4E4E4FFF4F4F4FFCCCCCCFF939393D80B0B0B260000
          0005000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD2D2D2FFCCCCCCFF939393D80B0B0B28000000060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB6B6B6FFB3B3B3FFA9A9A9FFAAAAAAF02222223C00000006000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000010744558745469746C6500477269643B436172643B911129FE000004
          D749444154785EC5564F6B5D4514BF73EF7DEF256DB45F4144D16F202669538D
          B142372EDCB87023B850445C08821BF72282962C8A8A48B12A56414169D0D8C6
          94560CD248C1856E54C4BDE9EBFB7767CE71E69C73E7DC9904D2AE1C98CB9B79
          E737E7CF9CF39B638AA2D0998D6C2F1FE027FA592AF6B6F02813D08F3A805F5C
          FF71D394E5C9149BA3D2D134CDD6D99796D65E58BFF66D59562B87E374319DCD
          B6DE7B7979D52F1C1910943F7DEAC102322806041ADE1734CAE7CD0F7F0A4AEB
          A0FCA9B5070801D842917C47F98DE4B3BA7EE6FC4EC096D18080715E62E78F3D
          91C2C4E8DC9363477A85410D3178F9EB7F3156A099C926BA74F75CEDBF8AAD55
          1A0B1417607FEC9225BAB8223BC212A095546FC5F5040D905E661D0F013F1113
          7713A5C853A295080182C7438ECDF1342C084E23A00080787D051ABD3B0963F4
          C4392F4B78FE207423806A07EF25390450F2B91A01B5CC01EA7514264944DA63
          43C86363E21510CE865381CD04C646830C6A82BA3C02DDBB39365F158869E9A2
          284E2215F6D40D0AFF5D832A297F04C2E9F575F4A004AE350067D3D977EF7CB4
          F358726946F3572F410738BB190237198F37CF7E7A7DB555668C219C8204897E
          1A560D76F67D7B3346EAB1EF67EF30F6CBECB17E3682EBDD011BA2E02688483C
          503D7FE6EA4659D527F8DF6C68189331194FB63F7865E589E7DEDEBE58D5FDE3
          11AB728A33E9FE7874EBCAB9571F8D4C581AAFFCC9D5FB4958F1183319751DF7
          D63FF93928ED07E5A757EED3FA67E65384C843E7D4F72FEC2E07C7230F781871
          C0EE9F7B6A3526FE8B7186B27C61BE6E054A444EAC1B7F3336C743DC64C4C25C
          559883AB80C84804312723CE7AE10670E29B9621E1D3F740AF040CC8C2906C4E
          C506914B09FC14BC86332B2D96C5AE6554967AB086DC68E4A203CE21AD732222
          41EB64217040CD3E88CF9929ACB89BD0B8C394093B11886EB99075911F4CF216
          58277C4E44C45E313EE7F7E085D0A944AFF1580BAA11F25C404DE0C6634D1601
          2C24911606B528AAD872A55F06F09A64F50C8EC07CBF22A4E690468176F80AC9
          49349818E026A35B97DEFD6CF71113FF10A2E727E0E05EAC995EF68BE96878F3
          F2F9AF7E39C910C38A4DCA58050A43CABBE0EC24602D21A41E8F0A1B9677C066
          533F277ECEC934B7D94BA2E08688684304EA67DFDAFAA6EE0D96F2FBD672CA9E
          640C6C36BCFAF16B6BA79F79E3D2D7757F6E11F32E8A335F3B3453C4F57838BC
          76E1F5538109D980AA1E2C3DBE7C2F09822844BEE7AC9F83B83EF7E58DC5E079
          D51B2CAE3C740F3FC1526AE0340E741E1449627FB1F1EBC3416FDA11B982D88C
          EB352112B1DC445E3F3AA8DB522A09EB31BFFF33DC57824612B2DB681D09C9CA
          EB520DF00887A0042389845A9592C9487B0E9927B40CB98C4DDE8A45E586BDF7
          D38266281B10EB93C9441F10D10B49CB46A3B12223C623002B68D1280ADB4898
          20C3FF5A7740535A08153BD7493851284BED11898838192389819F0ED34861FA
          1C43C4E66F81A8B312464D3719488A89BD4092D0D9EC0A1AA0070AD82CED01BB
          6788225B522852264464E5F38320534AD81984A85E1450EA5E7C2491DE865E8F
          DB2E6C852356A229966943AB06D8D1CD7F7FF8FCE2DE09DD8F0A5818E923F7C9
          BFDD74B41D4A7A3CDCDBDED8FAED78DBFB19440526BDA126B79D0CAFF8D5ACDB
          130EB4AFA379C8E0BCCD7AC2F270D8FE9E90B2F8FF1CFF019BF8D1EACFEEC6CA
          0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000015744558745469746C6500477269644C696E65733B4772
          69643BC10351250000039749444154785EC5974F8B1D5510C57FD5AF876C3244
          FC33030A12572E0543762EC4A5AE0475E5C6AF20EA4617BA11578ACB6C448580
          20121484D9B873170CC4A51222FE419D51422090CC9BEE3AC2A3E0706F330161
          480A9ABED5B7EF3DA7AA4EF57D6F94C4FDB4F1D3AFAEF0DA4BE7A2FCE0DE98CA
          D158E003B002E2AE243CF7FFE76D09CC753102AB0F2FEC3D777AFB81F787D5EA
          1C044220908982024988A837444D230F9112545404F23E48629EA62B376F1CBC
          FDEE9B2F7F074C23309C3EF3E0E7CF3FFBE4EEA33BDB27985F93B3C1EF7FDD7C
          FAD2DE8F9F016781794320C406FCF6E18CD42CAC40444450538404D827047610
          220A9C8886D263BB679062872AF986401AB4B26D60952C24994E17AEC08008C2
          017800358D52D412C6AADBF2250A502A4281703011C2DB80EA0A83DB50939D59
          D910884CA11289A332881FF6B56DA377E4766A546EE1A4EB551910DF5FFE8583
          7F6F2103F88E377287385D262350BDD59075D7EC3CB24D762508A578E6FC590E
          D773A11CAFEEE89211DD9C583C686C6B6BC50F577F2DAF3490124A389AAC4258
          0AAA87ECC9A1420C37466FAB714052A70109E1D0843A75D58EE5866B6BAEA6D1
          E9262C5601D2A204A40ABE22280785B5EBF27AFB04C22EF2C0DF008A7FA93405
          99D99420341781B6B81633359481299FE8FB3F30E968F6540DD225882A81F8F2
          DBABCC99FEE848DD37A1557AA1BAAD22AC76684165E10E0199EA4498C92B2F3C
          C59DF5842DB069E1F7D6BF252D9B40C0A9AD81F73EDAEB4498490AD693FB35C0
          27DF7148BA3B1D5520960E0C95A94E842084D47E3241A88F267C2029A24197D9
          B973E43325428048A913612652B78916F138B5828C628E0F00B3AB0E7257B993
          04CAFE2C9037B76939F2568D0843AA804DB25F99CEEB2203E42C2E5EBACC3CBB
          DE4D17D82F534BD6C048D511EAA84B48300C41CE8B364C5E7DF13C8747F322EA
          58F80641D8A215A71DB027C671E09D0FBEE94498624E6D0EA30608A36B89B134
          84C51728E435A587530A67AF3D0BDA945BC186950BE02F6378BE144FD41D5987
          593BA544AA1521CAAAA9307BA341580751F5DDDCA3165988CB0692EF6AF5A322
          C0344FD3DFD7AE1FEC3EF1F843D62A71EC91EB9F9DA00ED16B8D2A7BFC747D9F
          799EF78109D008ACFFF8EDE7D73FF9E2E8E318560FF7AA970A00FB4DC91B1075
          BFA2A21C674039FFB3FFE7B53780432037042E5E78EB6B608FD2C409FF23EA9B
          E908B863023003B781B5C14ED4029BEACABA182529220026EEADC95D2089FB64
          FF01AA16EC477DFFFF650000000049454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000010101030707070B0A0A0A101010101A1111111B171717241D1D1D2D1D1D
          1D2E1D1D1D2E1D1D1D2E2727273E2B2B2B432B2B2B432B2B2B432B2B2B432B2B
          2B432B2B2B432727273E1D1D1D2E1D1D1D2E1D1D1D2E1D1D1D2D171717241111
          111B1010101A0A0A0A100707070B0101010300000000000000000E0E0E174F4F
          4F7B6C6C6CA87D7D7DC2868686D08D8D8DDD8F8F8FE1939393E8989898EF9898
          98EF989898F0989898F09D9D9DF79E9E9EF99F9F9FFA9F9F9FFA9F9F9FFA9F9F
          9FFA9E9E9EF99D9D9DF7989898F0989898F0989898EF989898EF939393E88F8F
          8FE18C8C8CDD868686D07D7D7DC26C6C6CA84F4F4F7B0E0E0E17050505082020
          20333232324E3F3F3F63474747716A6A6AA2787878B57E7E7EBF7D7D7DBD8282
          82C58A8A8AD18B8B8BD28A8A8AD18A8A8AD18A8A8AD18A8A8AD18A8A8AD18A8A
          8AD18A8A8AD18A8A8AD18B8B8BD28A8A8AD1828282C57D7D7DBD7E7E7EBF7878
          78B56E6E6EA6474747723F3F3F633232324E2020203305050508000000000000
          0000000000000000000053535372C6C6C6FFC5C5C5FFC5C5C5FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FFC6C6C6FF6A6A6A8F00000000000000000000000000000000000000000000
          00000000000000000000828282A4C3C3C3FFC3C3C3FFC2C2C2FFC8C9CAFFC8C9
          CAFFC8C9CAFFC8C9CAFFC8C9CAFFC8C9CAFFC8C9CAFFC8C9CAFFC8C9CAFFC8C9
          CAFFC7C7C7FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FF939393BE00000000000000000000000000000000000000000000
          00000000000000000000818181A2C2C2C2FFC2C2C2FFC4C5C6FFABA294FFAAA4
          95FFABA495FFABA495FFABA495FFABA495FFABA495FFABA495FFABA495FFADA6
          97FF8C8D8EFFD2D2D2FFC7C6C6FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2
          C2FFC2C2C2FF929292BC00000000000000000000000000000000000000000000
          00000000000000000000828282A2C3C3C3FFC3C3C3FFC4C4C4FFBCBAB7FFBCBA
          B7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFCAC8
          C5FF1E1E1EFF12100FFF979EA0FFC8C5C5FFC3C1C1FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FF939393BC00000000000000000000000000000000000000000000
          00000000000000000000848484A2C8C8C8FFC8C8C8FFC8C8C8FFCACBCCFFCACB
          CCFFCACBCCFFCACBCCFFCACBCCFFCACBCCFFCACBCCFFCACBCCFFCACBCCFFD7D8
          D9FF332E2EFF3B4B51FFBFEAFEFFC6E8F6FFCDDADEFFD1CAC6FFC8C8C7FFC8C8
          C8FFC8C8C8FF959595BC00000000000000000000000000000000000000000000
          00000000000000000000868686A2C9C9C9FFC9C9C9FFCBCBCDFFB3ADA1FFB4AD
          A1FFB4ADA2FFB4ADA2FFB4ADA2FFB4ADA2FFB4ADA2FFB4ADA2FFB4ADA2FFB6AC
          9EFFABC7D4FFAFE5FFFFB2DDF2FFC3E5F3FFBAE6F7FF55BFEAFFD6CBC6FFCAC9
          C9FFC9C9C9FF989898BC00000000000000000000000000000000000000000000
          00000000000000000000888888A2CDCDCDFFCDCDCDFFCECECEFFBCB9B4FFBCB9
          B4FFBCB9B4FFBCB9B4FFBCB9B4FFBCB9B4FFBCB9B4FFBCB9B4FFBCB9B4FFBEB8
          B2FFAFC2CCFF9CD4F2FFB4DAF1FF88D1F0FF59C0F2FF3EB9F0FF66BDDFFFDCCF
          CAFFCDCDCDFF9A9A9ABC00000000000000000000000000000000000000000000
          00000000000000000000898989A2D0D0D0FFD0D0D0FFD0D0D0FFD5D4D2FFD4D4
          D3FFD4D4D3FFD4D4D3FFD4D4D3FFD4D4D3FFD4D4D3FFD4D4D3FFD4D4D3FFD4D3
          D2FFC4CED6FF94CEEFFF62C3EFFF5EC2F2FF38B7EBFF5DC2F1FF26B4EEFF98C5
          D7FFD9D1CEFF9B9B9BBC00000000000000000000000000000000000000000000
          000000000000000000008B8B8BA2D1D1D1FFD1D1D1FFD5D6D7FF9E9384FF9E95
          86FF9E9586FF9E9586FF9E9586FF9E9586FF9E9586FF9E9586FF9B9281FFC8C6
          C3FFDAD4D1FF56BFF1FF13ADE6FF59C1F1FF45BAEEFF35B6EBFF4DBDEFFF18B0
          EAFFC5CFD2FFA19F9DBC00000000000000000000000000000000000000000000
          000000000000000000008D8D8DA2D5D5D5FFD5D5D5FFD5D5D5FFD9DADBFFD9DB
          DCFFD9DBDCFFD9DBDCFFD9DBDCFFD9DBDCFFD9DBDCFFD9DBDCFFD9DBDCFFD6D6
          D7FFD8D6D5FFC6D4DAFF46BDF3FF1BAEE6FF57C1F0FF24B1E8FF3CB7ECFF38B7
          EDFF21AFE5FFA19F9DBB00000000000000000000000000000000000000000000
          000000000000000000008F8F8FA2D7D7D7FFD7D7D7FFD7D7D7FFD3D3D0FFD3D1
          CEFFD3D1CEFFD3D1CEFFD3D1CEFFD3D1CEFFD3D1CEFFD3D1CEFFD3D1CEFFD3D1
          CEFFD3D1CEFFDAD2CCFFA6CBDDFF42BDF3FF24B0E8FF44BBEDFF0DAAE3FF42BA
          EDFF21B1E9FF258EB5CD00000000000000000000000000000000000000000000
          00000000000000000000909090A2D9D9D9FFD9D9D9FFDDDDDFFFA29889FFA299
          8BFFA2998CFFA2998CFFA2998CFFA2998CFFA2998CFFA2998CFFA2998CFFA299
          8CFFA2998CFFA2998CFFAB9985FF7DBFDEFF3CBAEFFF2DB3E8FF25B2E8FF0EAA
          E4FF3BB8ECFF0AABE8FF0C495F6E000000000000000000000000000000000000
          00000000000000000000919191A2DBDBDBFFDBDBDBFFDBDBDBFFDFDFE1FFDFE0
          E1FFDFE0E1FFDFE0E1FFDFE0E1FFDFE0E1FFDFE0E1FFDFE0E1FFDFE0E1FFDFE0
          E1FFDFE0E1FFDFE0E1FFDFE0E1FFE5DDDBFF6FC8F4FF38B6ECFF2BB4EAFF0CAA
          E3FF0AAAE7FF51BBE2FFE9E0D1FF161623320000000000000000000000000000
          00000000000000000000929292A2DDDDDDFFDDDDDDFFDDDDDDFFE1E0E0FFDFDF
          DFFFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFDFDFDFFFE0DFDFFFDFDDDCFFD7DCE0FF61C4F6FF35B6EBFF07A9
          E7FF89D2E7FFF7E7E1FF252499FF060589EE0000020400000000000000000000
          00000000000000000000949494A2DFDFDFFFDFDFDFFFE4E5E6FF968D7BFF998F
          7DFF998F7EFF998F7EFF998F7EFF998F7EFF998F7EFF998F7EFF998F7EFF998F
          7EFF998F7EFF988E7CFFA29B8CFFE3E3E5FFE4DFDDFFBDD9E9FF59C2F4FFCDE3
          E1FFBDB3CBFF03038EFF090997FF1515A7FF0505253500000000000000000000
          00000000000000000000959595A2E1E1E1FFE1E1E1FFE1E1E1FFE9EAECFFEAEB
          EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE7E8
          EAFFE6E7E8FFE6E7E8FFE5E5E7FFE1E1E1FFE1E1E1FFE7E3E1FFD3D1CDFF635F
          A4FF00008DFF0B0B99FF1818ADFF0A0A364B0000000000000000000000000000
          00000000000000000000979797A2E3E3E3FFE3E3E3FFE6E6E7FFBFBAB2FFC0BB
          B3FFC0BBB3FFC0BBB3FFC0BBB3FFC0BBB3FFC0BBB3FFC0BBB3FFBDB9B0FFDDDC
          DAFFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE8E8E5FF1B1B
          A8FF000097FF2424A8E904041016000000000000000000000000000000000000
          00000000000000000000979797A2E3E3E3FFE3E3E3FFE7E7E8FFBBB7ADFFBCB7
          AEFFBCB7AEFFBCB7AEFFBCB7AEFFBCB7AEFFBCB7AEFFBCB7AEFFBAB4AAFFDCDB
          DAFFE4E4E4FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE7E7E4FFD8D8
          E3FF8686D5FFA7A7A7BA00000000000000000000000000000000000000000000
          00000000000000000000999999A2E6E6E6FFE6E6E6FFE6E6E6FFEDEFF0FFEEEF
          F1FFEEEFF1FFEEEFF1FFEEEFF1FFEEEFF1FFEEEFF1FFEEEFF1FFEEEFF1FFECEC
          EDFFEAEBECFFEAEBECFFEAEBECFFEAEBECFFEAEBECFFE6E6E6FFE6E6E6FFE8E8
          E6FFEEEEE7FFAEAEAEBC00000000000000000000000000000000000000000000
          00000000000000000000999999A2E6E6E6FFE6E6E6FFEBECEDFFA9A195FFABA3
          96FFABA396FFABA396FFABA396FFABA396FFABA396FFABA396FFABA396FFABA3
          96FFABA396FFABA396FFABA396FFABA396FFA69F91FFE9E8E9FFE7E7E7FFE6E6
          E6FFE6E6E6FFAEAEAEBC00000000000000000000000000000000000000000000
          000000000000000000009A9A9AA2E9E9E9FFE9E9E9FFEAEAEBFFD3D1CDFFD3D1
          CCFFD3D1CDFFD3D1CDFFD3D1CDFFD3D1CDFFD3D1CDFFD3D1CDFFD3D1CDFFD3D1
          CDFFD3D1CDFFD3D1CDFFD3D1CDFFD3D1CCFFD2CFCBFFE9EAEAFFE9E9E9FFE9E9
          E9FFE9E9E9FFAEAEAEBC00000000000000000000000000000000000000000000
          000000000000000000009B9B9BA2EAEAEAFFEAEAEAFFFBEEF5FFFDF0F8FFFEF1
          F9FFFEF1F9FFFEF1F9FFFEF1F9FFFEF1F9FFFEF1F9FFFEF1F9FFFEF1F9FFFEF1
          F9FFFEF1F9FFFEF1F9FFFEF1F9FFFEF1F9FFFEF1F9FFFCEEF6FFFBEEF5FFEAEA
          EAFFEAEAEAFFB0B0B0BC00000000000000000000000000000000000000000000
          000000000000000000009B9B9BA2EBEBEBFFF0EBEDFF1BB45EFF20B562FF21B5
          63FF21B563FF21B563FF21B563FF21B563FF21B563FF21B563FF21B563FF21B5
          63FF21B563FF21B563FF21B563FF21B563FF1CB862FF18BB61FF14BA5FFFF9F5
          F7FFF7F6F7FFB7B7B7C100000000000000000000000000000000000000000000
          000000000000000000009C9C9CA2EDECEDFFE7EAE9FF17BA67FF29BE72FF29BE
          72FF29BE72FF29BE72FF29BE72FF29BE72FF29BE72FF29BE72FF29BE72FF29BE
          72FF29BE72FF29BE72FF29BE72FF24C171FF5A9E7BFF877982FF79787AFF7777
          76FF706F70FF3131315100000000000000000000000000000000000000000000
          000000000000000000009C9C9CA2EDECECFFE8EAE9FF10C26FFF20C578FF20C5
          78FF20C578FF20C578FF20C578FF20C578FF20C578FF20C578FF20C578FF20C5
          78FF20C578FF20C578FF20C578FF19CC78FF797C7CFF767375FF706F6FFF6564
          65FF1E1E1E4F0000000000000000000000000000000000000000000000000000
          000000000000000000009C9C9CA2EEEDEDFFEDECEDFF1ED385FF3EDA94FF3DDA
          94FF3DDA94FF3DDA94FF3DDA94FF3DDA94FF3DDA94FF3DDA94FF3DDA94FF3DDA
          94FF3DDA94FF3DDA94FF3DDA94FF3AE398FF6C7471FF676567FF5C5C5CFF1C1C
          1C4F000000000000000000000000000000000000000000000000000000000000
          000000000000000000009E9E9EA2ECECECFFEFEDEEFFE7EBEAFFDDE9E4FFDDE9
          E5FFDDE9E5FFDDE9E5FFDDE9E5FFDDE9E5FFDDE9E5FFDDE9E5FFDDE9E5FFDDE9
          E5FFDDE9E5FFDDE9E5FFDDE9E5FFE8F5F0FF676767FF505050FF1818184F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000009797979CEFEFEFFFEFEFEFFFF0EFF0FFF2EFF0FFF2EF
          F0FFF2EFF0FFF2EFF0FFF2EFF0FFF2EFF0FFF2EFF0FFF2EFF0FFF2EFF0FFF2EF
          F0FFF2EFF0FFF2EFF0FFF2EFF0FFFFFEFFFF4E4E4EFF1515154F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000012121213898989958E8E8E9A8E8E8E9A8E8E8E9A8E8E
          8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E8E9A8E8E
          8E9A8E8E8E9A8E8E8E9A8F8F8F9A9090909D2525254F00000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020202060C0505101D0A09
          1B2D0A0A20370809203505041726010107100000000200000000000000000000
          0000000000000000000000000004050000090803000D0601000B020100070200
          0003000000000000000000000000000000000000000000000000000000000000
          000000000000000001010F0D0E12211F334423285B843D4491B8444BB3D84750
          CCE7444AD4ED3A42D4EC2D34C1E11D2194BF0A0C487101010B18000000000400
          00061B08002D4D1A006A792F049B94400EB6A44C15BFA04C19BC8B441AAD6E37
          1890482410682611063A0E080316020202030000000000000000000000000000
          000002040A11171B3C60786C96BFB099E7F06170F2FE707CFFFF6E7AFFFF6974
          FFFF5F6AFFFF555FFFFF4952FFFF3B42FFFF252BE3F90D0F6FB30C0400166028
          0684BF4B03E1F05D08FBFF6E18FFFF7926FFFF8232FFFF893BFFFF8C43FFFD8E
          46FFF08A46FBD97335EDAA8269CA615349852410033505000007000000000607
          152533397AAA5968E2F5A39AE1FFE6CCFFFF7488FFFF7D8DFFFF7A89FEFF7482
          FEFF6B77FDFF5F6BFDFF545DFDFF454EFFFF373DFFFF191CB4F3612E0D89F1AE
          6DF9FF731BFFFF6D13FFFF7925FFFF8333FFFF8B41FFFF914BFFFF9654FFFF9A
          5AFFFF9D5DFFFF9853FFEDCAB4FFCEAA95FDCC6E32E5703B18911A0F07312733
          7EA96773F4FD7586FFFFA29ED2FFFFE9FFFF8D9BFEFF8999FEFF8897FEFF818F
          FEFF7784FEFF6B77FDFF5E68FDFF4F58FEFF3F47FFFF1F23B5EC874B20AEFFD6
          9DFFFF7018FFFF721DFFFF8031FFFF8A41FFFF924EFFFF9958FFFFA063FFFFA4
          69FFFFA56CFFFFA163FFECDED5FFCFB5A7FFFF9953FFFB8E46FCA25A31DA4A5A
          D2F37988FFFF7E90FFFF9B99C3FFFFFCFFFFB3BBFFFF91A3FEFF93A3FEFF8C9A
          FEFF818FFEFF7481FEFF6671FDFF5660FEFF464EFFFF2226A2D97D4017A2FFCE
          94FFFF741FFFFF7827FFFF873DFFFF924BFFFF9B5AFFFFA166FFFFA770FFFFAD
          77FFFFAD78FFFEB17DFFF0F2F2FFC5B6ADFFFF9E5FFFFFA15AFFDC8355FF586B
          E8FF7D8EFFFF8899FFFF9295B8FFFFFFFFFFE5E4FFFF9BAEFFFF9CACFFFF93A3
          FEFF8896FEFF7A88FEFF6A77FDFF5B65FFFF4A52FFFF1E207FB16A310E8AFFCB
          90FFFF8130FFFF7C2EFFFF8C46FFFF9856FFFFA064FFFFA871FFFFB07CFFFFB3
          84FFFFB282FFFCC7A4FFF6FFFFFFC1B6AEFFFDA36AFFFFA566FFF39254FF6169
          CFFF7D91FFFF8E9FFFFF8990B3FFFFFEFBFFFFFFFFFFBBC9FFFF9FB2FFFF98A8
          FEFF8C9BFEFF7E8CFEFF6F7BFEFF606AFFFF464EEFFC14154C734A1E0267F4BC
          7EFCFF974BFFFF7E31FFFF904BFFFF9B5DFFFFA66CFFFFAD79FFFFB686FFFFBA
          8EFFFFBA8BFFFAE4D4FFFCFFFFFFBBB1ABFFF9A873FFFFA96FFFFFA158FF9670
          85FF7288FCFF93A5FFFF8992BFFFEBE7DDFFE0DFDEFFD7D9E9FFA5B5FEFF9AAA
          FFFF8E9DFFFF7E8DFEFF717DFFFF5F6BFFFF383FB8DB06071A2B290F003CDC92
          58EEFFB674FFFF8135FFFF934EFFFF9E60FFFFA971FFFFB280FFFFBA8CFFFFBE
          94FFFFC9A5FFFAFAFAFFFFFFFFFFB6ACA5FFFAAC79FFFFAC75FFFFA663FFC26F
          37EB4F569BD2899AFCFD8D98DDFF7C91A5FF426E9FFF5E80A6FF8297CDFF95A1
          FAFF8D9AFFFF7C8BFFFF6E7BFFFF5057D6F01719486A000001040D050014A65B
          27C4FFCB8FFFFF8F46FFFF934FFFFF9F64FFFFA974FFFFB483FFFFBC8FFFFFC2
          96FFFFE8D3FFFEFFFFFFFFFFFFFFB4A79EFFFEB180FFFFAF7AFFFD9F65FE8B4C
          1EA410101A314C5087AD8389DBF5506FA0FF356390FF355F8BFF3F6A9BFF7087
          D6FF8995FFFF7381F8FD4B56B7DD1A1C43680101050900000000000000024E22
          0769E9A46AF7FFB473FFFF914CFFFF9E61FFFFAA73FFFFB483FFFFBC8CFFF6C0
          9CFFC8CCD0FFA8B6C6FFDBE4E9FFBAA494FFFFB784FFFFAF78FFCF7F4CE4321A
          0B41051E29541D323B7C313C5CA43A5883FD315777FF345776FF36607CFF4268
          90FF6070C3F6363A799F0D0D1F31000002030000000000000000000000000C04
          001381461FA6F5BA80FBFFA563FFFF9B5CFFFFA96FFFFFB27BFFEBA87AFF888E
          9FFF3E6FA4FF2F609BFF4F7CAFFFBD9C87FFFFB982FFD58C5FED522E1969000C
          1128154C66D6385F72EF2C4F69EE315873FF315775FF325976FF376672FF3361
          65FF335E65F112262A5F00000002000000000000000000000000000000000000
          00001207011D7B4D2B9CE8AA72F2FFA565FFFFA769FFEE9C65FF857D86FF3568
          A0FF36618FFF3A6291FF3C689BFFD49B77FECF8857DF4B2F1C64060201080017
          23501B536FF741678AFF476C8EFF476B8CFF426787FF436688FF385F7AFF3662
          6FFF3B6A76FF315E6CD509121527000000000000000000000000000000000000
          0000000000000704000D422E1A5AA47244C3BA6F3EF88E6753FF3C6A9FFF345D
          87FF345877FF33587AFF3A5E7EFF7A6355DF2D20174A0100000400000000001A
          285F21587AFA597DA6FF5E84A9FF5C82A7FF587DA2FF517699FF4D7195FF3661
          75FF3C6B77FF427783FC20394274000000010000000000000000000000000000
          00000000000000000000010000010D0804183B1F0C6F535767E135638FFF3357
          76FF345878FF375C7BFF2D5576FF275174F813324A9D01040712000000000010
          173D2F6081EC7094BCFF7097BFFF6E96BDFF6990B7FF6086ACFF5C80A5FF4167
          88FF3A6979FF49808CFF345A65AF010303080000000000000000000000000000
          00000000000000000000000000000000000000000005182C3E7A325A7AFC365A
          79FF446889FF3B5F7EFF3B5F80FF3E6383FF3C5E7DF617253669000000020001
          040A3F5E7BA47CA3CFFF7DA4D2FF7CA4D1FF799FCBFF6F96BFFF658AB1FF5477
          9DFF426B89FF508692FF406873C7040809120000000000000000000000000000
          000000000000000000000000000000000000000000010F19234F2F5571F5476C
          8DFF476C8CFF486D8FFF4E7296FF52779AFF537799FF3D5474C506080D150000
          0001455B77838BB1DEFF8AB1DFFF87ADDFFF83ABD9FF7AA1CEFF6F95BEFF567E
          A1FF47758DFF578E99FF45727CC8040809120000000000000000000000000000
          000000000000000000000000000000000000000000010F181E4F365876F55579
          9CFF507599FF5A80A3FF5F85ABFF6289AEFF628AAEFF567BA0F015222C400000
          000043576E76ABC9E8FEACCDEDFF9EC0E9FF8DB2E3FF80A8D7FF769DC9FF4777
          8FFF3D717CFF5E96A2FF406970B80204030A0000000000000000000000000000
          00000000000000000000000000000000000004030323202F3BBB486D8EFE5A80
          A5FF5E85AAFF688EB6FF6D94BDFF7097C1FF7097C1FF6B90B9FC273B506D0000
          000033425459ACC9E8F9BAD5EDFFB9D5EFFFB0CFF0FF92B6E4FF7CA1D2FF4879
          92FF427683FF69A0AAFE2F4F578F000002030000000000000000000000000000
          000000000000000000000000000000000007141414943B5D7AFC557BA2FF6187
          AEFF6B92BAFF749BC5FF79A0CDFF7BA4D1FF7AA2D1FF789FCCFF3B54708A0000
          000217222B358BADD7EAABCBF3FFA5C6EFFF8FB5D8FF6291A8FF4E8098FF4376
          88FF548B98FF679CA6F5172A2B51000000000000000000000000000000000000
          000000000000000000000000000006050524252929DD51769BFF5B83A8FF6A92
          BBFF759DC7FF7EA5D2FF82AAD9FF87AEDCFF92B6E0FF9EBFE1FF536C89940304
          051313272D973C5F74F95882A0FF51819AFF427889FF4D8896FF66A3B4FF75B4
          CBFF8CCCE1FF4C7D88C704090A18000000000000000000000000000000000000
          00000000000000000000000000000E0D0D402F2E2CF22C333AFF333A40FF6B90
          B8FF7CA4D1FF83ABDBFF92B7E3FFA9C9EAFFB2D0EEFFB3D0EBFF61768E930B15
          1845335361F13D6574FF477785FF558D9DFF65A0B3FF6EACBFFF74B2C7FF7CBA
          D0FF88C5DBF1283F475E01010101000000000000000000000000000000000000
          00000000000000000000000000001A1A1A47464545F7242221FF2E2F2EFF7298
          C3FF80A9D9FF94B9E2FFAFCEEEFFB3D0ECFFB3D1EDFFB0CEECFF5C708687070E
          0F25355461BE497483F6578899FE619AACFF67A3B6FF6DA7BBFE6DA9BFF76798
          AED7435F6A750608080B00000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E42505050F4292828FF333130FF6C8F
          B7FF8EB5E5FFB0D0EFFFB5D4F1FFB6D4EFFFB8D6EEFFAECBE9FB415264650000
          0001060C0C1A1A2A31522D46517E3A5B67913F60649239585B80263D3D550E16
          1A22010303040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000181818305B5B5BE82C2C2CFF3B3936FF5C66
          72FF80A1C8FF8EB0DAFF8DB1DDFF90B1D8FF92B3D7FF80A1C9E218232C2E0000
          0000000000000000000000000001000202030002020300000101000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000008080815565656C9424242FF535352FF5D5A
          57FF605F5FFF656767FF6A6B6BFF6B6B6AFF696867FF5F6364E1191919320000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000233333377666666F9686868FF6464
          64FF676666FF6C6B6AFF71706FFF7B7C7BFF919091FE969695D9282727390000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000080808163B3B3B915D5D5DE46565
          65FA6E6E6EFF7E7E7EFE8F8F90F7909091D96D6D6D9327272732020202030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000020202081212122F2525
          2562353535803C3C3C7B30303054181816220404040500000000000000000000
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
          0000000000000000000000000001000000000000000000000000000000080101
          01160101011D0202022C0202012C0101011E000000180000000F000000000000
          0000000000000000000000000005000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000D0B0A0969141212AD1C1918DA211E
          1DF5242120FF252221FF252221FF242120FF22201EF91E1C1BE71A1917C90F0F
          10A2070A0B6A0302022300000000000000000000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000003020221171614CB262321FF2A2725FF2D2A29FF2F2C
          2AFE2F2C2BFD302D2CFC312E2CFC2F2C2AFD302D2BFE2F2B29FF1F1F1FFF3125
          20FF39241BFF1A1B1CEB151211A5060505370000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002000000000F0E0E92262322FF2F2C29F72F2C2BFA302D2BFC312E
          2CFD312E2CFD312E2CFE302D2BFE312E2CFE2E2B2AFD1E1A19FC1E2326FB6838
          1AFA6F3613FB1F2428FF2A2724FF22201EFB0F0E0D9200000009000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000000131211A52B2826FD302D2AFA2F2C2BFE302D2BFE302D
          2BFE312E2CFE302D2BFE302D2CFF2E2B29FE191715FE272422FF323235FE9345
          16FE793D14FE212529FC2C2926FA302C2AFB252321FF131110A9000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002000000001311109D2F2B28FF33302EFB2F2C2AFF302D2CFD302E
          2CFE302D2BFF312E2CFF302D2AFE171515FF282624FF292623FE6A696BFFB564
          3AFE784423FE272C30FE292421FE302D2BFC2E2B29FA262220FE0605053F0000
          0000000000010000000000000000000000000000000000000000000000000000
          00000000000100000000100E0E8B302C2BFE373331FA302D2BFF312D2BFD312E
          2CFF302D2BFE312E2CFF191716FF21201EFF35312FFE282624FFC2C2C3FEB361
          40FF80553CFE2D3135FE272321FE2C2928FE322F2DFC2C2927FB0A0908510000
          0000000000020000000000000000000000000000000000000000000000000000
          000000000002000000000A0909692F2C2AFF3B3835F9312E2CFE312D2BFE2F2C
          2AFE322F2DFF22201FFF1B1919FF363331FF25211FFF5B5958FFF5F3F2FFA150
          34FE8C6958FF2E3234FD282422FD292625FE33302EFD2E2B29FA080707460000
          0000000000010000000000000000000000000000000000000000000000000000
          00000000000200000000050404382C2927FB403D3BFC34312FFD2F2C2AFE302D
          2BFE322F2DFE1E1B1AFF1D1A19FE34312FFF23201EFF979695FFEFE9E5FF9743
          26FE8E6B5CFF303436FD2B2723FE252321FD35312FFE2F2B29F4040303340000
          0000000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000A1D1C1ACA413D3BFE3C3836FA2E2B29FE312E
          2CFF2F2C2AFE201E1CFE2A2726FF292624FF474342FFDCDFE1FFC1B0A8FE8725
          02FF977564FE343638FE292522FF242220FC363331FF2C2A28E9020202120000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000008080863373432FF474342F9322F2DFD2F2C
          2AFE2E2C29FE242221FE363331FE23201EFE8C8B8BFFFEFEFEFEF3EDE7FFD9BA
          ABFED6D0CCFE32302FFE252220FE242120FB393634FD1E1D1BB7000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000004181615AC413E3CFF413E3CF82D2A
          28FD2E2B29FE272423FE2E2B29FE343331FFE5E1DBFEC8D5ECFF87A9E0FE83B1
          F1FEA3AFC8FE36302BFE242321FC292625F833312FFF0B0B0A53000000000000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000C191817A9413F3DFF3A37
          35FD2A2826FB2D2A28FE211F1DFD7B7671FEA8C2EBFE4983DBFE518EE6FE5392
          EFFE4976BCFE292624FF232121FF2B2928FF1A19189B00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000000000000040E0E0D743734
          32F1312F2DFF262424FA352F28FC7588A9FE518FEBFE5A96ECFE5C95ECFE5D9C
          F5FD406DB8FC16110AF4191208DD0F0E0D760000000400000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000000303
          03301D1B1AB61D160EFF3E3F45FF5589DAFC5794F0FF4C88EAFF447ADDFD3F72
          DAFD3C68C8F8203872B608122932000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0000000000010D0C0A5B2F4975DC5A97F0FD4983E7FC376CD6FE3E71DBFE4C88
          EAFD468AEEFD3B85F6FF2862CDE0091B3E480000000000000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000200010203000000001B3054695691E9FF3D70D6F93F75DDFE4A8FEFFE3C8B
          E9FD3F8CEAFE438CE6FB3F86E9FF2961C8DF02050E1000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000010203010103040F1A2C3B3D70CBFA386ED8FB4890EEFD3D8BE9FE4890
          ECFE5394F0FE5A97F1FE5B96EDF94A84EDFF14295C6600000000000001020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000010203000000000409121D2853B2E8468EF1FF4090E9FC4B92EEFF5A98
          F0FD689DF4FE71A2F5FE75A5F1F96798F2FE2F4D99A500000000000101020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000030A2E0D255BBA3F77E3F8408CEBFD4791EBFD5B97F1FE6D9F
          F4FE7FACF5FE8DB4F6FE92B7F3FA88AFF5FE496BB6C308080808000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000070C01163ECF3B6BD2FF4B8DF0FB3D8BE8FE5294EFFE679DF3FE80AC
          F6FE96B9F5FDA8C6F8FFB1CAF5FBA8C4F7FF6383CBD700000817000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          0000000005550D2B6EFF5087F8F8448AF0FD418EEDFE5896F0FE70A2F5FE8DB5
          F6FEA8C5F7FEC0D5F8FECADCF7FCC5D8F9FF7F9AD7E20A0F1C1F000000000000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00000004269B021F52FE2C5DC0FA2760C8FE3476DBFE5B98F4FE75A4F4FE94BA
          F8FFB2CCF8FED0DEF9FEE9EFFAFDE5EEFBFF96ADDDE70B111F22000000000000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000A36C8001041FE001543FC001748FF2762C8FD5797F8FF71A2F4FF90B6
          F6FEB0CBF8FED1E1F9FEECF0F9FCE5EDFBFF90A6DAE50A101E21000000000000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000004
          0B0B001145E2001045FF000F3FFC001848FE2462CBFE4D8EF2FE699FF3FF8BB5
          F5FFABC9F5FEC4D8F6FECFDDF4FBC7D8F6FE7892CED7050A1617000000000000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000002
          0619001650EE001549FF001648FD00133FFE194EB0FE4695FDFF64A3EFFE81B4
          F9FE98C2FDFDABCEFFFFAFCEFBFBA7C7FEFF5675BACD00000010000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          001B001C57EF001B52FF001A4AFD001342FE051D5CFE2B6BDAFE448BF4FF4F87
          EBFF4D78D3FE4569BDFE405FB0FD5179D7FE294A9FED00000027000000000000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000007
          0F0F001F57EB002262FC001E4CFB001C4EFE001140FD011754FF062773FE041F
          63FE001553FF001451FD00114BFD000F4AFB02114AF700010830000000000000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000000173CB200245CFF001E4DFF001646FA002252FC002359FD00225FFC0026
          66FC002A6AFB002B6EFA002C6FF800296BFF001B4CDC00020614000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00000003081B00132E91001841D4001E4DFF002563FF002973FF002A73FF002A
          73FF002870FF00276EFF002566FF002153E7000B184D00000000000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000206140015319A001B46CC001F52D7002055DA001E
          4FD3001C49C400173BA8001026760003091F0000000000000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000200000207000000000000000000050C360008114F000A15510004
          0845000304280000000000000000000000000000010500000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050404081915
          14222D26243E3E343154493E3A644F433F6C504440704F433F6D4A3E3B653E34
          31552D26243F1915142306050509000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000040303064339355E8C7B76B4C1B1ADE8E2D8
          D5FBE9E1DEFEEDE6E3FFECE4E1FFEAE2DFFFE9DFDCFFE8DFDCFFE9E1DEFFEAE1
          DEFFE8DFDCFEDFD3D0FBC5B5B1EA91817BB7483D396405050408000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000064595587E2D6D2FEE6DCD8FFE8DFDBFFF1EB
          E9FFF3EEEDFFF5F0EFFFF5F0EFFFF5F0EFFFF5F0EFFFF5F0EFFFF5F0EFFFF5F0
          EFFFF5F0EFFFF4F0EEFFEDE6E4FFEAE1DEFFEAE1DFFE7A706D930000001E0000
          003F0000003F0000003F0000003F0000003F0000003F0000003F000000400000
          00400000004000000040000000403C37368CE1D5D1FFE6DBD8FFEDE6E4FFF4EF
          EEFFF5F1F0FFF5F1F0FFF5F1F0FFF5F1F0FFF5F1F0FFF5F1F0FFF5F1F0FFF5F1
          F0FFF5F1F0FFF5F1F0FFF2ECEAFFECE4E2FFEBE3E0FF645E5D6E0000003DFCFC
          FCFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
          FAFFFAFAFAFFFAFAFAFFFAFAFAFFF8F7F7FFDED1CDFFE8DEDAFFF0EAE8FFF6F2
          F1FFF6F3F1FFF6F2F1FFF6F3F1FFF6F3F1FFF6F3F1FFF6F3F1FFF6F3F1FFF6F3
          F1FFF6F3F1FFF6F3F1FFF3EEEDFFEFE9E6FFEBE4E2FD1B1A191E0000003EFAFA
          FAFFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFE3D8D5FFE6DBD8FFEFE9E7FFF6F2
          F1FFF8F4F3FFF7F4F2FFF7F4F3FFF8F4F3FFF8F4F3FFF8F4F3FFF8F4F3FFF8F4
          F3FFF8F4F3FFF7F4F3FFF4EEEDFFF1EBEAFFB3AFADBE000000000000003EFBFB
          FBFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF3F1F1FFDACBC6FFEAE2E0FFF1EC
          EAFFF6F2F1FFF8F4F4FFF8F5F4FFF9F5F5FFF9F5F5FFF9F5F5FFF9F5F5FFF9F5
          F5FFF8F5F4FFF7F3F2FFF4F0EFFFDFDBDAEB2929282C000000000000003EFBFB
          FBFFC015C7FFBF0FC6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFB6B6B6FFB0B0
          B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFAFAEAEFFAFAAA8FFDCD4
          D1FFECE4E2FFEEE7E5FFF0EAE9FFDBDCE0FFCBCFD6FFDBDBDFFFF4EFEEFFF9F6
          F5FFF8F5F4FFEBE8E7FE494847950A0A0A1300000000000000000000003EFBFB
          FBFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF3F1F0FFEEE8E6FFD1DCE8FF9BB3CCFF7691ADFF8FA8C2FFC2CFDEFFE7E3
          E2FFC7C5C5FFD4D4D4FF5E5E5EB90101011E00000000000000000000003EFBFB
          FBFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF7F7F7FFC6DAEDFF9EB6CDFF728DA8FF91AAC3FFB2C8DEFFF4F4
          F5FFF3F3F3FFF3F3F3FFF9F9F9FF0101014700000001000000000000003EFCFC
          FCFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFA8BDD1FF86A9CBFF80A5CAFF7CA1C5FF9DB2C8FFF8F8
          F8FFF8F8F8FFF8F8F8FFFBFBFBFF0101014900000001000000000000003EFCFC
          FCFFC015C8FFBF0FC7FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFB7B7B7FFB1B1
          B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1
          B1FFB1B1B1FFB0B0B1FF8CB2D9FF93BEEAFF98C1EBFF95BFEAFF83A8CDFFAFB0
          B1FFB1B1B1FFB1B1B1FFF9F9F9FF0101014900000001000000000000003EFCFC
          FCFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF9F9F9FFD4E3F3FF96C0EBFFA2C9EEFFA9CEF0FFA8CDF0FF9CC4ECFFDCE7
          F2FFF9F9F9FFF9F9F9FFFCFCFCFF0101014900000001000000000000003EFCFC
          FCFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
          FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
          FAFFF8F8F9FFA8C9ECFFA5CBEEFFB4D5F2FFB9D8F3FFBAD7F3FFB0D1F0FFB7D3
          EFFFFAFAFAFFFAFAFAFFFCFCFCFF0101014900000001000000000000003EFCFC
          FCFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
          FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
          FAFFC4D5E7FF9BC2EAFFB3D3F0FFC0DBF3FFC5DEF4FFC5DEF4FFBFDAF3FFA5C8
          ECFFE2EAF1FFFAFAFAFFFCFCFCFF0101014900000001000000000000003EFDFD
          FDFFC115C8FFBF0FC7FFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFB8B8B8FFB1B1
          B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1
          B1FF92AFCCFF9DC3EAFFB8D4F0FFC3DBF2FFCADFF4FFCCE0F4FFC4DCF2FFAACC
          EDFF98AFC6FFB1B1B1FFFAFAFAFF0101014900000001000000000000003EFDFD
          FDFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
          FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
          FBFF97A8BCFF9ABFE4FFB8D5F0FFC4DCF2FFCCE0F5FFD0E3F5FFC5DDF3FFA6C5
          E4FFA5B6C9FFFBFBFBFFFDFDFDFF0101014800000001000000000000003EFDFD
          FDFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
          FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
          FCFF95A4B8FF90B3D8FFB5D3EFFFC2DBF2FFCBDFF4FFCDE1F5FFC3DBF2FF88A5
          C5FFB0BCCBFFFBFBFBFFFDFDFDFF0101014800000001000000000000003EFDFD
          FDFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
          FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
          FCFFADB9C8FF6482A4FF9EBDDBFF7E97B1FF657C99FF8198B4FF7C97B6FF5B76
          99FFC5CED9FFFCFCFCFFFDFDFDFF0101014800000001000000000000003EFEFE
          FEFFC115C8FFBF10C7FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFB9B9B9FFB2B2
          B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2
          B2FFA2A5A9FF4C6688FF486284FF536D91FF6B86A7FF839CBAFF7E98B7FF6E87
          A5FFABACADFFB2B2B2FFFBFBFBFF0000004800000001000000000000003EFEFE
          FEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFC2CBD7FF4F698CFF546E92FF6F89AAFF879FBEFF879FBCFFDAE0
          E8FFFDFDFDFFFDFDFDFFFEFEFEFF0000004800000001000000000000003DFCFA
          F7FFFAF4F0FFFAF4F0FFFAF5F0FFFBF5F0FFFBF5F1FFFBF5F1FFFBF5F1FFFBF6
          F1FFFBF6F1FFFBF6F2FFFBF6F2FFFBF6F2FFFCF6F2FFFCF6F2FFFCF6F2FFFBF6
          F2FFFBF6F2FFFBF6F1FFE3E1E2FFA3ABB8FF9AA4B5FFB6BDC8FFEDEAE8FFFAF5
          F0FFFAF4F0FFFAF4F0FFFCF9F6FF0000004800000001000000000D070132E593
          56FFCA742FFFCC7632FFCF7936FFD17C39FFD4803DFFD68341FFD98544FFDB88
          48FFDD8B4BFFDF8D4EFFE18F51FFE39153FFE49255FFE49355FFE49355FFE492
          55FFE39153FFE18F51FFE08D4FFFDD8B4BFFDB8848FFD98544FFD68341FFD480
          3DFFD17C39FFCF7936FFE39154FF130A024300000000000000000E070132E594
          57FFCC7631FFCE7935FFD17C39FFD4803DFFD68341FFD98645FFDC8949FFDF8C
          4DFFE18F51FFE49255FFE69558FFE7965AFFE9985CFFE9985DFFE9985DFFE998
          5CFFE8965BFFE69558FFE49255FFE19051FFE09154FFDE8F52FFDB8C4EFFD889
          4BFFD68747FFD27E3CFFE49255FF130A024300000000000000000E070132E695
          59FFCD7733FFD07B37FFD37E3CFFD68240FFD98544FFDC8949FFDF8D4EFFE291
          53FFE59457FFE8975BFFEA9A5FFFEC9C62FFEE9D64FFEE9E65FFEE9E65FFEE9D
          64FFEC9C62FFEA9A5FFFE8975BFFE59457FFE4975CFFE2955BFFDE9256FFDB8E
          52FFD98C4EFFD48240FFE59458FF130A024300000000000000000E070132E697
          5CFFCF7935FFD27C3AFFD5813EFFD88443FFDB8847FFDE8C4DFFE29052FFE694
          58FFE9985CFFEC9B61FFEF9E65FFF1A169FFF3A46CFFF4A56DFFF4A56DFFF3A4
          6CFFF1A169FFEF9F65FFEC9B61FFE9985DFFE79C63FFE7A471FFE39B63FFDD8F
          52FFDB8D51FFD58442FFE6965BFF130A024300000000000000000E070132E698
          5EFFD07A37FFD37E3CFFD68240FFD98645FFDD8A4AFFE18F50FFE59356FFE897
          5CFFEC9B61FFEF9F66FFF3A46CFFF6A770FFF8AA74FFFAAC76FFFAAC76FFF8AA
          74FFF6A771FFF3A46CFFEF9F66FFEC9C61FFE99B62FFF0C4A2FFE6A16CFFDF93
          57FFDC8F53FFD78544FFE6985EFF130A024300000000000000000E070132E79A
          60FFD17B38FFD4803DFFD78442FFDA8747FFDE8C4DFFE29153FFE69559FFEA9A
          5FFFEE9E65FFF3A36BFFF7A872FFFBAD78FFFDB07CFFFEB17DFFFEB17DFFFDB0
          7CFFFBAD78FFF7A872FFF3A36BFFEE9E65FFEA9A5FFFEDB185FFE4955AFFDF8F
          51FFDB8A4BFFD78442FFE79960FF1309024300000000000000000E070132E79B
          62FFD17C39FFD4813EFFD88443FFDB8848FFDF8D4EFFE39254FFE8975BFFEC9B
          61FFF0A067FFF5A66FFFF9AB76FFFEB07CFFFFB27EFFFFB27EFFFFB27EFFFFB2
          7EFFFEB17CFFFAAC76FFF5A66FFFF0A067FFEC9B61FFE8975BFFE49255FFDF8D
          4EFFDB8848FFD88443FFE79A61FF1309024300000000000000000E070131F4AD
          7BFFEBA46FFFEDA977FFEEAD7DFFF0B286FFF1B78DFFF3BC95FFF5C19CFFF7C6
          A4FFF8CBACFFFBD1B4FFFDD6BCFFFEDBC3FFFFDEC8FFFFDEC8FFFFDBC3FFFFD8
          BEFFFED5B9FFFCD0B2FFFACBAAFFF8C5A2FFF7C09AFFF5BB92FFF3B68BFFF1B1
          83FFF0AC7BFFEEA773FFF4AD7BFF1309024100000000000000000402000F0D07
          022B0E07032C0E07032C0E07032C0E08032C0E08032C0E08032C0E08032C0E08
          032C0E08032C0E08032C0E08032C0E08032C0E08032C0E08042C0E08032C0E08
          032C0E08032C0E08032C0E08032C0E08032C0E08032C0E08032C0E08032C0E07
          032C0E07032C0E07032C0E07022C060301140000000000000000000000000000
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
          00000000000000000000050302071B1A17253D2E1D57694F378C8C6A48B6A77F
          54D0AF8353D7A27449CD7E5732A8462F1967120E081E01000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000004020106291D133C735C459BB7ADA5DDE8BC89F8FACB96FEFFD19AFFFFD1
          97FFFFCB8FFFFFC587FFFFBC78FFEBA661FAA17D4AC8241C0F3C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000706
          030B58452E79CEA476E6E8C195FEDCDBD9FFFFDBACFFFFD8A8FFFFD5A5FFFFD2
          A0FFFFCE98FFFFC98FFFFFC284FFFFBD78FFFFCB8FFF6F523391000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003A2E
          1F56D9AE7EF2FFDAA6FFE9C7A3FFDBDFE5FFFEE2BEFFFFDCB0FFFFDAAEFFFFD8
          AAFFFFD2A2FFFFCE96FFFFC68AFFFFBE7BFFFFCC8FFF6D4F328C000000000000
          000000000000000000000000000000000000000100040006030B010804130108
          04150106030E000100040000000000000000000000000000000003010004755C
          419CFFD29FFFFFDDADFFDEC4A2FFDFE5EBFFFCEDD9FFFFE0B8FFFFDFB9FFFFDB
          B2FFFFD6A9FFFFD29EFFFFCA91FFFFC385FFFAC58DFD563F2575000000000000
          0000000000000407060B081B133109382668145A3E9A1A7450BB1C7F55CA1C80
          52CD1B7144C014502A9A071F0E4E0002000C0000000000000000040201067F63
          4FA7FFD7A6FFFFE0B2FFD7C0A2FFE3E7ECFFFCFBF6FFFFE6C4FFFFE2BFFFFFE0
          B8FFFFD9AEFFFFD3A1FFFFCC95FFFFC98CFFEBBA84F739291751000000000006
          020B03291B4F346E57AD4AB18DE61EC48FFB29CF9BFF2AD29AFF2CCE95FF2CC9
          8DFF2AC282FF2AB872FF208E4FF0093215800000000500000000010100015542
          3477F2CB9CFCFFE5B9FFD8C2A3FFE5E6E9FFFFFFFFFFFFF1DBFFFFE8C3FFFFE2
          BBFFFFDBB1FFFFD6A5FFFFCE98FFFFCF95FFC49766DD1A110825010906151156
          3C931AB181EF5ABE9FFF88DEC3FF1CD9A9FF28D9AAFF29D5A5FF29D29EFF2ACD
          95FF2AC68AFF2BC180FF2CBA6FFF135D2EBA0003010A00000000000000001812
          0E27B3936FD2FFE2B7FFE6CCA9FFC4C6C8FFB5C0CFFFD3D3D2FFFFE5C0FFFFE5
          BBFFFFDCB2FFFFD6A5FFFFD19AFFF8C58EFD6F533492040201060C402C7423BD
          8DF920DDAAFF65BBA5FFC8E9DEFF26DFB6FF24DDB2FF29DAB0FF29D6A9FF29D2
          9FFF2ACA93FF2AC386FF2CBE79FF166136B30001010800000000000000000000
          00023A2C214FC6A585E0F4D4ABFF6B83A0FF30629CFF416EA1FFA1A6AAFFFFDE
          B2FFFFE0B2FFFFD8A5FFFCCB97FDA9835AC119120A2500000000166F4DB52AD6
          A5FF1EE0B0FF62B4A2FFFAF4F1FF5BE9CCFF1BE2BCFF28E0B9FF29DAB1FF29D6
          A6FF2ACE9AFF2AC88CFF2BBE7CFF165A349C0001000400000000000000000000
          000002020003372A1C45AE8B66C765768BFD325D88FF325C85FF3A669AFFAEA4
          99FFF6CB9BFFE3B889EF846748A11B160C280000000100000000146649AB28D7
          A8FF1FE4B5FF59B09DFFFFF8F9FFC4F9EFFF1FE9C7FF23E3BFFF29DEB5FF29D7
          AAFF29D29EFF2BCD92FF27B477FC0C3B206D00000001000002030108080F010F
          142300182336001A29431F3346A9305272FC2F5476FF315673FF2F5982FF4F6A
          8CF9735B41B8372B1B4D0804020C0000000000000000000000000934255C23BC
          91F423E9BBFF49B49EFFFAE6E6FFF2E8E9FF69E9D1FF1FE8C0FF29E1B8FF29D9
          ACFF29D3A0FF2BCE91FF1F8D56E0051D153F1D363248135B6D8D197D99C11E94
          BADF20A4D8EC2976A2F23A5A79FC3A5E7EFF3B5F7DFF3E6283FF315678FF2746
          64C2090A0A1C00000000000000000000000000000000000000000106040F105F
          48991FD0A5F934C7A7FF8992ACFF5C77A7FF6C95B0FF2ACAAFFF26E3B6FF2ADC
          ADFF2BD59EFF23AD73FA156454C4147596BF75B6AEF132CEEFFE25D4FFFF29D5
          FFFF29CBFDFF4A7AA2FF56769AFF51769CFF4B7093FF4B6F90FF3E6386FF1C30
          459800000005000000000000000000000000000000000000000000000000010B
          07150E5A41871DB087E93C7493FF365D8DFF3C5C8EFF3B7DA1FF27CFAAFF26D2
          9FFD1D9867E0176F6ADB21AAD7F821CDF9FFA6CEC1FF55E5F4FF1FE0FFFF26E1
          FFFF32C4E9FF6783ABFF698FB5FF668DB5FF6087ADFF577DA2FF517599FF2436
          4AB2020202140000000000000000000000000000000000000000000000000000
          000001060511143D44A02D5672FD305374FF335574FF3E5C8AFF308388EF1061
          3F950825204C1D8CB3D929DAFFFF20D5F4FFBBCBC0FF9EF1F0FF18ECFFFF22EE
          FFFF3FC0E3FF7A93C1FF799FCBFF779ECAFF7198C2FF668DB4FF5C83A8FF3D5F
          7FF8121418820000000500000000000000000000000000000000000000000000
          01011421285B355376F03A5C7CFF375978FF315677FF345477FE23364D910003
          030A041A1F2F20A5CBE829E2FFFF1DD9F0FFBAC6C1FFEEFDF7FF36F6FFFF17F8
          FFFF53CAE8FF9EB1DAFF8BB1DEFF82AAD9FF7EA5D3FF759DC8FF648BB1FF527A
          A1FF283038DA0404042200000000000000000000000000000000000000000308
          080F395669BB53789CFF53789BFF4D7295FF4B6E91FF355C79FB13202C6B0000
          0001020D10181A89A2CC29E3FFFF1CE1F5FFAEBFBCFFFFFFF9FF9DFCF8FF14FF
          FFFF5AD8F2FFBECBEAFFB0CFEDFF9EC1E9FF88AFDEFF7DA8D7FF556D88FF2B2F
          34FF2B2C2BF10E0D0D3E00000000000000000000000000000000000000000F17
          1E2D587B9FE66A91B8FF6890B7FF6389B1FF5C82A6FF4C7193FE213344AD0301
          021A000000020B3F486822BFD6F31EEEFFFF85B2B3FFBCB7C4FFAAB6C3FF3DE3
          E6FF4DDDF4FFBDCFEDFFB8D4EEFFB7D6F0FFA5C6EBFF87B2E3FF576E88FF2521
          1EFF3C3A39F31919194200000000000000000000000000000000000000001A25
          31447094BEF47CA3CFFF7BA2CEFF749BC6FF6B93BAFF5E88AFFF446589FB1515
          188B000000060005060C0D50547C17C5D4EC3DADBDFF426499FF3C5E93FF3F7E
          A8FF33C5E3FFA1C7EFFFA6C5E7FFA1C6EBFF9FC3ECFF87ACD7FF4F5764FF2C2A
          27FF494949ED1C1C1C360000000000000000000000000000000000000000202C
          3A4784A8D2F78CB3E0FF87AEDEFF81A9D7FF78A2CEFF5D7DA0FF425B74FF2426
          29D60402011D000002030F1A1F4914464C821D7888E2365A80FF345679FF395A
          81FF3B80A1FF718490FF6D7074FF6B7077FF686D75FF626669FF575554FF4342
          41FF4F4F4FD30C0C0C1C00000000000000000000000000000000000000001E2A
          363E9FBEDBF1B2D0EDFFA4C5E9FF8EB5E3FF82ACDEFF546B85FF211C17FF3D3C
          3BE70E0C0A2D000D1329254F61D8364F68DF2F4D6CF4325372FF305574FF3562
          71FF496D74FFA6A7A5FF9E9895FF827D7AFF706E6DFF676665FF676666FF6262
          62F836363683000000040000000000000000000000000000000000000000121A
          212590B1D2DEB9D8F3FFB6D6F7FFABD0F7FF8EB8EAFF55687CFF282522FF5555
          55E61512122C001B2758235A74F9486C90FF4C6F92FF486B8EFF436789FF3A62
          80FF2F5E6CFF43727EFF6D8C94F07B7D7BC1747371D95D5D5DDD4A4A4AC02E2E
          2D74070707140000000000000000000000000000000000000000000000000306
          080A52667FAD7B91AAFF7A8FA7FF798EA6FF6E7E8FFF535555FF3D3C3BFF5D5D
          5DD50A09081B001A275B2F6486F96589B0FF648BB1FF6088ACFF597DA3FF5377
          9CFF38627BFF386A76FF3A6F80F01423274A0E0D0D1D0C0B0B1F050505100000
          0002000000000000000000000000000000000000000000000000000000000807
          070E65615FAE807D7BFC716F6AFF696763FF656360FF636261FF646464FB3E3E
          3D9001010106000A0F26416889D5799ECAFF789FCBFF759CC6FF6D94BAFF6188
          ADFF4A6F94FF3E6B80FF4B818EFC1B333A6B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          01011E1E1E275D5E5E7D7D7D7EC17A7A7AE1646464E5505050CF353535870B0B
          0B1C00000000010304054A6784A288AEDBFF85ADDCFF82AAD8FF7AA1CEFF6F96
          BFFF567DA4FF48738EFF588D98FE233D43760000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020A0A0A10141414261212122B07070718010101040000
          00000000000002020303536C8194AECBECFFA5C7EBFF94B9E6FF84ACDBFF789F
          CCFF497893FF417581FF6096A2FB1F363A630000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000046596E73B5D1EFFDBBD7F0FFB8D3F3FF9ABDE6FF78A0
          CEFF45768FFF477D88FF5F93A0EE111E213C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000321313E6681A5CEF894B8E2FF7AA5C8FF55869BFF4C82
          94FF528A9CFF6AA5B4FF4F7079C205080A130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000080E103223414CDB365E6DFF447385FF4C8493FF5E9AAAFF71AE
          C2FF80BDD4FF8AC8DDF529394264000101010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000D1619393A5C6BDF4C798BFD5A90A2FF66A0B3FF6DAABDFF70AD
          C0FD70A7BFE952758190080B0C0F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000101050F191D36263D4676385966973D606EA23F616E96314A
          557219262B380408080A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010002020301030305000202030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object sknController: TdxSkinController
    Kind = lfOffice11
    ScrollbarMode = sbmClassic
    SkinName = 'UserSkin'
    UseImageSet = imsAlternate
    Left = 285
    Top = 350
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
    Left = 200
    Top = 285
    PixelsPerInch = 96
    object tipExit: TdxScreenTip
      Header.Text = 'Exit'
      Description.Text = 'Exit master table manager'
    end
    object tipInsert: TdxScreenTip
      Header.Text = 'Insert'
      Description.Text = 'Insert a new timesheet line item'
      Width = 230
    end
    object tipEdit: TdxScreenTip
      Header.Text = 'Edit'
      Description.Text = 'Edit the selected timesheet line item'
      Width = 250
    end
    object tipDelete: TdxScreenTip
      Header.Text = 'Delete'
      Description.Text = 'Delete the selected timesheet line items'
      Width = 280
    end
    object tipRefresh: TdxScreenTip
      Header.Text = 'Refresh'
      Description.Text = 'Refresh the timesheet'
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
    object tipReports: TdxScreenTip
      Header.Text = 'Reports'
      Description.Text = 'Launch detail reports'
    end
    object tipTimesheetPreferences: TdxScreenTip
      Header.Text = 'Timesheet Preferences'
      Description.Text = 'View/Edit timesheet preferences'
      Width = 240
    end
    object tipRefreshLookupTables: TdxScreenTip
      Header.Text = 'Refresh Lookups'
      Description.Text = 'Refresh lookup tables'#13#10
    end
    object tipTimesheetDetail: TdxScreenTip
      Header.Text = 'Timesheet Detail'
      Description.Text = 'Timesheet detail report'
    end
    object tipBillableSummary: TdxScreenTip
      Header.Text = 'Billable Summary'
      Description.Text = 'Monthly billable summary report'
      Width = 250
    end
    object tipTimesheetActivitySummary: TdxScreenTip
      Header.Text = 'Activity Summary'
      Description.Text = 'Timesheet activity summary report'
      Width = 250
    end
    object tipApprove: TdxScreenTip
      Header.Text = 'Approve'
      Description.Text = 'Toggle approval status of selected timesheet item(s)'
      Width = 340
    end
    object tipAdditionalActions: TdxScreenTip
      Header.Text = 'Additional Actions'
      Description.Text = 'Access additional timesheet actions'
      Width = 250
    end
    object tipInvoice: TdxScreenTip
      Header.Text = 'Invoice'
      Description.Text = 'Toggle invoice status of selected timesheet item(s)'
      Width = 340
    end
    object tipCarryForward: TdxScreenTip
      Header.Text = 'Carry Forward'
      Description.Text = 'Toggle carry forward status of selected timesheet item(s)'
      Width = 370
    end
    object tipMonthlyBilling: TdxScreenTip
      Header.Text = 'Monthly Billing'
      Description.Text = 'Monthly billing & carry forward summary'
      Width = 280
    end
    object tipReleaseCFwdManager: TdxScreenTip
      Header.Text = 'Release CFwd Manager'
      Description.Text = 'Release carried forward timesheet items for billing'
      Width = 335
    end
    object tipIncludeReleaasedItems: TdxScreenTip
      Header.Text = 'Include released Items'
      Description.Text = 
        'Include carry forward items released from previous periods to th' +
        'e current period'
      Width = 300
    end
    object tipPersistentRecordSelection: TdxScreenTip
      Header.Text = 'Persistent Record Selection'
      Description.Text = 
        'If selected, records stay selected when changing focus to other ' +
        'records. I not, only the selected records is selected when focus' +
        'ing other records.'
      Width = 360
    end
    object tipPrintExport: TdxScreenTip
      Header.Text = 'Print Export'
      Description.Text = 'Print and export options'
    end
    object tipCopyData: TdxScreenTip
      Header.Text = 'Copy Data'
      Description.Text = 
        'If checked, only the cell content is copied. If un-checked, the ' +
        'entire record with headers is copied.'
      Width = 360
    end
    object tipSelectAll: TdxScreenTip
      Header.Text = 'Selec tAll'
      Description.Text = 'Select all timesheet items'
    end
    object tipClearSelection: TdxScreenTip
      Header.Text = 'Clear'
      Description.Text = 'Clear all tiesheet item selection'
      Width = 220
    end
    object tipCarryForwardManager: TdxScreenTip
      Header.Text = 'Carry Forward Manager'
      Description.Text = 'Manage carry forward items for release to billing'
      Width = 320
    end
  end
  object styHintController: TcxHintStyleController
    Global = False
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <>
    HintStyle.ScreenTipActionLinks = <>
    HintShortPause = 0
    HintPause = 0
    HintHidePause = 15000
    Left = 290
    Top = 284
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
    ImageOptions.Images = img16
    ImageOptions.LargeImages = img32
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = False
    Left = 365
    Top = 350
    PixelsPerInch = 96
    object barTimesheet: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Timesheet'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1286
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnExit'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 130
          Visible = True
          ItemName = 'lucViewMode'
        end
        item
          Visible = True
          ItemName = 'lucUser'
        end
        item
          Visible = True
          ItemName = 'cntSelectAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lucPeriod'
        end
        item
          Visible = True
          ItemName = 'lbl1'
        end
        item
          Visible = True
          ItemName = 'lucFromDate'
        end
        item
          Visible = True
          ItemName = 'lucToDate'
        end
        item
          Visible = True
          ItemName = 'cntSelectNone'
        end
        item
          Visible = True
          ItemName = 'lbl2'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 20
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbxIncludeReleasedItems'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 20
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbxPersistentSelection'
        end
        item
          Visible = True
          ItemName = 'lbl3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnInsert'
        end
        item
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          Visible = True
          ItemName = 'btnDelete'
        end
        item
          Visible = True
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnTImeshetAction'
        end
        item
          Visible = True
          ItemName = 'btnOtherActions'
        end
        item
          Visible = True
          ItemName = 'btnPrintExport'
        end
        item
          Visible = True
          ItemName = 'btnParam'
        end
        item
          Visible = True
          ItemName = 'cntTest'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object barReports: TdxBar
      Caption = 'Reports'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1483
      FloatTop = 2
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnExit2'
        end
        item
          Visible = True
          ItemName = 'btnReports'
        end
        item
          Visible = True
          ItemName = 'btnBillableSummary'
        end
        item
          Visible = True
          ItemName = 'btnTimesheetActivitySummary'
        end
        item
          Visible = True
          ItemName = 'btnMonthlyBilling'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barAdmin: TdxBar
      Caption = 'Admin'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1483
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnExit3'
        end
        item
          Visible = True
          ItemName = 'btnOptions'
        end
        item
          Visible = True
          ItemName = 'btnLayoutManager'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnExit: TdxBarLargeButton
      Action = actExit
      Category = 0
      ScreenTip = tipExit
      AutoGrayScale = False
    end
    object btnInsert: TdxBarLargeButton
      Action = actInsert
      Category = 0
      ScreenTip = tipInsert
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 6
    end
    object btnDelete: TdxBarLargeButton
      Action = actDelete
      Category = 0
      ScreenTip = tipDelete
      AutoGrayScale = False
    end
    object btnEdit: TdxBarLargeButton
      Action = actEdit
      Category = 0
      ScreenTip = tipEdit
      AutoGrayScale = False
    end
    object btnRefresh: TdxBarLargeButton
      Action = actRefresh
      Category = 0
      ScreenTip = tipRefresh
      AutoGrayScale = False
    end
    object btnRefreshLookupTables: TdxBarLargeButton
      Action = actRefreshLookupTables
      Category = 0
      ScreenTip = tipRefreshLookupTables
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 18
    end
    object lucPeriod: TcxBarEditItem
      Caption = 'Period      '
      Category = 0
      Hint = 'Period'
      Visible = ivAlways
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.CaseSensitiveSearch = True
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'THE_PERIOD'
      Properties.ListColumns = <
        item
          FieldName = 'PERIOD_NAME'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = TSDM.dtsTSPeriod
      Properties.PostPopupValueOnTab = True
      Properties.OnEditValueChanged = lucPeriodPropertiesEditValueChanged
    end
    object lucUser: TcxBarEditItem
      Caption = 'Timesheet User'
      Category = 0
      Hint = 'Timesheet User'
      Visible = ivAlways
      Width = 130
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ImmediateDropDownWhenActivated = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Width = 130
          FieldName = 'LOGIN_NAME'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = TSDM.dtsSytemUser
      Properties.OnEditValueChanged = lucUserPropertiesEditValueChanged
    end
    object lucViewMode: TdxBarCombo
      Caption = 'View Mode       '
      Category = 0
      Hint = 'View Mode       '
      Visible = ivAlways
      OnChange = lucViewModeChange
      Items.Strings = (
        'Period'
        'Date Range')
      ItemIndex = -1
    end
    object lucFromDate: TcxBarEditItem
      Caption = 'From Date'
      Category = 0
      Hint = 'From Date'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditFormat = 'dd/MM/yyyy'
      Properties.ImmediatePost = True
      Properties.PostPopupValueOnTab = True
      Properties.SaveTime = False
      Properties.ShowOnlyValidDates = True
      Properties.ShowTime = False
      Properties.OnEditValueChanged = lucFromDatePropertiesEditValueChanged
    end
    object lucToDate: TcxBarEditItem
      Caption = 'To Date    '
      Category = 0
      Hint = 'To Date    '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditFormat = 'dd/MM/yyyy'
      Properties.ImmediatePost = True
      Properties.PostPopupValueOnTab = True
      Properties.SaveTime = False
      Properties.ShowOnlyValidDates = True
      Properties.ShowTime = False
      Properties.OnEditValueChanged = lucToDatePropertiesEditValueChanged
    end
    object btnReports: TdxBarLargeButton
      Action = actTimsheetDetail
      Category = 0
      ScreenTip = tipTimesheetDetail
    end
    object btnExit2: TdxBarLargeButton
      Action = actExit
      Category = 0
      ScreenTip = tipExit
    end
    object btnExit3: TdxBarLargeButton
      Action = actExit
      Category = 0
    end
    object btnOptions: TdxBarLargeButton
      Action = actOptions
      Category = 0
    end
    object btnLayoutManager: TdxBarLargeButton
      Action = actLayoutManager
      Category = 0
      Visible = ivNever
    end
    object lbl1: TdxBarStatic
      Caption = ' '
      Category = 0
      Hint = ' '
      Visible = ivAlways
    end
    object btnBillableSummary: TdxBarLargeButton
      Action = actBillableSummary
      Category = 0
      ScreenTip = tipBillableSummary
    end
    object btnTimesheetActivitySummary: TdxBarLargeButton
      Action = actActivitySummary
      Category = 0
      ScreenTip = tipTimesheetActivitySummary
    end
    object dxBarButton1: TdxBarButton
      Action = actApprove
      Category = 0
      LargeImageIndex = 20
    end
    object btnUnApprove: TdxBarButton
      Action = actUnApprove
      Category = 0
      LargeImageIndex = 21
    end
    object btnTImeshetAction: TdxBarLargeButton
      Tag = 1
      Caption = 'Timesheet Actions'
      Category = 0
      Hint = 'Timesheet Actions'
      ScreenTip = tipAdditionalActions
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popTimesheetActions
      OnClick = btnApproveClick
      AutoGrayScale = False
      LargeImageIndex = 32
      SyncImageIndex = False
      ImageIndex = 32
    end
    object btnBillable: TdxBarButton
      Action = actBilable
      Category = 0
      LargeImageIndex = 22
    end
    object btnNotBillable: TdxBarButton
      Action = actNonBillable
      Category = 0
      LargeImageIndex = 23
    end
    object btnInvoiceItem: TdxBarButton
      Action = actInvoce
      Category = 0
      LargeImageIndex = 24
    end
    object btnUnInvoiceItem: TdxBarButton
      Action = actUnInvoice
      Category = 0
      LargeImageIndex = 25
    end
    object btnCarryForward: TdxBarButton
      Action = actCarryForward
      Category = 0
      Hint = 'Carry forward selected item(s)'
      LargeImageIndex = 27
    end
    object btnReleaseCFwdManager: TdxBarButton
      Action = actCarryForwardManagaer
      Category = 0
      LargeImageIndex = 28
    end
    object btnMonthlyBilling: TdxBarLargeButton
      Action = actMonthlyBilling
      Category = 0
      ScreenTip = tipMonthlyBilling
    end
    object cbxPersistentSelection: TcxBarEditItem
      Caption = 'Persistent record selection'
      Category = 0
      Hint = 'Persistent record selection'
      ScreenTip = tipPersistentRecordSelection
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = cbxPersistentSelectionPropertiesEditValueChanged
    end
    object cbxIncludeReleasedItems: TcxBarEditItem
      Caption = 'Include Released Items'
      Category = 0
      Hint = 'Include Released Items'
      ScreenTip = tipIncludeReleaasedItems
      Visible = ivAlways
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = cbxIncludeReleasedItemsPropertiesEditValueChanged
    end
    object lbl2: TdxBarStatic
      Category = 0
      Visible = ivNever
    end
    object lbl3: TdxBarStatic
      Category = 0
      Visible = ivAlways
    end
    object Sep1: TdxBarSeparator
      Caption = 'Billing Status'
      Category = 0
      Hint = 'Billing Status'
      Visible = ivAlways
    end
    object Sep2: TdxBarSeparator
      Caption = 'Approval Status'
      Category = 0
      Hint = 'Approval Status'
      Visible = ivAlways
    end
    object Sep3: TdxBarSeparator
      Caption = 'Invoicing'
      Category = 0
      Hint = 'Invoicing'
      Visible = ivAlways
    end
    object Sep4: TdxBarSeparator
      Caption = 'Carry Forward Status'
      Category = 0
      Hint = 'Carry Forward Status'
      Visible = ivAlways
    end
    object btnCopyCell: TdxBarButton
      Action = actCopyCell
      Category = 0
      LargeImageIndex = 33
    end
    object sep5: TdxBarSeparator
      Caption = 'Timesheet Actions'
      Category = 0
      Hint = 'Timesheet Actions'
      Visible = ivAlways
    end
    object sep6: TdxBarSeparator
      Caption = 'Print/Export'
      Category = 0
      Hint = 'Print/Export'
      Visible = ivAlways
    end
    object btnPrintExport: TdxBarLargeButton
      Caption = 'Print Export'
      Category = 0
      Hint = 'Print Export'
      ScreenTip = tipPrintExport
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popPrintExport
      AutoGrayScale = False
      LargeImageIndex = 3
      SyncImageIndex = False
      ImageIndex = 3
    end
    object Sep7: TdxBarSeparator
      Caption = 'Print && Export Actions'
      Category = 0
      Hint = 'Print & Export Actions'
      Visible = ivAlways
    end
    object btnCopyRecord: TdxBarButton
      Action = actCopyRecord
      Category = 0
    end
    object cntSelectAll: TdxBarControlContainerItem
      Category = 0
      Hint = 'Select all timesheet items'
      ScreenTip = tipSelectAll
      Visible = ivAlways
      Control = btnSelectAll
    end
    object cntSelectNone: TdxBarControlContainerItem
      Category = 0
      Hint = 'Clear all selected timesheet items'
      ScreenTip = tipClearSelection
      Visible = ivAlways
      Control = btnSelectNone
    end
    object Sep8: TdxBarSeparator
      Caption = 'Copy && Select Options'
      Category = 0
      Hint = 'Copy & Select Options'
      Visible = ivAlways
    end
    object btnSelectAllItems: TdxBarButton
      Action = actSelectAll
      Category = 0
      ShortCut = 16449
    end
    object btnSlectNone: TdxBarButton
      Action = actClearAllSelectedItems
      Category = 0
      ShortCut = 16462
    end
    object btnPreview: TdxBarButton
      Action = actPreview
      Category = 0
    end
    object btnPrint: TdxBarButton
      Action = actPrint
      Category = 0
    end
    object btnExportToPDF: TdxBarButton
      Action = actPDF
      Category = 0
    end
    object btnExportToExcel: TdxBarButton
      Action = actExcel
      Category = 0
    end
    object btnOtherActions: TdxBarLargeButton
      Caption = 'Other Actions'
      Category = 0
      Hint = 'Other Actions'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popOtherActions
      AutoGrayScale = False
      LargeImageIndex = 37
      SyncImageIndex = False
      ImageIndex = 37
    end
    object sepBillingStatus: TdxBarSeparator
      Caption = 'Billing Status'
      Category = 0
      Hint = 'Billing Status'
      Visible = ivAlways
    end
    object sepApprovalStatus: TdxBarSeparator
      Caption = 'Approval Status'
      Category = 0
      Hint = 'Approval Status'
      Visible = ivAlways
    end
    object sepCarryForward: TdxBarSeparator
      Caption = 'Carry Forward Status'
      Category = 0
      Hint = 'Carry Forward Status'
      Visible = ivAlways
    end
    object sepInvoicing: TdxBarSeparator
      Caption = 'Invoicing'
      Category = 0
      Hint = 'Invoicing'
      Visible = ivAlways
    end
    object sepCustomerContactInfo: TdxBarSeparator
      Caption = 'Customer'
      Category = 0
      Hint = 'Customer'
      Visible = ivAlways
    end
    object btnCustomerContactinfo: TdxBarButton
      Action = actCustomerContactInfo
      Category = 0
    end
    object btnInvoiceList: TdxBarButton
      Action = actInvoiceSchedule
      Category = 0
    end
    object btnParam: TdxBarLargeButton
      Caption = 'Param'
      Category = 0
      Hint = 'Param'
      Visible = ivAlways
      OnClick = btnParamClick
    end
    object cntTest: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edtName
    end
    object btnDirectorLink: TdxBarButton
      Action = actDirectorLink
      Category = 0
    end
    object btnCustomerDirectorlink: TdxBarButton
      Action = actdirecorOfCompany
      Category = 0
    end
  end
  object imgNav32: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 11141306
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
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001E170831614B1B7E8D6C28B4A981
          2FD5B18831DFA8812FD48B6B27B25E481A791812072800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003B2D104F6D541F8C0000000100000000000000000000
          000000000000000000013E2F1154A27C2DCDD19F38FFD6A338FFD9A539FFD9A5
          39FFD9A539FFD9A539FFD8A439FFD6A338FFCF9E38FE95722ABD281F0B390000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008364239FD7A439FF674F1D8300000000000000000000
          00001A1407289B772BC4D4A239FFD9A539FFD9A539FFD9A539FFD9A539FFD9A5
          39FFD9A539FFD9A539FFD9A539FFD9A539FFD9A539FFCF9E37F4C09335EA745A
          2195040301080000000000000000000000000000000000000000000000000000
          000000000000000000009E792BBDDAA63AFFD5A23AFE4837145D000000004C3A
          1563C89A37F5DAA63AFFDAA63AFFDAA63AFFDAA63AFFDAA63AFFDAA63AFFDAA6
          3AFFDAA63AFFDAA63AFFDAA63AFFAC832ECA392B0F460100000200000000100C
          041B2119092D0000000000000000000000000000000000000000000000000000
          00000000000000000000B88D33DADBA73BFFDBA73BFFCF9D39F8846525A7D6A3
          3AFFDBA73BFFDBA73BFFDBA73BFFDBA73BFFDBA73BFFDBA73BFFDBA73BFFDBA7
          3BFFDBA73BFFC89836E9523E1660000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D2A03AF6DCA83CFFDCA83CFFDCA83CFFDBA73CFFDCA8
          3CFFDCA83CFFDCA83CFFDCA83CFFDCA83CFFDCA83CFFDCA83CFFDCA83CFFDCA8
          3CFF8E6C27A50D0A031300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000A070215DCA83DFFDCA83DFFDCA83DFFDCA83DFFDCA83DFFDCA8
          3DFFDCA83DFFDCA83DFFDCA83DFFDCA83DFFDCA83DFFDCA83DFFD1A03AF34C3B
          155A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001D160832DDA93EFFDDA93EFFDDA93EFFDDA93EFFDDA93EFFDDA9
          3EFFDDA93EFFDDA93EFFDDA93EFFDDA93EFFDDA93EFFC39537E1241B0A2D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000036290F4FDEAA3FFFDEAA3FFFDEAA3FFFDEAA3FFFDEAA3FFFDEAA
          3FFFDEAA3FFFDEAA3FFFDEAA3FFFDEAA3FFFC09337DD1611061D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005541196CDFAB3FFFDFAB3FFFDFAB3FFFDFAB3FFFDFAB3FFFDFAB
          3FFFDFAB3FFFDFAB3FFFDFAB3FFFCF9F3BED1C16082400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000074592289E0AC40FFE0AC40FFE0AC40FFE0AC40FFE0AC40FFE0AC
          40FFE0AC40FFE0AC40FFE0AC40FF6F5520800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008F6E2AA6E1AD41FFE1AD41FFE1AD41FFE1AD41FFE1AD41FFE1AD
          41FFE1AD41FFE1AD41FFE1AD41FFCF9F3DF2231A0A2F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000009E7A2FB5E1AD42FFE1AD42FFE1AD42FFE1AD42FFE1AD42FFE1AD
          42FFE1AD42FFE1AD42FFE1AD42FFE1AD42FFBE933AE2110D0519000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000046361451DDAA42FAE2AE43FFE2AE43FFE2AE43FFE2AE43FFE2AE
          43FFE2AE43FFE2AE43FFE2AE43FFE2AE43FFE2AE43FFA88234CA040301080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000E0B0417281F0C3A3C2E124F53401963695120777B5F
          258B8D6D2A9FA07B30B4B28935C8C3973BDCD5A540F0E0AC44FD32270F450000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002E240E45D6A743FDCB9D
          40F0B9903BDCA78336C8977531B484672C9F745A278B604B20774A3A1963362A
          124F231C0C3A0C09041700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000004030108B48B37CAE5B1
          46FFE6B247FFE6B247FFE7B348FFE8B449FFE7B44AFFE7B34BFFE6B34BFFE5B3
          4CFFE4B34CFFDDAD4BFA44351751000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000120E0519CA9C
          3EE1E6B247FFE7B348FFE7B349FFE8B449FFE9B54AFFEAB64BFFEBB74CFFEBB7
          4DFFECB84EFFEDB94FFFA48037B5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000261D
          0B2FDAA944F2E7B348FFE8B449FFE8B44AFFE9B54BFFEAB64BFFEBB74CFFECB8
          4DFFECB84EFFEDB94FFF9A7833A6000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000072582480E7B348FFE8B449FFE9B54AFFE9B54BFFEAB64CFFEBB74CFFECB8
          4DFFEDB94EFFEDB94FFF7F642B89000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001913
          0824CFA141EDE7B348FFE8B449FFE9B54AFFEAB64BFFEAB64CFFEBB74DFFECB8
          4EFFEDB94EFFEEBA4FFF634E216C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000130F061DBD92
          3CDDE6B248FFE7B349FFE8B449FFE9B54AFFEAB64BFFEBB74CFFEBB74DFFECB8
          4EFFEDB94FFFEEBA4FFF4233164F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000020190A2DBF953CE1E6B2
          47FFE7B348FFE8B449FFE8B44AFFE9B54AFFEAB64BFFEBB74CFFECB84DFFECB8
          4EFFEDB94FFFEEBA50FF241C0C32000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004737165AD0A241F3E5B146FFE6B2
          47FFE7B348FFE8B449FFE9B54AFFE9B54BFFEAB64CFFEBB74CFFECB84DFFECB8
          4EFFEDB94FFFEEBA50FF0D0A0415000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000B08031387692AA4DFAC44FFE5B146FFE6B247FFE6B2
          47FFE7B348FFE8B449FFE9B54AFFEAB64BFFEAB64CFFEBB74DFFECB84DFFEDB9
          4EFFEEBA4FFFE5B34DF600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000014B3A1860C3973CE9E2AE44FFE4B045FFE5B146FFE6B247FFE7B3
          48FFE7B349FFE8B449FFE9B54AFFEAB64BFFEBB74CFF997832A7E5B34CF8EDB9
          4FFFEEBA4FFFCB9F44DA00000000000000000000000000000000000000000000
          00000000000000000000000000001C1608290F0C041B00000000000000023328
          1046A68133CADDAB42FFE3AF44FFE4B044FFE4B045FFE5B146FFE6B247FFE7B3
          48FFE7B349FFE8B44AFFE9B54AFFE0AF48F55A461D630000000055421C5DECB8
          4FFEEEBA50FFB18A3BBD00000000000000000000000000000000000000000000
          000000000000000000000000000004030108795D2495C09439EACB9C3DF4DAA8
          41FFE1AD42FFE2AE43FFE3AF44FFE4B045FFE4B045FFE5B146FFE6B247FFE7B3
          48FFE8B449FFE9B54AFFB38B3AC4221A0B29000000000000000000000000795F
          2883EEBA50FF9574329F00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002E230D39A67F2FBDE0AC
          41FEE2AE42FFE2AE43FFE3AF44FFE4B045FFE5B146FFE6B247FFE6B247FFE7B3
          48FFBA903BCD4B3A175400000001000000000000000000000000000000000000
          000182662C8C4939184F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001D16
          08286A521F799D792FB2BC9139D4C79A3CDFBF943BD5A27D32B47158237E271E
          0C31000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
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
      end>
  end
  object popTimesheet: TPopupMenu
    Images = img16
    Left = 500
    Top = 283
    object imesheetData1: TMenuItem
      Caption = 'Timesheet Data'
      object Insert1: TMenuItem
        Action = actInsert
      end
      object Edit1: TMenuItem
        Action = actEdit
      end
      object Delete1: TMenuItem
        Action = actDelete
      end
    end
    object Edit2: TMenuItem
      Caption = 'Edit'
      object Copy1: TMenuItem
        Action = actCopyCell
      end
      object CopyRecord1: TMenuItem
        Action = actCopyRecord
      end
      object SelectAll1: TMenuItem
        Action = actSelectAll
        ShortCut = 16449
      end
      object ClearAll1: TMenuItem
        Action = actClearAllSelectedItems
        ShortCut = 16462
      end
    end
    object PrintingExporting1: TMenuItem
      Caption = 'Printing && Exporting'
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
    object N5: TMenuItem
      Caption = 'Billing Status'
      object Billable1: TMenuItem
        Action = actBilable
      end
      object NotBillable1: TMenuItem
        Action = actNonBillable
      end
    end
    object N2: TMenuItem
      Caption = 'Approval Status'
      object Approve1: TMenuItem
        Action = actApprove
        Hint = 'Approve selected timesheet item(s)'
      end
      object UnApprove1: TMenuItem
        Action = actUnApprove
        Hint = 'Un-Approve selected timesheet item(s)'
      end
    end
    object N3: TMenuItem
      Caption = 'Carry Forward Status'
      object CarryForward1: TMenuItem
        Action = actCarryForward
      end
      object ClearCarryForward1: TMenuItem
        Action = actCarryForwardManagaer
      end
    end
    object N4: TMenuItem
      Caption = 'Invoicing'
      object Invoice1: TMenuItem
        Action = actInvoce
      end
      object UnInvoice1: TMenuItem
        Action = actUnInvoice
      end
      object InvoiceList1: TMenuItem
        Action = actInvoiceSchedule
      end
    end
    object Customer1: TMenuItem
      Caption = 'Customer'
      object CustomerContactInfo1: TMenuItem
        Action = actCustomerContactInfo
      end
      object DirectorLink1: TMenuItem
        Action = actDirectorLink
      end
      object DirectorLink2: TMenuItem
        Action = actdirecorOfCompany
      end
    end
  end
  object dlgPrint: TdxPrintDialog
    ButtonsEnabled = [pdbPrinterProperties, pdbNetwork, pdbPreview, pdbPageSetup]
    ButtonsVisible = [pdbPrinterProperties, pdbNetwork, pdbPageSetup]
    OptionsEnabled = [pdoPrintToFile, pdoAllPages, pdoCurrentPage, pdoPageRange]
    Left = 370
    Top = 284
  end
  object dlgFileSave: TSaveDialog
    Filter = 'Excel Files (*.xlsx)|*.xlsx'
    Left = 430
    Top = 283
  end
  object popPrintExport: TdxBarPopupMenu
    BarManager = barManager
    Images = img16
    ItemLinks = <
      item
        Visible = True
        ItemName = 'Sep7'
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
        ItemName = 'btnExportToExcel'
      end
      item
        Visible = True
        ItemName = 'btnExportToPDF'
      end>
    UseOwnFont = False
    Left = 450
    Top = 350
    PixelsPerInch = 96
  end
  object popTimesheetActions: TdxBarPopupMenu
    BarManager = barManager
    Images = img16
    ItemLinks = <
      item
        Visible = True
        ItemName = 'sep5'
      end
      item
        Visible = True
        ItemName = 'btnInsert'
      end
      item
        Visible = True
        ItemName = 'btnEdit'
      end
      item
        Visible = True
        ItemName = 'btnDelete'
      end
      item
        Visible = True
        ItemName = 'btnRefreshLookupTables'
      end
      item
        Visible = True
        ItemName = 'Sep8'
      end
      item
        Visible = True
        ItemName = 'btnCopyCell'
      end
      item
        Visible = True
        ItemName = 'btnCopyRecord'
      end
      item
        Visible = True
        ItemName = 'btnSelectAllItems'
      end
      item
        Visible = True
        ItemName = 'btnSlectNone'
      end>
    UseOwnFont = False
    Left = 550
    Top = 350
    PixelsPerInch = 96
  end
  object styImageColour: TcxEditStyleController
    Style.Color = clRed
    Left = 190
    Top = 405
    PixelsPerInch = 96
  end
  object popOtherActions: TdxBarPopupMenu
    BarManager = barManager
    Images = img16
    ItemLinks = <
      item
        Visible = True
        ItemName = 'sepBillingStatus'
      end
      item
        Visible = True
        ItemName = 'btnBillable'
      end
      item
        Visible = True
        ItemName = 'btnNotBillable'
      end
      item
        Visible = True
        ItemName = 'sepApprovalStatus'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'btnUnApprove'
      end
      item
        Visible = True
        ItemName = 'sepCarryForward'
      end
      item
        Visible = True
        ItemName = 'btnCarryForward'
      end
      item
        Visible = True
        ItemName = 'btnReleaseCFwdManager'
      end
      item
        Visible = True
        ItemName = 'sepInvoicing'
      end
      item
        Visible = True
        ItemName = 'btnInvoiceItem'
      end
      item
        Visible = True
        ItemName = 'btnUnInvoiceItem'
      end
      item
        Visible = True
        ItemName = 'btnInvoiceList'
      end
      item
        Visible = True
        ItemName = 'sepCustomerContactInfo'
      end
      item
        Visible = True
        ItemName = 'btnCustomerContactinfo'
      end
      item
        Visible = True
        ItemName = 'btnDirectorLink'
      end
      item
        Visible = True
        ItemName = 'btnCustomerDirectorlink'
      end>
    UseOwnFont = False
    Left = 650
    Top = 350
    PixelsPerInch = 96
  end
end
