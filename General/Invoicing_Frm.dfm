inherited InvoicingFrm: TInvoicingFrm
  Caption = 'InvoicingFrm'
  ClientHeight = 749
  ClientWidth = 1093
  ExplicitWidth = 1109
  ExplicitHeight = 788
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 1006
    Height = 611
    ExplicitWidth = 1006
    ExplicitHeight = 611
    object grdTimesheetInvoicing: TcxGrid [0]
      Left = 11
      Top = 281
      Width = 984
      Height = 319
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object viewTimesheetInvoicing: TcxGridDBBandedTableView
        PopupMenu = popInvoice
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewCustomerCustomDrawCell
        DataController.DataSource = TSDM.dtsTSInvoicing
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoMultiSelectionSyncGroupWithChildren]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
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
        OptionsView.GroupByBox = False
        OptionsView.ShowColumnFilterButtons = sfbAlways
        Bands = <
          item
            Caption = 'Timesheet Detail'
          end>
        object edtTID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.EditFormat = '#,##0'
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
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 1
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
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 2
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
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtTActivtyType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY_TYPE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ReadOnly = True
          MinWidth = 200
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtTAActivty: TcxGridDBBandedColumn
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
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtTPriceItem: TcxGridDBBandedColumn
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
          Position.ColIndex = 6
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
          Position.ColIndex = 7
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
          Position.ColIndex = 8
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
          Position.ColIndex = 9
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
          Position.ColIndex = 10
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
          Position.ColIndex = 11
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
          Position.ColIndex = 12
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
          Position.ColIndex = 13
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
          Position.ColIndex = 14
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
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 15
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
          Position.ColIndex = 16
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
          Position.ColIndex = 17
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
          Position.ColIndex = 18
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
          Position.ColIndex = 19
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
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
      end
      object lvlTimesheetInvoicing: TcxGridLevel
        GridView = viewTimesheetInvoicing
      end
    end
    object docToolbar: TdxBarDockControl [1]
      Left = 11
      Top = 11
      Width = 984
      Height = 58
      Align = dalNone
      BarManager = barManager
    end
    object grdCustomer: TcxGrid [2]
      Left = 11
      Top = 75
      Width = 984
      Height = 200
      TabOrder = 1
      object viewCustomer: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewCustomerCustomDrawCell
        DataController.DataSource = TSDM.dtsTSCustomer
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.NoDataToDisplayInfoText = '<No Customer data to display>'
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Customer Listing'
          end>
        object edtCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.EditFormat = '#,##0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 55
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 55
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtCCustomerTypeID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_TYPE_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.EditFormat = '#,##0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 55
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 55
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtCstatusID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STATUS_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.EditFormat = '#,##0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 55
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 55
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtCCGID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_GROUP_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 55
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 55
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtCName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 250
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 250
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtCType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_TYPE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 150
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtCStatus: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_STATUS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 90
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cbxIsActive: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IS_ACTIVE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ValueChecked = -1
          Properties.ValueUnchecked = 0
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object edtCGroupLinkName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_GROUP_LINK_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 250
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 250
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
      end
      object lvlCustomer: TcxGridLevel
        GridView = viewCustomer
      end
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    object litToolbar: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Visible = False
      Control = docToolbar
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1093
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litGrid: TdxLayoutItem
      Parent = layMainGroup_Root
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = grdTimesheetInvoicing
      ControlOptions.OriginalHeight = 421
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litCustomerGrid: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Visible = False
      Control = grdCustomer
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 676
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lucPeriod: TcxLookupComboBox [1]
    Left = 220
    Top = 110
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
    Style.HotTrack = False
    Style.TransparentBorder = False
    TabOrder = 1
    Width = 100
  end
  inherited styRepository: TcxStyleRepository
    Left = 150
    Top = 315
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Images = img32
    Left = 85
    Top = 315
    object actClose: TAction
      Caption = 'Close'
      ImageIndex = 0
      OnExecute = DoCloseForm
    end
    object actInvoice: TAction
      Caption = 'Invoice'
      ImageIndex = 1
      OnExecute = DoInvoice
    end
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    Left = 225
    Top = 375
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
    DesignInfo = 24576085
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
      end>
  end
  inherited img32: TcxImageList
    FormatVersion = 1
    DesignInfo = 24576155
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
    ImageOptions.Images = img16
    ImageOptions.LargeImages = img32
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = False
    Left = 228
    Top = 315
    PixelsPerInch = 96
    object barToolbar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockControl = docToolbar
      DockedDockControl = docToolbar
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1121
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
          ItemName = 'btnInvoice'
        end
        item
          Visible = True
          ItemName = 'lblSpace01'
        end
        item
          Visible = True
          ItemName = 'lblPeriod'
        end
        item
          Visible = True
          ItemName = 'cntPeriod'
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
      ScreenTip = tipClose
      AutoGrayScale = False
    end
    object btnInvoice: TdxBarLargeButton
      Action = actInvoice
      Category = 0
      ScreenTip = tipInvoice
      AutoGrayScale = False
    end
    object cntPeriod: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = lucPeriod
    end
    object lblSpace01: TdxBarStatic
      Caption = '   '
      Category = 0
      Hint = '   '
      Visible = ivAlways
    end
    object lblPeriod: TdxBarStatic
      Caption = 'Timesheet Period'
      Category = 0
      Hint = 'Timesheet Period'
      Visible = ivAlways
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
    object tipRefresh: TdxScreenTip
      Header.Text = 'Refresh'
      Description.Text = 'refresh carry forward data'
    end
    object tipInvoice: TdxScreenTip
      Header.Text = 'Invoice'
      Description.Text = 'Set invoice no and date for selected items'
      Width = 280
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
  object popInvoice: TPopupMenu
    Images = img16
    Left = 345
    Top = 420
    object Invoice1: TMenuItem
      Action = actInvoice
    end
    object Close1: TMenuItem
      Action = actClose
    end
  end
end
