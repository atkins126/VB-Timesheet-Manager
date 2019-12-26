inherited TimehseetSummaryByActivityFrm: TTimehseetSummaryByActivityFrm
  Caption = 'TimehseetSummaryByActivityFrm'
  ClientHeight = 771
  ClientWidth = 1237
  ExplicitWidth = 1253
  ExplicitHeight = 810
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 1136
    Height = 691
    LayoutLookAndFeel = lafCustomSkin
    ExplicitWidth = 1136
    ExplicitHeight = 691
    object docToolbar: TdxBarDockControl [0]
      Left = 11
      Top = 11
      Width = 1114
      Height = 46
      Align = dalNone
      BarManager = barManager
    end
    object grdSummaryByActivity: TcxGrid [1]
      Left = 11
      Top = 63
      Width = 1114
      Height = 617
      TabOrder = 1
      object viewSummaryByActivity: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ReportDM.dtsTSSummaryByActivity
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'AMANDA_HRS'
            Column = edtSAAmandaHours
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'AMANDA_ITEM_VALUE'
            Column = edtSAAmandaValue
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'CHANEL_HRS'
            Column = edtSAChanelHours
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'CHANEL_ITEM_VALUE'
            Column = edtSAChanelVlaue
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'CHRISTA_HRS'
            Column = edtSAChristaHours
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'CHRISTA_ITEM_VALUE'
            Column = edtSAChristaValue
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'ALBERTUS_HRS'
            Column = edtSAAlbertusHours
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'ALBERTUS_ITEM_VALUE'
            Column = edtSAAlbetusValue
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = '<No Summary Activity data to display>'
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Activity Listing'
          end
          item
            Caption = 'Amanda'
          end
          item
            Caption = 'Chanel'
          end
          item
            Caption = 'Christa'
          end
          item
            Caption = 'Albertus'
          end>
        object edtSAPeriod: TcxGridDBBandedColumn
          DataBinding.FieldName = 'THE_PERIOD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#####0'
          Properties.EditFormat = '#####0'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          Visible = False
          MinWidth = 70
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtSAATypeID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY_TYPE_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#####0'
          Properties.EditFormat = '#####0'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
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
        object edtSAActivityType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACTIVITY_TYPE'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtSAAmandaMins: TcxGridDBBandedColumn
          AlternateCaption = 'BarCode'
          DataBinding.FieldName = 'AMANDA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.EditFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtSAAmandaHours: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AMANDA_HRS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtSAAmandaValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AMANDA_ITEM_VALUE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
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
        object edtSAChanelMins: TcxGridDBBandedColumn
          AlternateCaption = 'BarCode'
          DataBinding.FieldName = 'CHANEL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.EditFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taRightJustify
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
        object edtSAChanelHours: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CHANEL_HRS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtSAChanelVlaue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CHANEL_ITEM_VALUE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
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
        object edtSAChristaMins: TcxGridDBBandedColumn
          AlternateCaption = 'BarCode'
          DataBinding.FieldName = 'CHRISTA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.EditFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtSAChristaHours: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CHRISTA_HRS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtSAChristaValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CHRISTA_ITEM_VALUE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtSAAlbertusMins: TcxGridDBBandedColumn
          AlternateCaption = 'BarCode'
          DataBinding.FieldName = 'ALBERTUS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.EditFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtSAAlbertusHours: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ALBERTUS_HRS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtSAAlbetusValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ALBERTUS_ITEM_VALUE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 90
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object lvlSummaryByActivity: TcxGridLevel
        GridView = viewSummaryByActivity
      end
    end
    object litGrid: TdxLayoutItem
      Parent = layMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = grdSummaryByActivity
      ControlOptions.OriginalHeight = 547
      ControlOptions.OriginalWidth = 1100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litToolbar: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Visible = False
      Control = docToolbar
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 46
      ControlOptions.OriginalWidth = 1104
      ControlOptions.ShowBorder = False
      Index = 0
    end
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
      FloatClientWidth = 231
      FloatClientHeight = 170
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
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object btnGetData: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object btnExcel: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object btnPDF: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object btnPreview: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object btnPrint: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object lucFromPeriod: TcxBarEditItem
      Caption = 'From Period'
      Category = 0
      Hint = 'From Period'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ImmediatePost = True
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
      Properties.ImmediatePost = True
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
