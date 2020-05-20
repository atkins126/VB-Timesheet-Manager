inherited CustomerSearchFrm: TCustomerSearchFrm
  Caption = 'CustomerSearchFrm'
  ClientHeight = 767
  ClientWidth = 1323
  ExplicitWidth = 1339
  ExplicitHeight = 806
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 1221
    Height = 716
    ExplicitWidth = 1221
    ExplicitHeight = 716
    object docToolbar: TdxBarDockControl [0]
      Left = 11
      Top = 11
      Width = 1199
      Height = 58
      Align = dalNone
      BarManager = barManager
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
  end
  object grdCustomer: TcxGrid [1]
    Left = 20
    Top = 75
    Width = 535
    Height = 313
    TabOrder = 1
    object viewCustomer: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.ApplyInputDelay = 600
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.ShowCloseButton = False
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = LookupDM.dtsCustomer
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
      OptionsView.NoDataToDisplayInfoText = '<No Customer data to display>'
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Customer Listing'
        end>
      object edtCustomerID: TcxGridDBBandedColumn
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
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object lucCustomerType: TcxGridDBBandedColumn
        Caption = 'Customer Type'
        DataBinding.FieldName = 'CUSTOMER_TYPE_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Customer Type'
            Width = 200
            FieldName = 'NAME'
          end>
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 200
        Options.Editing = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object edtName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        MinWidth = 400
        Options.Editing = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 400
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object edtFirstName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FIRST_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 160
        Options.Editing = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 160
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object edtlastName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LAST_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 160
        Options.Editing = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 160
        Position.BandIndex = 0
        Position.ColIndex = 4
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
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object lucStatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUS_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 80
        Options.Editing = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cbxIsActive: TcxGridDBBandedColumn
        Caption = 'Active'
        DataBinding.FieldName = 'IS_ACTIVE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.Editing = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object viewContactDetail: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
        end>
    end
    object lvlCustomer: TcxGridLevel
      GridView = viewCustomer
      object lvlContactDetail: TcxGridLevel
        GridView = viewContactDetail
      end
    end
  end
  object grdVCustomer: TcxDBVerticalGrid [2]
    Left = 569
    Top = 75
    Width = 444
    Height = 267
    OptionsView.ScrollBars = ssVertical
    OptionsView.RowHeaderWidth = 146
    OptionsData.CancelOnExit = False
    OptionsData.Editing = False
    OptionsData.Appending = False
    OptionsData.Deleting = False
    OptionsData.DeletingConfirmation = False
    OptionsData.Inserting = False
    Navigator.Buttons.CustomButtons = <>
    ScrollbarAnnotations.CustomAnnotations = <>
    TabOrder = 2
    DataController.DataSource = LookupDM.dtsCustomer
    Version = 1
    object grpGeneralInformation: TcxCategoryRow
      Properties.Caption = 'General Information'
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object edtVCustomerName: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'NAME'
      ID = 1
      ParentID = 0
      Index = 0
      Version = 1
    end
    object lucVCustomerType: TcxDBEditorRow
      Properties.Caption = 'Customer Type'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.KeyFieldNames = 'ID'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.DataBinding.FieldName = 'CUSTOMER_TYPE_ID'
      ID = 2
      ParentID = 0
      Index = 1
      Version = 1
    end
    object edtVComapnyNo: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'CO_NO'
      ID = 3
      ParentID = 0
      Index = 2
      Version = 1
    end
    object lucVStatus: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.KeyFieldNames = 'ID'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.DataBinding.FieldName = 'STATUS_ID'
      ID = 4
      ParentID = 0
      Index = 3
      Version = 1
    end
    object edtVTradingAs: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'TRADING_AS'
      ID = 5
      ParentID = 0
      Index = 4
      Version = 1
    end
    object edtVBillTo: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'BILL_TO'
      ID = 6
      ParentID = 0
      Index = 5
      Version = 1
    end
    object cbxVActive: TcxDBEditorRow
      Properties.Caption = 'Active'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.Alignment = taLeftJustify
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 1
      Properties.EditProperties.ValueUnchecked = 0
      Properties.DataBinding.FieldName = 'IS_ACTIVE'
      ID = 7
      ParentID = 0
      Index = 6
      Version = 1
    end
    object grpTaxInformation: TcxCategoryRow
      Properties.Caption = 'Tax Information'
      ID = 8
      ParentID = -1
      Index = 1
      Version = 1
    end
    object lucVYearEndmonth: TcxDBEditorRow
      Properties.Caption = 'Year End Month'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'ID'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.DataBinding.FieldName = 'YEAR_END_MONTH_ID'
      ID = 9
      ParentID = 8
      Index = 0
      Version = 1
    end
    object edtVTaxNo: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'TAX_NO'
      ID = 10
      ParentID = 8
      Index = 1
      Version = 1
    end
    object lucVTaxOffice: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'ID'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.DataBinding.FieldName = 'TAX_OFFICE_ID'
      ID = 11
      ParentID = 8
      Index = 2
      Version = 1
    end
    object lucVARMonth: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'ID'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.DataBinding.FieldName = 'AR_MONTH_ID'
      ID = 12
      ParentID = 8
      Index = 3
      Version = 1
    end
    object grpVATInformation: TcxCategoryRow
      Properties.Caption = 'VAT Information'
      ID = 13
      ParentID = -1
      Index = 2
      Version = 1
    end
    object edtVVATNo: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'VAT_NO'
      ID = 14
      ParentID = 13
      Index = 0
      Version = 1
    end
    object lucVVATOffice: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'ID'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.DataBinding.FieldName = 'VAT_OFFICE_ID'
      ID = 15
      ParentID = 13
      Index = 1
      Version = 1
    end
    object lucVVATMonth: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'ID'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.DataBinding.FieldName = 'VAT_MONTH_ID'
      ID = 16
      ParentID = 13
      Index = 2
      Version = 1
    end
    object lucVCountry: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'ID'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NAME'
        end
        item
          Width = 70
          FieldName = 'DIALING_CODE'
        end>
      Properties.DataBinding.FieldName = 'VAT_COUNTRY_ID'
      ID = 17
      ParentID = 13
      Index = 3
      Version = 1
    end
    object edtVCustomsCode: TcxDBEditorRow
      Properties.Caption = 'Customs Code'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'Text'
      ID = 18
      ParentID = 13
      Index = 4
      Version = 1
    end
    object grpSARS: TcxCategoryRow
      Properties.Caption = 'SARS'
      ID = 19
      ParentID = -1
      Index = 3
      Version = 1
    end
    object edtVPAYENo: TcxDBEditorRow
      Properties.Caption = 'PAYE No'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'PAYE_UIF_NO'
      ID = 20
      ParentID = 19
      Index = 0
      Version = 1
    end
    object edtUIFNo: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'UIF_NO'
      ID = 21
      ParentID = 19
      Index = 1
      Version = 1
    end
    object edtVSDLNo: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'SDL_NO'
      ID = 22
      ParentID = 19
      Index = 2
      Version = 1
    end
    object edtVWCNo: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'WC_NO'
      ID = 23
      ParentID = 19
      Index = 3
      Version = 1
    end
    object lucARCompletionDate: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.EditProperties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditProperties.EditFormat = 'dd/MM/yyyy'
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.SaveTime = False
      Properties.EditProperties.ShowTime = False
      Properties.DataBinding.FieldName = 'AR_COMPLETION_DATE'
      ID = 24
      ParentID = 19
      Index = 4
      Version = 1
    end
    object edtVEFiling: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'EFILING'
      ID = 25
      ParentID = 19
      Index = 5
      Version = 1
    end
    object edtVEFUserName: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'EF_USER_NAME'
      ID = 26
      ParentID = 19
      Index = 6
      Version = 1
    end
    object edtVEFPassword: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'EF_PASSWORD'
      ID = 27
      ParentID = 19
      Index = 7
      Version = 1
    end
    object grpMiscellaneous: TcxCategoryRow
      Properties.Caption = 'Miscellaneous'
      ID = 28
      ParentID = -1
      Index = 4
      Version = 1
    end
    object edtVPastelAccCode: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'PASTEL_ACC_CODE'
      ID = 29
      ParentID = 28
      Index = 0
      Version = 1
    end
    object edtVVBTaxCode: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'VB_TAX_ACC_CODE'
      ID = 30
      ParentID = 28
      Index = 1
      Version = 1
    end
    object lucCreated: TcxDBEditorRow
      Options.Moving = False
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.EditProperties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditProperties.EditFormat = 'dd/MM/yyyy'
      Properties.EditProperties.ReadOnly = True
      Properties.EditProperties.SaveTime = False
      Properties.EditProperties.ShowTime = False
      Properties.DataBinding.FieldName = 'DATE_CREATED'
      ID = 31
      ParentID = 28
      Index = 2
      Version = 1
    end
    object lucModified: TcxDBEditorRow
      Options.Moving = False
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.EditProperties.DisplayFormat = 'dd/MM/yyyy'
      Properties.EditProperties.EditFormat = 'dd/MM/yyyy'
      Properties.EditProperties.ReadOnly = True
      Properties.EditProperties.SaveTime = False
      Properties.EditProperties.ShowTime = False
      Properties.DataBinding.FieldName = 'DATE_MODIFIED'
      ID = 32
      ParentID = 28
      Index = 3
      Version = 1
    end
    object grpPersonAttribute: TcxCategoryRow
      Properties.Caption = 'Person Attibutes'
      ID = 33
      ParentID = -1
      Index = 5
      Version = 1
    end
    object cbxVProvTaxPayer: TcxDBEditorRow
      Properties.Caption = 'Prov Tax Payer'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.Alignment = taLeftJustify
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 1
      Properties.EditProperties.ValueUnchecked = 0
      Properties.DataBinding.FieldName = 'IS_PROV_TAX_PAYER'
      ID = 34
      ParentID = 33
      Index = 0
      Version = 1
    end
    object cbxVLivingWill: TcxDBEditorRow
      Properties.Caption = 'Living Will'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.Alignment = taLeftJustify
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 1
      Properties.EditProperties.ValueUnchecked = 0
      Properties.DataBinding.FieldName = 'HAS_LIVING_WILL'
      ID = 35
      ParentID = 33
      Index = 1
      Version = 1
    end
    object cbxOrganDonor: TcxDBEditorRow
      Properties.Caption = 'Org Donor'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.Alignment = taLeftJustify
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 1
      Properties.EditProperties.ValueUnchecked = 0
      Properties.DataBinding.FieldName = 'IS_ORGAN_DONOR'
      ID = 36
      ParentID = 33
      Index = 2
      Version = 1
    end
  end
  object grdContactDetailCo: TcxGrid [3]
    Left = 20
    Top = 394
    Width = 390
    Height = 170
    TabOrder = 3
    object viewContactDetailCo: TcxGridDBBandedTableView
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
        DataBinding.FieldName = 'CONTACT_TYPE_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
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
  object grdContactPerson: TcxGrid [4]
    Left = 430
    Top = 394
    Width = 451
    Height = 170
    TabOrder = 4
    object viewContactPerson: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Hint = 'Add a new  contact person'
      Navigator.Buttons.Insert.ImageIndex = 9
      Navigator.Buttons.Delete.Hint = 'Delete selected contact person'
      Navigator.Buttons.Delete.ImageIndex = 10
      Navigator.Buttons.Edit.Hint = 'Edit selected contact person'
      Navigator.Buttons.Edit.ImageIndex = 13
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Hint = 'Refresh contact persons'
      Navigator.Buttons.Refresh.ImageIndex = 14
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Contact Persons'
        end>
      object edtCPID: TcxGridDBBandedColumn
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
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object edtCCustomerID: TcxGridDBBandedColumn
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
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cbxCPPrimaryContact: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IS_PRIMARY_CONTACT'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ImmediatePost = True
        Properties.ReadOnly = True
        Properties.UseAlignmentWhenInplace = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Moving = False
        Width = 35
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object lucCPSalutation: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALUTATION_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ReadOnly = True
        Options.Filtering = False
        Options.Moving = False
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object edtCPFirstName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FIRST_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Options.Moving = False
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object edtCPLastName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LAST_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Options.Moving = False
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object edtCPInitials: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INITIALS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        Options.Moving = False
        Width = 45
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object edtCPOtherName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OTHER_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        Options.Moving = False
        Width = 180
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object lucCPDOB: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DOB'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ImmediatePost = True
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        Visible = False
        Options.Moving = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object edtCPIDNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID_NUMBER'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        Options.Moving = False
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object edtCPPassportNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PASSPORT_NUMBER'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        Options.Moving = False
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object lucCPJobFunction: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JOB_FUNCTION_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ReadOnly = True
        Visible = False
        Options.Moving = False
        Width = 210
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
    object lvlContactPerson: TcxGridLevel
      GridView = viewContactPerson
    end
  end
  object grdCPContactDetail: TcxGrid [5]
    Tag = 3
    Left = 898
    Top = 394
    Width = 390
    Height = 120
    TabOrder = 5
    object viewCPContactDetail: TcxGridDBBandedTableView
      Tag = 3
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Hint = 'Add a new contact detail'
      Navigator.Buttons.Insert.ImageIndex = 9
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Delete.Hint = 'Delete selected contact detail'
      Navigator.Buttons.Delete.ImageIndex = 10
      Navigator.Buttons.Edit.Hint = 'Edit selected contact detail'
      Navigator.Buttons.Edit.ImageIndex = 13
      Navigator.Buttons.Post.Hint = 'Save changes'
      Navigator.Buttons.Post.ImageIndex = 11
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Hint = 'Cancle changes'
      Navigator.Buttons.Cancel.ImageIndex = 12
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Hint = 'Refresh contact details'
      Navigator.Buttons.Refresh.ImageIndex = 14
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
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
      object edtCPContactDetailID: TcxGridDBBandedColumn
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
      object edtCPContactDetailContactPersonID: TcxGridDBBandedColumn
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
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object edtCPContactDetailCustomerID: TcxGridDBBandedColumn
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
      object lucCPContactDetailTypeID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONTACT_TYPE_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ReadOnly = True
        MinWidth = 130
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object edtwCPContactDetailValue: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object lvlCPContactDetail: TcxGridLevel
      GridView = viewCPContactDetail
    end
  end
  object grdTimesheet: TcxGrid [6]
    Left = 1164
    Top = 75
    Width = 1344
    Height = 574
    TabOrder = 6
    object viewTimesheet: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeButtonAlignment = fbaLeft
      ScrollbarAnnotations.CustomAnnotations = <>
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
        MinWidth = 64
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
        MinWidth = 64
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
        MinWidth = 64
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
      object edtDateCFwdReleased: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DATE_CFWD_RELEASED'
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
      object edtReleaseCFwdToPeriod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RELEASE_CFWD_TO_PERIOD'
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
  inherited styRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Images = img32
    object actClose: TAction
      Caption = 'Close'
      ImageIndex = 0
      OnExecute = DoCloseForm
    end
    object actEmail: TAction
      Caption = 'Email'
      ImageIndex = 1
      OnExecute = DoEmailCustomer
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000012C1F0856674914B1866019E1936A1CF7986D
          1DFD986E1DFE996D1DFF986D1CFF986C1CFF986B1CFF976B1BFF966B1BFF9569
          1AFF946819FF936719FF916618FF8F6517FE8E6216FD895F16F77B5513E15E40
          0DB1271B06560000000100000000000000000000000000000000000000000000
          0000000000000403000D6D4E15B9A0731FFFA0731FFFA0731FFFA0731FFFA073
          1FFFA0731FFF9F731FFF9F721EFF9F711EFF9E711EFF9D701DFF9C701DFF9B6E
          1CFF9A6D1BFF986C1AFF976B1AFF966919FF956818FF946717FF926616FF9064
          16FF8F6315FF61430FB90403000D000000000000000000000000000000000000
          0000000000016F5016B9A37520FFA37620FFA47620FFA47620FFA47620FFA476
          20FFA37620FFA37520FFA37520FFA2741FFFA1741FFFA0731FFF9F721EFF9D71
          1DFF9C701DFF9B6E1CFF9A6D1BFF996B1AFF976A19FF966918FF946818FF9266
          17FF916416FF906316FF61430FB9000000010000000000000000000000000000
          00002E210957A67821FFA67821FFA77921FFA77922FFA77922FFA77922FFA779
          22FFA77921FFA67821FFA57821FFA57821FFA47721FFA37620FFA17520FFA073
          1FFF9F721EFF9E711DFF9D6F1CFF9B6E1BFF996D1BFF986B1AFF966919FF9568
          18FF936617FF926517FF906316FF291C06560000000000000000000000000000
          00006D5016B1A97C23FFA97C23FFAA7D23FFAA7D23FFAA7D23FFAA7D24FFAA7D
          23FFAA7D23FFA97C23FFA87C23FFA87B22FFA77A22FFA67922FFA57721FFA476
          20FFA27520FFA1731FFF9F721EFF9D711DFF9C6F1CFF9B6D1BFF996B1AFF976A
          19FF956818FF936717FF926517FF5F410EB10000000000000000000000000000
          0000916B1EE1AC8024FFAD8025FFAD8125FFAE8125FFAE8225FFAE8125FFAE81
          25FFAD8125FFAD8025FFAC8024FFAC7E24FFB18731FFB48D3EFFAF8532FFA779
          22FFA57821FFA47620FFA2751FFFA1731EFF9F711DFF9D6F1CFF9B6D1BFF996C
          1AFF986A19FF966918FF946717FF7C5614E10000000000000000000000000000
          0000A37923F6B08326FFB08326FFB18427FFB18427FFB28527FFB28527FFB184
          27FFB18427FFB58B33FFD8C294FFF5EFE2FFFFFFFFFFFFFFFFFFFFFFFFFFF9F5
          EEFFE1D1B1FFB48D40FFA57720FFA3751FFFA1731EFF9F721DFF9E701CFF9C6E
          1BFF996C1AFF976A19FF966818FF8B6116F60000000000000000000000000000
          0000AC8126FDB38628FFB48728FFB58729FFB58829FFB58829FFB58829FFB588
          29FFC39F51FFF7F2E7FFFEFEFEFFEDE2CAFFD6BD8AFFCBAE6FFFCCB074FFD8C3
          96FFF0E8D7FFBB964DFFA87A22FFA67820FFA4761FFFA2741EFFA0721DFF9E70
          1CFF9C6E1BFF9A6C1AFF986B19FF916517FD0000000000000000000000000000
          0000B18529FEB78A2AFFB88B2AFFB98C2BFFBA8C2BFFBA8C2BFFBA8C2BFFC29A
          43FFF9F6EEFFFBF8F2FFCDAD66FFB6892AFFB48729FFB38628FFB28427FFB082
          26FFAF8125FFAD8024FFAA7D23FFA87A22FFA67820FFA4761FFFA2741EFFA072
          1DFF9E701CFF9C6E1BFF9A6C1AFF956818FF0000000000000000000000000000
          0000B6892BFFBB8E2CFFBD8F2DFFBD8F2DFFBE902DFFBE902DFFBE902DFFEADC
          BBFFFEFEFEFFCFAE65FFBB8D2CFFBD9133FFC49D4BFFB98C2FFFB58729FFB386
          28FFB68C33FFBB9545FFAF8228FFAB7D23FFA97B22FFA77920FFA5771FFFA274
          1FFFA0721DFF9E701CFF9C6E1BFF966A19FF0000000000000000000000000000
          0000BA8D2DFFBF912EFFC0922FFFC1932FFFC29430FFC29430FFC9A147FFFEFE
          FDFFEDE0C1FFC0922FFFCFAD61FFFAF7F0FFFFFFFFFFF9F6EEFFD0B16EFFC9A6
          5DFFFCFAF6FFFFFFFFFFF9F5EDFFCDB277FFAC7D23FFA97B22FFA77821FFA576
          20FFA2741EFFA0721DFF9E701BFF986B1AFF0000000000000000000000000000
          0000BE902EFFC39530FFC59631FFC69731FFC69832FFC79832FFDCC081FFFFFF
          FFFFDBBE7CFFC59631FFF5EEDCFFFFFFFFFFFAF7F0FFF3EAD5FFFDFCFAFFF2E9
          D6FFFFFFFFFFDCC697FFEADDC1FFFEFEFEFFCBAD6FFFAC7D23FFA97B22FFA778
          20FFA5761FFFA2741EFFA0711CFF9A6D1AFF0000000000000000000000000000
          0000C29430FFC89932FFC99A33FFCA9B33FFCA9C34FFCB9C34FFE6D09FFFFFFF
          FFFFD4AF5AFFCCA03DFFFEFEFEFFFFFFFFFFD5B369FFC2942FFFE3CFA1FFFFFF
          FFFFFFFFFFFFB98C2BFFB78A2BFFF1E9D6FFF6F1E6FFAF8227FFAC7D23FFA97A
          21FFA77820FFA4761EFFA2731DFF9C6E1BFF0000000000000000000000000000
          0000C59732FFCB9C34FFCD9E35FFCE9F35FFCEA036FFCFA036FFEAD5A6FFFFFF
          FFFFD4AC50FFCFA23DFFFEFEFEFFFFFFFFFFD1AB54FFC59730FFC79B3BFFFDFC
          F9FFFFFFFFFFC1973DFFB88A2AFFD5BA82FFFFFFFFFFC3A056FFAE8024FFAB7C
          22FFA97A20FFA6771FFFA4751DFF9E701BFF0000000000000000000000000000
          0000C99B33FFCFA035FFD0A136FFD2A337FFD2A337FFD3A438FFE8D099FFFFFF
          FFFFDAB45CFFD0A136FFF8F2E2FFFFFFFFFFDEC17EFFC99A32FFC69730FFF4EC
          D9FFFFFFFFFFCEAA5EFFBB8D2BFFC9A65AFFFFFFFFFFD1B67CFFB08224FFAD7E
          23FFAB7B21FFA87920FFA5761EFF9F711CFF0000000000000000000000000000
          0000CC9E35FFD3A337FFD4A538FFD5A639FFD6A739FFD7A739FFE3C377FFFFFF
          FFFFE3C57DFFD4A538FFE8D097FFFFFFFFFFF7F0E0FFCFA33FFFCA9A32FFEDDD
          BBFFFFFFFFFFD9BD7EFFBE8F2CFFC8A252FFFFFFFFFFD6BC87FFB28325FFAF81
          23FFAC7D22FFAA7A20FFA7771FFFA1721DFF0000000000000000000000000000
          0000CFA137FFD6A639FFD8A83AFFD9A93BFFDAAA3BFFDBAB3BFFDDB047FFFEFC
          F9FFF1E0B7FFD8A83AFFD7AA40FFF7EED9FFFFFFFFFFF8F1E2FFE5CE9AFFF3E9
          D2FFFFFFFFFFE3CEA0FFC0912DFFCFAE64FFFFFFFFFFD2B578FFB48525FFB182
          24FFAE7E23FFAB7C21FFA97920FFA2741EFF0000000000000000000000000000
          0000D2A438FFD9A93BFFDBAB3CFFDDAD3CFFDEAE3DFFDEAE3DFFDEAE3DFFF2E1
          B7FFFDFCF8FFDFB552FFD9A93AFFDAAE48FFF1E2BEFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFEBDCB8FFC2932DFFE1CB9AFFFFFFFFFFC59F4DFFB68627FFB383
          25FFB08124FFAD7D22FFAA7A20FFA4751EFF0000000000000000000000000000
          0000D5A639FFDCAC3CFFDEAE3DFFE0AF3EFFE1B03EFFE2B13FFFE1B13FFFE4BB
          56FFFDFBF6FFF5E9CAFFDCAD3FFFD9A93AFFD7A739FFDAB151FFE1C279FFE0C2
          7DFFD7B361FFC99A34FFC99D3DFFFAF6EEFFF2EAD6FFBA8B29FFB78827FFB485
          26FFB18224FFAE7E22FFAB7B21FFA5761EFF0000000000000000000000000000
          0000D6A73AFEDEAE3CFFE1B03EFFE2B23FFFE4B340FFE5B440FFE5B440FFE4B3
          40FFECCC80FFFEFEFDFFF4E6C3FFDEB147FFD9A939FFD6A638FFD3A336FFD0A0
          35FFCD9D33FFCDA03EFFF1E5CBFFFEFDFCFFCFAC60FFBC8C29FFB88928FFB586
          26FFB28324FFAF8023FFAC7C21FFA6771FFF0000000000000000000000000000
          0000D7A83BFDE0B03EFFE3B23FFFE5B440FFE6B641FFE7B741FFE7B741FFE6B6
          41FFE5B440FFECCC80FFFDFBF5FFFCF8EFFFEDD7A2FFE2BF6DFFDDB65DFFDDB9
          68FFE6CE99FFFAF6EBFFFEFDFBFFDBBE7DFFC0902CFFBD8D2AFFBA8A28FFB787
          26FFB48425FFB18123FFAE7D21FFA6761FFD0000000000000000000000000000
          0000D0A339F6E2B13EFFE4B340FFE6B641FFE8B742FFEAB943FFEAB943FFE8B7
          42FFE6B541FFE4B340FFE5BA53FFF1DDAEFFFCF9F1FFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFDFBFFF0E2C2FFD3AD58FFC5942EFFC1912CFFBE8D2AFFBA8A28FFB787
          26FFB48425FFB18223FFAE7E21FFA1731EF70000000000000000000000000000
          0000BE9533E1E3B13EFFE5B440FFE7B641FFE9B842FFEBB943FFEAB943FFE9B8
          42FFE7B641FFE5B440FFE2B13EFFE0AF3DFFDDAD3DFFE0B657FFE1BC67FFDCB6
          5EFFD3A53EFFCD9C32FFC99930FFC5952EFFC2922CFFBE8E2AFFBB8B28FFB888
          26FFB58525FFB28223FFAF7E21FF92691BE10000000000000000000000000000
          0000927228B1E3B23EFFE5B43FFFE7B640FFE9B841FFEAB942FFEAB942FFE9B8
          41FFE7B640FFE5B43FFFE3B23EFFE0AF3CFFDDAC3BFFDAA939FFD7A637FFD4A3
          35FFD09F34FFCD9C32FFC99830FFC6952EFFC2912CFFBF8E2AFFBC8B28FFB988
          26FFB68525FFB38223FFAF7E22FF715116B10000000000000000000000000000
          00003F311156E2B13DFFE5B33FFFE6B540FFE8B640FFE9B741FFE9B741FFE8B6
          40FFE6B540FFE4B33EFFE2B13DFFE0AE3CFFDDAC3AFFDAA939FFD7A637FFD4A3
          35FFD09F34FFCD9C32FFC99930FFC6952EFFC2922CFFBF8F2AFFBC8C29FFB989
          27FFB68625FFB38324FFB08022FF332509570000000000000000000000000000
          0000000000019A782AB9E4B23EFFE5B43FFFE6B540FFE7B540FFE7B540FFE6B5
          40FFE5B43FFFE4B23EFFE1B03DFFDFAD3CFFDCAB3BFFD9A839FFD7A537FFD3A2
          35FFD09F34FFCD9B32FFC99830FFC6952EFFC2912CFFBF8E2AFFBC8B28FFB988
          27FFB68525FFB38223FF785617B9000000010000000000000000000000000000
          0000000000000705010D9A782AB9E3B23EFFE4B33FFFE5B33FFFE5B33FFFE4B3
          3FFFE3B23EFFE2B03DFFE0AE3CFFDDAC3BFFDBAA3AFFD8A738FFD5A436FFD2A1
          35FFCF9E33FFCC9B31FFC8972FFFC5942DFFC1912BFFBE8E2AFFBB8B28FFB888
          26FFB58525FF7A5818B90504010D000000000000000000000000000000000000
          000000000000000000000000000141331156947428B1C19734E1D4A63AF6DBAB
          3CFDDCAB3BFEDBAB3BFFDAA93AFFD7A738FFD5A537FFD3A236FFD09F34FFCD9D
          33FFCA9A31FFC7972FFFC3932DFFBF8F2CFEBB8C2AFDB18427F69F7622E17959
          19B135260A560000000100000000000000000000000000000000000000000000
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
    Left = 485
    Top = 175
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
      FloatLeft = 1351
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      Images = img32
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnClose'
        end
        item
          Visible = True
          ItemName = 'btnEmail'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnClose: TdxBarLargeButton
      Action = actClose
      Category = 0
      AutoGrayScale = False
    end
    object btnEmail: TdxBarLargeButton
      Action = actEmail
      Category = 0
      AutoGrayScale = False
    end
  end
end
