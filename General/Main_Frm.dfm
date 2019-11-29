inherited MainFrm: TMainFrm
  Caption = 'MainFrm'
  ClientHeight = 752
  ClientWidth = 1415
  OnClose = FormClose
  OnDestroy = FormDestroy
  ExplicitWidth = 1431
  ExplicitHeight = 791
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Top = 35
    Width = 1397
    Height = 576
    LayoutLookAndFeel = lafCustomSkin
    ExplicitTop = 35
    ExplicitWidth = 1397
    ExplicitHeight = 576
    object docToolbar: TdxBarDockControl [0]
      Left = 11
      Top = 11
      Width = 1375
      Height = 54
      Align = dalNone
      BarManager = barManager
    end
    object grdTimesheet: TcxGrid [1]
      Left = 11
      Top = 71
      Width = 1375
      Height = 494
      TabOrder = 1
      object viewTimesheet: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = viewTimesheetCustomDrawCell
        DataController.DataSource = TSDM.dtsTimesheet
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
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
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 10
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
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cbxApproved: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPROVED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Approved status'
          MinWidth = 40
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cbxCarryForward: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CARRY_FORWARD'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Carry forward status'
          MinWidth = 40
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtDayname: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DAY_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 30
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtPeriod: TcxGridDBBandedColumn
          DataBinding.FieldName = 'THE_PERIOD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '###0'
          Properties.EditFormat = '###0'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Visible = False
          MinWidth = 65
          Options.Editing = False
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object dteActivityDate: TcxGridDBBandedColumn
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
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 4
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
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 5
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
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 6
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
          Options.Moving = False
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 7
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
          Options.IncSearch = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cbxBillable: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BILLABLE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Billable status'
          MinWidth = 30
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
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
          Properties.DisplayFormat = '#,###0.00'
          Properties.EditFormat = '#,###0.00'
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
        object cbsAddWork: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IS_ADDITIONAL_WORK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ImmediatePost = True
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taRightJustify
          HeaderHint = 'Additioal work time (Mins)'
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
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
          Properties.ListColumns = <>
          Properties.ListSource = TSDM.dtsRateUnit
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
          Options.Moving = False
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 9
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
      end
      object lvlTimesheet: TcxGridLevel
        GridView = viewTimesheet
      end
    end
    object grpToolbar: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object litToolbar: TdxLayoutItem
      Parent = grpToolbar
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = docToolbar
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 54
      ControlOptions.OriginalWidth = 600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litTimesheet: TdxLayoutItem
      Parent = layMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = grdTimesheet
      ControlOptions.OriginalHeight = 426
      ControlOptions.OriginalWidth = 786
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object sbrMain: TdxStatusBar [1]
    Left = 0
    Top = 732
    Width = 1415
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
  inherited styRepository: TcxStyleRepository
    Left = 610
    Top = 185
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Images = img32
    Left = 525
    Top = 185
    object actExit: TAction
      Category = 'System'
      Caption = 'Exit'
      ImageIndex = 0
      OnExecute = DoExitTimesheetManager
    end
    object actInsert: TAction
      Category = 'System'
      Caption = 'Insert'
      ImageIndex = 12
      OnExecute = DoInsertEntry
    end
    object actEdit: TAction
      Category = 'System'
      Caption = 'Edit'
      ImageIndex = 13
      OnExecute = DoEditEntry
    end
    object actDelete: TAction
      Category = 'System'
      Caption = 'Delete'
      ImageIndex = 14
      OnExecute = DoDeleteEntry
    end
    object actRefresh: TAction
      Category = 'System'
      Caption = 'Refresh'
      ImageIndex = 17
      OnExecute = DoRefresh
    end
    object actGetTimesheetData: TAction
      Category = 'System'
      Caption = 'Get Data'
      ImageIndex = 18
      OnExecute = DoGetTimesheetData
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
      OnExecute = DoEscel
    end
    object actReports: TAction
      Category = 'Reports'
      Caption = 'Reports'
      ImageIndex = 1
      OnExecute = DoReports
    end
    object actPreferences: TAction
      Category = 'System'
      Caption = 'Preferences'
      ImageIndex = 19
      OnExecute = DoPreferences
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000121C23003C657500446F8000446F8000446F800044
          6F8000446F8000446F8000446F8000446F8000446F8000446F8000446F800044
          6F8000446F8000446F8000446F8000446F8000446F8000446F8000446F800044
          6F80003C647600131E2500000000000000000000000000000000000000000000
          000000000000000101010044758B0086DAFD0087DDFF0087DDFF0087DDFF0087
          DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087
          DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087
          DDFF0084DAFE0051829B00010404000000000000000000000000000000000000
          00000000000000000202004D829D0087DDFF0087DDFF0087DFFF0088E0FF0088
          E1FF0088E1FF0088E1FF0088E1FF0088E1FF0088E1FF0089E1FF0089E1FF0089
          E1FF0089E2FF0089E2FF0089E2FF0089E2FF0089E2FF0088E0FF0088DFFF0087
          DEFF0087DDFF005C93B100020606000000000000000000000000000000000000
          000000000000000002020052829D0087DDFF0088DFFF008AE0FF0387D0FF0388
          D5FF0189D5FF0189D6FF0288D4FF0288D5FF0188D5FF0189D5FF0187D5FF0288
          D4FF0088D4FF0188D4FF0187D5FF0187D5FF0087D5FF0184CFFF0089DEFF0089
          E0FF0087DDFF005B93B100020606000000000000000000000000000000000000
          000000000000000002020055859D0089DEFF008AE0FF0A76BBFF2C383FFF2C35
          3DFF29343CFF28333BFF26323AFF242F38FF222E37FF212C36FF202B35FF1D28
          33FF1C2932FF1B2631FF19252FFF17232EFF15202CFF131E27FF0563A0FF008B
          E2FF0089DEFF005E94B100020606000000000000000000000000000000000000
          000000000000000002020057859D008BE0FF008CE2FF008EE4FF0088DAFF008B
          E0FF008AE0FF008AE0FF008BE1FF008BE1FF008BE1FF008BE0FF008AE0FF008A
          E0FF008BE0FF008BE0FF008BE0FF008BE0FF008CE0FF0088DAFF008EE4FF008D
          E4FF008BE0FF005E96B100040606000000000000000000000000000000000000
          000000000000000002020058869D008EE1FF008FE3FF0093EBFF0097EFFF009B
          F5FF009BF6FF009CF6FF009CF5FF009CF5FF009DF5FF009DF6FF009CF4FF0098
          EFFF0094EAFF0090E5FF0090E4FF0090E4FF0090E4FF0090E3FF008FE2FF008E
          E1FF008EE1FF005E96B100040606000000000000000000000000000000000000
          00000000000000000202005A889D0090E3FF0091E6FF0A7EC2FF284350FF2543
          4DFF22404DFF1F3E4BFF1D3B49FF1B3948FF193645FF163344FF14303FFF0C46
          65FF0090E3FF0090E4FF0090E3FF0090E3FF0090E3FF0090E3FF0090E3FF0090
          E3FF0090E3FF006098B100040606000000000000000000000000000000000000
          00000000000000000202005D899D0093E4FF0095E6FF008FDDFF0C75B2FF0A77
          B6FF0B76B5FF0975B5FF0875B4FF0774B4FF0673B3FF0772B2FF066FAFFF0377
          BBFF0097E9FF0093E4FF0093E4FF0093E4FF0093E4FF0093E4FF0093E4FF0093
          E4FF0093E4FF006298B100040606000000000000000000000000000000000000
          00000000000000000202005D8A9D0095E6FF0096E8FF009AEFFF009EF7FF00A1
          FCFF00A1FDFF00A1FDFF00A2FDFF00A2FEFF00A2FEFF00A3FEFF00A2FDFF00A0
          FAFF009EF7FF009DF5FF009DF5FF009DF4FF009AF0FF0098EBFF0095E7FF0095
          E6FF0095E6FF00649AB100040606000000000000000000000000000000000000
          0000000000000000020200608B9D0098E7FF009AE9FF0391D9FF166F95FF1570
          97FF136F96FF126E97FF116E95FF116D94FF106C94FF0F6B93FF0F6B93FF0E6A
          92FF0D6992FF0B6791FF0A6890FF0B658DFF076895FF0097E6FF0099E8FF0098
          E7FF0098E7FF00659BB100040606000000000000000000000000000000000000
          0000000000000000020200628D9D009AE9FF009BECFF068CD0FF20516EFF1E50
          6DFF1D4F6CFF1B4E6CFF1A4C69FF194B6AFF184A69FF164767FF154767FF1446
          66FF134565FF124463FF104262FF0F405FFF0C496EFF0094E2FF009BEAFF009A
          E9FF009AE9FF00699FB100040606000000000000000000000000000000000000
          0000000000000000020200638B9D009DEAFF009EECFF00A2F3FF00A5FCFF00A9
          FFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00ABFFFF00ABFFFF00ABFFFF00AB
          FFFF00ACFFFF00ABFFFF00AAFFFF00A8FDFF00A4F7FF00A2F0FF009EEBFF009D
          EAFF009DEAFF006B9DB100040606000000000000000000000000000000000000
          0000000000000000020200658F9D009FECFF00A0EEFF00A1EEFF0697D5FF049B
          D8FF049BD9FF039ADAFF049AD8FF0299D8FF039AD9FF029AD8FF0299D8FF0299
          D8FF0197D7FF0196D4FF00A3F1FF00A0EEFF009FECFF009FECFF009FECFF009F
          ECFF009FECFF006BA1B100040606000000000000000000000000000000000000
          0000000000000000020200678E9D00A1EDFF00A2EFFF088DCCFF2B3B43FF2935
          3EFF28333DFF25323BFF222F39FF212E38FF1F2B37FF1C2934FF1B2733FF1826
          32FF15232DFF122D3FFF0194DAFF00A2EEFF00A1EDFF00A1EDFF00A1EDFF00A1
          EDFF00A1EDFF006DA0B100040606000000000000000000000000000000000000
          000000000000000002020068929D00A4EFFF00A5F1FF00A9F7FF00A5F1FF00A8
          F7FF00A9F8FF00A8F8FF00A8F8FF00A8F7FF00A9F7FF00A9F7FF00A9F8FF00AA
          F8FF00A7F7FF00A5F2FF00AAF9FF00A5F2FF00A5F0FF00A4F0FF00A4F0FF00A4
          EFFF00A4EFFF0070A3B100040606000000000000000000000000000000000000
          00000000000000000202006A919D00A6F0FF00A7F2FF00ACF9FF00B0FBFF00B5
          FFFF00B5FFFF00B4FFFF00B4FFFF00B4FFFF00B5FFFF00B5FFFF00B5FFFF00B5
          FFFF00B6FFFF00B5FFFF00B5FFFF00B5FFFF00B5FFFF00B1FBFF00AEF9FF00A8
          F3FF00A6F0FF0072A3B100040606000000000000000000000000000000000000
          00000000000000000202006B939D00A9F2FF00ABF5FF0A92CEFF29424BFF293F
          49FF264048FF263D47FF233C45FF223B46FF213943FF1F3842FF1E3742FF1C34
          3FFF1A343FFF19313EFF18303CFF152F3BFF142E3AFF132933FF057DB2FF00AC
          F7FF00A9F2FF0074A6B100040606000000000000000000000000000000000000
          00000000000000000202006F939D00ABF3FF00ACF5FF00A8F0FF0A90C9FF0892
          CDFF0792CDFF0791CEFF0791CCFF0690CCFF0790CDFF0790CBFF058FCCFF068F
          CCFF0590CAFF058ECBFF048FCBFF048DCBFF048ECAFF0489C4FF00A3E8FF00AE
          F7FF00ABF3FF0074A5B100040606000000000000000000000000000000000000
          00000000000000000202006F959D00AEF5FF00AFF7FF00B4FFFF00BAFFFF00BE
          FFFF00BEFFFF00BEFFFF00BFFFFF00BFFFFF00BFFFFF00C0FFFF00C0FFFF00C0
          FFFF00C0FFFF00BDFFFF00B9FFFF00B5FFFF00B5FEFF00B3FCFF00B1F9FF00AF
          F6FF00AEF5FF0076A8B100040606000000000000000000000000000000000000
          000000000000000002020072959D00B0F6FF00B2F9FF05A4E1FF1A6E8AFF186F
          8CFF176E8BFF156D8AFF146C88FF136B87FF126A86FF116986FF106785FF0D66
          84FF0C6582FF0C6180FF02A3E1FF00B2F9FF00B0F6FF00B0F6FF00B0F6FF00B0
          F6FF00B0F6FF0077A8B100040606000000000000000000000000000000000000
          000000000000000002020072979D00B2F8FF00B4FBFF05A3E2FF1B6284FF1961
          83FF186182FF175F83FF165E82FF155D80FF135C7EFF11597DFF10587CFF0F57
          7AFF0D5578FF0C5377FF02A0E0FF00B4FBFF00B2F8FF00B2F8FF00B2F8FF00B2
          F8FF00B2F8FF0077A9B100040606000000000000000000000000000000000000
          000000000000000002020075989D00B5F9FF00B6FBFF00BCFFFF00C1FFFF00C6
          FFFF00C6FFFF00C6FFFF00C7FFFF00C7FFFF00C7FFFF00C8FFFF00C8FFFF00C8
          FFFF00C8FFFF00C5FFFF00C0FFFF00BCFFFF00BAFFFF00BAFEFF00BAFEFF00BA
          FDFF00BAFDFF007BADB100040606000000000000000000000000000000000000
          000000000000000002020076999D00B7FBFF00B9FEFF00B6F9FF09A3D6FF07A6
          D9FF07A7DAFF06A7DAFF06A6DBFF05A6D9FF05A6DAFF05A5DAFF04A5D8FF04A5
          D9FF05A4D9FF03A4D9FF04A3D8FF03A4D6FF02A9E1FF00AAEEFF01A6EDFF00A6
          ECFF00A3EAFF00709FAE00040505000000000000000000000000000000000000
          0000000000000000020200789B9D00B9FCFF00BBFFFF0A9ED5FF2B3E48FF293B
          45FF273A46FF263943FF253743FF223642FF21333FFF20343FFF1E313EFF1D2F
          3DFF1A2E3BFF192D3AFF182B39FF172F3AFF0E2B6AFF08308DFF062C85FF051F
          76FF033085FF00567F9F00000202000000000000000000000000000000000000
          00000000000000000202007A9B9D00BCFDFF00BEFFFF00C1FFFF00BFFFFF00C3
          FFFF00C3FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C4FFFF00C5FFFF00C5
          FFFF00C5FFFF00C5FFFF00C7FFFF00C7FFFF0547A0FF052B83FF042077FF022F
          83FF009EE4FF007D9C9D00000202000000000000000000000000000000000000
          00000000000000000202007B9B9D00BEFFFF00BDFFFF00BEFFFF00BEFFFF00BE
          FFFF00BEFFFF00BEFFFF00BEFFFF00BEFFFF00BEFFFF00BEFFFF00BEFFFF00BE
          FFFF00BEFFFF00BEFFFF00C0FFFF00C6FFFF04398EFF02186DFF012D80FF00A1
          E5FF00C5FFFF007A9C9D00000202000000000000000000000000000000000000
          00000000000000000202007A9B9D00C0FFFF00BCFFFF00BCFFFF00BCFFFF00BC
          FFFF00BCFFFF00BCFFFF00BCFFFF00BCFFFF00BCFFFF00BCFFFF00BCFFFF00BC
          FFFF00BCFFFF00BCFFFF00BEFFFF00C5FFFF012679FF002275FF00A0E6FF00C4
          FFFF00BDFFFF00759B9D00000202000000000000000000000000000000000000
          000000000000000101010068898B00C6FBFD00CAFFFF00CAFFFF00CAFFFF00CA
          FFFF00CAFFFF00CAFFFF00CAFFFF00CAFFFF00CAFFFF00CAFFFF00CAFFFF00CA
          FFFF00CAFFFF00CAFFFF00CCFFFF00CCFFFF003E88FF00A5E2FF00D1FFFF00C8
          FFFF00C4FBFD0069898B00010101000000000000000000000000000000000000
          00000000000000000000001A222200557475005F8080005F8080005F8080005F
          8080005F8080005F8080005F8080005F8080005F8080005F8080005F8080005F
          8080005F8080005F80800061808000608080004A6A80006C8080006880800066
          7F80005A7475001A222200000000000000000000000000000000000000000000
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
          00000000000101010103030303060606060A0808080D0A0A0A110E0E0E170E0E
          0E170E0E0E171313131F17171725171717251717172517171725171717251717
          17251717172517171725141414200F0F0F180E0E0E170E0E0E170B0B0B120808
          080D0606060A0303030601010103000000010000000000000000000000000303
          0305292929414C4C4C765C5C5C90696969A4707070AF767676B87E7E7EC58080
          80C7808080C7868686D18B8B8BD88B8B8BD98B8B8AD98B8885D98B8A87D98B8B
          8BD98B8B8BD98B8B8BD9878787D3808080C8808080C77F7F7FC6777777BA7171
          71B0696969A45E5E5E924C4C4C77292929410303030500000000000000000101
          01031F1F1F313B3B3B5C4B4B4B7555555585616161976363639A6E6E6EAC7272
          72B27C766FC4947A57EC9B6F37FA9C641CFE9B5D0CFE9D5D0AFF9C5D0AFF9B60
          12FE9C6A29FD997548F58A7B66DB737271B4727272B26E6E6EAC6363639A6161
          6197555555854B4B4B753B3B3B5C1F1F1F310101010300000000000000000000
          0000000000000000000101010102020202040303030604040307251F163B7250
          24B99C5C0BFD9E5E0BFFA05F0CFFA1600DFFA2600DFFA2610EFFA2610DFFA160
          0DFFA05F0DFF9F5F0CFF9D5D0BFF8C5916E54A3A24780A090711040403070303
          0306020202040101010200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000403000857360B8F9B5C0AFC9F5F
          0CFFA1600DFFA3620EFFA5630FFFA66410FFA76411FFA76511FFA76411FFA764
          10FFA66310FFA4620FFFA2610EFFA05F0DFF9E5E0BFF824F0CD5201405350000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F0800197C4A07CC9E5E0BFFA1600DFFA462
          0FFFA66410FFA86511FFAA6712FFAB6712FFAC6813FFAD6813FFAD6813FFAC68
          13FFAB6712FFA96611FFA76511FFA56310FFA3610EFFA05F0CFF995B0AF93B23
          0362000000000000000000000000000000000000000000000000000000000000
          000000000000000000000F09011A865009DD9F5E0CFFA2610EFFA66310FFA965
          11FFAB6712FFAE6913FFAF6A14FFB16B15FFB26C16FFB26C16FFB26C16FFB16C
          16FFB06B15FFAE6A14FFAC6813FFAA6612FFA76411FFA4620FFFA1600DFF9C5D
          0BFE4327046E0000000000000000000000000000000000000000000000000000
          000000000000050300097D4A08CE9F5E0CFFA3610EFFA76410FFAA6612FFAD69
          13FFB06B15FFB26D16FFB46E18FFB66F18FFB77019FFB87019FFB77019FFB76F
          19FFB56F18FFB46D17FFB16C16FFAF6A14FFAC6812FFA86511FFA5630FFFA160
          0DFF9C5C0BFD301C035000000000000000000000000000000000000000000000
          0000000000005A3505959E5E0BFFA2610EFFA76410FFAA6712FFAE6914FFB26C
          16FFB56E18FFB77019FFB9721BFFBB731CFFBC741CFFBD741DFFBD741CFFBC73
          1CFFBA721BFFB8711AFFB66F18FFB36D17FFB06B15FFAC6813FFA96511FFA562
          0FFFA05F0DFF92560AEF100A011C000000000000000000000000000000000000
          0000201302359C5C0AFDA1600DFFA66310FFAA6612FFAE6914FFB26C16FFB66F
          18FFB9711AFFBC731CFFBE751DFFC0771FFFC2771FFFC27820FFC27820FFC177
          1FFFBF761EFFBD741DFFBB721BFFB77019FFB46E17FFB06B15FFAC6813FFA865
          11FFA3620EFF9F5E0CFF673D06AA000000000000000000000000000000000000
          00006F4207B79F5F0CFFA4620FFFA96511FFAD6913FFB26C16FFB66F18FFBA72
          1BFFBD741DFFC1771FFFC37920FFC67A22FFC87B23FFC97C23FFC87C23FFC77B
          22FFC57921FFC27820FFBF761EFFBC731CFFB87019FFB46D17FFAF6A15FFAB67
          12FFA66410FFA2600DFF9C5D0BFE1C10012F000000000000000000000000160D
          01259C5D0AFEA2600DFFA66410FFAB6712FFB06B15FFB56E18FFB9711AFFBD74
          1DFFC1771FFFC57A21FFC97C23FFCB7E25FFD28D3CFFD99F5AFFD79A51FFCD82
          2AFFCA7D24FFC77B22FFC37920FFBF761EFFBB731CFFB77019FFB26C16FFAE69
          14FFA96611FFA4620FFF9F5F0CFF5D37069A0000000000000000000000004A2C
          047B9E5E0BFFA4620EFFA96511FFAE6913FFB36D16FFB77019FFBC731CFFC177
          1FFFC57A21FFCA7D24FFD49244FFF1DCC4FFFEFEFEFFFFFFFFFFFFFFFFFFFBF5
          EEFFE3B885FFCC7E25FFC87B22FFC37820FFBE751DFFBA721BFFB56E18FFB06B
          15FFAB6712FFA66410FFA1600DFF91560AED0101000300000000000000007345
          07BEA05F0CFFA5630FFFAA6712FFAF6A15FFB56E18FFBA721BFFBF751EFFC479
          20FFC97C23FFD49244FFFBF5EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE9C7A0FFCB7E25FFC67A22FFC1771FFFBC731CFFB77019FFB26C
          16FFAD6813FFA86511FFA3610EFF9D5D0BFF2013023500000000000000009256
          0AEFA1600DFFA66410FFAC6812FFB16B15FFB66F19FFBB731CFFC0771FFFC67A
          22FFCC7E25FFF1DCC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFD99D57FFC97C23FFC37820FFBE751DFFB9711AFFB36D
          17FFAE6914FFA96611FFA4620FFF9E5E0BFF3E240366000000000805000E9C5D
          0AFFA2600DFFA76411FFAC6813FFB26C16FFB77019FFBC741CFFC2781FFFC87B
          23FFD28D3CFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEBCDA9FFCB7D24FFC57921FFBF761EFFBA721BFFB46E
          18FFAF6A14FFAA6612FFA4620FFF9F5F0CFF502F058400000000100A011C9D5E
          0BFFA2610EFFA86511FFAD6913FFB26C16FFB87019FFBD741DFFC27820FFC97C
          23FFD99F5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF2DEC8FFCB7E25FFC67A21FFC0761EFFBA721BFFB56E
          18FFB06B15FFAA6712FFA5630FFFA05F0DFF5733068F000000000E080118A365
          14FFA2610EFFA76511FFAD6813FFB26C16FFB77019FFBD741DFFC27820FFC87C
          23FFD79A51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF0D9BEFFCB7E24FFC57A21FFBF761EFFBA721BFFB56E
          18FFAF6A15FFAA6612FFA5630FFFA56615FF5633068D0000000003020006A669
          1BFDA2600DFFA76410FFAC6813FFB16C16FFB77019FFBC731CFFC1771FFFC77B
          22FFCE822AFFFBF5EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE4B987FFCA7D24FFC47921FFBF751EFFB9721AFFB46E
          17FFAF6A14FFA96612FFA4620FFFA96C1CFF4B2D067A0000000000000000925E
          1ADDA46311FFA66310FFAB6712FFB06B15FFB56F18FFBB721BFFC0761EFFC57A
          21FFCB7D24FFE3B885FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF9F0E6FFCF8631FFC87B23FFC27820FFBD741DFFB8711AFFB36D
          17FFAE6914FFA86511FFA3610EFFAE7124FF341F04540000000000000000663D
          09A5B3782BFFA4620FFFAA6612FFAF6A14FFB46D17FFB9711AFFBE741DFFC278
          20FFC87B22FFCC8026FFE9C7A0FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF9F0E6FFD6974CFFCA7D24FFC57921FFC0761EFFBB731BFFB66F19FFB16C
          16FFAC6813FFA76411FFA2610DFFB0772BFE110A011C00000000000000003721
          055AB87E34FFA3610EFFA86511FFAD6813FFB26C16FFB66F19FFBB731BFFBF76
          1EFFC37920FFC87B23FFCB7E25FFD99D57FFEBCDA9FFF2DFC8FFF0D9BFFFE4B9
          87FFCF8631FFCA7D24FFC67A22FFC1771FFFBD741DFFB9711AFFB46E17FFAF6A
          14FFAA6712FFA5630FFFAF7224FF895818D00000000000000000000000000603
          000AA8712BEFAA6B1CFFA56310FFAA6712FFAF6A14FFB36D17FFB87019FFBC73
          1CFFC0761EFFC37820FFC77B22FFC97C23FFCB7D24FFCC7E25FFCB7E25FFCA7D
          24FFC87B23FFC57A21FFC1771FFFBE751DFFBA721BFFB66F18FFB16C16FFAD68
          13FFA86511FFA3610EFFBE873DFF472C08710000000000000000000000000000
          000053330984C48F47FFA3610EFFA76511FFAC6812FFB06B15FFB46E17FFB871
          1AFFBB731CFFBF751EFFC1771FFFC37920FFC57A21FFC67A22FFC57A21FFC479
          21FFC27820FFC0761EFFBD741DFFBA721BFFB66F19FFB26C16FFAE6914FFAA66
          12FFA5630FFFB07325FFA5712CEC0805010D0000000000000000000000000000
          00000805010EA06C28E6B98034FFA4620FFFA96511FFAD6813FFB06B15FFB46E
          17FFB77019FFBA721BFFBC741CFFBE751DFFBF761EFFC0761EFFC0761EFFBF75
          1EFFBD741DFFBB731CFFB9711AFFB66F18FFB26C16FFAE6A14FFAB6712FFA664
          10FFA46311FFCA9650FF442B096C000000000000000000000000000000000000
          000000000000301E064CC5914BFEAE7122FFA5630FFFA96611FFAC6813FFB06A
          15FFB36D16FFB56E18FFB77019FFB9711AFFBA721BFFBA721BFFBA721BFFBA72
          1BFFB8711AFFB66F19FFB46E17FFB16C16FFAE6914FFAB6712FFA76410FFA361
          0EFFCD9A55FF7D4F15BF01000002000000000000000000000000000000000000
          0000000000000000000051320A80D19F5CFFAF7223FFA5630FFFA86511FFAB67
          12FFAE6914FFB06B15FFB26C16FFB46D17FFB56E18FFB56F18FFB56E18FFB46E
          17FFB36D17FFB16C16FFAF6A14FFAD6813FFAA6612FFA66410FFA3620FFFCF9C
          57FF996624DF0E09021700000000000000000000000000000000000000000000
          000000000000000000000000000059380B8ED09E5BFFBD8439FFA4620FFFA764
          10FFA96611FFAB6712FFAD6913FFAE6A14FFAF6A14FFB06B15FFB06A15FFAF6A
          14FFAE6914FFAC6813FFAA6712FFA86511FFA5630FFFA96918FFD6A664FF9A67
          25DF150D03210000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000442B096CBB8843F8D7A664FFAD6F
          1FFFA4620FFFA66410FFA86511FFA96611FFAA6612FFAA6712FFAA6712FFAA66
          12FFA96511FFA76411FFA56310FFA46310FFC58E46FFD7A766FF805116C20F09
          0218000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001C12042D7F5216C3D1A0
          5DFFDAAA69FFBE863BFFA76715FFA4620FFFA5630FFFA5630FFFA5630FFFA462
          0FFFA4620FFFB27528FFCF9B56FFDDAE6EFFAE7934F0492D0A72010100030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002C1B
          0646724711B1B9843EF8D8A867FFDDAE6FFFDEAF6FFFDDAE6EFFDEAE6EFFDDAE
          6FFFDCAE6EFFCC9954FF956322DA4D300A7A0A06011100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000805010D2E1C05494B2E09785F3B0C9666400E9F643F0E9D5635
          0A883D260761190F032800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object sknController: TdxSkinController
    Kind = lfOffice11
    ScrollbarMode = sbmClassic
    SkinName = 'UserSkin'
    UseImageSet = imsAlternate
    Left = 290
    Top = 170
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
    object tipCloseScreen: TdxScreenTip
      Header.Text = 'Close'
      Description.Text = 'Close Bank Account Type screen'#13#10
      Width = 250
    end
    object tipLaunchMasterTableManager: TdxScreenTip
      Header.Text = 'Master Tables'
      Description.Text = 'Launch Master Table manager'
    end
  end
  object styHintController: TcxHintStyleController
    Global = False
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <>
    HintStyle.ScreenTipActionLinks = <>
    HintShortPause = 0
    HintPause = 0
    HintHidePause = 3000
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
    Left = 370
    Top = 170
    PixelsPerInch = 96
    object barToolbar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockControl = docToolbar
      DockedDockControl = docToolbar
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
          ItemName = 'lblUser'
        end
        item
          Visible = True
          ItemName = 'lucUser'
        end
        item
          Visible = True
          ItemName = 'lblViewMode'
        end
        item
          Visible = True
          ItemName = 'lucViewMode'
        end
        item
          Visible = True
          ItemName = 'lblPeriod'
        end
        item
          Visible = True
          ItemName = 'lucPeriod'
        end
        item
          Visible = True
          ItemName = 'lblFromDate'
        end
        item
          Visible = True
          ItemName = 'dteFromDate'
        end
        item
          Visible = True
          ItemName = 'lblToDate'
        end
        item
          Visible = True
          ItemName = 'dteToDate'
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
          ItemName = 'btnPDF'
        end
        item
          Visible = True
          ItemName = 'btnExcel'
        end
        item
          Visible = True
          ItemName = 'btnReports'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnPreferences'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnExit: TdxBarLargeButton
      Action = actExit
      Category = 0
      AutoGrayScale = False
    end
    object btnInsert: TdxBarLargeButton
      Action = actInsert
      Category = 0
      AutoGrayScale = False
    end
    object btnDelete: TdxBarLargeButton
      Action = actDelete
      Category = 0
      AutoGrayScale = False
    end
    object btnEdit: TdxBarLargeButton
      Action = actEdit
      Category = 0
      AutoGrayScale = False
    end
    object btnRefresh: TdxBarLargeButton
      Action = actRefresh
      Category = 0
      AutoGrayScale = False
    end
    object lblUser: TdxBarStatic
      Caption = 'Timesheet User'
      Category = 0
      Hint = 'Timesheet User'
      Visible = ivAlways
    end
    object lblViewMode: TdxBarStatic
      Caption = 'View Mode'
      Category = 0
      Hint = 'View Mode'
      Visible = ivAlways
    end
    object lblPeriod: TdxBarStatic
      Caption = 'Period'
      Category = 0
      Hint = 'Period'
      Visible = ivAlways
    end
    object lblFromDate: TdxBarStatic
      Caption = 'From'
      Category = 0
      Hint = 'From'
      Visible = ivAlways
    end
    object lblToDate: TdxBarStatic
      Caption = 'To'
      Category = 0
      Hint = 'To'
      Visible = ivAlways
    end
    object btnPreview: TdxBarLargeButton
      Action = actPreview
      Category = 0
      AutoGrayScale = False
    end
    object lucPeriod: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'THE_PERIOD'
      Properties.ListColumns = <
        item
          Width = 70
          FieldName = 'THE_PERIOD'
        end>
      Properties.ListSource = TSDM.dtsTSPeriod
      Properties.PostPopupValueOnTab = True
      Properties.OnEditValueChanged = lucPeriodPropertiesEditValueChanged
    end
    object lucUser: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 130
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Width = 130
          FieldName = 'LOGIN_NAME'
        end>
      Properties.ListSource = TSDM.dtsSytemUser
      Properties.OnEditValueChanged = lucUserPropertiesEditValueChanged
    end
    object lucViewMode: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      OnChange = lucViewModeChange
      Items.Strings = (
        'Period'
        'Date Range')
      ItemIndex = -1
    end
    object dteFromDate: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
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
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
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
      AutoGrayScale = False
    end
    object btnPDF: TdxBarLargeButton
      Action = actPDF
      Category = 0
      AutoGrayScale = False
    end
    object btnExcel: TdxBarLargeButton
      Action = actExcel
      Category = 0
      AutoGrayScale = False
    end
    object btnReports: TdxBarLargeButton
      Action = actReports
      Category = 0
      AutoGrayScale = False
    end
    object btnPreferences: TdxBarLargeButton
      Action = actPreferences
      Category = 0
      AutoGrayScale = False
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
end
