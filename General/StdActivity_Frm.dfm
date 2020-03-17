inherited StdActivityFrm: TStdActivityFrm
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'StdActivityFrm'
  ClientHeight = 633
  ClientWidth = 1042
  ExplicitWidth = 1048
  ExplicitHeight = 662
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 688
    Height = 513
    ExplicitWidth = 688
    ExplicitHeight = 513
    object grdStdActivity: TcxGrid [0]
      Left = 11
      Top = 11
      Width = 666
      Height = 435
      TabOrder = 0
      object viewStdActivity: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewStdActivityCustomDrawCell
        DataController.DataSource = TSDM.dtsStdActivity
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.NoDataToDisplayInfoText = '<No Standard Activity data to display>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Standard Activity Listing'
          end>
        object edtID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '###0'
          Properties.EditFormat = '###0'
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
        object edtName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object stdStdActivity: TcxGridLevel
        GridView = viewStdActivity
      end
    end
    object edtAppendText: TcxTextEdit [1]
      Left = 103
      Top = 452
      BeepOnEnter = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 574
    end
    object btnOK: TcxButton [2]
      Left = 521
      Top = 477
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton [3]
      Left = 602
      Top = 477
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object litGrid: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Text to append'
      Control = edtAppendText
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 655
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litAppendText: TdxLayoutItem
      Parent = layMainGroup_Root
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = grdStdActivity
      ControlOptions.OriginalHeight = 430
      ControlOptions.OriginalWidth = 655
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpButtons: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litOK: TdxLayoutItem
      Parent = grpButtons
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCancel: TdxLayoutItem
      Parent = grpButtons
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
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
end
