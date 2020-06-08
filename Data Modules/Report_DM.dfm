inherited ReportDM: TReportDM
  OldCreateOrder = True
  Height = 735
  Width = 1265
  object cdsBillableSummary: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <
      item
        Name = 'idxBillablePeriod'
        CaseInsFields = 'NAME'
        Fields = 'THE_PERIOD;NAME'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idxBillableCustomer'
        CaseInsFields = 'NAME'
        Fields = 'NAME;THE_PERIOD'
        Options = [ixCaseInsensitive]
      end>
    Indexes = <
      item
        Active = True
        Name = 'idxBillablePeriod'
        Fields = 'THE_PERIOD;NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase]
        FilterOptions = [ekNoCase]
      end
      item
        Active = True
        Selected = True
        Name = 'idxBillableCustomer'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxBillableCustomer'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'BILLABLE_SUMMARY'
    StoreDefs = True
    Left = 160
    Top = 270
    object cdsBillableSummaryCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
    end
    object cdsBillableSummaryTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
    end
    object cdsBillableSummaryNAME: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'NAME'
      Size = 100
    end
    object cdsBillableSummaryTOTAL_BILLABLE_HOURS: TFloatField
      DisplayLabel = 'Bill Hrs'
      FieldName = 'TOTAL_BILLABLE_HOURS'
    end
    object cdsBillableSummaryTOTAL_BILLABLE: TFloatField
      DisplayLabel = 'Bill Value'
      FieldName = 'TOTAL_BILLABLE'
    end
    object cdsBillableSummaryTOTAL_NON_BILLABLE_HOURS: TFloatField
      DisplayLabel = 'Non B Hrs'
      FieldName = 'TOTAL_NON_BILLABLE_HOURS'
    end
    object cdsBillableSummaryTOTAL_NON_BILLABLE: TFloatField
      DisplayLabel = 'Non  B Value'
      FieldName = 'TOTAL_NON_BILLABLE'
    end
    object cdsBillableSummaryTOTAL_CARRY_FORWARD: TFloatField
      DisplayLabel = 'C/Fwd'
      FieldName = 'TOTAL_CARRY_FORWARD'
    end
  end
  object dtsBillableSummary: TDataSource
    DataSet = cdsBillableSummary
    Left = 160
    Top = 320
  end
  object cdsPeriod: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxFromPeriod'
        Fields = 'THE_PERIOD'
      end>
    IndexName = 'idxFromPeriod'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 240
    Top = 10
    object cdsPeriodTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
    end
    object cdsPeriodPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
  end
  object cdsToPeriod: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxToperiod'
        Fields = 'THE_PERIOD'
      end>
    IndexName = 'idxToperiod'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'PERIOD_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'PERIOD'
    Left = 320
    Top = 10
    object cdsToPeriodTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
    end
    object cdsToPeriodPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
  end
  object dtsPeriod: TDataSource
    DataSet = cdsPeriod
    Left = 240
    Top = 60
  end
  object dtsToPeriod: TDataSource
    DataSet = cdsToPeriod
    Left = 320
    Top = 60
  end
  object conSQLLite: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 35
    Top = 135
  end
  object qryPeriod: TFDQuery
    LocalSQL = locSQL
    Connection = conSQLLite
    SQL.Strings = (
      'SELECT'
      ' THE_PERIOD'
      'FROM'
      ' SourcePeriod')
    Left = 100
    Top = 135
    object qryPeriodTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'THE_PERIOD'
    end
  end
  object locSQL: TFDLocalSQL
    Connection = conSQLLite
    Active = True
    DataSets = <
      item
        DataSet = cdsPeriod
        Name = 'SourcePeriod'
      end
      item
        DataSet = qryPeriod
        Name = 'BillableSummaryPeriod'
      end>
    Left = 165
    Top = 135
  end
  object cdsTSBillable: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxTimesheet'
        Fields = 'CUSTOMER_NAME;ACTIVITY_DATE;LOGIN_NAME;ACTIVITY_TYPE'
        Options = [soNoCase]
        FilterOptions = [ekNoCase]
      end>
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 650
    Top = 275
    object cdsTSBillableID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsTSBillableFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsTSBillableLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsTSBillableLOGIN_NAME: TStringField
      DisplayLabel = 'User Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
    end
    object cdsTSBillableACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
    end
    object cdsTSBillableCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsTSBillableCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'CUSTOMER_NAME'
      Origin = 'CUSTOMER_NAME'
      Size = 100
    end
    object cdsTSBillableACTIVITY_TYPE: TStringField
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE'
      Origin = 'ACTIVITY_TYPE'
      Size = 50
    end
    object cdsTSBillableACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsTSBillablePRICE_LIST_ITEM: TStringField
      DisplayLabel = 'Item Type'
      FieldName = 'PRICE_LIST_ITEM'
      Origin = 'PRICE_LIST_ITEM'
      Size = 200
    end
    object cdsTSBillableTIME_SPENT: TFloatField
      DisplayLabel = 'Mins'
      FieldName = 'TIME_SPENT'
      Origin = 'TIME_SPENT'
    end
    object cdsTSBillableTIME_HOURS: TFloatField
      DisplayLabel = 'Hours'
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object cdsTSBillableACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
    end
    object cdsTSBillableSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
    end
    object cdsTSBillableABBREVIATION: TStringField
      Alignment = taCenter
      DisplayLabel = 'RU'
      FieldName = 'ABBREVIATION'
      Size = 5
    end
    object cdsTSBillableITEM_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsTSBillableTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
    end
    object cdsTSBillablePERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsTSBillableBILLABLE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
    end
    object cdsTSBillableBILLABLE_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE_STR'
      Origin = 'BILLABLE_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTSBillableINVOICE_ID: TIntegerField
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object cdsTSBillableCN_ID: TIntegerField
      DisplayLabel = 'CN No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
    end
    object cdsTSBillableLOCKED: TIntegerField
      DisplayLabel = 'Lock'
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
    end
    object cdsTSBillableLOCKED_STR: TStringField
      DisplayLabel = 'Lock'
      FieldName = 'LOCKED_STR'
      Size = 1
    end
    object cdsTSBillableINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsTSBillableCARRY_FORWARD: TIntegerField
      DisplayLabel = 'C Fwd'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
    end
    object cdsTSBillableCARRY_FORWARD_STR: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'C Fwd'
      FieldName = 'CARRY_FORWARD_STR'
      Origin = 'CARRY_FORWARD_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTSBillableIS_ADDITIONAL_WORK: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Add Wk'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
    end
    object cdsTSBillableIS_ADDITIONAL_WORK_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Add Wk'
      FieldName = 'IS_ADDITIONAL_WORK_STR'
      Origin = 'IS_ADDITIONAL_WORK_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTSBillableCARRY_FORWARD_VALUE: TFloatField
      DisplayLabel = 'C/Fwd'
      FieldName = 'CARRY_FORWARD_VALUE'
    end
  end
  object dtsTSBillable: TDataSource
    DataSet = cdsTSBillable
    Left = 650
    Top = 320
  end
  object frxPDFExport: TfrxPDFExport
    FileName = 'TimesheetUser.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 43629.686801180560000000
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 155
    Top = 185
  end
  object rptBillableSummaryByCustomer: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43498.583602488400000000
    ReportOptions.LastChange = 43682.465325902780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 70
    Top = 370
    Datasets = <
      item
        DataSet = fdsBillableSummaryByCustomer
        DataSetName = 'BillableSummary'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 68.031540000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133824090000000000
          Width = 680.314960629921000000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133858270000000000
          Width = 75.590307090000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Customer')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 200.314792200000000000
          Top = 49.133890000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Bill Hours')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362036300000000000
          Top = 49.133890000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Billable')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409280390000000000
          Top = 49.133890000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Non Bill Hrs')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 506.456524490000000000
          Top = 49.133890000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'C Fwd')
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Accossiates')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 317.480519999999900000
          Width = 362.834880000000000000
          Height = 26.456710000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Billable Summay Report by Customer')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 49.133890000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Visible = False
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            'Period')
        end
      end
      object bndBillableData: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 192.756030000000000000
        Width = 680.315400000000000000
        DataSet = fdsBillableSummaryByCustomer
        DataSetName = 'BillableSummary'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_BILLABLE_HOURS'
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[BillableSummary."TOTAL_BILLABLE_HOURS"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362046060000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_BILLABLE'
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[BillableSummary."TOTAL_BILLABLE"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409295040000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_NON_BILLABLE_HOURS'
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[BillableSummary."TOTAL_NON_BILLABLE_HOURS"]')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 506.456544020000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_CARRY_FORWARD'
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[BillableSummary."TOTAL_CARRY_FORWARD"]')
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Width = 162.519724090000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '#####0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          GapX = 7.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            'Period: [BillableSummary."THE_PERIOD"]')
        end
      end
      object bndCustomerHeader: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 147.401670000000000000
        Width = 680.315400000000000000
        Condition = 'BillableSummary."NAME"'
        KeepTogether = True
        ReprintOnNewPage = True
        ResetPageNumbers = True
        object lblCustomerHeader: TfrxMemoView
          AllowVectorExport = True
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[BillableSummary."NAME"]')
        end
      end
      object bndBillableFooter: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 34.015748030000000000
        ParentFont = False
        Top = 234.330860000000000000
        Width = 680.315400000000000000
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Width = 680.314960629921000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftBottom]
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<BillableSummary."TOTAL_BILLABLE_HOURS">,bndBillableData)]')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362046060000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<BillableSummary."TOTAL_BILLABLE">,bndBillableData)]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409295040001000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            
              '[SUM(<BillableSummary."TOTAL_NON_BILLABLE_HOURS">,bndBillableDat' +
              'a)]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 506.456544020001000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<BillableSummary."TOTAL_CARRY_FORWARD">,bndBillableData)]')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totals: ')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 328.819110000000000000
        Width = 680.315400000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<BillableSummary."TOTAL_BILLABLE_HOURS">,bndBillableData)]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362046060000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<BillableSummary."TOTAL_BILLABLE">,bndBillableData)]')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409295040001000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            
              '[SUM(<BillableSummary."TOTAL_NON_BILLABLE_HOURS">,bndBillableDat' +
              'a)]')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 506.456544020001000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<BillableSummary."TOTAL_CARRY_FORWARD">,bndBillableData)]')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'GrandTotals: ')
        end
      end
    end
  end
  object rptTimesheetDetail: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43920.678272037000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 650
    Top = 370
    Datasets = <
      item
        DataSet = fdsTimesheetDetail
        DataSetName = 'TimesheetDetail'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        DataSet = fdsTimesheetDetail
        DataSetName = 'TimesheetDetail'
        RowCount = 0
        Stretched = True
        object TimesheetACTIVITY_DATE: TfrxMemoView
          AllowVectorExport = True
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY_DATE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY_DATE"]')
        end
        object TimesheetCUSTOMER_NAME: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CUSTOMER_NAME'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."CUSTOMER_NAME"]')
        end
        object TimesheetACTIVITY_TYPE: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY_TYPE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY_TYPE"]')
        end
        object TimesheetACTIVITY: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 268.346456692913000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY"]')
        end
        object TimesheetTIME_SPENT: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CARRY_FORWARD_VALUE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."CARRY_FORWARD_VALUE"]')
        end
        object TimesheetRATE: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039362760000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTUAL_RATE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."ACTUAL_RATE"]')
        end
        object TimesheetITEM_VALUE: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_VALUE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."ITEM_VALUE"]')
        end
        object TimesheetTIME_HOURS: TfrxMemoView
          AllowVectorExport = True
          Left = 756.685007640000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TIME_HOURS'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."TIME_HOURS"]')
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 734.008350000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'BILLABLE_STR'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TimesheetDetail."BILLABLE_STR"]')
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 865.511811023622000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ABBREVIATION'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TimesheetDetail."ABBREVIATION"]')
        end
      end
      object bndGroupFooter: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 257.008040000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."ITEM_VALUE">,bndMaster)]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 756.661417320000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."TIME_HOURS">,bndMaster)]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totals For: [TimesheetDetail."LOGIN_NAME"]')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
      end
      object bndGroupHeader: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677165350000000000
        ParentFont = False
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        Condition = 'TimesheetDetail."LOGIN_NAME"'
        KeepTogether = True
        ResetPageNumbers = True
        StartNewPage = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 532.913730000000000000
          Height = 22.677165350000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Timesheets for: [(<TimesheetDetail."LOGIN_NAME">)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 37.795300000000000000
        Top = 381.732530000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 854.173780000000000000
          Top = 18.897637795275600000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Col RU: HR = Hourly;  EA = Each;  PD = Per extra director;  PP =' +
              ' per page;  PR = Per return;  PT = Plus time spent')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 68.031540000000000000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000000000000629
          Top = 49.133890000000000000
          Width = 1046.929133860000000000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Date')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149606300000000000
          Top = 49.133890000000000000
          Width = 226.771653543307000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Customer')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700799610000000000
          Top = 49.133890000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Activity Type')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102352440000000000
          Top = 49.133890000000000000
          Width = 268.346456692913000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Description')
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258818897700000
          Top = 49.133890000000000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'C/Fwd')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039362760000000000
          Top = 49.133890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Rate')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968513700000000000
          Top = 49.133890000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Amt')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 756.685007640000000000
          Top = 49.133890000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hrs')
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 442.205010000000000000
          Height = 30.236220470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Timesheet Detail Report')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 734.007837400000000000
          Top = 49.133890000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Bl')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 865.512370000000000000
          Top = 49.133890000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'R')
        end
      end
      object bndReportSummary: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 336.378170000000000000
        Width = 1046.929810000000000000
        object Memo4: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."ITEM_VALUE">,bndMaster)]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 756.661417320000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."TIME_HOURS">,bndMaster)]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Grand Totals:')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object fdsBillableSummaryByCustomer: TfrxDBDataset
    UserName = 'BillableSummary'
    CloseDataSource = False
    DataSet = cdsBillableSummary
    BCDToCurrency = False
    Left = 70
    Top = 425
  end
  object fdsTimesheetDetail: TfrxDBDataset
    UserName = 'TimesheetDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FIRST_NAME=FIRST_NAME'
      'LAST_NAME=LAST_NAME'
      'LOGIN_NAME=LOGIN_NAME'
      'ACTIVITY_DATE=ACTIVITY_DATE'
      'CUSTOMER_TYPE=CUSTOMER_TYPE'
      'CUSTOMER_NAME=CUSTOMER_NAME'
      'ACTIVITY_TYPE=ACTIVITY_TYPE'
      'ACTIVITY=ACTIVITY'
      'PRICE_LIST_ITEM=PRICE_LIST_ITEM'
      'TIME_SPENT=TIME_SPENT'
      'TIME_HOURS=TIME_HOURS'
      'ACTUAL_RATE=ACTUAL_RATE'
      'STD_RATE=STD_RATE'
      'ABBREVIATION=ABBREVIATION'
      'ITEM_VALUE=ITEM_VALUE'
      'THE_PERIOD=THE_PERIOD'
      'PERIOD_NAME=PERIOD_NAME'
      'BILLABLE=BILLABLE'
      'BILLABLE_STR=BILLABLE_STR'
      'INVOICE_ID=INVOICE_ID'
      'CN_ID=CN_ID'
      'LOCKED=LOCKED'
      'LOCKED_STR=LOCKED_STR'
      'INVOICE_DATE=INVOICE_DATE'
      'CARRY_FORWARD=CARRY_FORWARD'
      'CARRY_FORWARD_STR=CARRY_FORWARD_STR'
      'IS_ADDITIONAL_WORK=IS_ADDITIONAL_WORK'
      'IS_ADDITIONAL_WORK_STR=IS_ADDITIONAL_WORK_STR'
      'CARRY_FORWARD_VALUE=CARRY_FORWARD_VALUE')
    DataSet = cdsTSBillable
    BCDToCurrency = False
    Left = 650
    Top = 420
  end
  object rptBillableSummaryByPeriod: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43498.583602488400000000
    ReportOptions.LastChange = 43682.464763750000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 220
    Top = 370
    Datasets = <
      item
        DataSet = fdsBillableSummaryByCustomer
        DataSetName = 'BillableSummary'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 68.031540000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1009.134510000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133824090000000000
          Width = 1009.133858267720000000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 453.543307090000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Customer')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102362200000000000
          Top = 49.133890000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Bill Hours')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149606300000000000
          Top = 49.133890000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Billable')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 665.196850390000000000
          Top = 49.133890000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Non Bill Hrs')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 767.244094490000000000
          Top = 49.133890000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'C Fwd')
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Accossiates')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 619.842920000000000000
          Width = 389.291590000000000000
          Height = 26.456710000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Billable Summay Report by Period')
          ParentFont = False
        end
      end
      object bndBillableData: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftBottom]
        Height = 18.897637800000000000
        Top = 192.756030000000000000
        Width = 1009.134510000000000000
        DataSet = fdsBillableSummaryByCustomer
        DataSetName = 'BillableSummary'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Width = 453.543307090000000000
          Height = 18.897650000000000000
          DataField = 'NAME'
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          Frame.Typ = [ftLeft, ftRight]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[BillableSummary."NAME"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_BILLABLE_HOURS'
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[BillableSummary."TOTAL_BILLABLE_HOURS"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149616060000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_BILLABLE'
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[BillableSummary."TOTAL_BILLABLE"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 665.196865040000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_NON_BILLABLE_HOURS'
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[BillableSummary."TOTAL_NON_BILLABLE_HOURS"]')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 767.244114020000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_CARRY_FORWARD'
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[BillableSummary."TOTAL_CARRY_FORWARD"]')
        end
      end
      object bndPeriodHeader: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = [ftTop, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 147.401670000000000000
        Width = 1009.134510000000000000
        Condition = 'BillableSummary."THE_PERIOD"'
        ReprintOnNewPage = True
        ResetPageNumbers = True
        StartNewPage = True
        object lblPeriodHeader: TfrxMemoView
          AllowVectorExport = True
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Period: [BillableSummary."THE_PERIOD"]')
        end
      end
      object bndBillableFooter: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637795275600000
        ParentFont = False
        Top = 234.330860000000000000
        Width = 1009.134510000000000000
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<BillableSummary."TOTAL_BILLABLE_HOURS">,bndBillableData)]')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149616060000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<BillableSummary."TOTAL_BILLABLE">,bndBillableData)]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 665.196865040000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            
              '[SUM(<BillableSummary."TOTAL_NON_BILLABLE_HOURS">,bndBillableDat' +
              'a)]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 767.244114020000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<BillableSummary."TOTAL_CARRY_FORWARD">,bndBillableData)]')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            'Period Totals: ')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637795275600000
        ParentFont = False
        Top = 313.700990000000000000
        Width = 1009.134510000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<BillableSummary."TOTAL_BILLABLE_HOURS">,bndBillableData)]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149616060000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<BillableSummary."TOTAL_BILLABLE">,bndBillableData)]')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 665.196865040000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            
              '[SUM(<BillableSummary."TOTAL_NON_BILLABLE_HOURS">,bndBillableDat' +
              'a)]')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 767.244114020000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataSet = fdsBillableSummaryByCustomer
          DataSetName = 'BillableSummary'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<BillableSummary."TOTAL_CARRY_FORWARD">,bndBillableData)]')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            'GrandTotals: ')
        end
      end
    end
  end
  object fdsBillableSummaryByPeriod: TfrxDBDataset
    UserName = 'BillableSummary'
    CloseDataSource = False
    DataSet = cdsBillableSummary
    BCDToCurrency = False
    Left = 220
    Top = 425
  end
  object cdsPeriodListing: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 395
    Top = 10
    object cdsPeriodListingTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
    end
    object cdsPeriodListingPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
  end
  object dtsPeriodListing: TDataSource
    DataSet = cdsPeriodListing
    Left = 395
    Top = 60
  end
  object cdsTSCustomer: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 135
    object cdsTSCustomerID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsTSCustomerCUSTOMER_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CT ID'
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
    end
    object cdsTSCustomerSTATUS_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Stat ID'
      FieldName = 'STATUS_ID'
      Origin = 'STATUS_ID'
    end
    object cdsTSCustomerNAME: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object cdsTSCustomerCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsTSCustomerCUSTOMER_STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CUSTOMER_STATUS'
      Origin = 'CUSTOMER_STATUS'
    end
    object cdsTSCustomerIS_ACTIVE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Act'
      FieldName = 'IS_ACTIVE'
      Origin = 'IS_ACTIVE'
    end
    object cdsTSCustomerCUSTOMER_GROUP_ID: TIntegerField
      DisplayLabel = 'C Grp ID'
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
    end
    object cdsTSCustomerCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Cust ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object cdsTSCustomerCUSTOMER_GROUP_LINK_NAME: TStringField
      DisplayLabel = 'Cust Grp Link Name'
      FieldName = 'CUSTOMER_GROUP_LINK_NAME'
      Origin = 'CUSTOMER_GROUP_LINK_NAME'
      Size = 100
    end
  end
  object dtsTSCustomer: TDataSource
    DataSet = cdsTSCustomer
    Left = 320
    Top = 185
  end
  object cdsActivityType: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'ACTIVITY_TYPE_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'ACTIVITY_TYPE'
    Left = 410
    Top = 135
    object cdsActivityTypeID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsActivityTypeNAME: TStringField
      DisplayLabel = 'Activity Type'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
  end
  object dtsActivityType: TDataSource
    DataSet = cdsActivityType
    Left = 410
    Top = 185
  end
  object cdsTSSummaryByActivity: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 1110
    Top = 130
    object cdsTSSummaryByActivityTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
      Required = True
    end
    object cdsTSSummaryByActivityACTIVITY_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'A T ID'
      FieldName = 'ACTIVITY_TYPE_ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityACTIVITY_TYPE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cdsTSSummaryByActivityAMANDA: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Mins'
      FieldName = 'AMANDA'
      Origin = 'AMANDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityAMANDA_HRS: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Hours'
      FieldName = 'AMANDA_HRS'
      Origin = 'AMANDA_HRS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityAMANDA_ITEM_VALUE: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Value'
      FieldName = 'AMANDA_ITEM_VALUE'
      Origin = 'AMANDA_ITEM_VALUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityCHANEL: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Mins'
      FieldName = 'CHANEL'
      Origin = 'CHANEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityCHANEL_HRS: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Hours'
      FieldName = 'CHANEL_HRS'
      Origin = 'CHANEL_HRS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityCHANEL_ITEM_VALUE: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Value'
      FieldName = 'CHANEL_ITEM_VALUE'
      Origin = 'CHANEL_ITEM_VALUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityCHRISTA: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Mins'
      FieldName = 'CHRISTA'
      Origin = 'CHRISTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityCHRISTA_HRS: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Hours'
      FieldName = 'CHRISTA_HRS'
      Origin = 'CHRISTA_HRS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityCHRISTA_ITEM_VALUE: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Value'
      FieldName = 'CHRISTA_ITEM_VALUE'
      Origin = 'CHRISTA_ITEM_VALUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityALBERTUS: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Mins'
      FieldName = 'ALBERTUS'
      Origin = 'ALBERTUS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityALBERTUS_HRS: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Hours'
      FieldName = 'ALBERTUS_HRS'
      Origin = 'ALBERTUS_HRS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityALBERTUS_ITEM_VALUE: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Value'
      FieldName = 'ALBERTUS_ITEM_VALUE'
      Origin = 'ALBERTUS_ITEM_VALUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityDOREEN: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Mins'
      FieldName = 'DOREEN'
      Origin = 'DOREEN'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityDOREEN_HRS: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Hours'
      FieldName = 'DOREEN_HRS'
      Origin = 'DOREEN_HRS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByActivityDOREEN_ITEM_VALUE: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Value'
      FieldName = 'DOREEN_ITEM_VALUE'
      Origin = 'DOREEN_ITEM_VALUE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dtsTSSummaryByActivity: TDataSource
    DataSet = cdsTSSummaryByActivity
    Left = 1110
    Top = 185
  end
  object cdsTSSummaryByUser: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 970
    Top = 135
    object cdsTSSummaryByUserUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
    end
    object cdsTSSummaryByUserLOGIN_NAME: TStringField
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
    end
    object cdsTSSummaryByUserAVB_COMPANIES: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AVB_COMPANIES'
      Origin = 'AVB_COMPANIES'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserAVB_PERSONAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AVB_PERSONAL'
      Origin = 'AVB_PERSONAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserTIMESHEETS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TIMESHEETS'
      Origin = 'TIMESHEETS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserFILING_AND_POST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'FILING_AND_POST'
      Origin = 'FILING_AND_POST'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserPC_BANK: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PC_BANK'
      Origin = 'PC_BANK'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserOFFICE_ADMIN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'OFFICE_ADMIN'
      Origin = 'OFFICE_ADMIN'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserSOCIAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SOCIAL'
      Origin = 'SOCIAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserCOMPUTERS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COMPUTERS'
      Origin = 'COMPUTERS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserTRAINING_RESEARCH: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TRAINING_RESEARCH'
      Origin = 'TRAINING_RESEARCH'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserESTATES_WILLS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ESTATES_WILLS'
      Origin = 'ESTATES_WILLS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserWORKMENS_COMP: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'WORKMENS_COMP'
      Origin = 'WORKMENS_COMP'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserSARS_TAX: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SARS_TAX'
      Origin = 'SARS_TAX'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserCIPC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CIPC'
      Origin = 'CIPC'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserCRRADLE_OF_HOPE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CRRADLE_OF_HOPE'
      Origin = 'CRRADLE_OF_HOPE'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserDEBTORS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DEBTORS'
      Origin = 'DEBTORS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserTRAVELLING: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TRAVELLING'
      Origin = 'TRAVELLING'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsTSSummaryByUserJUDY_PLACE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'JUDY_PLACE'
      Origin = 'JUDY_PLACE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dtsTSSummaryByUser: TDataSource
    Left = 970
    Top = 185
  end
  object qryDummy: TFDQuery
    SQL.Strings = (
      'SELECT'
      'T.THE_PERIOD,'
      'A.ID AS ACTIVITY_TYPE_ID,'
      'A."NAME" AS ACTIVITY_TYPE,'
      'SUM(CASE WHEN T.USER_ID=2 THEN'
      'T.TIME_SPENT ELSE 0 END) AS Amanda,'
      'SUM(CASE WHEN T.USER_ID=2 THEN'
      'T.TIME_HOURS ELSE 0 END) AS Amanda_Hrs,'
      'SUM(CASE WHEN T.USER_ID=2 THEN'
      'T.ITEM_VALUE ELSE 0  END) AS Amanda_Item_Value,'
      'SUM(CASE WHEN T.USER_ID=3 THEN'
      'T.TIME_SPENT ELSE 0 END) AS Chanel,'
      'SUM(CASE WHEN T.USER_ID=3 THEN'
      'T.TIME_HOURS ELSE 0 END) AS Chanel_Hrs,'
      'SUM(CASE WHEN T.USER_ID=3 THEN'
      'T.ITEM_VALUE ELSE 0  END) AS Chanel_Item_Value,'
      'SUM(CASE WHEN T.USER_ID=4 THEN'
      'T.TIME_SPENT ELSE 0 END) AS Christa,'
      'SUM(CASE WHEN T.USER_ID=4 THEN'
      'T.TIME_HOURS ELSE 0 END) AS Christa_Hrs,'
      'SUM(CASE WHEN T.USER_ID=4 THEN'
      'T.ITEM_VALUE ELSE 0  END) AS Christa_Item_Value,'
      'SUM(CASE WHEN T.USER_ID=5 THEN'
      'T.TIME_SPENT ELSE 0 END) AS Albertus,'
      'SUM(CASE WHEN T.USER_ID=5 THEN'
      'T.TIME_HOURS ELSE 0 END) AS Albertus_Hrs,'
      'SUM(CASE WHEN T.USER_ID=5 THEN'
      'T.ITEM_VALUE ELSE 0  END) AS Albertus_Item_Value'
      'FROM'
      'TIMESHEET T'
      'LEFT JOIN ACTIVITY_TYPE A'
      'ON T.ACTIVITY_TYPE_ID=A.ID'
      'LEFT JOIN SYSTEM_USER U'
      'ON T.USER_ID=U.ID'
      'WHERE'
      'T.THE_PERIOD = 201905'
      'GROUP BY'
      'T.THE_PERIOD,'
      'A.ID,'
      'A."NAME"'
      'ORDER BY'
      'A."NAME"')
    Left = 810
    Top = 25
  end
  object cdsSumByActivityPeriod: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 510
    Top = 10
    object cdsSumByActivityPeriodTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
    end
    object cdsSumByActivityPeriodPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
  end
  object dtsSumByActivityPeriod: TDataSource
    DataSet = cdsSumByActivityPeriod
    Left = 510
    Top = 60
  end
  object rptTimesheetByCustomer: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43926.649412997700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 775
    Top = 370
    Datasets = <
      item
        DataSet = fdsTimesheetDetail
        DataSetName = 'TimesheetDetail'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        DataSet = fdsTimesheetDetail
        DataSetName = 'TimesheetDetail'
        RowCount = 0
        Stretched = True
        object TimesheetACTIVITY_DATE: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY_DATE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY_DATE"]')
        end
        object TimesheetACTIVITY_TYPE: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299266300000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY_TYPE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY_TYPE"]')
        end
        object TimesheetACTIVITY: TfrxMemoView
          AllowVectorExport = True
          Left = 321.259893780000000000
          Width = 404.409448820000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY"]')
        end
        object TimesheetTIME_SPENT: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CARRY_FORWARD_VALUE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."CARRY_FORWARD_VALUE"]')
        end
        object TimesheetRATE: TfrxMemoView
          AllowVectorExport = True
          Left = 801.259766850000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTUAL_RATE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."ACTUAL_RATE"]')
        end
        object TimesheetITEM_VALUE: TfrxMemoView
          AllowVectorExport = True
          Left = 891.969123940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_VALUE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."ITEM_VALUE"]')
        end
        object TimesheetTIME_HOURS: TfrxMemoView
          AllowVectorExport = True
          Left = 752.125947640000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TIME_HOURS'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."TIME_HOURS"]')
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 731.338582677165100000
          Width = 17.007874020000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'BILLABLE_STR'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TimesheetDetail."BILLABLE_STR"]')
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'LOGIN_NAME'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."LOGIN_NAME"]')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 863.842512360000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ABBREVIATION'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TimesheetDetail."ABBREVIATION"]')
        end
      end
      object bndGroupFooter: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 257.008040000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968464880000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."ITEM_VALUE">,bndMaster)]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362187640000000000
          Width = 49.133860710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."TIME_HOURS">,bndMaster)]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 445.984447240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totals For: [TimesheetDetail."CUSTOMER_NAME"]')
        end
      end
      object bndGroupHeader: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677165350000000000
        ParentFont = False
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        Condition = 'TimesheetDetail."CUSTOMER_NAME"'
        KeepTogether = True
        ResetPageNumbers = True
        StartNewPage = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Timesheets for: [TimesheetDetail."CUSTOMER_NAME"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 37.795275590000000000
        Top = 377.953000000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 18.897637795275600000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 903.307670000000000000
          Top = 18.897637795275600000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Col RU: HR = Hourly;  EA = Each;  PD = Per extra director;  PP =' +
              ' per page;  PR = Per return;  PT = Plus time spent')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 68.031540000000000000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000000000000629
          Top = 49.133890000000000000
          Width = 1046.929133860000000000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 49.133890000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Date')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299129610000000000
          Top = 49.133890000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Activity Type')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 321.259830310000000000
          Top = 49.133890000000000000
          Width = 404.409448820000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Description')
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Top = 49.133890000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'C/Fwd')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 801.259766850000000000
          Top = 49.133890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Rate')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968513700000000000
          Top = 49.133890000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Amt')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 752.125947640000000000
          Top = 49.133890000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hrs')
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 442.205010000000000000
          Height = 30.236220470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Timesheet Detail Report')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 731.448777400000000000
          Top = 49.133890000000000000
          Width = 17.007874020000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'B')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'User')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 863.842512360000000000
          Top = 49.133890000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'R')
        end
      end
      object bndGroupSummary: TfrxFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 298.582870000000000000
        Width = 1046.929810000000000000
        object Memo4: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968943310000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."ITEM_VALUE">,bndMaster)]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362666070000000000
          Width = 49.133860710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."TIME_HOURS">,bndMaster)]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Grand Totals:')
        end
      end
    end
  end
  object rptTimesheetByActivityType: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43924.346750127310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 910
    Top = 370
    Datasets = <
      item
        DataSet = fdsTimesheetDetail
        DataSetName = 'TimesheetDetail'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        DataSet = fdsTimesheetDetail
        DataSetName = 'TimesheetDetail'
        RowCount = 0
        Stretched = True
        object TimesheetACTIVITY_DATE: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY_DATE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY_DATE"]')
        end
        object TimesheetACTIVITY_TYPE: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299266300000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CUSTOMER_NAME'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."CUSTOMER_NAME"]')
        end
        object TimesheetACTIVITY: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850493780000000000
          Width = 332.598425200000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY"]')
        end
        object TimesheetTIME_SPENT: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CARRY_FORWARD_VALUE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."CARRY_FORWARD_VALUE"]')
        end
        object TimesheetRATE: TfrxMemoView
          AllowVectorExport = True
          Left = 801.259766850000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTUAL_RATE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."ACTUAL_RATE"]')
        end
        object TimesheetITEM_VALUE: TfrxMemoView
          AllowVectorExport = True
          Left = 891.969123940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_VALUE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."ITEM_VALUE"]')
        end
        object TimesheetTIME_HOURS: TfrxMemoView
          AllowVectorExport = True
          Left = 752.125947640000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TIME_HOURS'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."TIME_HOURS"]')
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 17.007874020000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'BILLABLE_STR'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TimesheetDetail."BILLABLE_STR"]')
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'LOGIN_NAME'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."LOGIN_NAME"]')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 861.732840000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ABBREVIATION'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TimesheetDetail."ABBREVIATION"]')
        end
      end
      object bndGroupFooter: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 257.008040000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = fdsTimesheetByActivityType
          DataSetName = 'TimesheetByActivityType'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968464880000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = fdsTimesheetByActivityType
          DataSetName = 'TimesheetByActivityType'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."ITEM_VALUE">,bndMaster)]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 752.125984250000000000
          Width = 49.133860710000000000
          Height = 18.897650000000000000
          DataSet = fdsTimesheetByActivityType
          DataSetName = 'TimesheetByActivityType'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."TIME_HOURS">,bndMaster)]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Width = 415.748207240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totals For: [TimesheetDetail."ACTIVITY_TYPE"]')
        end
      end
      object bndGroupHeader: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677165350000000000
        ParentFont = False
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        Condition = '<TimesheetDetail."ACTIVITY_TYPE">'
        KeepTogether = True
        ResetPageNumbers = True
        StartNewPage = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          DataSet = fdsTimesheetByActivityType
          DataSetName = 'TimesheetByActivityType'
          Frame.Typ = []
          Memo.UTF8W = (
            'Timesheets for: [TimesheetDetail."ACTIVITY_TYPE"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 37.795275590000000000
        Top = 377.953000000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 18.897637795275600000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 903.307670000000000000
          Top = 18.897637795275600000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Col RU: HR = Hourly;  EA = Each;  PD = Per extra director;  PP =' +
              ' per page;  PR = Per return;  PT = Plus time spent')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 68.031540000000000000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 1046.929133860000000000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 49.133890000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Date')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299129610000000000
          Top = 49.133890000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Customer')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850430310000000000
          Top = 49.133890000000000000
          Width = 332.598425196850000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Description')
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258818897700000
          Top = 49.133890000000000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'C/Fwd')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 801.259766850000000000
          Top = 49.133890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Rate')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968513700000000000
          Top = 49.133890000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Amt')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 752.125947640000000000
          Top = 49.133890000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hrs')
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 442.205010000000000000
          Height = 30.236220470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Timesheet Detail Report')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228307400000000000
          Top = 49.133890000000000000
          Width = 17.007874020000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'B')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'User')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 861.732283460000000000
          Top = 49.133890000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'R')
        end
      end
      object bndReportSummary: TfrxFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 298.582870000000000000
        Width = 1046.929810000000000000
        object Memo4: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = fdsTimesheetByActivityType
          DataSetName = 'TimesheetByActivityType'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968943310000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = fdsTimesheetByActivityType
          DataSetName = 'TimesheetByActivityType'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."ITEM_VALUE">,bndMaster)]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 752.125984250000000000
          Width = 49.133860710000000000
          Height = 18.897650000000000000
          DataSet = fdsTimesheetByActivityType
          DataSetName = 'TimesheetByActivityType'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."TIME_HOURS">,bndMaster)]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Grand Totals:')
        end
      end
    end
  end
  object fdsTimesheetByCustomer: TfrxDBDataset
    UserName = 'TimesheetByCustomer'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FIRST_NAME=FIRST_NAME'
      'LAST_NAME=LAST_NAME'
      'LOGIN_NAME=LOGIN_NAME'
      'ACTIVITY_DATE=ACTIVITY_DATE'
      'CUSTOMER_TYPE=CUSTOMER_TYPE'
      'CUSTOMER_NAME=CUSTOMER_NAME'
      'ACTIVITY_TYPE=ACTIVITY_TYPE'
      'ACTIVITY=ACTIVITY'
      'PRICE_LIST_ITEM=PRICE_LIST_ITEM'
      'TIME_SPENT=TIME_SPENT'
      'TIME_HOURS=TIME_HOURS'
      'ACTUAL_RATE=ACTUAL_RATE'
      'STD_RATE=STD_RATE'
      'ABBREVIATION=ABBREVIATION'
      'ITEM_VALUE=ITEM_VALUE'
      'THE_PERIOD=THE_PERIOD'
      'PERIOD_NAME=PERIOD_NAME'
      'BILLABLE=BILLABLE'
      'BILLABLE_STR=BILLABLE_STR'
      'INVOICE_ID=INVOICE_ID'
      'CN_ID=CN_ID'
      'LOCKED=LOCKED'
      'LOCKED_STR=LOCKED_STR'
      'INVOICE_DATE=INVOICE_DATE'
      'CARRY_FORWARD=CARRY_FORWARD'
      'CARRY_FORWARD_STR=CARRY_FORWARD_STR'
      'IS_ADDITIONAL_WORK=IS_ADDITIONAL_WORK'
      'IS_ADDITIONAL_WORK_STR=IS_ADDITIONAL_WORK_STR'
      'CARRY_FORWARD_VALUE=CARRY_FORWARD_VALUE')
    DataSet = cdsTSBillable
    BCDToCurrency = False
    Left = 775
    Top = 420
  end
  object fdsTimesheetByActivityType: TfrxDBDataset
    UserName = 'TimesheetByActivityType'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FIRST_NAME=FIRST_NAME'
      'LAST_NAME=LAST_NAME'
      'LOGIN_NAME=LOGIN_NAME'
      'ACTIVITY_DATE=ACTIVITY_DATE'
      'CUSTOMER_TYPE=CUSTOMER_TYPE'
      'CUSTOMER_NAME=CUSTOMER_NAME'
      'ACTIVITY_TYPE=ACTIVITY_TYPE'
      'ACTIVITY=ACTIVITY'
      'PRICE_LIST_ITEM=PRICE_LIST_ITEM'
      'TIME_SPENT=TIME_SPENT'
      'TIME_HOURS=TIME_HOURS'
      'ACTUAL_RATE=ACTUAL_RATE'
      'STD_RATE=STD_RATE'
      'ABBREVIATION=ABBREVIATION'
      'ITEM_VALUE=ITEM_VALUE'
      'THE_PERIOD=THE_PERIOD'
      'PERIOD_NAME=PERIOD_NAME'
      'BILLABLE=BILLABLE'
      'BILLABLE_STR=BILLABLE_STR'
      'INVOICE_ID=INVOICE_ID'
      'CN_ID=CN_ID'
      'LOCKED=LOCKED'
      'LOCKED_STR=LOCKED_STR'
      'INVOICE_DATE=INVOICE_DATE'
      'CARRY_FORWARD=CARRY_FORWARD'
      'CARRY_FORWARD_STR=CARRY_FORWARD_STR'
      'IS_ADDITIONAL_WORK=IS_ADDITIONAL_WORK'
      'IS_ADDITIONAL_WORK_STR=IS_ADDITIONAL_WORK_STR'
      'CARRY_FORWARD_VALUE=CARRY_FORWARD_VALUE')
    DataSet = cdsTSBillable
    BCDToCurrency = False
    Left = 910
    Top = 420
  end
  object rptTSSummaryByActivity: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43498.583602488400000000
    ReportOptions.LastChange = 43924.379654421300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1110
    Top = 240
    Datasets = <
      item
        DataSet = fdsTSSummaryByActivity
        DataSetName = 'TSSummaryByActivity'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 45.354330710000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo12: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Accossiates')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 366.614410000000100000
          Width = 680.315400000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'Timesheet Summary by Activity for Period: [TSSummaryByActivity."' +
              'THE_PERIOD"]')
          ParentFont = False
        end
      end
      object bndDetail: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftBottom]
        Height = 18.897637800000000000
        Top = 185.196970000000000000
        Width = 1046.929810000000000000
        DataSet = fdsTSSummaryByActivity
        DataSetName = 'TSSummaryByActivity'
        RowCount = 0
        object Memo6: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'ACTIVITY_TYPE'
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          Frame.Typ = [ftLeft, ftRight]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[TSSummaryByActivity."ACTIVITY_TYPE"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'DOREEN_ITEM_VALUE'
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TSSummaryByActivity."DOREEN_ITEM_VALUE"]')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'AMANDA_ITEM_VALUE'
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TSSummaryByActivity."AMANDA_ITEM_VALUE"]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'CHANEL_HRS'
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TSSummaryByActivity."CHANEL_HRS"]')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'CHANEL_ITEM_VALUE'
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TSSummaryByActivity."CHANEL_ITEM_VALUE"]')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000100000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'CHRISTA_HRS'
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TSSummaryByActivity."CHRISTA_HRS"]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'CHRISTA_ITEM_VALUE'
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TSSummaryByActivity."CHRISTA_ITEM_VALUE"]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'ALBERTUS_HRS'
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TSSummaryByActivity."ALBERTUS_HRS"]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 793.701300000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'ALBERTUS_ITEM_VALUE'
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TSSummaryByActivity."ALBERTUS_ITEM_VALUE"]')
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 876.850960000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'DOREEN_HRS'
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TSSummaryByActivity."DOREEN_HRS"]')
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 960.000620000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'DOREEN_ITEM_VALUE'
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TSSummaryByActivity."DOREEN_ITEM_VALUE"]')
        end
      end
      object bndGroupFooter: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 226.771800000000000000
        Width = 1046.929810000000000000
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<TSSummaryByActivity."AMANDA_HRS">,bndDetail)]')
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<TSSummaryByActivity."AMANDA_ITEM_VALUE">,bndDetail)]')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<TSSummaryByActivity."CHANEL_HRS">,bndDetail)]')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<TSSummaryByActivity."CHANEL_ITEM_VALUE">,bndDetail)]')
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<TSSummaryByActivity."CHRISTA_HRS">,bndDetail)]')
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<TSSummaryByActivity."CHRISTA_ITEM_VALUE">,bndDetail)]')
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<TSSummaryByActivity."ALBERTUS_HRS">,bndDetail)]')
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 793.701300000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<TSSummaryByActivity."ALBERTUS_ITEM_VALUE">,bndDetail)]')
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 876.850960000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<TSSummaryByActivity."DOREEN_HRS">,bndDetail)]')
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 960.000620000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsTSSummaryByActivity
          DataSetName = 'TSSummaryByActivity'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<TSSummaryByActivity."DOREEN_ITEM_VALUE">,bndDetail)]')
        end
      end
      object bndGroupHeader: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 37.795275590000000000
        ParentFont = False
        Top = 124.724490000000000000
        Width = 1046.929810000000000000
        Condition = 'TSSummaryByActivity."THE_PERIOD"'
        KeepTogether = True
        StartNewPage = True
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Width = 1046.929133860000000000
          Height = 37.795287800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 0.000065910000000002
          Width = 211.653543310000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Activity Type')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653543310000000000
          Top = 0.000065910000000002
          Width = 166.299212600000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight, ftBottom]
          GapX = 7.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Amanda')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 0.000065910000000002
          Width = 166.299212600000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight, ftBottom]
          GapX = 7.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Chanel')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 0.000065910000000002
          Width = 166.299212600000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight, ftBottom]
          GapX = 7.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Christa')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551688820000000000
          Top = 0.000065910000003555
          Width = 166.299212600000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight, ftBottom]
          GapX = 7.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Albertus')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 18.897715910000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hours')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 18.897715910000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Value')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 18.897715910000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hours')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 18.897715910000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Value')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 18.897715910000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hours')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 18.897715910000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Value')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Top = 18.897715909999990000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hours')
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 793.701300000000000000
          Top = 18.897715909999990000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Value')
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 876.851008820000000000
          Width = 166.299212600000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight, ftBottom]
          GapX = 7.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Doreen')
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 876.850960000000000000
          Top = 18.897650000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hours')
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 960.000620000000000000
          Top = 18.897650000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 7.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Value')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 22.677180000000000000
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        object Memo38: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo39: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 903.307670000000100000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object fdsTSSummaryByActivity: TfrxDBDataset
    UserName = 'TSSummaryByActivity'
    CloseDataSource = False
    FieldAliases.Strings = (
      'THE_PERIOD=THE_PERIOD'
      'ACTIVITY_TYPE_ID=ACTIVITY_TYPE_ID'
      'ACTIVITY_TYPE=ACTIVITY_TYPE'
      'AMANDA=AMANDA'
      'AMANDA_HRS=AMANDA_HRS'
      'AMANDA_ITEM_VALUE=AMANDA_ITEM_VALUE'
      'CHANEL=CHANEL'
      'CHANEL_HRS=CHANEL_HRS'
      'CHANEL_ITEM_VALUE=CHANEL_ITEM_VALUE'
      'CHRISTA=CHRISTA'
      'CHRISTA_HRS=CHRISTA_HRS'
      'CHRISTA_ITEM_VALUE=CHRISTA_ITEM_VALUE'
      'ALBERTUS=ALBERTUS'
      'ALBERTUS_HRS=ALBERTUS_HRS'
      'ALBERTUS_ITEM_VALUE=ALBERTUS_ITEM_VALUE'
      'DOREEN=DOREEN'
      'DOREEN_HRS=DOREEN_HRS'
      'DOREEN_ITEM_VALUE=DOREEN_ITEM_VALUE')
    DataSet = cdsTSSummaryByActivity
    BCDToCurrency = False
    Left = 1110
    Top = 290
  end
  object cdsTimesheet: TFDMemTable
    Tag = 27
    ActiveStoredUsage = [auDesignTime]
    BeforeEdit = cdsTimesheetBeforeEdit
    BeforePost = cdsTimesheetBeforePost
    AfterPost = cdsTimesheetAfterPost
    OnCalcFields = cdsTimesheetCalcFields
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxActivityDate'
        Fields = 'ACTIVITY_DATE'
        Options = [soNoCase]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxActivityDate'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'TIMESHEET_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'TIMESHEET'
    StoreDefs = True
    Left = 520
    Top = 135
    object cdsTimesheetID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTimesheetUSER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'User Name'
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
    end
    object cdsTimesheetCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsTimesheetPRICE_LIST_ITEM_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Price Item'
      FieldName = 'PRICE_LIST_ITEM_ID'
      Origin = 'PRICE_LIST_ITEM_ID'
      Required = True
    end
    object cdsTimesheetRATE_UNIT_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Rate Unit'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
      Required = True
    end
    object cdsTimesheetACTIVITY_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE_ID'
      Origin = 'ACTIVITY_TYPE_ID'
      Required = True
    end
    object cdsTimesheetINVOICE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
      Required = True
    end
    object cdsTimesheetCN_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C/N No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
      Required = True
    end
    object cdsTimesheetCUSTOMER_GROUP_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CG ID'
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
      Required = True
    end
    object cdsTimesheetACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
      Required = True
    end
    object cdsTimesheetACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsTimesheetTIME_SPENT: TFloatField
      DisplayLabel = 'Mins'
      FieldName = 'TIME_SPENT'
      Origin = 'TIME_SPENT'
      Required = True
    end
    object cdsTimesheetTIME_HOURS: TFloatField
      DisplayLabel = 'Hours'
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object cdsTimesheetACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
      Required = True
    end
    object cdsTimesheetSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
      Required = True
    end
    object cdsTimesheetITEM_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsTimesheetLOCKED: TIntegerField
      DisplayLabel = 'Locked'
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
      Required = True
    end
    object cdsTimesheetDATE_MODIFIED: TDateField
      DisplayLabel = 'Modified'
      FieldName = 'DATE_MODIFIED'
      Origin = 'DATE_MODIFIED'
      Required = True
    end
    object cdsTimesheetTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
      Required = True
    end
    object cdsTimesheetPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsTimesheetBILLABLE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
      Required = True
    end
    object cdsTimesheetDAY_NAME: TStringField
      DisplayLabel = 'Day'
      FieldName = 'DAY_NAME'
      Origin = 'DAY_NAME'
      FixedChar = True
      Size = 3
    end
    object cdsTimesheetDAY_ORDER: TIntegerField
      DisplayLabel = 'Ord'
      FieldName = 'DAY_ORDER'
      Origin = 'DAY_ORDER'
    end
    object cdsTimesheetINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsTimesheetCARRY_FORWARD: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C/F'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
      Required = True
    end
    object cdsTimesheetDATE_CARRIED_FORWARD: TDateField
      DisplayLabel = 'Carried Fwd'
      FieldName = 'DATE_CARRIED_FORWARD'
    end
    object cdsTimesheetAPPROVED: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'App'
      FieldName = 'APPROVED'
      Origin = 'APPROVED'
      Required = True
    end
    object cdsTimesheetIS_ADDITIONAL_WORK: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'A/W'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
      Required = True
    end
    object cdsTimesheetBILLABLE_STR: TStringField
      DisplayLabel = 'Bill'
      FieldKind = fkCalculated
      FieldName = 'BILLABLE_STR'
      Size = 1
      Calculated = True
    end
    object cdsTimesheetDATE_RELEASED: TDateField
      DisplayLabel = 'Released'
      FieldName = 'DATE_RELEASED'
    end
    object cdsTimesheetRELEASE_CFWD_TO_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'To Period'
      FieldName = 'RELEASE_TO_PERIOD'
    end
    object cdsTimesheetCARRY_FORWARD_VALUE: TFloatField
      DisplayLabel = 'CFwd Value'
      FieldName = 'CARRY_FORWARD_VALUE'
    end
  end
  object dtsTimesheet: TDataSource
    DataSet = cdsTimesheet
    Left = 520
    Top = 185
  end
  object cdsCarryForwardDetail: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforeEdit = cdsTimesheetBeforeEdit
    BeforePost = cdsCarryForwardDetailBeforePost
    AfterPost = cdsTimesheetAfterPost
    OnCalcFields = cdsCarryForwardDetailCalcFields
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxActivityDate'
        Fields = 'ACTIVITY_DATE'
        Options = [soNoCase]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxActivityDate'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 630
    Top = 135
    object cdsCarryForwardDetailID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCarryForwardDetailUSER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'User Name'
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
    end
    object cdsCarryForwardDetailCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsCarryForwardDetailPRICE_LIST_ITEM_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Price Item'
      FieldName = 'PRICE_LIST_ITEM_ID'
      Origin = 'PRICE_LIST_ITEM_ID'
      Required = True
    end
    object cdsCarryForwardDetailRATE_UNIT_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Rate Unit'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
      Required = True
    end
    object cdsCarryForwardDetailACTIVITY_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE_ID'
      Origin = 'ACTIVITY_TYPE_ID'
      Required = True
    end
    object cdsCarryForwardDetailINVOICE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
      Required = True
    end
    object cdsCarryForwardDetailACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsCarryForwardDetailTIME_SPENT: TFloatField
      DisplayLabel = 'Mins'
      FieldName = 'TIME_SPENT'
      Origin = 'TIME_SPENT'
      Required = True
    end
    object cdsCarryForwardDetailTIME_HOURS: TFloatField
      DisplayLabel = 'Hours'
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object cdsCarryForwardDetailACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
      Required = True
    end
    object cdsCarryForwardDetailSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
      Required = True
    end
    object cdsCarryForwardDetailCN_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C/N No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
      Required = True
    end
    object cdsCarryForwardDetailITEM_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsCarryForwardDetailCARRY_FORWARD_VALUE: TFloatField
      DisplayLabel = 'CFwd Value'
      FieldName = 'CARRY_FORWARD_VALUE'
      Origin = 'CARRY_FORWARD_VALUE'
    end
    object cdsCarryForwardDetailLOCKED: TIntegerField
      DisplayLabel = 'Locked'
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
      Required = True
    end
    object cdsCarryForwardDetailACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
      Required = True
    end
    object cdsCarryForwardDetailDATE_MODIFIED: TDateField
      DisplayLabel = 'Modified'
      FieldName = 'DATE_MODIFIED'
      Origin = 'DATE_MODIFIED'
      Required = True
    end
    object cdsCarryForwardDetailTHE_PERIOS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
      Required = True
    end
    object cdsCarryForwardDetailPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsCarryForwardDetailBILLABLE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
      Required = True
    end
    object cdsCarryForwardDetailDAY_NAME: TStringField
      DisplayLabel = 'Day'
      FieldName = 'DAY_NAME'
      Origin = 'DAY_NAME'
      FixedChar = True
      Size = 3
    end
    object cdsCarryForwardDetailDAY_ORDER: TIntegerField
      DisplayLabel = 'Ord'
      FieldName = 'DAY_ORDER'
      Origin = 'DAY_ORDER'
    end
    object cdsCarryForwardDetailINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsCarryForwardDetailCARRY_FORWARD: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C/F'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
      Required = True
    end
    object cdsCarryForwardDetailAPPROVED: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'App'
      FieldName = 'APPROVED'
      Origin = 'APPROVED'
      Required = True
    end
    object cdsCarryForwardDetailIS_ADDITIONAL_WORK: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'A/W'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
      Required = True
    end
    object cdsCarryForwardDetailCUSTOMER_GROUP_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CG ID'
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
      Required = True
    end
    object cdsCarryForwardDetailBILLABLE_STR: TStringField
      DisplayLabel = 'Bill'
      FieldKind = fkCalculated
      FieldName = 'BILLABLE_STR'
      Size = 1
      Calculated = True
    end
  end
  object dtsCarryForwardDetail: TDataSource
    DataSet = cdsCarryForwardDetail
    Left = 630
    Top = 185
  end
  object cdsCustomerGroup: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxCGroupID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxCGroupName'
        Fields = 'CUSTOMER_GROUP;CUSTOMER_NAME'
        Options = [soNoCase]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxCGroupName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 70
    Top = 505
  end
  object dtsCustomerGroup: TDataSource
    DataSet = cdsCustomerGroup
    Left = 65
    Top = 555
  end
  object cdsCustomer: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    CachedUpdates = True
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 175
    Top = 505
    object cdsCustomerID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustomerCUSTOMER_TYPE_ID: TIntegerField
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
      Required = True
    end
    object cdsCustomerSTATUS_ID: TIntegerField
      FieldName = 'STATUS_ID'
      Origin = 'STATUS_ID'
      Required = True
    end
    object cdsCustomerNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
    object cdsCustomerFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsCustomerLAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsCustomerINITIALS: TStringField
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      Size = 5
    end
    object cdsCustomerTRADING_AS: TStringField
      FieldName = 'TRADING_AS'
      Origin = 'TRADING_AS'
      Size = 100
    end
    object cdsCustomerBILL_TO: TStringField
      FieldName = 'BILL_TO'
      Origin = 'BILL_TO'
      Size = 100
    end
    object cdsCustomerCO_NO: TStringField
      FieldName = 'CO_NO'
      Origin = 'CO_NO'
    end
    object cdsCustomerTAX_NO: TStringField
      FieldName = 'TAX_NO'
      Origin = 'TAX_NO'
    end
    object cdsCustomerVAT_NO: TStringField
      FieldName = 'VAT_NO'
      Origin = 'VAT_NO'
    end
    object cdsCustomerIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
      Origin = 'IS_ACTIVE'
      Required = True
    end
    object cdsCustomerCUSTOMER_GROUP_ID: TIntegerField
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
    end
  end
  object dtsCustomer: TDataSource
    DataSet = cdsCustomer
    Left = 175
    Top = 555
  end
  object cdsPriceListView: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'PRICE_LIST_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'PRICE_LIST'
    Left = 625
    Top = 10
    object cdsPriceListViewID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsPriceListViewRATE_UNIT_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'RU ID'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
    end
    object cdsPriceListViewNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 200
    end
    object cdsPriceListViewRATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
      Origin = 'RATE'
      DisplayFormat = '##,###0,00'
    end
    object cdsPriceListViewDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 500
    end
    object cdsPriceListViewINVOICE_DESCRIPTION: TStringField
      DisplayLabel = 'Invoice Description'
      FieldName = 'INVOICE_DESCRIPTION'
      Origin = 'INVOICE_DESCRIPTION'
      Size = 200
    end
    object cdsPriceListViewRATE_UNIT: TStringField
      DisplayLabel = 'Rate Unit'
      FieldName = 'RATE_UNIT'
      Origin = 'RATE_UNIT'
      Size = 30
    end
  end
  object dtsPriceListView: TDataSource
    DataSet = cdsPriceListView
    Left = 625
    Top = 60
  end
  object cdsRateUnit: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'RATE_UNIT_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'RATE_UNIT'
    Left = 700
    Top = 10
    object cdsRateUnitID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Rate'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRateUnitNAME: TStringField
      DisplayLabel = 'Rate'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 30
    end
    object cdsRateUnitABBREVIATION: TStringField
      DisplayLabel = 'Abbr'
      FieldName = 'ABBREVIATION'
      Size = 5
    end
  end
  object dtsRateUnit: TDataSource
    DataSet = cdsRateUnit
    Left = 700
    Top = 60
  end
  object cdsSystemUser: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'SYSTEM_USER_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'SYSTEM_USER'
    Left = 160
    Top = 10
    object cdsSystemUserID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSystemUserFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Required = True
      Size = 30
    end
    object cdsSystemUserLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Required = True
      Size = 30
    end
    object cdsSystemUserLOGIN_NAME: TStringField
      DisplayLabel = 'Login Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
      Required = True
    end
    object cdsSystemUserEMAIL_ADDRESS: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL_ADDRESS'
      Origin = 'EMAIL_ADDRESS'
      Size = 100
    end
    object cdsSystemUserPASSWORD: TStringField
      DisplayLabel = 'PW'
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
      Size = 100
    end
    object cdsSystemUserACCOUNT_ENABLED: TIntegerField
      DisplayLabel = 'Enabled'
      FieldName = 'ACCOUNT_ENABLED'
      Origin = 'ACCOUNT_ENABLED'
      Required = True
    end
  end
  object dtsSystemUser: TDataSource
    DataSet = cdsSystemUser
    Left = 160
    Top = 60
  end
  object rptBillCFwd: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43930.251871655090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 360
    Top = 370
    Datasets = <
      item
        DataSet = BillCFwd
        DataSetName = 'BillCFwd'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
        DataSet = BillCFwd
        DataSetName = 'BillCFwd'
        RowCount = 0
        Stretched = True
        object TimesheetACTIVITY_DATE: TfrxMemoView
          AllowVectorExport = True
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY_DATE'
          DataSet = BillCFwd
          DataSetName = 'BillCFwd'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[BillCFwd."ACTIVITY_DATE"]')
        end
        object TimesheetCUSTOMER_NAME: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CUSTOMER_NAME'
          DataSet = BillCFwd
          DataSetName = 'BillCFwd'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[BillCFwd."CUSTOMER_NAME"]')
        end
        object TimesheetACTIVITY_TYPE: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY_TYPE'
          DataSet = BillCFwd
          DataSetName = 'BillCFwd'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[BillCFwd."ACTIVITY_TYPE"]')
        end
        object TimesheetACTIVITY: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 279.685039370000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY'
          DataSet = BillCFwd
          DataSetName = 'BillCFwd'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[BillCFwd."ACTIVITY"]')
        end
        object TimesheetTIME_SPENT: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CARRY_FORWARD_VALUE'
          DataSet = BillCFwd
          DataSetName = 'BillCFwd'
          DisplayFormat.FormatStr = '###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[BillCFwd."CARRY_FORWARD_VALUE"]')
        end
        object TimesheetRATE: TfrxMemoView
          AllowVectorExport = True
          Left = 831.496006850000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTUAL_RATE'
          DataSet = BillCFwd
          DataSetName = 'BillCFwd'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[BillCFwd."ACTUAL_RATE"]')
        end
        object TimesheetITEM_VALUE: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_VALUE'
          DataSet = BillCFwd
          DataSetName = 'BillCFwd'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[BillCFwd."ITEM_VALUE"]')
        end
        object TimesheetTIME_HOURS: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362187640000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TIME_HOURS'
          DataSet = BillCFwd
          DataSetName = 'BillCFwd'
          DisplayFormat.FormatStr = '###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[BillCFwd."TIME_HOURS"]')
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 759.685530000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'BILLABLE_STR'
          DataSet = BillCFwd
          DataSetName = 'BillCFwd'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[BillCFwd."BILLABLE_STR"]')
        end
      end
      object bndPageFooter: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 22.677180000000000000
        Top = 514.016080000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 854.173780000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object bndPageHeader: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 68.031540000000000000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 1046.929133860000000000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Date')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149606300000000000
          Top = 49.133890000000000000
          Width = 230.551181100000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Customer')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480329610000000000
          Top = 49.133890000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Activity Type')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220472440000000000
          Top = 49.133890000000000000
          Width = 279.685039370079000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Description')
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258818897700000
          Top = 49.133890000000000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'C/Fwd')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 831.496006850000000000
          Top = 49.133890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Rate')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968513700000000000
          Top = 49.133890000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Amt')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362187640000000000
          Top = 49.133890000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hrs')
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 487.559370000000000000
          Height = 30.236220470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Billing/Carry Forward Comparison Report')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 759.685017400000000000
          Top = 49.133890000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Bl')
        end
      end
      object bndGrandTotals: TfrxFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        object Memo4: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<BillCFwd."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<BillCFwd."ITEM_VALUE">,bndMaster)]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362204720000000000
          Width = 49.133860710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<BillCFwd."TIME_HOURS">,bndMaster)]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Grand Totals:')
        end
      end
      object bndGroupHeader: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 30.236220470000000000
        ParentFont = False
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        Condition = 'BillCFwd."BILL_CFWD"'
        ResetPageNumbers = True
        StartNewPage = True
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Width = 476.220780000000000000
          Height = 26.456692910000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Timesheets to [BillCFwd."BILL_CFWD"]')
        end
      end
      object bndGroupFooter: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 264.567100000000000000
        Width = 1046.929810000000000000
        object Memo29: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<BillCFwd."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<BillCFwd."ITEM_VALUE">,bndMaster)]')
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362204720000000000
          Width = 49.133860710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<BillCFwd."TIME_HOURS">,bndMaster)]')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 177.637817240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totals For: [BillCFwd."BILL_CFWD"]')
        end
      end
      object bndReportSummary: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 105.826771650000000000
        ParentFont = False
        Top = 385.512060000000000000
        Width = 1046.929810000000000000
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 718.110236220000000000
          Top = 7.559055118110240000
          Width = 253.228346460000000000
          Height = 77.480314960629900000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Top = 28.236240000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(IIF(<BillCFwd."CARRY_FORWARD">=0,<BillCFwd."ITEM_VALUE">,0)' +
              ')]')
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Top = 47.244094490000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(IIF(<BillCFwd."CARRY_FORWARD">=1,<BillCFwd."CARRY_FORWARD_V' +
              'ALUE">,0))]')
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Top = 66.141732280000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<BillCFwd."ITEM_VALUE">,bndMaster)]')
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 729.449290000000000000
          Top = 28.236240000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Billed:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 729.449290000000000000
          Top = 47.244094490000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C/Fwd:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 729.449290000000000000
          Top = 66.141732280000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 7.559050239999980000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Billing report summary totals')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362710000000000000
          Top = 28.236240000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(IIF(<BillCFwd."CARRY_FORWARD">=0,<BillCFwd."TIME_HOURS">,0)' +
              ')]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362710000000000000
          Top = 47.244094490000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(IIF(<BillCFwd."CARRY_FORWARD">=1,<BillCFwd."TIME_HOURS">,0)' +
              ')]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362710000000000000
          Top = 66.141732280000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<BillCFwd."TIME_HOURS">,bndMaster)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362710000000000000
          Top = 8.559059999999990000
          Width = 49.133858267716500000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            'Hours')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 891.969080000000000000
          Top = 8.559059999999990000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            'Value')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = 28.236240000000000000
          Width = 253.228346460000000000
          Height = 3.779527560000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = 47.244094490000000000
          Width = 253.228346460000000000
          Height = 3.779527560000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = 66.031491180000000000
          Width = 253.228346460000000000
          Height = 3.779527560000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          ParentFont = False
        end
      end
    end
  end
  object dtsTimesheetDetail: TDataSource
    DataSet = cdsTimesheetDetail
    Left = 755
    Top = 185
  end
  object cdsTimesheetCF: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    OnCalcFields = cdsTimesheetDetailCalcFields
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxActivityDate'
        Fields = 'ACTIVITY_DATE'
        Options = [soNoCase]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxActivityDate'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'TIMESHEET_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'TIMESHEET'
    StoreDefs = True
    Left = 865
    Top = 135
    object cdsTimesheetCFID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsTimesheetCFUSER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'User Name'
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
    end
    object cdsTimesheetCFCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object cdsTimesheetCFRATE_UNIT_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'RU ID'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
    end
    object cdsTimesheetCFINVOICE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object cdsTimesheetCFCN_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CN No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
    end
    object cdsTimesheetCFACTIVITY_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'AT ID'
      FieldName = 'ACTIVITY_TYPE_ID'
      Origin = 'ACTIVITY_TYPE_ID'
    end
    object cdsTimesheetCFPRICE_LIST_ITEM_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'PI ID'
      FieldName = 'PRICE_LIST_ITEM_ID'
      Origin = 'PRICE_LIST_ITEM_ID'
    end
    object cdsTimesheetCFCUSTOMER_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CT ID'
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
    end
    object cdsTimesheetCFFIRST_NAME: TStringField
      DisplayLabel = 'User Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsTimesheetCFLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsTimesheetCFLOGIN_NAME: TStringField
      DisplayLabel = 'User Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
    end
    object cdsTimesheetCFACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
    end
    object cdsTimesheetCFCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsTimesheetCFCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'CUSTOMER_NAME'
      Origin = 'CUSTOMER_NAME'
      Size = 100
    end
    object cdsTimesheetCFACTIVITY_TYPE: TStringField
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE'
      Origin = 'ACTIVITY_TYPE'
      Size = 50
    end
    object cdsTimesheetCFACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsTimesheetCFPRICE_LIST_ITEM: TStringField
      DisplayLabel = 'Price Item'
      FieldName = 'PRICE_LIST_ITEM'
      Origin = 'PRICE_LIST_ITEM'
      Size = 200
    end
    object cdsTimesheetCFTIME_SPENT: TFloatField
      DisplayLabel = 'Mins'
      FieldName = 'TIME_SPENT'
      Origin = 'TIME_SPENT'
    end
    object cdsTimesheetCFTIME_HOURS: TFloatField
      DisplayLabel = 'Hrs'
      FieldKind = fkInternalCalc
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object cdsTimesheetCFITEM_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldKind = fkInternalCalc
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsTimesheetCFCARRY_FORWARD_VALUE: TFloatField
      DisplayLabel = 'Carry Fwd'
      FieldName = 'CARRY_FORWARD_VALUE'
      Origin = 'CARRY_FORWARD_VALUE'
    end
    object cdsTimesheetCFACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
    end
    object cdsTimesheetCFSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
    end
    object cdsTimesheetCFDATE_MODIFIED: TDateField
      DisplayLabel = 'Modified'
      FieldName = 'DATE_MODIFIED'
      Origin = 'DATE_MODIFIED'
    end
    object cdsTimesheetCFTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldKind = fkInternalCalc
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
    end
    object cdsTimesheetCFPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldKind = fkInternalCalc
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsTimesheetCFBILLABLE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
    end
    object cdsTimesheetCFBILLABLE_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE_STR'
      Origin = 'BILLABLE_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTimesheetCFDAY_NAME: TStringField
      DisplayLabel = 'Day'
      FieldName = 'DAY_NAME'
      Origin = 'DAY_NAME'
      FixedChar = True
      Size = 3
    end
    object cdsTimesheetCFDAY_ORDER: TIntegerField
      DisplayLabel = 'Ord'
      FieldName = 'DAY_ORDER'
      Origin = 'DAY_ORDER'
    end
    object cdsTimesheetCFLOCKED: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Lck'
      FieldKind = fkInternalCalc
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
    end
    object cdsTimesheetCFLOCKED_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Lck'
      FieldName = 'LOCKED_STR'
      Origin = 'LOCKED_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTimesheetCFINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsTimesheetCFCARRY_FORWARD: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C/Fwd'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
    end
    object cdsTimesheetCFIS_ADDITIONAL_WORK: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Add Wrk'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
    end
    object cdsTimesheetCFIS_ADDITIONAL_WORK_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Add Wrk'
      FieldName = 'IS_ADDITIONAL_WORK_STR'
      Origin = 'IS_ADDITIONAL_WORK_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTimesheetCFCUSTOMER_GROUP_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CG ID'
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
    end
    object cdsTimesheetCFCUSTOMER_GROUP_LINK_NAME: TStringField
      DisplayLabel = 'CG Link Name'
      FieldName = 'CUSTOMER_GROUP_LINK_NAME'
      Origin = 'CUSTOMER_GROUP_LINK_NAME'
      Size = 100
    end
    object cdsTimesheetCFCARRY_FORWARD_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'C/Fwd'
      FieldName = 'CARRY_FORWARD_STR'
      Origin = 'CARRY_FORWARD_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTimesheetCFAPPROVED: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Appr'
      FieldName = 'APPROVED'
      Origin = 'APPROVED'
    end
    object cdsTimesheetCFFULL_NAME: TStringField
      DisplayLabel = 'Name'
      FieldKind = fkCalculated
      FieldName = 'FULL_NAME'
      Origin = 'FULL_NAME'
      Size = 61
      Calculated = True
    end
  end
  object dtsTimesheetCF: TDataSource
    DataSet = cdsTimesheetCF
    Left = 865
    Top = 185
  end
  object cdsSystemUser1: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'SYSTEM_USER_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'SYSTEM_USER'
    Left = 770
    Top = 490
    object cdsSystemUser1ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSystemUser1FIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Required = True
      Size = 30
    end
    object cdsSystemUser1LAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Required = True
      Size = 30
    end
    object cdsSystemUser1LOGIN_NAME: TStringField
      DisplayLabel = 'Login Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
      Required = True
    end
    object cdsSystemUser1EMAIL_ADDRESS: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL_ADDRESS'
      Origin = 'EMAIL_ADDRESS'
      Size = 100
    end
    object cdsSystemUser1PASSWORD: TStringField
      DisplayLabel = 'PW'
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
      Size = 100
    end
    object cdsSystemUser1ACCOUNT_ENABLED: TIntegerField
      DisplayLabel = 'Enabled'
      FieldName = 'ACCOUNT_ENABLED'
      Origin = 'ACCOUNT_ENABLED'
      Required = True
    end
  end
  object dtsSystemUser1: TDataSource
    DataSet = cdsSystemUser1
    Left = 770
    Top = 540
  end
  object cdsSystemUser2: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'SYSTEM_USER_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'SYSTEM_USER'
    Left = 765
    Top = 610
    object cdsSystemUser2ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSystemUser2FIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Required = True
      Size = 30
    end
    object cdsSystemUser2LAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Required = True
      Size = 30
    end
    object cdsSystemUser2LOGIN_NAME: TStringField
      DisplayLabel = 'Login Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
      Required = True
    end
    object cdsSystemUser2EMAIL_ADDRESS: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL_ADDRESS'
      Origin = 'EMAIL_ADDRESS'
      Size = 100
    end
    object cdsSystemUser2PASSWORD: TStringField
      DisplayLabel = 'PW'
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
      Size = 100
    end
    object cdsSystemUser2ACCOUNT_ENABLED: TIntegerField
      DisplayLabel = 'Enabled'
      FieldName = 'ACCOUNT_ENABLED'
      Origin = 'ACCOUNT_ENABLED'
      Required = True
    end
  end
  object dtsSystemUser2: TDataSource
    DataSet = cdsSystemUser2
    Left = 765
    Top = 660
  end
  object cdsPriceList1: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'PRICE_LIST_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'PRICE_LIST'
    StoreDefs = True
    Left = 852
    Top = 490
    object cdsPriceList1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPriceList1RATE_UNIT_ID: TIntegerField
      DisplayLabel = 'RU ID'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
      Required = True
    end
    object cdsPriceList1NAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 200
    end
    object cdsPriceList1RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
      Origin = 'RATE'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsPriceList1DESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 500
    end
    object cdsPriceList1INVOICE_DESCRIPTION: TStringField
      DisplayLabel = 'invoice Description'
      FieldName = 'INVOICE_DESCRIPTION'
      Origin = 'INVOICE_DESCRIPTION'
      Size = 200
    end
    object cdsPriceList1RATE_UNIT: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'RATE_UNIT'
      Size = 30
    end
  end
  object dtsPriceList1: TDataSource
    DataSet = cdsPriceList1
    Left = 852
    Top = 540
  end
  object cdsPriceList2: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'PRICE_LIST_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'PRICE_LIST'
    StoreDefs = True
    Left = 852
    Top = 610
    object IntegerField21: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField22: TIntegerField
      DisplayLabel = 'RU ID'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
      Required = True
    end
    object StringField14: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 200
    end
    object FloatField6: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
      Origin = 'RATE'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object StringField15: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 500
    end
    object StringField16: TStringField
      DisplayLabel = 'invoice Description'
      FieldName = 'INVOICE_DESCRIPTION'
      Origin = 'INVOICE_DESCRIPTION'
      Size = 200
    end
    object StringField17: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'RATE_UNIT'
      Size = 30
    end
  end
  object dtsPriceList2: TDataSource
    DataSet = cdsPriceList2
    Left = 852
    Top = 660
  end
  object cdsRateUnit1: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'RATE_UNIT_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'RATE_UNIT'
    StoreDefs = True
    Left = 931
    Top = 490
    object cdsRateUnit1ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRateUnit1NAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 30
    end
  end
  object dtsRateUnit1: TDataSource
    DataSet = cdsRateUnit1
    Left = 931
    Top = 545
  end
  object cdsRateUnit2: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'RATE_UNIT_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'RATE_UNIT'
    StoreDefs = True
    Left = 931
    Top = 605
    object cdsRateUnit2ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRateUnit2NAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 30
    end
  end
  object dtsRateUnit2: TDataSource
    DataSet = cdsRateUnit2
    Left = 931
    Top = 660
  end
  object cdsActivityType1: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'ACTIVITY_TYPE_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'ACTIVITY_TYPE'
    StoreDefs = True
    Left = 1043
    Top = 490
    object cdsActivityType1ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsActivityType1NAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
  end
  object dtsActivityType1: TDataSource
    DataSet = cdsActivityType1
    Left = 1043
    Top = 545
  end
  object cdsActivityType2: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'ACTIVITY_TYPE_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'ACTIVITY_TYPE'
    StoreDefs = True
    Left = 1038
    Top = 605
    object cdsActivityType2ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsActivityType2NAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
  end
  object dtsActivityType2: TDataSource
    DataSet = cdsActivityType2
    Left = 1038
    Top = 660
  end
  object cdsBillCFwd: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
      end>
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 360
    Top = 275
    object cdsBillCFwdBILL_CFWD: TStringField
      DisplayLabel = 'Billing Status'
      FieldName = 'BILL_CFWD'
      Size = 13
    end
    object cdsBillCFwdCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'CUSTOMER_NAME'
      Origin = 'CUSTOMER_NAME'
      Size = 100
    end
    object cdsBillCFwdLOGIN_NAME: TStringField
      DisplayLabel = 'User Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
    end
    object cdsBillCFwdACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
    end
    object cdsBillCFwdACTIVITY_TYPE: TStringField
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE'
      Origin = 'ACTIVITY_TYPE'
      Size = 50
    end
    object cdsBillCFwdID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsBillCFwdFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsBillCFwdLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsBillCFwdCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsBillCFwdACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsBillCFwdPRICE_LIST_ITEM: TStringField
      DisplayLabel = 'Item Type'
      FieldName = 'PRICE_LIST_ITEM'
      Origin = 'PRICE_LIST_ITEM'
      Size = 200
    end
    object cdsBillCFwdTIME_SPENT: TFloatField
      DisplayLabel = 'Mins'
      FieldName = 'TIME_SPENT'
      Origin = 'TIME_SPENT'
    end
    object cdsBillCFwdTIME_HOURS: TFloatField
      DisplayLabel = 'Hours'
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object cdsBillCFwdACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
    end
    object cdsBillCFwdSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
    end
    object cdsBillCFwdITEM_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsBillCFwdTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
    end
    object cdsBillCFwdPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsBillCFwdBILLABLE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
    end
    object cdsBillCFwdBILLABLE_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE_STR'
      Origin = 'BILLABLE_STR'
      FixedChar = True
      Size = 1
    end
    object cdsBillCFwdINVOICE_ID: TIntegerField
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object cdsBillCFwdCN_ID: TIntegerField
      DisplayLabel = 'CN No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
    end
    object cdsBillCFwdLOCKED: TIntegerField
      DisplayLabel = 'Lock'
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
    end
    object cdsBillCFwdLOCKED_STR: TStringField
      DisplayLabel = 'Lock'
      FieldName = 'LOCKED_STR'
      Size = 1
    end
    object cdsBillCFwdINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsBillCFwdCARRY_FORWARD: TIntegerField
      DisplayLabel = 'C Fwd'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
    end
    object cdsBillCFwdCARRY_FORWARD_STR: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'C Fwd'
      FieldName = 'CARRY_FORWARD_STR'
      Origin = 'CARRY_FORWARD_STR'
      FixedChar = True
      Size = 1
    end
    object cdsBillCFwdIS_ADDITIONAL_WORK: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Add Wk'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
    end
    object cdsBillCFwdIS_ADDITIONAL_WORK_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Add Wk'
      FieldName = 'IS_ADDITIONAL_WORK_STR'
      Origin = 'IS_ADDITIONAL_WORK_STR'
      FixedChar = True
      Size = 1
    end
    object cdsBillCFwdCARRY_FORWARD_VALUE: TFloatField
      DisplayLabel = 'C/Fwd'
      FieldName = 'CARRY_FORWARD_VALUE'
    end
  end
  object dtsBillCFwd: TDataSource
    DataSet = cdsBillCFwd
    Left = 360
    Top = 320
  end
  object BillCFwd: TfrxDBDataset
    UserName = 'BillCFwd'
    CloseDataSource = False
    FieldAliases.Strings = (
      'BILL_CFWD=BILL_CFWD'
      'CUSTOMER_NAME=CUSTOMER_NAME'
      'LOGIN_NAME=LOGIN_NAME'
      'ACTIVITY_DATE=ACTIVITY_DATE'
      'ACTIVITY_TYPE=ACTIVITY_TYPE'
      'ID=ID'
      'FIRST_NAME=FIRST_NAME'
      'LAST_NAME=LAST_NAME'
      'CUSTOMER_TYPE=CUSTOMER_TYPE'
      'ACTIVITY=ACTIVITY'
      'PRICE_LIST_ITEM=PRICE_LIST_ITEM'
      'TIME_SPENT=TIME_SPENT'
      'TIME_HOURS=TIME_HOURS'
      'ACTUAL_RATE=ACTUAL_RATE'
      'STD_RATE=STD_RATE'
      'ITEM_VALUE=ITEM_VALUE'
      'THE_PERIOD=THE_PERIOD'
      'PERIOD_NAME=PERIOD_NAME'
      'BILLABLE=BILLABLE'
      'BILLABLE_STR=BILLABLE_STR'
      'INVOICE_ID=INVOICE_ID'
      'CN_ID=CN_ID'
      'LOCKED=LOCKED'
      'LOCKED_STR=LOCKED_STR'
      'INVOICE_DATE=INVOICE_DATE'
      'CARRY_FORWARD=CARRY_FORWARD'
      'CARRY_FORWARD_STR=CARRY_FORWARD_STR'
      'IS_ADDITIONAL_WORK=IS_ADDITIONAL_WORK'
      'IS_ADDITIONAL_WORK_STR=IS_ADDITIONAL_WORK_STR'
      'CARRY_FORWARD_VALUE=CARRY_FORWARD_VALUE')
    DataSet = cdsBillCFwd
    BCDToCurrency = False
    Left = 360
    Top = 425
  end
  object cdsMonthlyBilling: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 355
    Top = 505
    object cdsMonthlyBillingTHE_PERIOD: TIntegerField
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
    end
    object cdsMonthlyBillingPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsMonthlyBillingTHE_YEAR: TIntegerField
      DisplayLabel = 'Year'
      FieldName = 'THE_YEAR'
      Origin = 'THE_YEAR'
    end
    object cdsMonthlyBillingTHE_MONTH: TStringField
      DisplayLabel = 'Month'
      FieldName = 'THE_MONTH'
      Origin = 'THE_MONTH'
      FixedChar = True
      Size = 9
    end
    object cdsMonthlyBillingTOTAL_BILLABLE: TFloatField
      DisplayLabel = 'Total Billable'
      FieldName = 'TOTAL_BILLABLE'
      Origin = 'TOTAL_BILLABLE'
    end
    object cdsMonthlyBillingTOTAL_CARRY_FORWARD: TFloatField
      DisplayLabel = 'Total C/Fwd'
      FieldName = 'TOTAL_CARRY_FORWARD'
      Origin = 'TOTAL_CARRY_FORWARD'
    end
    object cdsMonthlyBillingTOTAL_HOURS_BILLABLE: TFloatField
      DisplayLabel = 'Total Hours'
      FieldName = 'TOTAL_HOURS_BILLABLE'
      Origin = 'TOTAL_HOURS_BILLABLE'
    end
  end
  object rptMonthlyBilling: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43909.309415254600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 355
    Top = 605
    Datasets = <
      item
        DataSet = fdsMonthlyBilling
        DataSetName = 'MonthlyBilling'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Height = 18.897637800000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = fdsMonthlyBilling
        DataSetName = 'MonthlyBilling'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'THE_MONTH'
          DataSet = fdsMonthlyBilling
          DataSetName = 'MonthlyBilling'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[MonthlyBilling."THE_MONTH"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsMonthlyBilling
          DataSetName = 'MonthlyBilling'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[MonthlyBilling."TOTAL_BILLABLE"]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_CARRY_FORWARD'
          DataSet = fdsMonthlyBilling
          DataSetName = 'MonthlyBilling'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[MonthlyBilling."TOTAL_CARRY_FORWARD"]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_HOURS_BILLABLE'
          DataSet = fdsMonthlyBilling
          DataSetName = 'MonthlyBilling'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[MonthlyBilling."TOTAL_HOURS_BILLABLE"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 22.677180000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 525.354670000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 37.795275590000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object lblReportTypeName: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 275.905690000000000000
          Width = 442.205010000000000000
          Height = 30.236220470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Report Type')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
      end
      object bndYearHeader: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 46.866141732283500000
        ParentFont = False
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        Condition = 'MonthlyBilling."THE_YEAR"'
        ResetPageNumbers = True
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop]
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Width = 377.953000000000000000
          Height = 22.677165350000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Year: [MonthlyBilling."THE_YEAR"]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Month')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 26.456710000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Billable')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 26.456710000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Carry Fwd')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 26.456710000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hours')
          ParentFont = False
        end
      end
      object bndYearFooter: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        Child = rptMonthlyBilling.Child1
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<MonthlyBilling."TOTAL_BILLABLE">,bndMaster)]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<MonthlyBilling."TOTAL_CARRY_FORWARD">,bndMaster)]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<MonthlyBilling."TOTAL_HOURS_BILLABLE">,bndMaster)]')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftRight]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Totals')
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        PrintChildIfInvisible = True
        ToNRows = 0
        ToNRowsMode = rmCount
      end
    end
  end
  object fdsMonthlyBilling: TfrxDBDataset
    UserName = 'MonthlyBilling'
    CloseDataSource = False
    FieldAliases.Strings = (
      'THE_PERIOD=THE_PERIOD'
      'PERIOD_NAME=PERIOD_NAME'
      'THE_YEAR=THE_YEAR'
      'THE_MONTH=THE_MONTH'
      'TOTAL_BILLABLE=TOTAL_BILLABLE'
      'TOTAL_CARRY_FORWARD=TOTAL_CARRY_FORWARD'
      'TOTAL_HOURS_BILLABLE=TOTAL_HOURS_BILLABLE')
    DataSet = cdsMonthlyBilling
    BCDToCurrency = False
    Left = 355
    Top = 660
  end
  object VbdevConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Data\Firebird\VB\VB.FDB'
      'ConnectionDef=VB Live')
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtCurrency
      end
      item
        SourceDataType = dtSingle
        TargetDataType = dtDouble
      end>
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 997
    Top = 12
  end
  object dtsMonthlyBilling: TDataSource
    DataSet = cdsMonthlyBilling
    Left = 355
    Top = 555
  end
  object cdsYear: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    CachedUpdates = True
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 265
    Top = 505
    object cdsYearTHE_YEAR: TIntegerField
      DisplayLabel = 'Year'
      FieldName = 'THE_YEAR'
    end
  end
  object dtsYear: TDataSource
    DataSet = cdsYear
    Left = 265
    Top = 555
  end
  object cdsTSSortOrder: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxOrdValue'
        Fields = 'ORD_VALUE'
      end>
    IndexName = 'idxOrdValue'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 545
    Top = 275
    object cdsTSSortOrderID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
    end
    object cdsTSSortOrderSORT_BY: TStringField
      DisplayLabel = 'Sort By'
      FieldName = 'SORT_BY'
    end
    object cdsTSSortOrderFIELD_NAME: TStringField
      DisplayLabel = 'Field Name'
      FieldName = 'FIELD_NAME'
    end
    object cdsTSSortOrderORD_VALUE: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'OV'
      FieldName = 'ORD_VALUE'
    end
    object cdsTSSortOrderFIELD_INDEX: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'F Idx'
      FieldName = 'FIELD_INDEX'
    end
  end
  object dtsTSSortOrder: TDataSource
    DataSet = cdsTSSortOrder
    Left = 545
    Top = 320
  end
  object rptTimesheetDetailGrouped: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43923.502922534720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 510
    Top = 370
    Datasets = <
      item
        DataSet = fdsTimesheetDetail
        DataSetName = 'TimesheetDetail'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        DataSet = fdsTimesheetDetail
        DataSetName = 'TimesheetDetail'
        RowCount = 0
        Stretched = True
        object TimesheetACTIVITY_DATE: TfrxMemoView
          AllowVectorExport = True
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY_DATE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY_DATE"]')
        end
        object TimesheetCUSTOMER_NAME: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CUSTOMER_NAME'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."CUSTOMER_NAME"]')
        end
        object TimesheetACTIVITY_TYPE: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY_TYPE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY_TYPE"]')
        end
        object TimesheetACTIVITY: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 268.346456692913000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY"]')
        end
        object TimesheetTIME_SPENT: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CARRY_FORWARD_VALUE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."CARRY_FORWARD_VALUE"]')
        end
        object TimesheetRATE: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039362760000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTUAL_RATE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."ACTUAL_RATE"]')
        end
        object TimesheetITEM_VALUE: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_VALUE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."ITEM_VALUE"]')
        end
        object TimesheetTIME_HOURS: TfrxMemoView
          AllowVectorExport = True
          Left = 756.685007640000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TIME_HOURS'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."TIME_HOURS"]')
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 734.008350000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'BILLABLE_STR'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TimesheetDetail."BILLABLE_STR"]')
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 865.511811023622000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ABBREVIATION'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TimesheetDetail."ABBREVIATION"]')
        end
      end
      object bndGroupFooter: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 257.008040000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."ITEM_VALUE">,bndMaster)]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 756.661417320000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."TIME_HOURS">,bndMaster)]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totals For: [TimesheetDetail."LOGIN_NAME"]')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
      end
      object bndGroupHeader: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677165350000000000
        ParentFont = False
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        Condition = 'TimesheetDetail."LOGIN_NAME"'
        KeepTogether = True
        ResetPageNumbers = True
        StartNewPage = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 532.913730000000000000
          Height = 22.677165350000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Timesheets for: [(<TimesheetDetail."LOGIN_NAME">)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 37.795300000000000000
        Top = 381.732530000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 854.173780000000000000
          Top = 18.897637795275600000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Col RU: HR = Hourly;  EA = Each;  PD = Per extra director;  PP =' +
              ' per page;  PR = Per return;  PT = Plus time spent')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 68.031540000000000000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000000000000629
          Top = 49.133890000000000000
          Width = 1046.929133860000000000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Date')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149606300000000000
          Top = 49.133890000000000000
          Width = 226.771653543307000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Customer')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700799610000000000
          Top = 49.133890000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Activity Type')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102352440000000000
          Top = 49.133890000000000000
          Width = 268.346456692913000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Description')
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258818897700000
          Top = 49.133890000000000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'C/Fwd')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039362760000000000
          Top = 49.133890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Rate')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968513700000000000
          Top = 49.133890000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Amt')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 756.685007640000000000
          Top = 49.133890000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hrs')
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 442.205010000000000000
          Height = 30.236220470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Timesheet Detail Report')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 734.007837400000000000
          Top = 49.133890000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Bl')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 865.512370000000000000
          Top = 49.133890000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'R')
        end
      end
      object bndReportSummary: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 336.378170000000000000
        Width = 1046.929810000000000000
        object Memo4: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."ITEM_VALUE">,bndMaster)]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 756.661417320000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."TIME_HOURS">,bndMaster)]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Grand Totals:')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object rptTimesheetByActivityDate: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43924.349382384260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 650
    Top = 475
    Datasets = <
      item
        DataSet = fdsTimesheetDetail
        DataSetName = 'TimesheetDetail'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        DataSet = fdsTimesheetDetail
        DataSetName = 'TimesheetDetail'
        RowCount = 0
        Stretched = True
        object TimesheetACTIVITY_DATE: TfrxMemoView
          AllowVectorExport = True
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'LOGIN_NAME'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."LOGIN_NAME"]')
        end
        object TimesheetCUSTOMER_NAME: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CUSTOMER_NAME'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."CUSTOMER_NAME"]')
        end
        object TimesheetACTIVITY_TYPE: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY_TYPE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY_TYPE"]')
        end
        object TimesheetACTIVITY: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 268.346456692913000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY"]')
        end
        object TimesheetTIME_SPENT: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CARRY_FORWARD_VALUE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."CARRY_FORWARD_VALUE"]')
        end
        object TimesheetRATE: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039362760000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTUAL_RATE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."ACTUAL_RATE"]')
        end
        object TimesheetITEM_VALUE: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_VALUE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."ITEM_VALUE"]')
        end
        object TimesheetTIME_HOURS: TfrxMemoView
          AllowVectorExport = True
          Left = 756.685007640000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TIME_HOURS'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."TIME_HOURS"]')
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 734.008350000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'BILLABLE_STR'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TimesheetDetail."BILLABLE_STR"]')
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 865.511811023622000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ABBREVIATION'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TimesheetDetail."ABBREVIATION"]')
        end
      end
      object bndGroupFooter: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 257.008040000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."ITEM_VALUE">,bndMaster)]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 756.661417320000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."TIME_HOURS">,bndMaster)]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 377.952907240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totals For: [TimesheetDetail."ACTIVITY_DATE"]')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
      end
      object bndGroupHeader: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677165350000000000
        ParentFont = False
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        Condition = 'TimesheetDetail."ACTIVITY_DATE"'
        KeepTogether = True
        ResetPageNumbers = True
        StartNewPage = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 532.913730000000000000
          Height = 22.677165350000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Timesheets for: [(<TimesheetDetail."ACTIVITY_DATE">)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 37.795300000000000000
        Top = 381.732530000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 854.173780000000000000
          Top = 18.897637795275600000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Col RU: HR = Hourly;  EA = Each;  PD = Per extra director;  PP =' +
              ' per page;  PR = Per return;  PT = Plus time spent')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 68.031540000000000000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000000000000629
          Top = 49.133890000000000000
          Width = 1046.929133860000000000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Date')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149606300000000000
          Top = 49.133890000000000000
          Width = 226.771653543307000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Customer')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700799610000000000
          Top = 49.133890000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Activity Type')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102352440000000000
          Top = 49.133890000000000000
          Width = 268.346456692913000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Description')
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258818897700000
          Top = 49.133890000000000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'C/Fwd')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039362760000000000
          Top = 49.133890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Rate')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968513700000000000
          Top = 49.133890000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Amt')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 756.685007640000000000
          Top = 49.133890000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hrs')
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 442.205010000000000000
          Height = 30.236220470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Timesheet Detail Report')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 734.007837400000000000
          Top = 49.133890000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Bl')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 865.512370000000000000
          Top = 49.133890000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'R')
        end
      end
      object bndReportSummary: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 336.378170000000000000
        Width = 1046.929810000000000000
        object Memo4: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."ITEM_VALUE">,bndMaster)]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 756.661417320000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."TIME_HOURS">,bndMaster)]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Grand Totals:')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object fdsTimesheetByActivityDate: TfrxDBDataset
    UserName = 'TimesheetByActivityDate'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FIRST_NAME=FIRST_NAME'
      'LAST_NAME=LAST_NAME'
      'LOGIN_NAME=LOGIN_NAME'
      'ACTIVITY_DATE=ACTIVITY_DATE'
      'CUSTOMER_TYPE=CUSTOMER_TYPE'
      'CUSTOMER_NAME=CUSTOMER_NAME'
      'ACTIVITY_TYPE=ACTIVITY_TYPE'
      'ACTIVITY=ACTIVITY'
      'PRICE_LIST_ITEM=PRICE_LIST_ITEM'
      'TIME_SPENT=TIME_SPENT'
      'TIME_HOURS=TIME_HOURS'
      'ACTUAL_RATE=ACTUAL_RATE'
      'STD_RATE=STD_RATE'
      'ABBREVIATION=ABBREVIATION'
      'ITEM_VALUE=ITEM_VALUE'
      'THE_PERIOD=THE_PERIOD'
      'PERIOD_NAME=PERIOD_NAME'
      'BILLABLE=BILLABLE'
      'BILLABLE_STR=BILLABLE_STR'
      'INVOICE_ID=INVOICE_ID'
      'CN_ID=CN_ID'
      'LOCKED=LOCKED'
      'LOCKED_STR=LOCKED_STR'
      'INVOICE_DATE=INVOICE_DATE'
      'CARRY_FORWARD=CARRY_FORWARD'
      'CARRY_FORWARD_STR=CARRY_FORWARD_STR'
      'IS_ADDITIONAL_WORK=IS_ADDITIONAL_WORK'
      'IS_ADDITIONAL_WORK_STR=IS_ADDITIONAL_WORK_STR'
      'CARRY_FORWARD_VALUE=CARRY_FORWARD_VALUE')
    DataSet = cdsTSBillable
    BCDToCurrency = False
    Left = 650
    Top = 530
  end
  object dtsTSBillableExcel: TDataSource
    DataSet = cdsTSBillableExcel
    Left = 735
    Top = 320
  end
  object cdsTSBillableExcel: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 735
    Top = 275
    object cdsTSBillableExcelID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsTSBillableExcelFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsTSBillableExcelLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsTSBillableExcelLOGIN_NAME: TStringField
      DisplayLabel = 'User Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
    end
    object cdsTSBillableExcelACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
    end
    object cdsTSBillableExcelCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsTSBillableExcelCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'CUSTOMER_NAME'
      Origin = 'CUSTOMER_NAME'
      Size = 100
    end
    object cdsTSBillableExcelACTIVITY_TYPE: TStringField
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE'
      Origin = 'ACTIVITY_TYPE'
      Size = 50
    end
    object cdsTSBillableExcelACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsTSBillableExcelPRICE_LIST_ITEM: TStringField
      DisplayLabel = 'Item Type'
      FieldName = 'PRICE_LIST_ITEM'
      Origin = 'PRICE_LIST_ITEM'
      Size = 200
    end
    object cdsTSBillableExcelTIME_SPENT: TFloatField
      DisplayLabel = 'Mins'
      FieldName = 'TIME_SPENT'
      Origin = 'TIME_SPENT'
    end
    object cdsTSBillableExcelTIME_HOURS: TFloatField
      DisplayLabel = 'Hours'
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object cdsTSBillableExcelACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
    end
    object cdsTSBillableExcelSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
    end
    object cdsTSBillableExcelABBREVIATION: TStringField
      Alignment = taCenter
      DisplayLabel = 'RU'
      FieldName = 'ABBREVIATION'
      Size = 5
    end
    object cdsTSBillableExcelITEM_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsTSBillableExcelTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
    end
    object cdsTSBillableExcelPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsTSBillableExcelBILLABLE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
    end
    object cdsTSBillableExcelBILLABLE_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE_STR'
      Origin = 'BILLABLE_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTSBillableExcelINVOICE_ID: TIntegerField
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object cdsTSBillableExcelCN_ID: TIntegerField
      DisplayLabel = 'CN No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
    end
    object cdsTSBillableExcelLOCKED: TIntegerField
      DisplayLabel = 'Lock'
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
    end
    object cdsTSBillableExcelLOCKED_STR: TStringField
      DisplayLabel = 'Lock'
      FieldName = 'LOCKED_STR'
      Size = 1
    end
    object cdsTSBillableExcelINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsTSBillableExcelCARRY_FORWARD: TIntegerField
      DisplayLabel = 'C Fwd'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
    end
    object cdsTSBillableExcelCARRY_FORWARD_STR: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'C Fwd'
      FieldName = 'CARRY_FORWARD_STR'
      Origin = 'CARRY_FORWARD_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTSBillableExcelIS_ADDITIONAL_WORK: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Add Wk'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
    end
    object cdsTSBillableExcelIS_ADDITIONAL_WORK_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Add Wk'
      FieldName = 'IS_ADDITIONAL_WORK_STR'
      Origin = 'IS_ADDITIONAL_WORK_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTSBillableExcelCARRY_FORWARD_VALUE: TFloatField
      DisplayLabel = 'C/Fwd'
      FieldName = 'CARRY_FORWARD_VALUE'
    end
  end
  object cdsBillCFwdExcel: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 440
    Top = 275
    object cdsBillCFwdExcelBILL_CFWD: TStringField
      DisplayLabel = 'Billing Status'
      FieldName = 'BILL_CFWD'
      Size = 13
    end
    object cdsBillCFwdExcelCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'CUSTOMER_NAME'
      Origin = 'CUSTOMER_NAME'
      Size = 100
    end
    object cdsBillCFwdExcelLOGIN_NAME: TStringField
      DisplayLabel = 'User Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
    end
    object cdsBillCFwdExcelACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
    end
    object cdsBillCFwdExcelACTIVITY_TYPE: TStringField
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE'
      Origin = 'ACTIVITY_TYPE'
      Size = 50
    end
    object cdsBillCFwdExcelID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsBillCFwdExcelFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsBillCFwdExcelLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsBillCFwdExcelCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsBillCFwdExcelACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsBillCFwdExcelPRICE_LIST_ITEM: TStringField
      DisplayLabel = 'Item Type'
      FieldName = 'PRICE_LIST_ITEM'
      Origin = 'PRICE_LIST_ITEM'
      Size = 200
    end
    object cdsBillCFwdExcelTIME_SPENT: TFloatField
      DisplayLabel = 'Mins'
      FieldName = 'TIME_SPENT'
      Origin = 'TIME_SPENT'
    end
    object cdsBillCFwdExcelTIME_HOURS: TFloatField
      DisplayLabel = 'Hours'
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object cdsBillCFwdExcelACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
    end
    object cdsBillCFwdExcelSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
    end
    object cdsBillCFwdExcelITEM_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsBillCFwdExcelTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
    end
    object cdsBillCFwdExcelPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsBillCFwdExcelBILLABLE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
    end
    object cdsBillCFwdExcelBILLABLE_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE_STR'
      Origin = 'BILLABLE_STR'
      FixedChar = True
      Size = 1
    end
    object cdsBillCFwdExcelINVOICE_ID: TIntegerField
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object cdsBillCFwdExcelCN_ID: TIntegerField
      DisplayLabel = 'CN No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
    end
    object cdsBillCFwdExcelLOCKED: TIntegerField
      DisplayLabel = 'Lock'
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
    end
    object cdsBillCFwdExcelLOCKED_STR: TStringField
      DisplayLabel = 'Lock'
      FieldName = 'LOCKED_STR'
      Size = 1
    end
    object cdsBillCFwdExcelINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsBillCFwdExcelCARRY_FORWARD: TIntegerField
      DisplayLabel = 'C Fwd'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
    end
    object cdsBillCFwdExcelCARRY_FORWARD_STR: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'C Fwd'
      FieldName = 'CARRY_FORWARD_STR'
      Origin = 'CARRY_FORWARD_STR'
      FixedChar = True
      Size = 1
    end
    object cdsBillCFwdExcelIS_ADDITIONAL_WORK: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Add Wk'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
    end
    object cdsBillCFwdExcelIS_ADDITIONAL_WORK_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Add Wk'
      FieldName = 'IS_ADDITIONAL_WORK_STR'
      Origin = 'IS_ADDITIONAL_WORK_STR'
      FixedChar = True
      Size = 1
    end
    object cdsBillCFwdExcelCARRY_FORWARD_VALUE: TFloatField
      DisplayLabel = 'C/Fwd'
      FieldName = 'CARRY_FORWARD_VALUE'
    end
  end
  object dtsBillCFwdExcel: TDataSource
    DataSet = cdsBillCFwdExcel
    Left = 440
    Top = 320
  end
  object rptTimesheetByCustomerType: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43930.390864097200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1065
    Top = 370
    Datasets = <
      item
        DataSet = fdsTimesheetDetail
        DataSetName = 'TimesheetDetail'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        DataSet = fdsTimesheetDetail
        DataSetName = 'TimesheetDetail'
        RowCount = 0
        Stretched = True
        object TimesheetACTIVITY_DATE: TfrxMemoView
          AllowVectorExport = True
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY_DATE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY_DATE"]')
        end
        object TimesheetCUSTOMER_NAME: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CUSTOMER_NAME'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."CUSTOMER_NAME"]')
        end
        object TimesheetACTIVITY_TYPE: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY_TYPE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY_TYPE"]')
        end
        object TimesheetACTIVITY: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 268.346456692913000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 7.000000000000000000
          Memo.UTF8W = (
            '[TimesheetDetail."ACTIVITY"]')
        end
        object TimesheetTIME_SPENT: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CARRY_FORWARD_VALUE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."CARRY_FORWARD_VALUE"]')
        end
        object TimesheetRATE: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039362760000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTUAL_RATE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."ACTUAL_RATE"]')
        end
        object TimesheetITEM_VALUE: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_VALUE'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."ITEM_VALUE"]')
        end
        object TimesheetTIME_HOURS: TfrxMemoView
          AllowVectorExport = True
          Left = 756.685007640000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TIME_HOURS'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          DisplayFormat.FormatStr = '###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TimesheetDetail."TIME_HOURS"]')
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 734.008350000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'BILLABLE_STR'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TimesheetDetail."BILLABLE_STR"]')
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 865.511811023622000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ABBREVIATION'
          DataSet = fdsTimesheetDetail
          DataSetName = 'TimesheetDetail'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TimesheetDetail."ABBREVIATION"]')
        end
      end
      object bndGroupFooter: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 18.897637800000000000
        ParentFont = False
        Top = 257.008040000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."ITEM_VALUE">,bndMaster)]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 756.661417320000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."TIME_HOURS">,bndMaster)]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totals For: [TimesheetDetail."LOGIN_NAME"]')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
      end
      object bndGroupHeader: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677165350000000000
        ParentFont = False
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        Condition = 'TimesheetDetail."CUSTOMER_TYPE"'
        KeepTogether = True
        ResetPageNumbers = True
        StartNewPage = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 532.913730000000000000
          Height = 22.677165350000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Timesheets for: [(<TimesheetDetail."CUSTOMER_TYPE">)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 37.795300000000000000
        Top = 381.732530000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 854.173780000000100000
          Top = 18.897637795275600000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Col RU: HR = Hourly;  EA = Each;  PD = Per extra director;  PP =' +
              ' per page;  PR = Per return;  PT = Plus time spent')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 68.031540000000000000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000000000000629
          Top = 49.133890000000000000
          Width = 1046.929133860000000000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Date')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149606300000000000
          Top = 49.133890000000000000
          Width = 226.771653543307000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Customer')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700799610000000000
          Top = 49.133890000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Activity Type')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102352440000000000
          Top = 49.133890000000000000
          Width = 268.346456692913000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Description')
        end
        object Memo25: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258818897700000
          Top = 49.133890000000000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'C/Fwd')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039362760000000000
          Top = 49.133890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Rate')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968513700000000000
          Top = 49.133890000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Amt')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 756.685007640000000000
          Top = 49.133890000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Hrs')
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 604.724800000000100000
          Width = 442.205010000000000000
          Height = 30.236220470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Timesheet Detail Report')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 734.007837400000000000
          Top = 49.133890000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Bl')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 865.512370000000000000
          Top = 49.133890000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'R')
        end
      end
      object bndReportSummary: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 336.378170000000000000
        Width = 1046.929810000000000000
        object Memo4: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339258820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."CARRY_FORWARD_VALUE">,bndMaster)]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."ITEM_VALUE">,bndMaster)]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 756.661417320000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<TimesheetDetail."TIME_HOURS">,bndMaster)]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Grand Totals:')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object cdsTimesheetDetail: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    OnCalcFields = cdsTimesheetDetailCalcFields
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <
      item
        Name = 'idxActivityDate'
        Fields = 'ACTIVITY_DATE'
      end>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxActivityDate'
        Fields = 'ACTIVITY_DATE'
      end>
    IndexName = 'idxActivityDate'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'TIMESHEET_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'TIMESHEET'
    StoreDefs = True
    Left = 755
    Top = 135
    object cdsTimesheetDetailID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsTimesheetDetailUSER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'User Name'
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
    end
    object cdsTimesheetDetailCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object cdsTimesheetDetailPRICE_LIST_ITEM_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'PI ID'
      FieldName = 'PRICE_LIST_ITEM_ID'
      Origin = 'PRICE_LIST_ITEM_ID'
    end
    object cdsTimesheetDetailRATE_UNIT_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'RU ID'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
    end
    object cdsTimesheetDetailACTIVITY_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'AT ID'
      FieldName = 'ACTIVITY_TYPE_ID'
      Origin = 'ACTIVITY_TYPE_ID'
    end
    object cdsTimesheetDetailINVOICE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object cdsTimesheetDetailCN_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CN No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
    end
    object cdsTimesheetDetailCUSTOMER_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CT ID'
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
    end
    object cdsTimesheetDetailACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
    end
    object cdsTimesheetDetailACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsTimesheetDetailTIME_SPENT: TFloatField
      DisplayLabel = 'Mins'
      FieldName = 'TIME_SPENT'
      Origin = 'TIME_SPENT'
    end
    object cdsTimesheetDetailTIME_HOURS: TFloatField
      DisplayLabel = 'Hrs'
      FieldKind = fkInternalCalc
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object cdsTimesheetDetailACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
    end
    object cdsTimesheetDetailSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
    end
    object cdsTimesheetDetailITEM_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldKind = fkInternalCalc
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsTimesheetDetailLOCKED: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Lck'
      FieldKind = fkInternalCalc
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
    end
    object cdsTimesheetDetailDATE_MODIFIED: TDateField
      DisplayLabel = 'Modified'
      FieldName = 'DATE_MODIFIED'
      Origin = 'DATE_MODIFIED'
    end
    object cdsTimesheetDetailTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldKind = fkInternalCalc
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
    end
    object cdsTimesheetDetailPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldKind = fkInternalCalc
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsTimesheetDetailBILLABLE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
    end
    object cdsTimesheetDetailDAY_NAME: TStringField
      DisplayLabel = 'Day'
      FieldName = 'DAY_NAME'
      Origin = 'DAY_NAME'
      FixedChar = True
      Size = 3
    end
    object cdsTimesheetDetailDAY_ORDER: TIntegerField
      DisplayLabel = 'Ord'
      FieldName = 'DAY_ORDER'
      Origin = 'DAY_ORDER'
    end
    object cdsTimesheetDetailINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsTimesheetDetailCARRY_FORWARD: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C/Fwd'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
    end
    object cdsTimesheetDetailDATE_CARRIED_FORWARD: TDateField
      DisplayLabel = 'Carried Fwd'
      FieldName = 'DATE_CARRIED_FORWARD'
    end
    object cdsTimesheetDetailAPPROVED: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Appr'
      FieldName = 'APPROVED'
      Origin = 'APPROVED'
    end
    object cdsTimesheetDetailIS_ADDITIONAL_WORK: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Add Wrk'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
    end
    object cdsTimesheetDetailDATE_RELEASED: TDateField
      DisplayLabel = 'Released'
      FieldName = 'DATE_RELEASED'
    end
    object cdsTimesheetDetailRELEASE_CFWD_TO_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'To Period'
      FieldName = 'RELEASE_CFWD_TO_PERIOD'
    end
    object cdsTimesheetDetailIS_ADDITIONAL_WORK_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Add Wrk'
      FieldName = 'IS_ADDITIONAL_WORK_STR'
      Origin = 'IS_ADDITIONAL_WORK_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTimesheetDetailCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsTimesheetDetailCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'CUSTOMER_NAME'
      Origin = 'CUSTOMER_NAME'
      Size = 100
    end
    object cdsTimesheetDetailACTIVITY_TYPE: TStringField
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE'
      Origin = 'ACTIVITY_TYPE'
      Size = 50
    end
    object cdsTimesheetDetailPRICE_LIST_ITEM: TStringField
      DisplayLabel = 'Price Item'
      FieldName = 'PRICE_LIST_ITEM'
      Origin = 'PRICE_LIST_ITEM'
      Size = 200
    end
    object cdsTimesheetDetailCARRY_FORWARD_VALUE: TFloatField
      DisplayLabel = 'Carry Fwd'
      FieldName = 'CARRY_FORWARD_VALUE'
      Origin = 'CARRY_FORWARD_VALUE'
    end
    object cdsTimesheetDetailBILLABLE_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE_STR'
      Origin = 'BILLABLE_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTimesheetDetailLOCKED_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Lck'
      FieldName = 'LOCKED_STR'
      Origin = 'LOCKED_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTimesheetDetailCUSTOMER_GROUP_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CG ID'
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
    end
    object cdsTimesheetDetailCUSTOMER_GROUP_LINK_NAME: TStringField
      DisplayLabel = 'CG Link Name'
      FieldName = 'CUSTOMER_GROUP_LINK_NAME'
      Origin = 'CUSTOMER_GROUP_LINK_NAME'
      Size = 100
    end
    object cdsTimesheetDetailCARRY_FORWARD_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'C/Fwd'
      FieldName = 'CARRY_FORWARD_STR'
      Origin = 'CARRY_FORWARD_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTimesheetDetailLOGIN_NAME: TStringField
      DisplayLabel = 'User Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
    end
    object cdsTimesheetDetailLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsTimesheetDetailFIRST_NAME: TStringField
      DisplayLabel = 'User Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsTimesheetDetailFULL_NAME: TStringField
      DisplayLabel = 'Name'
      FieldKind = fkCalculated
      FieldName = 'FULL_NAME'
      Origin = 'FULL_NAME'
      Size = 61
      Calculated = True
    end
  end
  object cdsRelease: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxTimesheet'
        Fields = 'CUSTOMER_NAME;ACTIVITY_DATE;LOGIN_NAME;ACTIVITY_TYPE'
        Options = [soNoCase]
        FilterOptions = [ekNoCase]
      end>
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 490
    Top = 475
    object cdsReleaseID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsReleaseFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsReleaseLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsReleaseLOGIN_NAME: TStringField
      DisplayLabel = 'User Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
    end
    object cdsReleaseACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
    end
    object cdsReleaseCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsReleaseCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'CUSTOMER_NAME'
      Origin = 'CUSTOMER_NAME'
      Size = 100
    end
    object cdsReleaseACTIVITY_TYPE: TStringField
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE'
      Origin = 'ACTIVITY_TYPE'
      Size = 50
    end
    object cdsReleaseACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsReleasePRICE_LIST_ITEM: TStringField
      DisplayLabel = 'Item Type'
      FieldName = 'PRICE_LIST_ITEM'
      Origin = 'PRICE_LIST_ITEM'
      Size = 200
    end
    object cdsReleaseTIME_SPENT: TFloatField
      DisplayLabel = 'Mins'
      FieldName = 'TIME_SPENT'
      Origin = 'TIME_SPENT'
    end
    object cdsReleaseTIME_HOURS: TFloatField
      DisplayLabel = 'Hours'
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object cdsReleaseACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
    end
    object cdsReleaseSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
    end
    object cdsReleaseABBREVIATION: TStringField
      Alignment = taCenter
      DisplayLabel = 'RU'
      FieldName = 'ABBREVIATION'
      Size = 5
    end
    object cdsReleaseITEM_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsReleaseTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
    end
    object cdsReleasePERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsReleaseBILLABLE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
    end
    object cdsReleaseBILLABLE_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE_STR'
      Origin = 'BILLABLE_STR'
      FixedChar = True
      Size = 1
    end
    object cdsReleaseINVOICE_ID: TIntegerField
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object cdsReleaseCN_ID: TIntegerField
      DisplayLabel = 'CN No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
    end
    object cdsReleaseLOCKED: TIntegerField
      DisplayLabel = 'Lock'
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
    end
    object cdsReleaseLOCKED_STR: TStringField
      DisplayLabel = 'Lock'
      FieldName = 'LOCKED_STR'
      Size = 1
    end
    object cdsReleaseINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsReleaseCARRY_FORWARD: TIntegerField
      DisplayLabel = 'C Fwd'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
    end
    object cdsReleaseCARRY_FORWARD_STR: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'C Fwd'
      FieldName = 'CARRY_FORWARD_STR'
      Origin = 'CARRY_FORWARD_STR'
      FixedChar = True
      Size = 1
    end
    object cdsReleaseIS_ADDITIONAL_WORK: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Add Wk'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
    end
    object cdsReleaseIS_ADDITIONAL_WORK_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Add Wk'
      FieldName = 'IS_ADDITIONAL_WORK_STR'
      Origin = 'IS_ADDITIONAL_WORK_STR'
      FixedChar = True
      Size = 1
    end
    object cdsReleaseCARRY_FORWARD_VALUE: TFloatField
      DisplayLabel = 'C/Fwd'
      FieldName = 'CARRY_FORWARD_VALUE'
    end
  end
  object dtsRelease: TDataSource
    DataSet = cdsRelease
    Left = 490
    Top = 525
  end
end
