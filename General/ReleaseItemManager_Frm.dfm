inherited ReleaseItemManagerFrm: TReleaseItemManagerFrm
  Caption = 'ReleaseItemManagerFrm'
  ClientHeight = 670
  ClientWidth = 1076
  ExplicitWidth = 1092
  ExplicitHeight = 709
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 821
    Height = 521
    ExplicitWidth = 821
    ExplicitHeight = 521
  end
  object grdTimesheetRelease: TcxGrid [1]
    Left = 430
    Top = 150
    Width = 612
    Height = 395
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object viewTimesheetRelease: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = TSDM.dtsRelease
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
      OptionsSelection.MultiSelect = True
      OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
      OptionsSelection.MultiSelectMode = msmPersistent
      OptionsView.NoDataToDisplayInfoText = '<No Timesheet data to display>'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      Bands = <
        item
          Caption = 'Calculations'
        end
        item
          Caption = 'Timesheet Details'
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
      object edtRTFirstName: TcxGridDBBandedColumn
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
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object edtRTLastName: TcxGridDBBandedColumn
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
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object edtRTThePeriod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'THE_PERIOD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '######'
        Properties.EditFormat = '######'
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 60
        Options.Editing = False
        Options.IncSearch = False
        Options.HorzSizing = False
        Width = 60
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object edtRTPeriodName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PERIOD_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 70
        Options.Editing = False
        Options.HorzSizing = False
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 2
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
        Position.BandIndex = 1
        Position.ColIndex = 5
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
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object edtRCustomerType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_TYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 200
        Options.Editing = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 200
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object edtRCustomerName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 400
        Options.Editing = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 400
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object edtRActivtyType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVITY_TYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Properties.ReadOnly = True
        MinWidth = 250
        Options.Editing = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 250
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object edtRAActivty: TcxGridDBBandedColumn
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
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object edtRPriceItem: TcxGridDBBandedColumn
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
        Position.BandIndex = 1
        Position.ColIndex = 10
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
        Position.BandIndex = 0
        Position.ColIndex = 1
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
        Position.BandIndex = 0
        Position.ColIndex = 2
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
        Position.BandIndex = 0
        Position.ColIndex = 3
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
        Position.BandIndex = 0
        Position.ColIndex = 4
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
        Position.BandIndex = 0
        Position.ColIndex = 5
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
        Position.BandIndex = 0
        Position.ColIndex = 6
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
        Position.BandIndex = 0
        Position.ColIndex = 7
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
        Position.BandIndex = 0
        Position.ColIndex = 8
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
        Position.BandIndex = 0
        Position.ColIndex = 9
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
  object docToolbar: TdxBarDockControl [2]
    Left = 2
    Top = 11
    Width = 1074
    Height = 42
    Align = dalNone
    BarManager = barManager
  end
  inherited styRepository: TcxStyleRepository
    PixelsPerInch = 96
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
    Top = 305
    PixelsPerInch = 96
    object barToolbar: TdxBar
      BorderStyle = bbsNone
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockControl = docToolbar
      DockedDockControl = docToolbar
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1379
      FloatTop = 1
      FloatClientWidth = 125
      FloatClientHeight = 144
      IsMainMenu = True
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
          ItemName = 'lblPeriod'
        end
        item
          Visible = True
          ItemName = 'cntPeriod'
        end
        item
          Visible = True
          ItemName = 'lblSpace01'
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
          ItemName = 'lblSpace02'
        end
        item
          Visible = True
          ItemName = 'cntPersistentSelection'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnClose: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object btnToScreen: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object btnRelease: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object btnOptions: TdxBarLargeButton
      Category = 0
      Visible = ivNever
      AutoGrayScale = False
    end
    object cntPeriod: TdxBarControlContainerItem
      Caption = 'Fetch data for period'
      Category = 0
      Hint = 'Fetch data for period'
      Visible = ivAlways
    end
    object cntReleasePeriod: TdxBarControlContainerItem
      Caption = 'Release to period'
      Category = 0
      Hint = 'Release to period'
      Visible = ivAlways
    end
    object lblPeriod: TdxBarStatic
      Caption = 'Fetch data for period'
      Category = 0
      Hint = 'Fetch data for period'
      Visible = ivAlways
    end
    object lblReleasePeriod: TdxBarStatic
      Caption = 'Release to period'
      Category = 0
      Hint = 'Release to period'
      Visible = ivAlways
    end
    object lblSpace01: TdxBarStatic
      Caption = '   '
      Category = 0
      Hint = '   '
      Visible = ivAlways
    end
    object cntPersistentSelection: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object lblSpace02: TdxBarStatic
      Caption = '   '
      Category = 0
      Hint = '   '
      Visible = ivAlways
    end
  end
end
