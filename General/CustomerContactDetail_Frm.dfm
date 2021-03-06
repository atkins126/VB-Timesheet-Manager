inherited CustomerContactDetailFrm: TCustomerContactDetailFrm
  BorderStyle = bsDialog
  Caption = 'CustomerContactDetailFrm'
  ClientHeight = 772
  ClientWidth = 1470
  Constraints.MinHeight = 250
  Constraints.MinWidth = 400
  FormStyle = fsStayOnTop
  Position = poDefault
  OnClose = FormClose
  ExplicitWidth = 1476
  ExplicitHeight = 801
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 701
    Height = 596
    ExplicitWidth = 701
    ExplicitHeight = 596
    object docToolbar: TdxBarDockControl [0]
      Left = 11
      Top = 11
      Width = 679
      Height = 58
      Align = dalNone
      BarManager = barManager
    end
    object grdContactDetailCo: TcxGrid [1]
      Left = 20
      Top = 131
      Width = 661
      Height = 170
      TabOrder = 2
      object viewContactDetailCo: TcxGridDBBandedTableView
        PopupMenu = popEmail
        OnDblClick = viewContactDetailCoDblClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = 'Add a new contact detail'
        Navigator.Buttons.Insert.ImageIndex = 9
        Navigator.Buttons.Delete.Hint = 'Delete selected contact detail'
        Navigator.Buttons.Delete.ImageIndex = 10
        Navigator.Buttons.Edit.Hint = 'Edit selected contact detail'
        Navigator.Buttons.Edit.ImageIndex = 13
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Hint = 'Refresh contact details'
        Navigator.Buttons.Refresh.ImageIndex = 14
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        ScrollbarAnnotations.CustomAnnotations = <>
        OnFocusedRecordChanged = viewContactDetailCoFocusedRecordChanged
        DataController.DataSource = TSDM.dtsContactDetailCo
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        EditForm.DefaultStretch = fsVertical
        EditForm.UseDefaultLayout = False
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No Contact Detail data to display>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Contact Details'
          end>
        object edtCDID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,###,##0'
          Properties.EditFormat = '#,###,##0'
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
        object lucCDContactTypeID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTACT_TYPE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          LayoutItem = viewContactDetailCoLayoutItem1.Owner
          MinWidth = 150
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtCDCusotmerID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,###,##0'
          Properties.EditFormat = '#,###,##0'
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
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtCDContactPersonID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTACT_PERSON_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,###,##0'
          Properties.EditFormat = '#,###,##0'
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
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtCDValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VALUE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          LayoutItem = viewContactDetailCoLayoutItem2.Owner
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtContactDetailCoID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTACT_DETAIL_CO_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '##0'
          Properties.EditFormat = '##0'
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
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtContactTypeID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTACT_TYPE_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '##0'
          Properties.EditFormat = '##0'
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
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtFirstName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIRST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 130
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object edtLastName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LAST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 130
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cbxIsPrimaryContact: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IS_PRIMARY_CONTACT'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object viewContactDetailCoRootGroup: TcxGridInplaceEditFormGroup
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Template Card'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object viewContactDetailCoLayoutItem1: TcxGridInplaceEditFormLayoutItem
          Parent = viewContactDetailCoRootGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          SizeOptions.Width = 233
          Index = 0
        end
        object viewContactDetailCoLayoutItem2: TcxGridInplaceEditFormLayoutItem
          Parent = viewContactDetailCoRootGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          SizeOptions.Width = 368
          Index = 1
        end
      end
      object lvlContactDetailCo: TcxGridLevel
        GridView = viewContactDetailCo
      end
    end
    object edtPrimaryContact: TcxTextEdit [2]
      Left = 119
      Top = 106
      BeepOnEnter = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.StyleController = styReadOnly
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 562
    end
    object grdDirector: TcxGrid [3]
      Left = 20
      Top = 350
      Width = 336
      Height = 199
      TabOrder = 3
      object viewDirector: TcxGridDBBandedTableView
        PopupMenu = popEmail
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = TSDM.dtsViewDirector
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Director Links'
          end>
        object edtID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.EditFormat = '#,##0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 45
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtCustomerID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.EditFormat = '#,##0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 45
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtSalutationID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SALUTATION_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.EditFormat = '#,##0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 45
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtSalutation: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SALUTATION'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 80
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtCFirstname: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIRST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 130
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtCLastName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LAST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtMiddleName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OTHER_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 150
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtTaxNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TAX_NO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 120
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object edtMobileNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MOBILE_PHONE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 120
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object edtEmailAddress: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EMAIL_ADDRESS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
      end
      object lvlDiretor: TcxGridLevel
        GridView = viewDirector
      end
    end
    object grdVDirector: TcxDBVerticalGrid [4]
      Left = 362
      Top = 350
      Width = 316
      Height = 199
      OptionsView.CellAutoHeight = True
      OptionsView.ScrollBars = ssVertical
      OptionsView.RowHeaderWidth = 119
      Navigator.Buttons.CustomButtons = <>
      PopupMenu = popEmail
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 4
      DataController.DataSource = TSDM.dtsViewDirector
      Version = 1
      object edtVSalutation: TcxDBEditorRow
        Options.CanMovedToCustomizationForm = False
        Options.CanResized = False
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'SALUTATION'
        Properties.Options.Editing = False
        Properties.Options.Filtering = False
        Properties.Options.IncSearch = False
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object edtVMiddleName: TcxDBEditorRow
        Options.CanMovedToCustomizationForm = False
        Options.CanResized = False
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'OTHER_NAME'
        Properties.Options.Editing = False
        Properties.Options.Filtering = False
        Properties.Options.IncSearch = False
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object edtVTaxNo: TcxDBEditorRow
        Options.CanMovedToCustomizationForm = False
        Options.CanResized = False
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'TAX_NO'
        Properties.Options.Editing = False
        Properties.Options.Filtering = False
        Properties.Options.IncSearch = False
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object edtVMobileNo: TcxDBEditorRow
        Options.CanMovedToCustomizationForm = False
        Options.CanResized = False
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'MOBILE_PHONE'
        Properties.Options.Editing = False
        Properties.Options.Filtering = False
        Properties.Options.IncSearch = False
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object edtVEmailAddress: TcxDBEditorRow
        Options.CanMovedToCustomizationForm = False
        Options.CanResized = False
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'EMAIL_ADDRESS'
        Properties.Options.Editing = False
        Properties.Options.Filtering = False
        Properties.Options.IncSearch = False
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 2
    end
    object litToolbar: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Visible = False
      Control = docToolbar
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 500
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litGrid: TdxLayoutItem
      Parent = grpContactDetails
      CaptionOptions.Visible = False
      Control = grdContactDetailCo
      ControlOptions.OriginalHeight = 170
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litPrimaryContact: TdxLayoutItem
      Parent = grpContactDetails
      CaptionOptions.Text = 'Primary Contact'
      Control = edtPrimaryContact
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 211
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpContactDetails: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Customer contact details'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object grpDirectOfCompany: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Directors for this company'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object litDirectorGrid: TdxLayoutItem
      Parent = grpDirectOfCompany
      CaptionOptions.Visible = False
      Control = grdDirector
      ControlOptions.OriginalHeight = 199
      ControlOptions.OriginalWidth = 336
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litDirectorGridV: TdxLayoutItem
      Parent = grpDirectOfCompany
      CaptionOptions.Visible = False
      Control = grdVDirector
      ControlOptions.OriginalHeight = 199
      ControlOptions.OriginalWidth = 316
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited styRepository: TcxStyleRepository
    Left = 290
    Top = 230
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Images = img32
    Left = 220
    Top = 230
    object actClose: TAction
      Caption = 'Close'
      ImageIndex = 0
      OnExecute = DoCloseForm
    end
    object actEmail: TAction
      Caption = 'Email'
      ImageIndex = 1
      OnExecute = DoEmail
    end
    object actHide: TAction
      Caption = 'Hide'
      ImageIndex = 2
      OnExecute = DoHideForm
    end
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    Left = 50
    Top = 230
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
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
          0000000000000000000000060E24002862880047AECA0053CAEA0053CAEA0047
          AECA0028638800060E2400000000000000000000000000000000000000000000
          000000000004022B6889035BD8FA035DDDFF035DDDFF035DDDFF035DDDFF035D
          DDFF035DDDFF035BD8FA022C6A89000000040000000000000000000000000000
          0005044095B4075FDEFF075FDEFF075FDEFF075FDEFF075FDEFF0B62DEFF075F
          DEFF075FDEFF075FDEFF075FDEFF054197B4000001050000000000000000052F
          6C8C0B62DFFF0B62DFFF0F64DFFF70A4ECFFCBDDF8FFEDF1FBFFEBEEFAFFEDF3
          FCFFB9D2F5FF4A8BE7FF0B62DFFF0B62DFFF06306E8C00000000010710270E63
          DBFB0E64DFFF1468E0FFBED5F6FFB2C8F2FF3A7AE2FF0E5FDDFF0D60DDFF1461
          DDFF558BE5FFDAE3F8FF6CA1ECFF0E64DFFF0E63DBFB0107112708316A8D1267
          E0FF1267E0FF7CACEEFFB1C9F3FF4487E6FFC5DAF7FFBFD6F6FF98BDF1FFD1E1
          F9FF98BDF1FF3378E2FF4783E3FF1267E0FF1267E0FF09326E8D1256B7D0166A
          E1FF166AE1FFCEE0F8FF4385E5FFDAE7FAFFA2BFF0FF3C7BE2FFDBE5F8FFD5E2
          F8FF87ABEBFFD2E2F9FF1D6EE1FF166AE1FF166AE1FF1256B7D01966D4F11A6C
          E1FF1A6CE1FFE9F1FCFF2674E3FFF9FBFEFF689FEBFF1A6CE1FF6B9EEAFFEEF4
          FCFF1A6DE1FFACC6F2FF73A6EDFF1A6CE1FF1A6CE1FF1966D4F11E6AD6F21D6F
          E2FF1D6FE2FFDBE7FAFF3D84E6FFD1DFF8FF96BCF1FF1D6FE2FF498BE7FFFFFF
          FFFF3E84E6FF659CEAFFA9C8F3FF1D6FE2FF1D6FE2FF1E6AD6F21F61BBD32171
          E3FF2171E3FFA5C3F2FF84B1EFFF6398E9FFF3F7FDFF6FA4ECFFA1C3F3FFFFFF
          FFFF70A4ECFF71A5EDFFA1C2F2FF2171E3FF2171E3FF1F61BBD3163E73922574
          E3FF2574E3FF4386E6FFE6EEFBFF4589E7FF6094E8FFAFC5F1FF8EB0EDFF88AC
          ECFF669AE9FFCEE0F8FF6097E9FF2574E3FF2574E3FF163F7792040B142D307C
          E3FD2977E4FF2977E4FF6599E9FFE5EDFBFF95BCF1FF5D99EAFF5392E9FF73A7
          EDFFD1E2F9FFA4BEF0FF2876E3FF2977E4FF307CE3FD040B152D000000001D46
          7C962F7CE5FF2D79E5FF2D79E5FF3D80E4FF8DB1EDFFBBCDF3FFC4D3F4FFABC3
          F1FF6396E8FF2C78E4FF2D79E5FF2F7CE5FF1D477E9600000000000000000001
          01082D63AABF3480E6FF307CE5FF307CE5FF307CE5FF307CE5FF307CE5FF307C
          E5FF307CE5FF307CE5FF3480E6FF2D64AABF0001020800000000000000000000
          000000010208244C8098428AE6FD3480E6FF347EE6FF347EE6FF347EE6FF347E
          E6FF3480E6FF428AE6FD244D8198000102080000000000000000000000000000
          00000000000000000000060D1830274D7F973D79C6D9468BE3F9468BE3F93D79
          C6D9274E7F97060E183000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000015A451988624B1B8F0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001C16083FD09E38F9D19F38FA2119
          0943000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000302000EB28732DCDAA53BFEDAA53BFEB68A
          33DF040301100000000000000000000000000000000000000000000000000000
          00000000000000000000000000016E55209BDAA73CFDDCA73DFEDCA73DFEDAA7
          3CFD7458219E0000000100000000000000000000000000000000000000000000
          00000000000000000001281E0C4DD8A53EFCDDA83EFEDFAA3EFFDFAA3EFFDDA8
          3EFED9A53EFC2B210D4F00000001000000000000000000000000000000000000
          00000000000006040116C19338E6DFAA3FFEDFAA40FEE0AB40FFE0AB40FFDFAA
          40FEDFAA3FFEC19438E606050216000000000000000000000000000000000000
          000000000001836528ADDEAA41FDE0AB41FEE2AD42FFE2AD42FFE2AD42FFE2AD
          42FFE0AB41FEDEAA41FD846628AC000000010000000000000000000000000000
          0000372A115FDDAA42FCE2AD43FEE2AD43FEE3AE43FFE3AE43FFE3AE43FFE3AE
          43FFE2AD43FEE2AD43FEDEAA42FC372B115D0000000000000000000000000000
          00007C5F26989A772EB5C0943ADAE3AE44FEE5B045FFE5B045FFE5B045FFE5B0
          45FFE4AF45FED1A03FEBA27D30B88163279A0000000000000000000000000000
          0000000000010000000257431A81E5B046FEE6B146FFE6B146FFE6B146FFE6B1
          46FFE5B046FEA57F33BA00000002000000010000000000000000000000000000
          0000000000000000000156421B80E4B047FDE8B348FFE8B348FFE8B348FFE8B3
          48FFE6B148FEA47F33B900000001000000000000000000000000000000000000
          0000000000000000000156431B80E5B149FDE9B449FFE9B449FFE9B449FFE9B4
          49FFE8B349FEA57F34B900000001000000000000000000000000000000000000
          0000000000000000000157431C80E7B34AFDEAB54BFFEAB54BFFEAB54BFFEAB5
          4BFFE9B44BFEA68135B900000001000000000000000000000000000000000000
          0000000000000000000157441C80E8B44CFDECB74DFFECB74DFFECB74DFFECB7
          4DFFEBB64CFEA78236B900000001000000000000000000000000000000000000
          0000000000000000000158441D80EAB64EFDECB74EFEEDB84EFFEDB84EFFEDB8
          4EFFECB74EFEA98337B900000001000000000000000000000000000000000000
          000000000000000000014737186AEAB74EFCEDB84FFEEEB94FFFEEB94FFFEEB9
          4FFFEDB84FFE937331A300000001000000000000000000000000}
      end>
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
          00000000000200112A3B002B6B7D003D96AE0049B2CE004EBFDD004EBFDD0049
          B2CE003D96AE002B6B7D00112A3B000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000040A11002C
          6C7E0051C5E4005BDDFF005BDDFF005BDDFF005BDDFF005BDDFF005BDDFF005B
          DDFF005BDDFF005BDDFF005BDDFF0051C5E4002D6D7E00040A11000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000101265C6C0256CEEE025C
          DDFF025CDDFF025CDDFF025CDDFF025CDDFF025CDDFF025CDDFF025CDDFF025C
          DDFF025CDDFF025CDDFF025CDDFF025CDDFF025CDDFF0256CEEE01265D6C0000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000050C130344A2BA045DDEFF045DDEFF045D
          DEFF045DDEFF045DDEFF045DDEFF045DDEFF045DDEFF045DDEFF045DDEFF045D
          DEFF045DDEFF045DDEFF045DDEFF045DDEFF045DDEFF045DDEFF045DDEFF0344
          A2BA00050D130000000000000000000000000000000000000000000000000000
          000000000000000000000009151E0551BDD9065FDEFF065FDEFF065FDEFF065F
          DEFF065FDEFF065FDEFF065FDEFF065FDEFF065FDEFF065FDEFF065FDEFF065F
          DEFF065FDEFF065FDEFF065FDEFF065FDEFF065FDEFF065FDEFF065FDEFF065F
          DEFF0551BDD90009151D00000000000000000000000000000000000000000000
          00000000000000050D140752BDDA0860DEFF0860DEFF0860DEFF0860DEFF0860
          DEFF0860DEFF0860DEFF0860DEFF0860DEFF0860DEFF0961DEFF1166E0FF0F64
          DFFF0860DEFF0860DEFF0860DEFF0860DEFF0860DEFF0860DEFF0860DEFF0860
          DEFF0860DEFF0752BDDA00060E14000000000000000000000000000000000000
          0000000000020848A5BD0A61DFFF0A61DFFF0A61DFFF0A61DFFF0A61DFFF0A61
          DFFF0A61DFFF2271E2FF76A7EDFFB7D0F5FFE2ECFBFFFBFCFEFFFFFFFFFFFFFF
          FFFFF4F8FDFFD1E2F9FF9BBFF1FF4B8CE7FF0B62DFFF0A61DFFF0A61DFFF0A61
          DFFF0A61DFFF0A61DFFF0848A5BD000001020000000000000000000000000000
          0000052B61710C62DFFF0C62DFFF0C62DFFF0C62DFFF0C62DFFF0C62DFFF1C6D
          E1FF9DC0F2FFFAFBFEFFFFFFFFFFFFFFFFFFF9FAFDFFDEE3F7FFD3DAF5FFDBE1
          F6FFF2F4FCFFFFFFFFFFFFFFFFFFFFFFFFFFD2E2F9FF4287E6FF0C62DFFF0C62
          DFFF0C62DFFF0C62DFFF0C62DFFF052B62710000000000000000000000000006
          0E160D5FD2F10D64DFFF0D64DFFF0D64DFFF0D64DFFF0D64DFFF347CE4FFE1EC
          FBFFFFFFFFFFF1F3FCFF8FA9E9FF3E74DFFF0F57D9FF0B5ADBFF0C5CDCFF0B5A
          DBFF0B55D9FF2865DBFF6A90E4FFCED6F4FFFFFFFFFFFAFCFEFF649DEAFF0D64
          DFFF0D64DFFF0D64DFFF0D64DFFF0D5FD2F100060F1600000000000000000835
          76870F65E0FF0F65E0FF0F65E0FF0F65E0FF0F65E0FF2573E2FFE5EEFBFFFFFF
          FFFFB8C9F1FF2165DCFF0F65DFFF0F65E0FF0F65E0FF0F65E0FF0F65E0FF0F65
          E0FF0F65E0FF0F65E0FF0F65E0FF0F5EDCFF7296E5FFFBFCFEFFFAFCFEFF4589
          E7FF0F65E0FF0F65E0FF0F65E0FF0F65E0FF083576870000000000010205105E
          CDEA1166E0FF1166E0FF1166E0FF1166E0FF1166E0FFAECBF4FFFFFFFFFFB5C8
          F1FF1363DEFF176AE0FF6EA2ECFFA9C8F3FFA2C3F2FF5B96E9FF1367E0FF79AA
          EDFFABC9F4FF9CC0F2FF649CEAFF186BE0FF1165DFFF5785E1FF8EA7E8FF6792
          E5FF1166E0FF1166E0FF1166E0FF1166E0FF105ECDEA00010205041835461368
          E0FF1368E0FF1368E0FF1368E0FF1368E0FF357EE5FFFDFEFEFFEEF1FBFF236C
          E0FF1D6EE1FFCADDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E2F9FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3EDFBFF5190E8FF1368E0FF1368E0FF1368
          E0FF1368E0FF1368E0FF1368E0FF1368E0FF1368E0FF051A38460B3878891569
          E1FF1569E1FF1569E1FF1569E1FF1569E1FF85B1EFFFFFFFFFFF91B4EEFF1569
          E1FF8FB7F0FFFFFFFFFFFFFFFFFF97B1ECFF4579E0FF81A0E7FFFAFBFDFFFFFF
          FFFFFFFFFFFFBECDF2FFA3B7ECFFFEFEFEFFFBFCFEFF5D98EAFF1569E1FF1569
          E1FF1569E1FF1569E1FF1569E1FF1569E1FF1569E1FF0B387889114DA4BA176A
          E1FF176AE1FF176AE1FF176AE1FF176AE1FFB7D1F5FFFFFFFFFF508DE6FF176A
          E1FFDEEAFAFFFFFFFFFFDAE3F8FF1768DFFF176AE1FF176AE0FF739BE7FFFFFF
          FFFFFFFFFFFF98BDF1FF1668DFFF648EE3FFFDFDFEFFF2F7FDFF317BE4FF176A
          E1FF176AE1FF176AE1FF176AE1FF176AE1FF176AE1FF114DA4BA165DC1DB196C
          E1FF196CE1FF196CE1FF196CE1FF196CE1FFD1E2F9FFFFFFFFFF327BE4FF196C
          E1FFF9FBFEFFFFFFFFFFB3CDF4FF196CE1FF196CE1FF196CE1FF1A6AE0FFDFE7
          F9FFFFFFFFFFC8DBF7FF196CE1FF186BE1FF95B1ECFFFFFFFFFFA4C5F3FF196C
          E1FF196CE1FF196CE1FF196CE1FF196CE1FF196CE1FF165DC1DB1965D1EC1B6D
          E2FF1B6DE2FF1B6DE2FF1B6DE2FF1B6DE2FFD6E5F9FFFFFFFFFF317BE4FF1B6D
          E2FFEFF4FCFFFFFFFFFFBCD4F6FF1B6DE2FF1B6DE2FF1B6DE2FF1B6DE2FF9ABA
          F0FFFFFFFFFFF5F8FDFF1E6FE2FF1B6DE2FF2770E0FFF4F6FCFFF3F7FDFF2070
          E2FF1B6DE2FF1B6DE2FF1B6DE2FF1B6DE2FF1B6DE2FF1965D1EC1D68D2ED1D6E
          E2FF1D6EE2FF1D6EE2FF1D6EE2FF1D6EE2FFC8DBF7FFFFFFFFFF468AE7FF1D6E
          E2FFC7D8F6FFFFFFFFFFE6EFFBFF1D6FE2FF1D6EE2FF1D6EE2FF1D6EE2FF74A5
          ECFFFFFFFFFFFFFFFFFF468AE7FF1D6EE2FF1D6EE2FFBBCFF4FFFFFFFFFF478A
          E7FF1D6EE2FF1D6EE2FF1D6EE2FF1D6EE2FF1D6EE2FF1D68D2ED1E64C5DE1E70
          E2FF1E70E2FF1E70E2FF1E70E2FF1E70E2FFA7C5F2FFFFFFFFFF72A5EDFF1E70
          E2FF7DA8ECFFFFFFFFFFFFFFFFFF5694E9FF1E70E2FF1E70E2FF1E70E2FF73A7
          EDFFFFFFFFFFFFFFFFFF77A9EDFF1E70E2FF1E70E2FF9FC1F2FFFFFFFFFF5C98
          EAFF1E70E2FF1E70E2FF1E70E2FF1E70E2FF1E70E2FF1E64C5DE1D58AABF2071
          E3FF2071E3FF2071E3FF2071E3FF2071E3FF70A1EBFFFFFFFFFFB6D0F5FF2071
          E3FF2A73E2FFE8EDFAFFFFFFFFFFD6E5F9FF2C78E4FF2071E3FF2071E3FFB2CE
          F5FFFFFFFFFFFFFFFFFFA8C7F4FF2071E3FF2071E3FFAAC8F4FFFFFFFFFF5491
          E8FF2071E3FF2071E3FF2071E3FF2071E3FF2071E3FF1D59AABF154280902575
          E3FF2272E3FF2272E3FF2272E3FF2272E3FF2E76E3FFF4F7FDFFFAFCFEFF3E84
          E6FF2272E3FF588CE5FFFAFAFDFFFFFFFFFFDFEAFAFF92BAF1FFB3CEF5FFFEFE
          FEFFFFFFFFFFFFFFFFFFD7E5F9FF2272E3FF2272E3FFD9E7FAFFFEFEFEFF337A
          E3FF2272E3FF2272E3FF2272E3FF2272E3FF2575E3FF164280900A20404F2E7D
          E5FF2473E3FF2473E3FF2473E3FF2473E3FF2473E3FF97B6EFFFFFFFFFFFBFD6
          F6FF2574E3FF2473E3FF5587E4FFE1E7F9FFFFFFFFFFFFFFFFFFFFFFFFFFC4D1
          F3FFBDCFF3FFFFFFFFFFFCFDFEFF2E7AE4FF5A97EAFFFFFFFFFFCEDBF6FF2473
          E3FF2473E3FF2473E3FF2473E3FF2473E3FF2E7DE5FF0A22434F00020509307A
          D9F12675E4FF2675E4FF2675E4FF2675E4FF2675E4FF2E75E3FFDEE6F9FFFFFF
          FFFFA4C5F3FF2876E4FF2675E4FF246BDFFF5285E3FF6A94E5FF5083E2FF236D
          E0FF2E71E0FF3670DEFF3670DEFF3C82E5FFE1ECFBFFFFFFFFFF6A99E8FF2675
          E4FF2675E4FF2675E4FF2675E4FF2675E4FF307AD9F100020509000000001B47
          8494317EE5FF2876E4FF2876E4FF2876E4FF2876E4FF2876E4FF4481E3FFE9EE
          FAFFFFFFFFFFCBDEF8FF5493E9FF2876E4FF2876E4FF2876E4FF2876E4FF2876
          E4FF2876E4FF2876E4FF639DEBFFE3EDFBFFFFFFFFFFB2C5F0FF2673E2FF2876
          E4FF2876E4FF2876E4FF2876E4FF317EE5FF1B4784940000000000000000040B
          161F3B84E1F82A77E4FF2A77E4FF2A77E4FF2A77E4FF2A77E4FF2A77E4FF3F7B
          E2FFCDD8F5FFFFFFFFFFFFFFFFFFD9E6FAFFA3C4F3FF85B1EFFF79ABEEFF83B0
          EFFFA2C4F3FFDCE9FAFFFFFFFFFFFFFFFFFFB1C3F0FF2C72E1FF2A77E4FF2A77
          E4FF2A77E4FF2A77E4FF2A77E4FF3B84E1F8040C171F00000000000000000000
          0000194077853D89E8FF2C79E5FF2C79E5FF2C79E5FF2C79E5FF2C79E5FF2C79
          E5FF2971E2FF6F98E7FFD0DAF5FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD1DAF5FF6791E5FF2872E2FF2C79E5FF2C79E5FF2C79
          E5FF2C79E5FF2C79E5FF3D89E8FF194076840000000000000000000000000000
          000000020407316DBBCF3985E7FF2E7AE5FF2E7AE5FF2E7AE5FF2E7AE5FF2E7A
          E5FF2E7AE5FF2E7AE5FF2972E2FF3C76E0FF6993E6FF83A3E9FF8DA9EAFF86A5
          E9FF6D95E6FF4077E0FF2870E1FF2E7AE5FF2E7AE5FF2E7AE5FF2E7AE5FF2E7A
          E5FF2E7AE5FF3985E7FF316DBBCF000204070000000000000000000000000000
          000000000000050D19213E81D4E83985E7FF2F7BE5FF2F7BE5FF2F7BE5FF2F7B
          E5FF2F7BE5FF2F7BE5FF2F7BE5FF2F7BE5FF2F7BE5FF2F7BE5FF2F7BE5FF2F7B
          E5FF2F7BE5FF2F7BE5FF2F7BE5FF2F7BE5FF2F7BE5FF2F7BE5FF2F7BE5FF2F7B
          E5FF3985E7FF3E81D4E8050E1A21000000000000000000000000000000000000
          000000000000000000000814262E4183D4E8408AE8FF317DE6FF317DE6FF317D
          E6FF317DE6FF317DE6FF317DE6FF317DE6FF317DE6FF317DE6FF317DE6FF317D
          E6FF317DE6FF317DE6FF317DE6FF317DE6FF317DE6FF317DE6FF317DE6FF408A
          E8FF4183D4E80815262E00000000000000000000000000000000000000000000
          0000000000000000000000000000050E1A223873BFD14D95EAFF3580E6FF337E
          E6FF337EE6FF337EE6FF337EE6FF337EE6FF337EE6FF337EE6FF337EE6FF337E
          E6FF337EE6FF337EE6FF337EE6FF337EE6FF337EE6FF3580E6FF4D95EAFF3873
          BFD1060F1B220000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010205081F477C8A5195E6FA4C93
          EAFF3782E6FF3580E6FF3580E6FF3580E6FF3580E6FF3580E6FF3580E6FF3580
          E6FF3580E6FF3580E6FF3580E6FF3782E6FF4C93EAFF5195E6FA1F477C8A0102
          0508000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000060F1B242753
          8D9C5193E2F5569AECFF4D93EBFF4089E8FF3882E7FF3781E7FF3781E7FF3882
          E7FF4089E8FF4D93EBFF569AECFF5193E2F527538D9C06101C24000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000205080E132C4D5927548D9B3E76BBCC508EDAEC5699E9FC5699E9FC508E
          DAEC3E76BBCC27548D9B132C4E590205090E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001000003846525B48D6C28BF0201
          0005000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000014E3C176ED3A138FDD4A238FD5A45
          1A7C000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000018130729C59636F4D9A439FED9A439FEC99A
          36F7201909320000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000020100059A752CC8D9A43AFED9A43AFED9A43AFED9A4
          3AFEA37C2ED10303010800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000015D471B7FD8A43AFDDAA53BFEDCA73BFFDCA73BFFDAA5
          3BFED8A43AFD664E1D8900000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000221A0A36CD9C39F8DBA63BFEDCA73CFFDDA83CFFDDA83CFFDCA7
          3CFFDBA63BFED09F39FA29200C3D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000403010AA88031D5DCA73CFEDCA73CFEDDA83DFFDDA83DFFDDA83DFFDDA8
          3DFFDCA73CFEDCA73CFEAC8432DA0605020D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00016C542091DAA73DFDDCA73DFEDEA93EFFDEA93EFFDEA93EFFDEA93EFFDEA9
          3EFFDEA93EFFDCA73DFEDBA73DFD715722970000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002E24
          0E45D3A23CFBDDA83EFEDEAA3EFFDFAA3EFFDFAA3EFFDFAA3EFFDFAA3EFFDFAA
          3EFFDFAA3EFFDFAA3EFFDDA83EFED4A33DFC3327104900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000008060211B48A
          36E0DEA93EFEDEA93FFEE0AB3FFFE0AB3FFFE0AB3FFFE0AB3FFFE0AB3FFFE0AB
          3FFFE0AB3FFFE0AB3FFFDEA93FFEDEA93EFEB68C36E20A070312000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000017C5F26A2DDA8
          3FFDDFAA3FFEE0AB40FFE0AB40FFE0AB40FFE0AB40FFE0AB40FFE0AB40FFE0AB
          40FFE0AB40FFE0AB40FFE0AB40FFDFAA3FFEDDA83FFD7E6127A5000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000013B2E1354D9A73FFDDFAA
          40FEE1AC41FFE1AC41FFE1AC41FFE1AC41FFE1AC41FFE1AC41FFE1AC41FFE1AC
          41FFE1AC41FFE1AC41FFE1AC41FFE1AC41FFDFAA40FED9A73FFD3D3013550000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000E0B0419C0933AE9E0AB41FEE1AC
          41FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE2AD
          42FFE2AD42FFE2AD42FFE2AD42FFE2AD42FFE1AC41FFE0AB41FEC0933AE90F0B
          0419000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000018B6C2CB3DFAA41FDE1AC42FEE3AE
          42FFE3AE42FFE3AE42FFE3AE42FFE3AE42FFE3AE42FFE3AE42FFE3AE42FFE3AE
          42FFE3AE42FFE3AE42FFE3AE42FFE3AE42FFE3AE42FFE1AC42FEDFAA41FD8B6B
          2BB2000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000014A3A1866DCA942FDE2AD42FEE3AE43FFE3AE
          43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE
          43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE3AE43FFE2AD42FEDCA9
          42FD493917630000000100000000000000000000000000000000000000000000
          0000000000000000000016110724CA9C3FF1E2AD43FEE3AF44FFE4AF44FFE4AF
          44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF
          44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE4AF44FFE3AF44FFE2AD
          43FEC89A3DEF1510072100000000000000000000000000000000000000000000
          000000000000000000008F6F2DB5E1AD43FCE2AD44FDE2AD44FDE3AE44FEE3AE
          44FEE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B0
          45FFE5B045FFE5B045FFE5B045FFE5B045FFE4AF45FEE4AF45FEE3AE45FDE2AD
          44FDE1AD43FC8D6D2DB200000000000000000000000000000000000000000000
          00000000000000000000372A10455A441B6D5B461B6F5B461C6F624B1D72E3AE
          45FDE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B045FFE5B0
          45FFE5B045FFE5B045FFE5B045FFE5B045FFE4AF45FEA17B31B4664E1F73654E
          1E73644D1E723F31134B00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010000000103020007E1AD
          44FCE6B146FFE6B146FFE6B146FFE6B146FFE6B146FFE6B146FFE6B146FFE6B1
          46FFE6B146FFE6B146FFE6B146FFE6B146FFE4AF46FD69512077000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020006E1AE
          45FCE7B247FFE7B247FFE7B247FFE7B247FFE7B247FFE7B247FFE7B247FFE7B2
          47FFE7B247FFE7B247FFE7B247FFE7B247FFE5B047FD69512077000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020006E2AF
          46FCE8B348FFE8B348FFE8B348FFE8B348FFE8B348FFE8B348FFE8B348FFE8B3
          48FFE8B348FFE8B348FFE8B348FFE8B348FFE5B048FD69512177000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020006E3B0
          47FCE8B349FFE8B349FFE8B349FFE8B349FFE8B349FFE8B349FFE8B349FFE8B3
          49FFE8B349FFE8B349FFE8B349FFE8B349FFE6B148FD69512177000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020006E3B0
          48FCE9B449FFE9B449FFE9B449FFE9B449FFE9B449FFE9B449FFE9B449FFE9B4
          49FFE9B449FFE9B449FFE9B449FFE9B449FFE7B249FD6A522177000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020006E4B1
          48FCEAB54AFFEAB54AFFEAB54AFFEAB54AFFEAB54AFFEAB54AFFEAB54AFFEAB5
          4AFFEAB54AFFEAB54AFFEAB54AFFEAB54AFFE7B24AFD6A522177000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020006E5B2
          49FCEAB54BFFEAB54BFFEAB54BFFEAB54BFFEAB54BFFEAB54BFFEAB54BFFEAB5
          4BFFEAB54BFFEAB54BFFEAB54BFFEAB54BFFE8B34BFD6A522277000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020006E5B2
          4AFCEBB64CFFEBB64CFFEBB64CFFEBB64CFFEBB64CFFEBB64CFFEBB64CFFEBB6
          4CFFEBB64CFFEBB64CFFEBB64CFFEBB64CFFE9B44BFD6B532277000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020006E6B3
          4BFCECB74DFFECB74DFFECB74DFFECB74DFFECB74DFFECB74DFFECB74DFFECB7
          4DFFECB74DFFECB74DFFECB74DFFECB74DFFEAB54CFD6B532277000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020006E7B4
          4CFCEDB84DFFEDB84DFFEDB84DFFEDB84DFFEDB84DFFEDB84DFFEDB84DFFEDB8
          4DFFEDB84DFFEDB84DFFEDB84DFFEDB84DFFEAB54DFD6C542377000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020006E8B5
          4CFCEDB84EFFEDB84EFFEDB84EFFEDB84EFFEDB84EFFEDB84EFFEDB84EFFEDB8
          4EFFEDB84EFFEDB84EFFEDB84EFFEDB84EFFEBB64EFD6C542377000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020006E8B5
          4DFCEEB94FFFEEB94FFFEEB94FFFEEB94FFFEEB94FFFEEB94FFFEEB94FFFEEB9
          4FFFEEB94FFFEEB94FFFEEB94FFFEEB94FFFECB74FFD6C542477000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002010005E9B6
          4EFCEEB94FFEEEB950FEEFBA50FFEFBA50FFEFBA50FFEFBA50FFEFBA50FFEFBA
          50FFEFBA50FFEFBA50FFEFBA50FFEEB950FEECB74FFD6C542476000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000019C7A
          34A8ECB84FFCEEB950FEEFBA50FFEFBA50FFEFBA50FFEFBA50FFEFBA50FFEFBA
          50FFEFBA50FFEFBA50FFEFBA50FFEEB950FED8A849E72D230F34000000000000
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
    Left = 135
    Top = 230
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
      FloatLeft = 834
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
          ItemName = 'btnHide'
        end
        item
          Visible = True
          ItemName = 'btnEmail'
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
    object btnEmail: TdxBarLargeButton
      Action = actEmail
      Category = 0
      ScreenTip = tipEmail
      AutoGrayScale = False
    end
    object btnHide: TdxBarLargeButton
      Action = actHide
      Category = 0
      ScreenTip = tipHide
      AutoGrayScale = False
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
    Left = 45
    Top = 275
    PixelsPerInch = 96
    object tipClose: TdxScreenTip
      Header.Text = 'Close'
      Description.Text = 'Close customer contact info'
    end
    object tipEmail: TdxScreenTip
      Header.Text = 'Email'
      Description.Text = 'Send an email to:'
      Width = 350
    end
    object tipHide: TdxScreenTip
      Header.Text = 'Hide'
      Description.Text = 'Hide contact detail form'
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
    Left = 135
    Top = 274
  end
  object styReadOnly: TcxEditStyleController
    Style.Color = 13434879
    Left = 220
    Top = 275
    PixelsPerInch = 96
  end
  object popEmail: TPopupMenu
    Images = img16
    Left = 290
    Top = 275
    object mnuEmail: TMenuItem
      Action = actEmail
    end
    object Hide1: TMenuItem
      Action = actHide
    end
    object mnuClose: TMenuItem
      Action = actClose
    end
  end
end
