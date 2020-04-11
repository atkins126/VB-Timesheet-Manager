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
    Width = 1455
    Height = 617
    Align = alClient
    ExplicitTop = 115
    ExplicitWidth = 1455
    ExplicitHeight = 617
    object grdTimesheet: TcxGrid [0]
      Left = 11
      Top = 11
      Width = 1433
      Height = 595
      TabOrder = 0
      object viewTimesheet: TcxGridDBBandedTableView
        PopupMenu = popTimesheet
        OnDblClick = viewTimesheetDblClick
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeButtonAlignment = fbaLeft
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewTimesheetCustomDrawCell
        OnSelectionChanged = viewTimesheetSelectionChanged
        DataController.DataSource = TSDM.dtsTimesheet
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsView.NoDataToDisplayInfoText = '<No Timesheet data to display>'
        OptionsView.Footer = True
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
            Caption = 'Carry Forward'
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
          Position.ColIndex = 5
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
          Position.ColIndex = 6
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
          MinWidth = 300
          Options.Editing = False
          Options.HorzSizing = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 7
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
          Position.ColIndex = 8
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
          Position.ColIndex = 9
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
          Position.ColIndex = 10
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
          MinWidth = 30
          Options.Editing = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 30
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
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
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
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
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
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
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
        object dteInvoiceDate: TcxGridDBBandedColumn
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
          Position.ColIndex = 12
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
          MinWidth = 30
          Options.Editing = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 11
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
          Position.ColIndex = 13
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
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          VisibleForCustomization = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object edtDateCfwdReleased: TcxGridDBBandedColumn
          AlternateCaption = 'dd/MM/yyyy'
          DataBinding.FieldName = 'DATE_CFWD_RELEASED'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd/mm/yyyy'
          Properties.EditFormat = 'dd/mm/yyyy'
          Properties.ReadOnly = True
          MinWidth = 90
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtReleaseCfwdToPeriod: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RELEASE_CFWD_TO_PERIOD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '######'
          Properties.EditFormat = '######'
          Properties.ReadOnly = True
          MinWidth = 65
          Options.Editing = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 65
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object lvlTimesheet: TcxGridLevel
        GridView = viewTimesheet
      end
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
  end
  object sbrMain: TdxStatusBar [1]
    Left = 0
    Top = 732
    Width = 1455
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 100
      end>
    PaintStyle = stpsUseLookAndFeel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object ribMain: TdxRibbon [2]
    Left = 0
    Top = 0
    Width = 1455
    Height = 115
    BarManager = barManager
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
    TabOrder = 2
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
  object grdTimesheetBillable: TcxGrid [3]
    Left = 1426
    Top = 255
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
  inherited styRepository: TcxStyleRepository
    Left = 420
    Top = 235
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Images = img32
    Left = 190
    Top = 350
    object actGetTimesheetData: TAction
      Category = 'General'
      Caption = 'Get Data'
      ImageIndex = 18
      OnExecute = DoGetTimesheetData
    end
    object actLayoutManager: TAction
      Category = 'General'
      Caption = 'Layout Manager'
      ImageIndex = 24
      OnExecute = DoLayoutManager
    end
    object actInsert: TAction
      Category = 'System'
      Caption = 'Insert'
      ImageIndex = 12
      OnExecute = DoEditInsertEntry
    end
    object actEdit: TAction
      Tag = 1
      Category = 'System'
      Caption = 'Edit'
      ImageIndex = 13
      OnExecute = DoEditInsertEntry
    end
    object actApprove: TAction
      Tag = 100
      Category = 'Approval'
      Caption = 'Approve'
      ImageIndex = 29
      OnExecute = DoApprovalStatus
    end
    object actUnApprove: TAction
      Tag = 101
      Category = 'Approval'
      Caption = 'Un-Approve'
      ImageIndex = 30
      OnExecute = DoApprovalStatus
    end
    object actDelete: TAction
      Tag = 2
      Category = 'System'
      Caption = 'Delete'
      ImageIndex = 14
      OnExecute = DoDeleteEntry
    end
    object actRefresh: TAction
      Tag = 3
      Category = 'System'
      Caption = 'Refresh'
      ImageIndex = 17
      OnExecute = DoRefresh
    end
    object actExit: TAction
      Tag = 4
      Category = 'System'
      Caption = 'Exit'
      ImageIndex = 0
      OnExecute = DoExitTimesheetManager
    end
    object actPreview: TAction
      Category = 'Reports'
      Caption = 'Preview'
      ImageIndex = 2
      OnExecute = DoPrint
    end
    object actPrint: TAction
      Tag = 1
      Category = 'Reports'
      Caption = 'Print'
      ImageIndex = 3
      OnExecute = DoPrint
    end
    object actPDF: TAction
      Category = 'Reports'
      Caption = 'PDF'
      ImageIndex = 5
      OnExecute = DoPDF
    end
    object actExcel: TAction
      Category = 'Reports'
      Caption = 'Excel'
      ImageIndex = 4
      OnExecute = DoExcel
    end
    object actTimsheetDetail: TAction
      Category = 'Reports'
      Caption = 'Timsheet Detail'
      ImageIndex = 1
      OnExecute = DoTimeSheetDetail
    end
    object actOptions: TAction
      Category = 'System'
      Caption = 'Options'
      ImageIndex = 19
      OnExecute = DoOptions
    end
    object actCopyCell: TAction
      Category = 'System'
      Caption = 'Copy'
      ImageIndex = 26
      OnExecute = DoCopyCell
    end
    object actRefreshLookupTables: TAction
      Category = 'System'
      Caption = 'Lookups'
      ImageIndex = 27
      OnExecute = DoRefreshLookupTables
    end
    object actBillableSummary: TAction
      Category = 'Reports'
      Caption = 'Billable Summary'
      ImageIndex = 21
      OnExecute = DoBillableSummary
    end
    object actActivitySummary: TAction
      Category = 'Reports'
      Caption = 'Activity Summary'
      ImageIndex = 22
      OnExecute = DoActivitySummary
    end
    object actToggleApprovalStatus: TAction
      Tag = 102
      Category = 'Approval'
      Caption = 'Toggle Approval'
      ImageIndex = 27
      OnExecute = DoApprovalStatus
    end
    object actBilable: TAction
      Tag = 110
      Category = 'Billable'
      Caption = 'Billable'
      ImageIndex = 31
      OnExecute = DoBillable
    end
    object actNotBillable: TAction
      Tag = 111
      Category = 'Billable'
      Caption = 'Not Billable'
      ImageIndex = 32
      OnExecute = DoBillable
    end
    object actToggleBillable: TAction
      Tag = 112
      Category = 'Billable'
      Caption = 'Toggle Billable'
      ImageIndex = 33
      OnExecute = DoBillable
    end
    object actInvoiceItem: TAction
      Tag = 120
      Category = 'Invoice'
      Caption = 'Invoice'
      Hint = 'Invoice seleted timesheet item(s)'
      ImageIndex = 31
      OnExecute = DoInvoiceItem
    end
    object actUnInvoice: TAction
      Tag = 121
      Category = 'Invoice'
      Caption = 'Un-Invoice'
      Hint = 'Un-Invoice seleted timesheet item(s)'
      ImageIndex = 32
      OnExecute = DoInvoiceItem
    end
    object actCarryForward: TAction
      Tag = 130
      Category = 'Carry Forward'
      Caption = 'Carry Forward'
      ImageIndex = 34
      OnExecute = DoCarryForward
    end
    object actClearCarryForward: TAction
      Tag = 131
      Category = 'Carry Forward'
      Caption = 'Clear Carry Forward'
      ImageIndex = 35
      OnExecute = DoCarryForward
    end
    object actMonthlyBilling: TAction
      Category = 'Reports'
      Caption = 'Monthly Billing'
      ImageIndex = 36
      OnExecute = DoMonthlyBilling
    end
    object actReleaseCarryForward: TAction
      Category = 'System'
      Caption = 'Release C/Fwd'
      ImageIndex = 38
      OnExecute = DoReleaseCarryForwardManager
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
          00000000000000000000000000000000000000000000000000000604010A1C14
          072E1D1606321F160531090600110000000000000000040404060D0D0D110F0F
          0F150F0F0F140C0C0C0F06060608010101010000000000000000231A0936906C
          26E1967729ED946F1FEC73674BA265686E7D68696985868686ABA2A2A2CAA9A9
          A9D1A9A9A9D0A1A1A1C88E8E8EB44646465B060606080000000029200C3CA681
          32F3AE8836FFAA8127FFC8BBA0FFDBDEE5FFD9D9D9FFDADADAFFDBDBDBFFDDDD
          DDFFDDDDDDFFDBDBDBFFD9D9D9FFC5C5C5EF6464647F040404052C210E3CAE88
          3CF3B9913FFFB58A2EFFD1C2A8FFE3E6EBFFE0E0E0FFE0E0E0FFDFDFDFFFDFDF
          DFFFDFDFDFFFDFDFDFFFE0E0E0FFDDDDDDFFA0A0A0C30A0A0A0E2D24103CBA93
          45F3C39A49FFC09439FFD5C7ACFFE5E8EEFFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
          E2FFE2E2E2FFE2E2E2FFE3E3E3FFE2E2E2FFBEBEBEE52525252E3026133CC198
          4CF3CEA252FFCC9C45FFD7C9AEFFE2E5EBFFE4E4E4FFE5E5E5FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFC4C4C4E52727272E2F261538C49F
          58E6CEA75CF3CBA253F1A09079BC898C92A2C6C6C6E1E5E5E5FFE7E7E7FFE8E8
          E8FFE7E7E7FFE7E7E7FFE8E8E8FFE4E4E4FF959595B2050505080A09040C322A
          1B38362D1C3C332C193B130F07150303030447474754CDCDCDECE8E8E8FFE7E7
          E7FFD3D3D3EED4D4D4F0DBDBDBFBD2D2D2F36565657801010101000000000000
          000000000000000000000000000000000000040404066F6F6F81DCDCDCFAE3E3
          E3FF8787879E3434343C4A4A4A553A3A3A440A0A0A0D00000000000000000000
          0000000000000000000000000000000000000000000012121216A1A1A1BCE0E0
          E0FF939393AE0404040600000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000049494956D8D8
          D8F8A7A7A7C40A0A0A0D00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002F2F2F38CDCD
          CDF0A6A6A6C30B0B0B0E00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002C2C2C33C3C3
          C3E3616161750202020200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000101010143D3D
          3D480909090C0000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000030303041B1B1B280808080D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000010101013B3B3B55969696D324242436000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000006060609828282B6B0B0B0F22C2C2C3C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000909090C8E8E8EC1BABABAF83C3C3C50000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040405838383ADC8C8C8FF838383AC0B0B0B0F0000
          0000000000000000000000000000000000000000000000000000000000000303
          03041A1A1A23242424301717171F71717194CFCFCFFFC6C6C6F65454546D0202
          0203000000000000000000000000000000000000000000000000000000014A4A
          4A59B0B0B0DDBFBFBFECB2B2B2DBB4B4B4DED7D7D7FFD8D8D8FFB7B7B7E33232
          3240010101010603000A130E031F150F0520130E041D04020006030303048B8B
          8BA5D7D7D7FFDCDCDCFFDCDCDCFFDCDCDCFFDDDDDDFFDDDDDDFFD9D9D9FFA5A5
          A5D05E616576695F43988C6B21DE917029DF886B27D32119093219191921B2B2
          B2D6DEDEDEFFE0E0E0FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFE0E0E0FFDDDD
          DDFFDBDEE5FFC8BBA1FFAD8329FFB18A38FFA88333F329210D3C28282831C4C4
          C4E9E0E0E0FFE3E3E3FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE1E1
          E1FFE3E6ECFFD2C4A9FFB68C31FFBA9341FFAE893EF32C220F3C0A0A0A0EA2A2
          A2C1E1E1E1FFE5E5E5FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE5E5
          E5FFE7EAF0FFD7C9ADFFC1943AFFC49B4AFFBA9245F32D25113C040404067D7D
          7D95D9D9D9F8E4E4E4FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5E5FFE5E5
          E5FFE4E7EEFFDACAB0FFCD9D45FFCFA252FFC3984CF33026133C000000000F0F
          0F136A6A6A7DB8B8B8D6C7C7C7E5CDCDCDEACDCDCDEBCBCBCBE7B7B7B7D19C9C
          9CB493979DACA79A7EC5D4A654FAD6AA5FFBCAA25AEE3127153A000000000000
          000004040405151515191F1F1F272626262D2828282F22222229111111170505
          0507040404051B140A1F493B2253493F27544539244E0F0C0611000000000000
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
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000030000001C040A075D08140E7F08140E7F040A
          075D0000001D0000000300000000000000000000000000000000000000000000
          0000000000000000001D11251BA22B5E46F82E664BFF2E674CFF2E674CFF2E66
          4BFF2B5E46F811251BA20000001D000000000000000000000000000000000000
          0000010302342A5441E5377055FF377055FF377055FF377055FF366E53FF3770
          55FF377055FF377055FF2A5541E5010302340000000000000000000000000000
          001C315C47E540795EFF40795EFF3F785DFF3E755BFF5A8A73FFB2C7BDFF6C95
          82FF52856CFF40795EFF40795EFF315C47E50000001C00000000000000011A2F
          26A3488266FF488266FF488266FF6F9B87FFDCE5E1FFCDD9D3FFB6CAC1FFD6E1
          DCFF62927BFF488266FF488266FF488266FF1A2F26A3000000010001001A4B7F
          66FA518B6FFF518B6FFF518B6FFF558E73FFB5CBC1FFFFFFFFFFEAF0EDFFFEFE
          FEFFB9CCC3FF609179FF518B6FFF518B6FFF4A7F66F90001001A0A100D5C5891
          75FF599377FF599377FF599377FF599277FFC7D8D0FFF2F6F4FF5A9377FF7EAB
          96FFF0F5F3FFE5EDE9FF599176FF599377FF589175FF0A100D5C15211B7F619B
          80FF629C81FF629C81FF629C81FF629A80FFF5F8F7FFDBE5E0FF6E9E88FF6296
          7DFFDFE9E4FFFEFEFEFF669D83FF629C81FF619B80FF15211B7E17241E7F6AA4
          89FF6AA489FF6AA489FF6AA489FF8DB6A2FFFFFFFFFFD2E2DBFFEDF3F0FFFFFF
          FFFFFFFFFFFFCCDFD6FF6AA489FF6AA489FF6AA489FF17241E7F0D15115D71AA
          8FFF73AD92FF72AC91FF98BDABFFCADCD3FFFDFEFDFF7BAF97FF76AD93FFF2F6
          F4FFC6DAD1FF73AC91FF73AD92FF73AD92FF71AA8FFF0E15115D0101011A73A9
          90FB7BB59AFF7BB59AFFC5DED2FFEEF5F2FFFBFCFCFFC6D9D0FFBFD5CAFFFDFE
          FDFFD1E4DBFF7BB59AFF7BB59AFF7BB59AFF73A990FB0102011A00000000364E
          43A684BDA2FF85BEA3FF85BEA3FFB8D6C7FFCAE0D6FFF1F6F4FFD9EAE2FFD4E8
          DFFF96C6AFFF85BEA3FF85BEA3FF84BDA2FF374F44A600000000000000000203
          021B71A18BE98DC6ABFF8DC6ABFFADD6C3FFA0CDB7FFE6F2ECFF8CC5AAFF8DC6
          ABFF8DC6ABFF8DC6ABFF8DC6ABFF71A18BE90203031B00000000000000000000
          0000090E0B347CAB94EA95CEB3FF96CFB4FF96CFB4FF96CEB4FF96CFB4FF96CF
          B4FF96CFB4FF95CEB3FF7CAB95EA0A0F0D350000000000000000000000000000
          0000000000000406051C537364A995CBB2FC9CD4BAFF9ED7BCFF9ED7BCFF9CD4
          BAFF95CBB2FC537465A90406051C000000000000000000000000000000000000
          00000000000000000000000000000609071C25332C613A4F45823A4F46822533
          2D610609071C0000000000000000000000000000000000000000}
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
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000002020003140D081E3827164E503721715B3F237E2E2113400000
          0000000000000000000000000000000000000000000000000000000000000000
          0000040201063E2919548C6039C5AB7847EEB27D4AFAB6804CFE5B3F26800000
          0000000000000000000000000000000000000000000000000000000000000000
          0000281D0F389C6C3FD8AE7C48F3835B35BA62432C8E5C3D28832D1E14400000
          0000000000000000000000000000000000000000000000000000000000000000
          0002593C217AB3804BFB744E32A6120C071B04030105010100010604020A160E
          081E140E081E0504020900000000000000000000000000000000000000000403
          01056848258EB6814AFD5439267A01010001000000000000000019120B237753
          2FA4996A40D6543B23780B08030F000000000000000000000000000000000000
          0002563C2278B3804BFB744F33A8130C081B030100040000000100000002291C
          0F398C6439C4A87545EC593F257D0B0704100000000000000000000000000000
          000027190E36986A40D6AE7C49F3845F37BA694C2B8D63462781634527805D42
          24817F5B35B2B37F48F9AC7A46EF5D4226800C09041100000000000000000000
          000004030005372817508A6137BFA87645ECB47D4BF8B6814AFDB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFA27242DF2F22134200000000000000000000
          00000000000002000003120E071B332515494B36206C563C207B5940237F5B42
          2482825C35B4B37F48F9A77946ED593E247C0B07041000000000000000000000
          000000000000000000000000000000000000000000000000000002000002271D
          103B8F653CC6A57643E9543B20760A06030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000191109247454
          2EA69A6B40D34F371E6F0905030C000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000604020A160E
          081E140E081D0503010800000000000000000000000000000000000000000000
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
          000000000000000000000000000000000000000000002E2113405B3F257E5038
          21713827164E140E081E02020003000000000000000000000000000000000000
          000000000000000000000000000000000000000000005C412680B6804CFEB27D
          4AFAAB7847EE8C643AC53D2A1954040201060000000000000000000000000000
          000000000000000000000000000000000000000000002E2113405E4327836649
          2A8E845C36BAAE7C48F39C6C3FD8281D10380000000000000000000000000000
          0000000000000000000005040209140E081E160E081E0604020A010100010403
          0105130E071B775430A6B3804BFB573D247A0000000200000000000000000000
          0000000000000B08030F553C2378996B40D6755331A419120A23000000000000
          000001010001573D247AB6814AFD66492A8E0403010500000000000000000000
          00000B070410593F257DA87645EC8C6439C4281C103900000002000000010301
          0004130E071B785530A8B3804BFB553D24780000000200000000000000000C09
          04115D422680AB7A46EFB37F48F97F5B35B25C4226815C4126805C4226816448
          288D845F36BAAE7C48F3996B3FD6271A0F360000000000000000000000002F22
          1342A27242DFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB6814AFDB37D
          4AF8A87645EC8A6038BF38281750040300050000000000000000000000000B07
          0410593E247CA97947EDB37F48F9825C35B45D4226825B40267F583D247B4C36
          206C33251549120E071B02000003000000000000000000000000000000000000
          00000A06030E543B2276A67644E98F653BC6291D113B02000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000905030C4F37206F976B3FD3775430A61A110A24000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000005030108140E081D160E081E0604020A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
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
          0000000000000000000001010101010101010101010101010101010101010101
          0101010101010101010100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010101000000000B07
          0211291F0A432D220B482D210B482D210B482D210B482D210A48191203270000
          0001000000000000000000000000000000000000000001010101040404050606
          06090909090C0A0A0A0D0909090C0606060A0505050703030304010101010000
          0000000000000000000000000000000000000000000000000000000000003529
          0D58977426F39B7528F79B7528F79B7528F79B7528F79B7426F7725816AF1816
          151D1717171C1717171F191919201E1E1E283939394C66666688808080AB9090
          90B9959595BF999999C2979797BF959595BB8B8B8BB27E7E7EA56D6D6D905151
          516D2323232F0202020300000000000000000000000000000000000000003F32
          1062A5802FFDA6812FFFA6812FFFA6812FFFA6812FFFA57D2AFFA18745F2ADAF
          B7D6ADADAEDAB0B0B0DEB1B1B1DFB5B5B5E5C4C4C4F6CDCDCDFED2D2D2FFD3D3
          D3FFD2D2D2FFD4D4D4FFD2D2D2FFD2D2D2FFD1D1D1FFD0D0D0FFCECECEFFC9C9
          C9FDADADADDA3636364504040406000000000000000000000000000000004132
          1362AA8534FDAC8634FFAC8634FFAC8634FFAC8634FFAA822CFFB39553FFD6DA
          E2FFD5D5D6FFD6D6D6FFD5D5D5FFD7D7D7FFD8D8D8FFD9D9D9FFD8D8D8FFDADA
          DAFFDADADAFFDADADAFFDADADAFFDADADAFFD8D8D8FFD9D9D9FFD6D6D6FFD5D5
          D5FFCECECEFEB6B6B6E46C6C6C8A101010140000000000000000000000004334
          1562AF8938FDB18A38FFB18A38FFB18A38FFB18A38FFAF8630FFB99A58FFDCE0
          E6FFDBDBDBFFDCDCDCFFDDDDDDFFDDDDDDFFDCDCDCFFDEDEDEFFDEDEDEFFDDDD
          DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDEDEDEFFDCDCDCFFDDDDDDFFDBDB
          DBFFD8D8D8FFD3D3D3FFCACACAFA6262627B0000000200000000000000004637
          1762B48E3DFDB68F3DFFB68F3DFFB68F3DFFB68F3DFFB48B35FFBD9E5DFFE0E2
          EAFFDFDFE0FFE0E0E0FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFE0E0E0FFDFDF
          DFFFDDDDDDFFD9D9D9FFD4D4D4FF8B8B8BA90404040500000000000000004739
          1962B99240FDBB9342FFBB9342FFBB9342FFBB9342FFB98F3AFFC1A261FFE1E4
          ECFFE1E1E1FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFDBDBDBFFD5D5D5FF7373738D0202020300000000000000004939
          1A62BD9745FDC09847FFC09847FFC09847FFC09847FFBE943FFFC5A564FFE2E4
          ECFFE2E2E2FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE2E2E2FFDFDFDFFFD8D8D8FFAFAFAFD51E1E1E2700000000000000004B3C
          1C62C29C49FDC69D4BFFC69D4BFFC69D4BFFC69D4BFFC59A43FFCAA969FFE1E5
          ECFFE3E3E4FFE4E4E4FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE4E4E4FFE1E1E1FFDCDCDCFFD1D1D1FC5353536700000000000000004D3E
          1E62C8A04EFDCCA150FFCCA150FFCCA150FFCCA150FFCB9E49FFCEAC6CFFDFE3
          EAFFE2E2E2FFE4E4E4FFE3E3E3FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE5E5E5FFE2E2E2FFDCDCDCFFD2D2D2FC535353680000000000000000503E
          1F62CDA453FDD1A555FFD1A555FFD1A555FFD1A555FFD1A24EFFD2B070FFDCDF
          E7FFDEDEDFFFE0E0E0FFE2E2E2FFE5E5E5FFE6E6E6FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE4E4E4FFE3E3E3FFDCDCDCFFB3B3B3D7202020280000000000000000503F
          2162D1A854FDD6A858FFD5A858FFD5A858FFD5A857FFD5A753FFD2B170FDD3D6
          DFF7D4D4D5F7D8D8D8F8DCDCDCFEE1E1E1FFE4E4E4FFE7E7E7FFE6E6E6FFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE2E2E2FFD7D7D7FD5D5D5D730202020200000000000000004F41
          275CDAB56EF9DCB66CFDDCB66BFDDCB66BFDDCB66BFDDCB76BFDA88759C43D3E
          454D3A3A40484040404D969696B1D9D9D9FDE2E2E2FFE6E6E6FFE8E8E8FFE7E7
          E7FFE7E7E7FFE7E7E7FFE8E8E8FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE7E7
          E7FFE5E5E5FFE1E1E1FFD6D6D6FD525252660000000000000000000000001511
          091953452A5C57492F6257492E6257492E6257492E6256472D61302615370101
          000100000000000000001F1F1F23B1B1B1C5DEDEDEFFE3E3E3FFE6E6E6FFE9E9
          E9FFE9E9E9FFE8E8E8FFE7E7E7FFE4E4E4FFE3E3E3FFE3E3E3FFE5E5E5FFE3E3
          E3FFE1E1E1FFDDDDDDFFCFCFCFF53E3E3E4C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000013636363EC2C2C2E1E0E0E0FFE4E4E4FFE8E8
          E8FFE8E8E8FFE4E4E4FFD7D7D7F6C4C4C4DFD6D6D6F5DDDDDDFEE0E0E0FFE1E1
          E1FFDEDEDEFFD8D8D8F8878787A00D0D0D100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020202035B5B5B68D2D2D2F4E1E1E1FFE4E4
          E4FFE6E6E6FFE2E2E2FFC3C3C3E4353535423D3D3D49646464788080809B8B8B
          8BA87E7E7E994E4E4E5E0F0F0F13000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000909090C8686869DDBDBDBFDE1E1
          E1FFE4E4E4FFE2E2E2FFCFCFCFF23434343E0000000000000000020202020404
          0404020202020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001F1F1F25B0B0B0D0DFDF
          DFFFE2E2E2FFE1E1E1FFD7D7D7FB4B4B4B5B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000010101014B4B4B5AD2D2
          D2F3DFDFDFFFE0E0E0FFDBDBDBFF676767790000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000A0A0A0D9696
          96B1DDDDDDFFDFDFDFFFDCDCDCFF818181950000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005E5E
          5E71D9D9D9FEDFDFDFFFDCDCDCFF949494AC0404040500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004C4C
          4C5AD7D7D7FBDEDEDEFFDCDCDCFF999999B30505050700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004343
          4352D5D5D5FADEDEDEFFDCDCDCFF828282960202020300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004040
          404ED4D4D4F9DBDBDBFFD0D0D0F14141414C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003F3F
          3F4AD2D2D2F8D3D3D3F77979798F0808080B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002B2B
          2B339A9A9AB55A5A5A6C0D0D0D0F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000303
          03040909090B0101010100000000000000000000000000000000000000000000
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
          0000000000000000000001010101010101010101010101010101010101010101
          0101010101010101010100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010101000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000101010117171723434343611818182200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010101012D2D2D468E8E8ED1ADADADF63B3B3B5300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000017171723929292D1B9B9B9FFB4B4B4FC3F3F3F5A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004E4E4E6FB8B8B8FCBCBCBCFFB7B7B7FC4141415D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000202
          0203747474A0BEBEBEFFBFBFBFFFBABABAFD4949496400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000303
          0304767676A5BFBFBFFFC2C2C2FFBCBCBCFE5454547400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          010169696991C1C1C1FFC4C4C4FFC1C1C1FF767676A004040406000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000057575776C1C1C1FEC7C7C7FFC6C6C6FFACACACE62C2C2C3B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000042424259C2C2C2FBCACACAFFCBCBCBFFC4C4C4FE848484B20D0D0D120000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002F2F2F3EBEBEBEF2CCCCCCFFCFCFCFFFCDCDCDFFC0C0C0F8585858760303
          0304000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000002121212192E2E2E3D3A3A3A4B313131411F1F1F2B0D0D
          0D121E1E1E28B4B4B4E2CFCFCFFFD3D3D3FFD2D2D2FFCFCFCFFFB3B3B3E53535
          3542000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000202020341414152A2A2A2CDBEBEBEF2C3C3C3F8C0C0C0F4B4B4B4E69D9D
          9DC87A7A7A9EBABABAE5D4D4D4FFD7D7D7FFD7D7D7FFD4D4D4FFCECECEFFA3A3
          A3C5191919210000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000020202029ACACACDBCDCDCDFFD2D2D2FFD2D2D2FFD4D4D4FFD4D4D4FFD4D4
          D4FFD3D3D3FFD5D5D5FFD8D8D8FFDBDBDBFFD9D9D9FFD9D9D9FFD5D5D5FFCBCB
          CBFC7C7C7C9E0C0C0C0F0000000000000000000000000A060110140F0420140F
          0520140F0520140F0520140F0520130E041D0402000600000000000000000000
          000043434355C9C9C9FAD2D2D2FFD6D6D6FFDADADAFFDADADAFFD9D9D9FFD9D9
          D9FFDBDBDBFFDCDCDCFFDBDBDBFFDBDBDBFFDBDBDBFFDCDCDCFFDADADAFFD4D4
          D4FFC6C6C6F76363637F111111170D0D0D1211111116604711988F6C24DF8F6D
          26DF8F6D26DF8F6D26DF8F6D26DF8B6A27D92E240D4A00000000000000000000
          000046464657CCCCCCFBD8D8D8FFDCDCDCFFDCDCDCFFDEDEDEFFDEDEDEFFDEDE
          DEFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDCDCDCFFDBDB
          DBFFD6D6D6FFC7C7C7F5A8A8A8D1A4A5A5CDA6A9B1CFA38745F1A9822DFFAA84
          32FFAA8432FFAA8432FFAA8432FFA88332FD4132136200000000000000000A0A
          0A0D828282A2D1D1D1FEDBDBDBFFDDDDDDFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
          DEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDFDF
          DFFFDDDDDDFFDADADAFFD6D6D6FFD4D5D5FFD5D9E0FFB59855FFAC842EFFAE88
          36FFAE8836FFAE8836FFAE8836FFAC8736FD4232136200000000000000003636
          3646C4C4C4F2D8D8D8FFDCDCDCFFDFDFDFFFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFDFDFDFFFDEDEDEFFDEDEDEFFDCDCDDFFDBDFE6FFBA9B5AFFB18933FFB38D
          3BFFB38D3BFFB38D3BFFB38D3BFFB18C3BFD4435166200000000000000005050
          5063CECECEFDDADADAFFDFDFDFFFE2E2E2FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE1E1E1FFE0E0E0FFE0E0E1FFDFE3EAFFBF9F5EFFB68D37FFB891
          3FFFB8913FFFB8913FFFB8913FFFB6903EFD4637186200000000000000002E2E
          2E39C2C2C2EAD9D9D9FFE0E0E0FFE3E3E3FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
          E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
          E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E6EDFFC3A362FFBB913BFFBD95
          43FFBD9543FFBD9543FFBD9543FFBB9440FD4639196200000000000000000505
          050776767693D7D7D7FEE0E0E0FFE2E2E2FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE4E4E4FFE4E6EFFFC7A666FFC09540FFC299
          48FFC29948FFC29948FFC29948FFBE9846FD493A1B6200000000000000000101
          01017575758FD8D8D8FFDEDEDEFFE3E3E3FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FFE5E5E6FFE4E7EFFFCCAB69FFC69A44FFC79D
          4CFFC79D4CFFC79D4CFFC79D4CFFC39C4AFD4B3C1B6200000000000000000000
          00027575758ED5D5D5FEDCDCDCFFE2E2E2FFE5E5E5FFE6E6E6FFE5E5E5FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE6E6E6FFE6E6E6FFE4E4E4FFE4E4E4FFE2E7EDFFCFAE6DFFCB9E4AFFCCA1
          51FFCCA151FFCCA151FFCCA151FFC8A04FFD4D3E1E6200000000000000000000
          000027272730A6A6A6C9D7D7D7FCDEDEDEFFE1E1E1FFE4E4E4FFE5E5E5FFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE4E4E4FFE5E5
          E5FFE3E3E3FFE4E4E4FFE3E3E3FFE0E1E1FFDEE3EBFFD3B071FFD0A34EFFD1A6
          55FFD1A655FFD1A655FFD1A655FFCDA553FD503E206200000000000000000000
          0000010101011B1B1B206C6C6C82CFCFCFF3DFDFDFFFDFDFDFFFE0E0E0FFE1E1
          E1FFE1E1E1FFE2E2E2FFE2E2E2FFE2E2E2FFE1E1E1FFE1E1E1FFE0E0E0FFE0E0
          E0FFDDDDDDFEDCDCDCFEDBDBDBFED9D9DAFDD8DCE4FBD3B173FED5A751FFD5A9
          57FFD5A957FFD5A957FFD6A957FFD1A854FD5141216200000000000000000000
          000000000000000000000A0A0A0B5F5F5F72A9A9A9C2BDBDBDDBC7C7C7E7CDCD
          CDEED1D1D1F1D3D3D3F4D3D3D3F5D3D3D3F4D2D2D2F1CBCBCBEBB9B9B9D89191
          91A96666667A5D5D5D6F59595969525357625050555EB59258CEDFB76BFFDFB6
          6BFFDFB66BFFDFB66BFFDFB66CFFDBB66BFD5343286100000000000000000000
          0000000000000000000000000000000000020B0B0B0E1818181D2121212A2A2A
          2A343232323B3535354138383842353535413232323B2828282F1717171C0505
          050700000000000000000000000000000000020200035240255F86754A9D887B
          469D887B469D887B469D8D7B469D877241962720102D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010001020000020200
          0002020000020200000202000002000000020000000000000000000000000000
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
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000050000000A000000100000001400000016000000160000
          0014000000100000000A00000005000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000900000017030805540C1D1596163425C41D4632E1204E38EF204E38EF1D46
          32E1163425C40C1D159603080555000000170000000900000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000070000001F0A17
          1185214B37E5295E45FF2B6147FF2B6349FF2C644AFF2C654AFF2C654AFF2C64
          4AFF2B6349FF2B6147FF295E45FF224B38E60A1811860000001F000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000D050B085F244F3BE62D63
          4AFF30684DFF316A4FFF316A4FFF316A4FFF316A4FFF316A4FFF316A4FFF316A
          4FFF316A4FFF316A4FFF316A4FFF30684DFF2D634AFF244F3BE6050C09600000
          000D000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000020000001210221A9831654CFE346C51FF356E
          53FF356E53FF356E53FF356E53FF356E53FF356E53FF356E53FF356E53FF356E
          53FF356E53FF356E53FF356E53FF356E53FF356E53FF346C51FF31654CFE1022
          1A98000000120000000200000000000000000000000000000000000000000000
          0000000000000000000100000011172F24AD356A51FF397257FF397257FF3972
          57FF397257FF397257FF397257FF397257FF397257FF387055FF366C53FF386F
          55FF397257FF397257FF397257FF397257FF397257FF397257FF397257FF356A
          51FF172F24AD0000001100000001000000000000000000000000000000000000
          0000000000000000000A13261D99396E55FF3D765BFF3E775CFF3E775CFF3E77
          5CFF3E775CFF3D765BFF3D765BFF3E775CFF3D765BFF598771FFC9D6D0FF759B
          89FF3C7359FF396F55FF3B7258FF3D765BFF3E775CFF3E775CFF3E775CFF3D76
          5BFF396E55FF13261D990000000A000000000000000000000000000000000000
          000000000005070E0B603D7158FE417A5FFF427B60FF427B60FF427B60FF427B
          60FF427B60FF3F765CFF3D7259FF3F765CFF40775DFF94B1A3FFFFFFFFFF8CAC
          9DFF55856EFFE5ECE9FF8FAD9FFF417A5FFF427B60FF427B60FF427B60FF427B
          60FF417A5FFF3D7158FE070E0B60000000050000000000000000000000000000
          00010000001C35614CE9457C62FF468064FF468064FF468064FF468064FF4680
          64FF467E64FF89AB9BFFD6E0DBFF9EB7ABFF678F7CFFCEDAD4FFFEFEFEFF5787
          6FFF8EAD9EFFFFFFFFFF97B5A7FF468064FF468064FF468064FF468064FF4680
          64FF468064FF457C62FF35614CE90000001C0000000100000000000000000000
          000512201A88467B62FF4A8468FF4A8468FF4A8468FF4A8468FF4A8468FF4A84
          68FF4A8468FFA3BEB2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F9F8FF8DAA
          9DFFCDD9D3FFFFFFFFFF63917AFF498367FF4A8468FF4A8468FF4A8468FF4A84
          68FF4A8468FF4A8468FF467B62FF12201A880000000500000000000000000000
          00123D6954EB4D876BFF4F896DFF4F896DFF4F896DFF4F896DFF4F896DFF4F89
          6DFF4F896DFF61957CFF99B8AAFFF8FAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFCFDFDFF9AB4A8FF54856DFF4B8368FF4E886CFF4F896DFF4F89
          6DFF4F896DFF4F896DFF4D876BFF3D6954EA000000120000000000000001080D
          0A574D8368FF538D71FF538D71FF538D71FF538D71FF538D71FF538D71FF538D
          71FF538D71FF538D71FF50876CFFF0F4F2FFFFFFFFFFFFFFFFFFC6D8CFFFE3EC
          E8FFFFFFFFFFFFFFFFFFFFFFFFFFF5F7F6FF97B4A6FF4E856BFF538C70FF538D
          71FF538D71FF538D71FF538D71FF4D8368FF080D0A5600000001000000041D2F
          269B538B70FF579175FF579175FF579175FF579175FF579175FF579175FF5791
          75FF579175FF579075FF75A08CFFFFFFFFFFFFFFFFFFF9FBFAFF5B9277FF5790
          75FF77A590FFCCDDD5FFFFFFFFFFFFFFFFFFFFFFFFFFA2BDB0FF558E72FF5791
          75FF579175FF579175FF579175FF538B70FF1D2F269B00000004000000063558
          48CD599277FF5B9579FF5B9579FF5B9579FF5B9579FF5B9579FF5B9579FF5B95
          79FF5B9579FF5A9378FFA9C3B7FFFFFFFFFFFFFFFFFFD0DFD8FF5A9378FF5B95
          79FF5B9579FF5B9478FFC5D8CFFFFFFFFFFFFFFFFFFFF6F9F7FF5C9278FF5B95
          79FF5B9579FF5B9579FF5B9579FF599277FF355747CC00000006000000084C7A
          63EC5F987DFF609A7EFF609A7EFF609A7EFF609A7EFF609A7EFF609A7EFF609A
          7EFF609A7EFF5C9479FFDAE5E0FFFFFFFFFFFFFFFFFFA1BEB0FF5C957AFF5E97
          7CFF5F987CFF5D967AFF9DBCADFFFFFFFFFFFFFFFFFFFFFFFFFF6EA089FF6099
          7EFF609A7EFF609A7EFF609A7EFF5F987DFF4B7A63EC0000000800000009598D
          75FC649E83FF649E83FF649E83FF649E83FF649E83FF649E83FF649E83FF649E
          83FF649D82FF6A9D85FFFDFDFDFFFFFFFFFFFFFFFFFFCDDBD4FF92B2A3FF6C9A
          85FF5C8F76FF729D89FFE2EAE7FFFFFFFFFFFFFFFFFFFBFCFBFF669C83FF649E
          83FF649E83FF649E83FF649E83FF649E83FF598D75FC00000009000000085D92
          78FD68A287FF68A287FF68A287FF68A287FF68A287FF68A287FF68A287FF68A2
          87FF67A186FF99BBABFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE0D8FF67A186FF68A2
          87FF68A287FF68A287FF68A287FF68A287FF5D9278FD00000008000000075888
          70EF6CA58AFF6CA68BFF6CA68BFF6CA68BFF6CA68BFF6CA68BFF6CA68BFF6CA6
          8BFF6AA288FFC7D9D1FFFFFFFFFFFFFFFFFFC0D6CBFF8BB7A2FFBDD6CAFFF8FA
          F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6EFEBFF7CAF97FF6CA68BFF6CA6
          8BFF6CA68BFF6CA68BFF6CA68BFF6CA58AFF588770EF00000006000000044468
          56D06EA78DFF71AB90FF71AB90FF71AB90FF71AB90FF70AA8FFF6BA389FF6AA0
          87FF699D85FFF2F6F4FFFFFFFFFFFFFFFFFF97BEACFF71AA8FFF70AA8FFF84B3
          9DFFF5F9F7FFFFFFFFFFEFF4F1FF88B39EFF71AA8FFF71AB90FF71AB90FF71AB
          90FF71AB90FF71AB90FF71AB90FF6EA78DFF446856D00000000400000001293E
          349F70A88EFF75AF94FF75AF94FF75AF94FF75AF94FF73AB91FFBFD5CBFFCADB
          D3FFCDDCD5FFFFFFFFFFFFFFFFFFF9FBFAFF74A990FF73AC92FF74AD92FF70A7
          8EFFD6E4DEFFFFFFFFFFFFFFFFFFA2C4B4FF74AE93FF75AF94FF75AF94FF75AF
          94FF75AF94FF75AF94FF75AF94FF70A88EFF293E349F00000001000000000E15
          125A71A78EFF79B398FF79B398FF79B398FF79B398FF78B096FFEEF5F2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F5F3FF9FBEAFFF7BA994FF6DA189FF90B5
          A3FFF9FBFAFFFFFFFFFFFFFFFFFFB3D1C3FF79B297FF79B398FF79B398FF79B3
          98FF79B398FF79B398FF79B398FF71A78EFF0F16135A00000000000000000000
          000F669680F17CB59BFF7DB79CFF7DB79CFF7DB79CFF7DB79CFF84B9A0FFA5CC
          B9FFC9DFD5FFF3F7F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFF96C2ADFF7DB79CFF7DB79CFF7DB79CFF7DB7
          9CFF7DB79CFF7DB79CFF7CB59BFF669680F10001000F00000000000000000000
          0001283B32907BB198FF83BCA1FF83BCA1FF83BCA1FF83BCA1FF83BCA1FF83BC
          A1FF7DB59BFFDDE9E3FFFEFEFEFFC4DCD1FFEFF5F2FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFC8E0D5FF82BAA0FF83BCA1FF83BCA1FF83BCA1FF83BC
          A1FF83BCA1FF83BCA1FF7BB198FF293B33900000000100000000000000000000
          00000203031A6C9C87F085BDA2FF87C0A5FF87C0A5FF87C0A5FF87C0A5FF87BF
          A5FF88BBA2FFFCFDFCFFE6F0ECFF81B79DFFD8E6DFFFFFFFFFFFB1D3C3FFB7D8
          C9FFB7D8C9FF9ECBB6FF86BFA4FF87C0A5FF87C0A5FF87C0A5FF87C0A5FF87C0
          A5FF87C0A5FF85BDA2FF6C9C87F00204031A0000000000000000000000000000
          0000000000001B28226A81B59CFF8BC4A9FF8BC4A9FF8BC4A9FF8BC4A9FF8BC4
          A9FFA1CDB9FFF5F9F7FFC6E0D3FF89BDA4FFF9FBFAFFEDF4F1FF88C0A6FF8BC4
          A9FF8BC4A9FF8BC4A9FF8BC4A9FF8BC4A9FF8BC4A9FF8BC4A9FF8BC4A9FF8BC4
          A9FF8BC4A9FF81B59CFF1C29236A000000000000000000000000000000000000
          00000000000000000002405C4FA986BCA3FF8FC8ADFF8FC8ADFF8FC8ADFF8FC8
          ADFF8FC8ADFF90C8ADFF94CAB0FF9DCDB6FFE7F2EDFFCCE4D9FF8FC7ACFF8FC8
          ADFF8FC8ADFF8FC8ADFF8FC8ADFF8FC8ADFF8FC8ADFF8FC8ADFF8FC8ADFF8FC8
          ADFF86BCA3FF415D4FA900000002000000000000000000000000000000000000
          000000000000000000000102010A537665BD8AC0A7FF93CCB1FF94CDB2FF94CD
          B2FF94CDB2FF94CDB2FF94CDB2FF94CDB2FF93CCB1FF94CCB1FF94CDB2FF94CD
          B2FF94CDB2FF94CDB2FF94CDB2FF94CDB2FF94CDB2FF94CDB2FF93CCB1FF8AC0
          A7FF547767BE0102010A00000000000000000000000000000000000000000000
          00000000000000000000000000000102020A4C6A5CAB8DC1A8FF96CEB3FF98D1
          B6FF98D1B6FF98D1B6FF98D1B6FF98D1B6FF98D1B6FF98D1B6FF98D1B6FF98D1
          B6FF98D1B6FF98D1B6FF98D1B6FF98D1B6FF98D1B6FF96CEB3FF8DC1A8FF4D6B
          5DAC0203020B0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000022E41386E83B59DF394CA
          B0FF9BD3B8FF9CD5BAFF9CD5BAFF9CD5BAFF9CD5BAFF9CD5BAFF9CD5BAFF9CD5
          BAFF9CD5BAFF9CD5BAFF9CD5BAFF9BD3B9FF94CAB0FF83B49DF32F42396E0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000090D0B1C4D6B
          5D968ABCA4F596CBB2FF9BD1B7FF9ED6BBFFA0D9BEFFA0D9BEFFA0D9BEFFA0D9
          BEFF9ED6BBFF9BD1B7FF96CBB2FF8ABCA4F54F6B5D97090D0B1C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000608071135493F61608272A87FAB97DB92C5ACFA96CAB1FF96CAB1FF92C5
          ACFA7FAB97DB608272A835493F62060807110000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020406050E0406050E0000
          0002000000000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000C09
          0411412D1A5B73512FA091673CCAA97446EAB37F41F9B8824CFFB8824CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000C0704106A4B2C94A97E
          4AF7B8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001B120A25A17241DFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000905030C9B6C41DAB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000583E247BB8824CFFB8824CFFB8824CFFB882
          4CFF8C633AC346321D6220160D2E0D0905140C09041102020003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009E6D41DCB8824CFFB8824CFFB8824CFF704F
          2D9C010100010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000F0A0616B8824CFFB8824CFFB8824CFFB67D41FC110C
          0719000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000020160D2EB8824CFFB8824CFFB8824CFFA47144E40000
          000000000000000000000000000000000000000000000000000000000000573D
          247AB8824CFFB8824CFFB8824CFFAD7E4CFE4B351F6A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001F170D2DB8824CFFB8824CFFB8824CFFA67244E60000
          0000000000000000000000000000000000000000000000000000000000000000
          0000573D247AB8824CFFB8824CFFB8824CFFAD7E4CFE4F38216F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000D0A0513B8824CFFB8824CFFB8824CFFB68142FD120E
          071B000000000000000000000000000000000000000000000000000000000000
          000000000000573D247AB8824CFFB8824CFFB8824CFFB8824CFF543B22750000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000986E40D7B8824CFFB8824CFFB8824CFF7351
          2FA0010100010000000000000000000000000000000000000000000000000000
          00000000000000000000573D247AB8824CFFB8824CFFB8824CFFB8824CFF563D
          2479000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000533A2273B8824CFFB8824CFFB8824CFFB882
          4CFF8C643AC546321D621D140B290C0904110402010600000000000000000000
          0000000000000000000000000000573D247AB8824CFFB8824CFFB8824CFFB882
          4CFF5B40257F0000000000000000000000000000000000000000000000000000
          000000000000000000000000000006030108976A3CD1B8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFF6044278500000000000000000000000000000000000000000000
          000000000000000000000000000000000000160E081E996C3ED5B8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFF6346298A000000000000000000000000000000000000
          000000000000000000000000000000000000000000000706020B5B3F257EAB7A
          42EFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFF5D422682000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000604
          020A3827174E694B2B93875F37BD9E7142DDAB7647EEB37F41F9B8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFF563C237800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000060442786B8824CFFB8824CFFB8824CFFAD7E
          4CFE4F37206E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005E432784B8824CFFB8824CFFB8824CFFB68142FD4A34
          1E66000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005D422682B8824CFFB8824CFFB8824CFFB67D41FC412F1B5C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005C412680B8824CFFB8824CFFB8824CFFB37F41F93D2B1955000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005B40
          257FB8824CFFB8824CFFB8824CFFB37B4AF83626164C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
          00000000000000000000000000000000000000000000B8824CFFB8824CFFB37F
          47F9A97446EA91673CCA73512FA0412D1A5B0C09041100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFAE7E4AF76A4B2C940C0704100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFA17241DF1B12
          0A25000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFF9B6C
          41DA0905030C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020200030C09
          04110D09051420160D2E46321D628C633AC3B8824CFFB8824CFFB8824CFFB882
          4CFF583E247B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010001704F2D9CB8824CFFB8824CFFB882
          4CFF9E6D41DC0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000110C0719B67D47FCB8824CFFB882
          4CFFB8824CFF0F0A061600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004B35
          1F6AB37E4CFEB8824CFFB8824CFFB8824CFF573D247A00000000000000000000
          00000000000000000000000000000000000000000000A47144E4B8824CFFB882
          4CFFB8824CFF20160D2E00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004F38216FB37E
          4CFEB8824CFFB8824CFFB8824CFF573D247A0000000000000000000000000000
          00000000000000000000000000000000000000000000A67244E6B8824CFFB882
          4CFFB8824CFF1F170D2D00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000543B2275B8824CFFB882
          4CFFB8824CFFB8824CFF573D247A000000000000000000000000000000000000
          000000000000000000000000000000000000120E071BB68148FDB8824CFFB882
          4CFFB8824CFF0D0A051300000000000000000000000000000000000000000000
          000000000000000000000000000000000000563D2479B8824CFFB8824CFFB882
          4CFFB8824CFF573D247A00000000000000000000000000000000000000000000
          00000000000000000000000000000101000173512FA0B8824CFFB8824CFFB882
          4CFF986E40D70000000000000000000000000000000000000000000000000000
          00000000000000000000000000005B40257FB8824CFFB8824CFFB8824CFFB882
          4CFF573D247A0000000000000000000000000000000000000000000000000402
          01060C0904111D140B2946321D628C643AC5B8824CFFB8824CFFB8824CFFB882
          4CFF533A22730000000000000000000000000000000000000000000000000000
          0000000000000000000060442785B8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFF976A
          3CD1060301080000000000000000000000000000000000000000000000000000
          0000000000006346298AB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFF996C3ED5160E
          081E000000000000000000000000000000000000000000000000000000000000
          0000000000005D422682B8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFAB7A44EF5B3F257E0706020B0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000563C2378B8824CFFB8824CFFB8824CFFB8824CFFB882
          4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB37F47F9AB76
          47EE9E7142DD875F37BD694B2B933827174E0604020A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004F37206EB37E4CFEB8824CFFB8824CFFB882
          4CFF604427860000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004A341E66B68148FDB8824CFFB882
          4CFFB8824CFF5E43278400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000412F1B5CB67D47FCB882
          4CFFB8824CFFB8824CFF5D422682000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003D2B1955B37F
          47F9B8824CFFB8824CFFB8824CFF5C4126800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003626
          164CB37B4AF8B8824CFFB8824CFFB8824CFF5B40257F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
    object tipBillable: TdxScreenTip
      Header.Text = 'Billable'
      Description.Text = 'Toggle billable status of selected timesheet item(s)'
      Width = 340
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
    ImageOptions.Images = img32
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
          Visible = True
          ItemName = 'lucUser'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 130
          Visible = True
          ItemName = 'lucViewMode'
        end
        item
          Visible = True
          ItemName = 'lbl1'
        end
        item
          Visible = True
          ItemName = 'lucPeriod'
        end
        item
          Visible = True
          ItemName = 'dteFromDate'
        end
        item
          Visible = True
          ItemName = 'dteToDate'
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
          ItemName = 'btnRefresh'
        end
        item
          Visible = True
          ItemName = 'btnRefreshLookupTables'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnApprove'
        end
        item
          Visible = True
          ItemName = 'btnToggleBillable'
        end
        item
          Visible = True
          ItemName = 'btnInvoice'
        end
        item
          Visible = True
          ItemName = 'btnCarryFwd'
        end
        item
          BeginGroup = True
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
          ItemName = 'btnReleaseCarryForwarManager'
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
      LargeImageIndex = 24
      SyncImageIndex = False
      ImageIndex = 24
    end
    object btnPreview: TdxBarLargeButton
      Action = actPreview
      Category = 0
      ScreenTip = tipPreview
      AutoGrayScale = False
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
          Width = 70
          FieldName = 'THE_PERIOD'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
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
    object dteFromDate: TcxBarEditItem
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
      Properties.OnEditValueChanged = dteFromDatePropertiesEditValueChanged
    end
    object dteToDate: TcxBarEditItem
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
      Properties.OnEditValueChanged = dteToDatePropertiesEditValueChanged
    end
    object btnPrint: TdxBarLargeButton
      Action = actPrint
      Category = 0
      ScreenTip = tipPrint
      AutoGrayScale = False
    end
    object btnPDF: TdxBarLargeButton
      Action = actPDF
      Category = 0
      ScreenTip = tipPDF
      AutoGrayScale = False
    end
    object btnExcel: TdxBarLargeButton
      Action = actExcel
      Category = 0
      ScreenTip = tipExcel
      AutoGrayScale = False
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
    object btnApprove: TdxBarLargeButton
      Caption = 'Approve'
      Category = 0
      Hint = 'Approve'
      ScreenTip = tipApprove
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popApproval
      OnClick = btnApproveClick
      AutoGrayScale = False
      LargeImageIndex = 26
      SyncImageIndex = False
      ImageIndex = 26
    end
    object dxBarButton1: TdxBarButton
      Action = actApprove
      Category = 0
      ImageIndex = 7
    end
    object btnUnApprove: TdxBarButton
      Action = actUnApprove
      Category = 0
      ImageIndex = 8
    end
    object btnToggleBillable: TdxBarLargeButton
      Tag = 1
      Caption = 'Billable'
      Category = 0
      Hint = 'Billable'
      ScreenTip = tipBillable
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popBillable
      OnClick = btnApproveClick
      LargeImageIndex = 30
      SyncImageIndex = False
      ImageIndex = 30
    end
    object btnBillable: TdxBarButton
      Action = actBilable
      Category = 0
      ImageIndex = 9
      LargeImageIndex = 9
    end
    object btnNotBillable: TdxBarButton
      Action = actNotBillable
      Category = 0
      ImageIndex = 10
      LargeImageIndex = 10
    end
    object btnInvoice: TdxBarLargeButton
      Tag = 2
      Caption = 'Invoice'
      Category = 0
      Hint = 'Invoice'
      ScreenTip = tipInvoice
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popInvoice
      OnClick = btnApproveClick
      AutoGrayScale = False
      LargeImageIndex = 33
      SyncImageIndex = False
      ImageIndex = 33
    end
    object btnInvoiceItem: TdxBarButton
      Action = actInvoiceItem
      Category = 0
      ImageIndex = 12
      LargeImageIndex = 12
    end
    object btnUnInvoiceItem: TdxBarButton
      Action = actUnInvoice
      Category = 0
      ImageIndex = 13
      LargeImageIndex = 13
    end
    object btnCarryForward: TdxBarButton
      Action = actCarryForward
      Category = 0
      Hint = 'Carry forward selected item(s)'
      ImageIndex = 14
      LargeImageIndex = 14
    end
    object btnClearCarryForwrd: TdxBarButton
      Action = actClearCarryForward
      Category = 0
      Hint = 'Cllear carry forward for selected item(s)'
      ImageIndex = 15
      LargeImageIndex = 15
    end
    object btnCarryFwd: TdxBarLargeButton
      Tag = 3
      Caption = 'Carry Forward'
      Category = 0
      Hint = 'Carry Forward'
      ScreenTip = tipCarryForward
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popCarryForward
      OnClick = btnApproveClick
      LargeImageIndex = 34
      SyncImageIndex = False
      ImageIndex = 34
    end
    object btnMonthlyBilling: TdxBarLargeButton
      Action = actMonthlyBilling
      Category = 0
      ScreenTip = tipMonthlyBilling
    end
    object btnReleaseCarryForwarManager: TdxBarLargeButton
      Action = actReleaseCarryForward
      Category = 0
      ScreenTip = tipReleaseCFwdManager
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
    object Insert1: TMenuItem
      Action = actInsert
      ImageIndex = 0
      ShortCut = 45
    end
    object Edit1: TMenuItem
      Action = actEdit
      ImageIndex = 1
      ShortCut = 13
    end
    object Delete1: TMenuItem
      Action = actDelete
      ImageIndex = 2
      ShortCut = 46
    end
    object Copy1: TMenuItem
      Action = actCopyCell
      ImageIndex = 5
      ShortCut = 16451
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Approve1: TMenuItem
      Action = actApprove
      Hint = 'Approve selected timesheet item(s)'
      ImageIndex = 7
    end
    object UnApprove1: TMenuItem
      Action = actUnApprove
      Hint = 'Un-Approve selected timesheet item(s)'
      ImageIndex = 8
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Billable1: TMenuItem
      Action = actBilable
      ImageIndex = 9
    end
    object NotBillable1: TMenuItem
      Action = actNotBillable
      ImageIndex = 10
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Invoice1: TMenuItem
      Action = actInvoiceItem
      ImageIndex = 12
    end
    object UnInvoice1: TMenuItem
      Action = actUnInvoice
      ImageIndex = 13
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object CarryForward1: TMenuItem
      Action = actCarryForward
      ImageIndex = 14
    end
    object ClearCarryForward1: TMenuItem
      Action = actClearCarryForward
      ImageIndex = 15
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
  object popApproval: TdxBarPopupMenu
    BarManager = barManager
    Images = img16
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'btnUnApprove'
      end>
    UseOwnFont = False
    Left = 450
    Top = 350
    PixelsPerInch = 96
  end
  object popBillable: TdxBarPopupMenu
    BarManager = barManager
    Images = img16
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnBillable'
      end
      item
        Visible = True
        ItemName = 'btnNotBillable'
      end>
    UseOwnFont = False
    Left = 525
    Top = 350
    PixelsPerInch = 96
  end
  object popInvoice: TdxBarPopupMenu
    BarManager = barManager
    Images = img16
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnInvoiceItem'
      end
      item
        Visible = True
        ItemName = 'btnUnInvoiceItem'
      end>
    UseOwnFont = False
    Left = 610
    Top = 350
    PixelsPerInch = 96
  end
  object popCarryForward: TdxBarPopupMenu
    BarManager = barManager
    Images = img16
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnCarryForward'
      end
      item
        Visible = True
        ItemName = 'btnClearCarryForwrd'
      end>
    UseOwnFont = False
    Left = 700
    Top = 350
    PixelsPerInch = 96
  end
end
