inherited MainFrm: TMainFrm
  Caption = 'MainFrm'
  ClientHeight = 752
  ClientWidth = 1258
  OnClose = FormClose
  ExplicitWidth = 1274
  ExplicitHeight = 791
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Top = 35
    Width = 856
    Height = 576
    ExplicitTop = 35
    ExplicitWidth = 856
    ExplicitHeight = 576
    object docToolbar: TdxBarDockControl [0]
      Left = 11
      Top = 11
      Width = 600
      Height = 54
      Align = dalNone
      BarManager = barManager
    end
    object grdTimesheet: TcxGrid [1]
      Left = 11
      Top = 71
      Width = 834
      Height = 494
      TabOrder = 1
      object viewTimesheet: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
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
          DataBinding.FieldName = 'PRICE_ITEM_ID'
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
          MinWidth = 200
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 200
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
          Properties.ListColumns = <>
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
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
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
    Width = 1258
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
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Images = img32
    object actExit: TAction
      Caption = 'Exit'
      ImageIndex = 0
      OnExecute = DoExitTimesheetManager
    end
    object actInsert: TAction
      Caption = 'Insert'
      ImageIndex = 12
      OnExecute = DoInsertEntry
    end
    object actEdit: TAction
      Caption = 'Edit'
      ImageIndex = 13
      OnExecute = DoEditEntry
    end
    object actDelete: TAction
      Caption = 'Delete'
      ImageIndex = 14
      OnExecute = DoDeleteEntry
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      ImageIndex = 17
      OnExecute = DoRefresh
    end
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
    Left = 420
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
