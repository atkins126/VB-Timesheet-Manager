inherited TSDM: TTSDM
  Height = 543
  Width = 1007
  object cdsCustomerLookup: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    OnCalcFields = cdsCustomerLookupCalcFields
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
    UpdateOptions.GeneratorName = 'CUSTOMER_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CUSTOMER'
    StoreDefs = True
    Left = 226
    Top = 10
    object cdsCustomerLookupID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustomerLookupCUSTOMER_TYPE_ID: TIntegerField
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
      Required = True
    end
    object cdsCustomerLookupSTATUS_ID: TIntegerField
      DisplayLabel = 'ST ID'
      FieldName = 'STATUS_ID'
    end
    object cdsCustomerLookupCUSTOMER_GROUP_ID: TIntegerField
      DisplayLabel = 'CG ID'
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
    end
    object cdsCustomerLookupNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
    object cdsCustomerLookupTRADING_AS: TStringField
      DisplayLabel = 'Trading As'
      FieldName = 'TRADING_AS'
      Origin = 'TRADING_AS'
      Size = 100
    end
    object cdsCustomerLookupCO_NO: TStringField
      DisplayLabel = 'Co No'
      FieldName = 'CO_NO'
      Origin = 'CO_NO'
    end
    object cdsCustomerLookupTAX_NO: TStringField
      DisplayLabel = 'Tax No'
      FieldName = 'TAX_NO'
      Origin = 'TAX_NO'
    end
    object cdsCustomerLookupIS_ACTIVE: TIntegerField
      DisplayLabel = 'Active'
      FieldName = 'IS_ACTIVE'
      Origin = 'IS_ACTIVE'
      Required = True
    end
    object cdsCustomerLookupCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsCustomerLookupCUSTOMER_STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CUSTOMER_STATUS'
    end
    object cdsCustomerLookupACTIVE_STATUS: TStringField
      DisplayLabel = 'Active'
      FieldKind = fkCalculated
      FieldName = 'ACTIVE_STATUS'
      Size = 5
      Calculated = True
    end
  end
  object cdsPriceList: TFDMemTable
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
    Left = 322
    Top = 10
    object cdsPriceListID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPriceListRATE_UNIT_ID: TIntegerField
      DisplayLabel = 'RU ID'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
      Required = True
    end
    object cdsPriceListNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 200
    end
    object cdsPriceListRATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
      Origin = 'RATE'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsPriceListDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 500
    end
    object cdsPriceListINVOICE_DESCRIPTION: TStringField
      DisplayLabel = 'invoice Description'
      FieldName = 'INVOICE_DESCRIPTION'
      Origin = 'INVOICE_DESCRIPTION'
      Size = 200
    end
    object cdsPriceListRATE_UNIT: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'RATE_UNIT'
      Size = 30
    end
  end
  object cdsActivityType: TFDMemTable
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
    Left = 418
    Top = 10
    object cdsActivityTypeID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsActivityTypeNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
  end
  object cdsRateUnit: TFDMemTable
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
    Left = 226
    Top = 125
    object cdsRateUnitID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRateUnitNAME: TStringField
      DisplayLabel = 'Name'
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
  object cdsTSPeriod: TFDMemTable
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
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'PERIOD_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'PERIOD'
    StoreDefs = True
    Left = 322
    Top = 125
    object cdsTSPeriodTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
    end
    object cdsTSPeriodPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
  end
  object cdsSystemUser: TFDMemTable
    Tag = 24
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    CachedUpdates = True
    ConstraintsEnabled = True
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
    Left = 418
    Top = 125
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
      DisplayLabel = 'Email Address'
      FieldName = 'EMAIL_ADDRESS'
      Origin = 'EMAIL_ADDRESS'
      Size = 100
    end
    object cdsSystemUserPASSWORD: TStringField
      DisplayLabel = 'Password'
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
      Size = 100
    end
    object cdsSystemUserACCOUNT_ENABLED: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Enabled'
      FieldName = 'ACCOUNT_ENABLED'
      Origin = 'ACCOUNT_ENABLED'
      Required = True
    end
  end
  object dtsCustomerLookup: TDataSource
    DataSet = cdsCustomerLookup
    Left = 226
    Top = 65
  end
  object dtsPriceList: TDataSource
    DataSet = cdsPriceList
    Left = 322
    Top = 65
  end
  object dtsActivityType: TDataSource
    DataSet = cdsActivityType
    Left = 418
    Top = 65
  end
  object dtsRateUnit: TDataSource
    DataSet = cdsRateUnit
    Left = 226
    Top = 175
  end
  object dtsTSPeriod: TDataSource
    DataSet = cdsTSPeriod
    Left = 322
    Top = 175
  end
  object dtsSytemUser: TDataSource
    DataSet = cdsSystemUser
    Left = 418
    Top = 175
  end
  object VbliveConnection: TFDConnection
    Params.Strings = (
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
    Left = 835
    Top = 73
  end
  object cdsCustomerGroup: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    CachedUpdates = True
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'CUSTOMER_GROUP_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CUSTOMER_GROUP'
    Left = 130
    Top = 125
    object cdsCustomerGroupID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustomerGroupNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
  end
  object dtsCustomerGroup: TDataSource
    Left = 130
    Top = 175
  end
  object cdsCustomerLookupPref: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    OnCalcFields = cdsCustomerLookupPrefCalcFields
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'CUSTOMER_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CUSTOMER'
    StoreDefs = True
    Left = 226
    Top = 250
    object cdsCustomerLookupPrefID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustomerLookupPrefCUSTOMER_TYPE_ID: TIntegerField
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
      Required = True
    end
    object cdsCustomerLookupPrefSTATUS_ID: TIntegerField
      DisplayLabel = 'ST ID'
      FieldName = 'STATUS_ID'
    end
    object cdsCustomerLookupPrefCUSTOMER_GROUP_ID: TIntegerField
      DisplayLabel = 'CG ID'
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
    end
    object cdsCustomerLookupPrefNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
    object cdsCustomerLookupPrefTRADING_AS: TStringField
      DisplayLabel = 'Trading As'
      FieldName = 'TRADING_AS'
      Origin = 'TRADING_AS'
      Size = 100
    end
    object cdsCustomerLookupPrefCO_NO: TStringField
      DisplayLabel = 'Co No'
      FieldName = 'CO_NO'
      Origin = 'CO_NO'
    end
    object cdsCustomerLookupPrefTAX_NO: TStringField
      DisplayLabel = 'Tax No'
      FieldName = 'TAX_NO'
      Origin = 'TAX_NO'
    end
    object cdsCustomerLookupPrefIS_ACTIVE: TIntegerField
      DisplayLabel = 'Active'
      FieldName = 'IS_ACTIVE'
      Origin = 'IS_ACTIVE'
      Required = True
    end
    object cdsCustomerLookupPrefCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsCustomerLookupPrefCUSTOMER_STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CUSTOMER_STATUS'
    end
    object cdsCustomerLookupPrefACTIVE_STATUS: TStringField
      DisplayLabel = 'Active'
      FieldKind = fkCalculated
      FieldName = 'ACTIVE_STATUS'
      Size = 5
      Calculated = True
    end
  end
  object cdsPriceListPref: TFDMemTable
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
    Left = 357
    Top = 250
    object IntegerField6: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField7: TIntegerField
      DisplayLabel = 'RU ID'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
      Required = True
    end
    object StringField8: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 200
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
      Origin = 'RATE'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object StringField9: TStringField
      DisplayLabel = 'invoice Description'
      FieldName = 'INVOICE_DESCRIPTION'
      Origin = 'INVOICE_DESCRIPTION'
      Size = 200
    end
    object StringField10: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 500
    end
    object StringField11: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'RATE_UNIT'
      Size = 30
    end
  end
  object dtsCustomerLookupPref: TDataSource
    DataSet = cdsCustomerLookupPref
    Left = 226
    Top = 300
  end
  object dtsPriceListPref: TDataSource
    DataSet = cdsPriceListPref
    Left = 357
    Top = 300
  end
  object cdsRatePUnitref: TFDMemTable
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
    Left = 461
    Top = 250
    object IntegerField1: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 30
    end
    object cdsRatePUnitrefABBREVIATION: TStringField
      DisplayLabel = 'Abbr'
      FieldName = 'ABBREVIATION'
      Size = 5
    end
  end
  object dtsRateUnitPref: TDataSource
    DataSet = cdsRatePUnitref
    Left = 461
    Top = 300
  end
  object cdsTimesheetOLD: TFDMemTable
    Tag = 27
    ActiveStoredUsage = [auDesignTime]
    BeforeEdit = cdsTimesheetOLDBeforeEdit
    BeforePost = cdsTimesheetOLDBeforePost
    AfterPost = cdsTimesheetOLDAfterPost
    OnCalcFields = cdsTimesheetOLDCalcFields
    OnNewRecord = cdsTimesheetOLDNewRecord
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
      end
      item
        Active = True
        Selected = True
        Name = 'idxActivityDate'
        Fields = 'THE_PERIOD;ACTIVITY_DATE;ID'
      end>
    IndexName = 'idxActivityDate'
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
    UpdateOptions.GeneratorName = 'TIMESHEET_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'TIMESHEET'
    UpdateOptions.KeyFields = 'ID'
    StoreDefs = True
    Left = 50
    Top = 365
    object cdsTimesheetOLDEditID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTimesheetOLDEditUSER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'U ID'
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
    end
    object cdsTimesheetOLDEditCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Customer'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsTimesheetOLDEditPRICE_LIST_ITEM_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Price Item'
      FieldName = 'PRICE_LIST_ITEM_ID'
      Origin = 'PRICE_LIST_ITEM_ID'
      Required = True
    end
    object cdsTimesheetOLDEditRATE_UNIT_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Rate Unit'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
      Required = True
    end
    object cdsTimesheetOLDEditACTIVITY_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE_ID'
      Origin = 'ACTIVITY_TYPE_ID'
      Required = True
    end
    object cdsTimesheetOLDEditINVOICE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
      Required = True
    end
    object cdsTimesheetOLDEditCN_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CN No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
      Required = True
    end
    object cdsTimesheetOLDEditCUSTOMER_GROUP_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Customer Group'
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
      Required = True
    end
    object cdsTimesheetOLDEditACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
      Required = True
    end
    object cdsTimesheetOLDEditACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsTimesheetOLDEditTIME_SPENT: TFloatField
      DisplayLabel = 'Spent'
      FieldName = 'TIME_SPENT'
    end
    object cdsTimesheetOLDEditTIME_HOURS: TFloatField
      DisplayLabel = 'Hrs'
      FieldKind = fkInternalCalc
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object cdsTimesheetOLDEditACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
      Required = True
    end
    object cdsTimesheetOLDEditSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
      Required = True
    end
    object cdsTimesheetOLDEditITEM_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldKind = fkInternalCalc
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsTimesheetOLDEditLOCKED: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Lck'
      FieldKind = fkInternalCalc
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
      Required = True
    end
    object cdsTimesheetOLDEditDATE_MODIFIED: TDateField
      DisplayLabel = 'Modified'
      FieldName = 'DATE_MODIFIED'
      Origin = 'DATE_MODIFIED'
      Required = True
    end
    object cdsTimesheetOLDEditTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldKind = fkInternalCalc
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
      Required = True
    end
    object cdsTimesheetOLDPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldKind = fkInternalCalc
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsTimesheetOLDEditBILLABLE: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
      Required = True
    end
    object cdsTimesheetOLDEditDAY_NAME: TStringField
      DisplayLabel = 'Day'
      FieldName = 'DAY_NAME'
      Origin = 'DAY_NAME'
      FixedChar = True
      Size = 3
    end
    object cdsTimesheetOLDEditDAY_ORDER: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Day Ord'
      FieldName = 'DAY_ORDER'
      Origin = 'DAY_ORDER'
    end
    object cdsTimesheetOLDEditINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsTimesheetOLDEditCARRY_FORWARD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CF'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
      Required = True
    end
    object cdsTimesheetOLDDATE_CARRIED_FORWARD: TDateField
      DisplayLabel = 'Carried Fwd'
      FieldName = 'DATE_CARRIED_FORWARD'
    end
    object cdsTimesheetOLDEditAPPROVED: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Appr'
      FieldName = 'APPROVED'
      Origin = 'APPROVED'
      Required = True
    end
    object cdsTimesheetOLDEditIS_ADDITIONAL_WORK: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Ad Wk'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
      Required = True
    end
    object cdsTimesheetOLDDATE_CFWD_RELEASED: TDateField
      DisplayLabel = 'Released'
      FieldName = 'DATE_CFWD_RELEASED'
    end
    object cdsTimesheetOLDRELEASE_CFWD_TO_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'To Period'
      FieldName = 'RELEASE_CFWD_TO_PERIOD'
    end
  end
  object dtsTimesheetOLD: TDataSource
    DataSet = cdsTimesheetOLD
    Left = 50
    Top = 420
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
    Left = 832
    Top = 17
  end
  object cdsStdActivity: TFDMemTable
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
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'STD_ACTIVITY_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'STD_ACTIVITY'
    StoreDefs = True
    Left = 505
    Top = 10
    object cdsStdActivityID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsStdActivityNAME: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
  end
  object dtsStdActivity: TDataSource
    DataSet = cdsStdActivity
    Left = 505
    Top = 65
  end
  object cdsCarryForward: TFDMemTable
    Tag = 27
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
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
    UpdateOptions.GeneratorName = 'TIMESHEET_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'TIMESHEET'
    UpdateOptions.KeyFields = 'ID'
    StoreDefs = True
    Left = 600
    Top = 10
    object cdsCarryForwardID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCarryForwardUSER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'U ID'
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      Required = True
    end
    object cdsCarryForwardCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Customer'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsCarryForwardPRICE_LIST_ITEM_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Price Item'
      FieldName = 'PRICE_LIST_ITEM_ID'
      Origin = 'PRICE_LIST_ITEM_ID'
      Required = True
    end
    object cdsCarryForwardRATE_UNIT_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Rate Unit'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
      Required = True
    end
    object cdsCarryForwardACTIVITY_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE_ID'
      Origin = 'ACTIVITY_TYPE_ID'
      Required = True
    end
    object cdsCarryForwardINVOICE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
      Required = True
    end
    object cdsCarryForwardCN_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CN No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
      Required = True
    end
    object cdsCarryForwardCUSTOMER_GROUP_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Customer Group'
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
      Required = True
    end
    object cdsCarryForwardACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsCarryForwardTIME_SPENT: TFloatField
      DisplayLabel = 'Spent'
      FieldName = 'TIME_SPENT'
    end
    object cdsCarryForwardTIME_HOURS: TFloatField
      DisplayLabel = 'Hrs'
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object cdsCarryForwardACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
      Required = True
    end
    object cdsCarryForwardSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
      Required = True
    end
    object cdsCarryForwardITEM_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsCarryForwardLOCKED: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Lck'
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
      Required = True
    end
    object cdsCarryForwardACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
      Required = True
    end
    object cdsCarryForwardDATE_MODIFIED: TDateField
      DisplayLabel = 'Modified'
      FieldName = 'DATE_MODIFIED'
      Origin = 'DATE_MODIFIED'
      Required = True
    end
    object cdsCarryForwardTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
      Required = True
    end
    object cdsCarryForwardPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsCarryForwardBILLABLE: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
      Required = True
    end
    object cdsCarryForwardDAY_NAME: TStringField
      DisplayLabel = 'Day'
      FieldName = 'DAY_NAME'
      Origin = 'DAY_NAME'
      FixedChar = True
      Size = 3
    end
    object cdsCarryForwardDAY_ORDER: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Day Ord'
      FieldName = 'DAY_ORDER'
      Origin = 'DAY_ORDER'
    end
    object cdsCarryForwardINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsCarryForwardCARRY_FORWARD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CF'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
      Required = True
    end
    object cdsCarryForwardAPPROVED: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Appr'
      FieldName = 'APPROVED'
      Origin = 'APPROVED'
      Required = True
    end
    object cdsCarryForwardIS_ADDITIONAL_WORK: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Ad Wk'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
      Required = True
    end
    object cdsCarryForwardDATE_CFWD_RELEASED: TDateField
      DisplayLabel = 'Released'
      FieldName = 'DATE_CFWD_RELEASED'
    end
    object cdsCarryForwardRELEASE_CFWD_TO_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'To Period'
      FieldName = 'RELEASE_CFWD_TO_PERIOD'
    end
  end
  object dtsCarryForward: TDataSource
    DataSet = cdsCarryForward
    Left = 600
    Top = 65
  end
  object cdsReleaseCFwd: TFDMemTable
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
    FetchOptions.RecordCountMode = cmTotal
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
    Left = 575
    Top = 250
    object cdsReleaseCFwdID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsReleaseCFwdFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsReleaseCFwdLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsReleaseCFwdLOGIN_NAME: TStringField
      DisplayLabel = 'User Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
    end
    object cdsReleaseCFwdACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
    end
    object cdsReleaseCFwdCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsReleaseCFwdCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'CUSTOMER_NAME'
      Origin = 'CUSTOMER_NAME'
      Size = 100
    end
    object cdsReleaseCFwdACTIVITY_TYPE: TStringField
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE'
      Origin = 'ACTIVITY_TYPE'
      Size = 50
    end
    object cdsReleaseCFwdACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsReleaseCFwdPRICE_LIST_ITEM: TStringField
      DisplayLabel = 'Item Type'
      FieldName = 'PRICE_LIST_ITEM'
      Origin = 'PRICE_LIST_ITEM'
      Size = 200
    end
    object cdsReleaseCFwdTIME_SPENT: TFloatField
      DisplayLabel = 'Mins'
      FieldName = 'TIME_SPENT'
      Origin = 'TIME_SPENT'
    end
    object cdsReleaseCFwdTIME_HOURS: TFloatField
      DisplayLabel = 'Hours'
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object cdsReleaseCFwdACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
    end
    object cdsReleaseCFwdSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
    end
    object cdsReleaseCFwdABBREVIATION: TStringField
      Alignment = taCenter
      DisplayLabel = 'RU'
      FieldName = 'ABBREVIATION'
      Size = 5
    end
    object cdsReleaseCFwdITEM_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsReleaseCFwdTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
    end
    object cdsReleaseCFwdPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
    object cdsReleaseCFwdBILLABLE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
    end
    object cdsReleaseCFwdBILLABLE_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE_STR'
      Origin = 'BILLABLE_STR'
      FixedChar = True
      Size = 1
    end
    object cdsReleaseCFwdINVOICE_ID: TIntegerField
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object cdsReleaseCFwdCN_ID: TIntegerField
      DisplayLabel = 'CN No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
    end
    object cdsReleaseCFwdLOCKED: TIntegerField
      DisplayLabel = 'Lock'
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
    end
    object cdsReleaseCFwdLOCKED_STR: TStringField
      DisplayLabel = 'Lock'
      FieldName = 'LOCKED_STR'
      Size = 1
    end
    object cdsReleaseCFwdINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsReleaseCFwdCARRY_FORWARD: TIntegerField
      DisplayLabel = 'C Fwd'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
    end
    object cdsReleaseCFwdCARRY_FORWARD_STR: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'C Fwd'
      FieldName = 'CARRY_FORWARD_STR'
      Origin = 'CARRY_FORWARD_STR'
      FixedChar = True
      Size = 1
    end
    object cdsReleaseCFwdIS_ADDITIONAL_WORK: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Add Wk'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
    end
    object cdsReleaseCFwdIS_ADDITIONAL_WORK_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Add Wk'
      FieldName = 'IS_ADDITIONAL_WORK_STR'
      Origin = 'IS_ADDITIONAL_WORK_STR'
      FixedChar = True
      Size = 1
    end
    object cdsReleaseCFwdCARRY_FORWARD_VALUE: TFloatField
      DisplayLabel = 'C/Fwd'
      FieldName = 'CARRY_FORWARD_VALUE'
    end
  end
  object dtsReleaseCFwd: TDataSource
    DataSet = cdsReleaseCFwd
    Left = 575
    Top = 300
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
    FetchOptions.RecordCountMode = cmTotal
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
    Left = 505
    Top = 125
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
  object cdsReleaseToPeriod: TFDMemTable
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
    FetchOptions.RecordCountMode = cmTotal
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
    Left = 690
    Top = 125
    object cdsReleaseToPeriodTHE_PERIOD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
    end
    object cdsReleaseToPeriodPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Size = 10
    end
  end
  object dtsPeriod: TDataSource
    DataSet = cdsPeriod
    Left = 505
    Top = 175
  end
  object dtsReleaseToPeriod: TDataSource
    DataSet = cdsReleaseToPeriod
    Left = 690
    Top = 175
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
    FetchOptions.RecordCountMode = cmTotal
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
    Left = 585
    Top = 125
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
  object dtsToPeriod: TDataSource
    DataSet = cdsToPeriod
    Left = 585
    Top = 175
  end
  object dtsContactDetailCo: TDataSource
    DataSet = cdsContactDetailCo
    Left = 50
    Top = 300
  end
  object cdsContactDetailCo: TFDMemTable
    Tag = 9
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxCustomerID'
        Fields = 'CUSTOMER_ID'
      end>
    IndexName = 'idxCustomerID'
    ConstraintsEnabled = True
    MasterSource = dtsTimesheet
    MasterFields = 'CUSTOMER_ID'
    DetailFields = 'CUSTOMER_ID'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'CONTACT_DETAIL_CO_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CONTACT_DETAIL_CO'
    StoreDefs = True
    Left = 50
    Top = 250
    object cdsContactDetailCoCONTACT_DETAIL_CO_ID: TIntegerField
      DisplayLabel = 'CDC ID'
      FieldName = 'CONTACT_DETAIL_CO_ID'
    end
    object cdsContactDetailCoCONTACT_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Contact Type'
      FieldName = 'CONTACT_TYPE_ID'
      Origin = 'CONTACT_TYPE_ID'
      Required = True
    end
    object cdsContactDetailCoCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsContactDetailCoCONTACT_TYPE: TStringField
      DisplayLabel = 'Contact Type'
      FieldName = 'CONTACT_TYPE'
      Size = 30
    end
    object cdsContactDetailCoVALUE: TStringField
      DisplayLabel = 'Value'
      FieldName = 'VALUE'
      Origin = '"VALUE"'
      Required = True
      Size = 75
    end
  end
  object cdsTimesheet: TFDMemTable
    Tag = 27
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
      end
      item
        Active = True
        Selected = True
        Name = 'idxActivityDate'
        Fields = 'THE_PERIOD;ACTIVITY_DATE;ID'
      end>
    IndexName = 'idxActivityDate'
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
    UpdateOptions.GeneratorName = 'TIMESHEET_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'TIMESHEET'
    UpdateOptions.KeyFields = 'ID'
    StoreDefs = True
    Left = 135
    Top = 10
    object cdsTimesheetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsTimesheetUSER_ID: TIntegerField
      DisplayLabel = 'U ID'
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
    end
    object cdsTimesheetCUSTOMER_ID: TIntegerField
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object cdsTimesheetRATE_UNIT_ID: TIntegerField
      DisplayLabel = 'RU ID'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
    end
    object cdsTimesheetINVOICE_ID: TIntegerField
      DisplayLabel = 'Inv No'
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object cdsTimesheetCN_ID: TIntegerField
      DisplayLabel = 'C/N No'
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
    end
    object cdsTimesheetACTIVITY_TYPE_ID: TIntegerField
      DisplayLabel = 'AT IT'
      FieldName = 'ACTIVITY_TYPE_ID'
      Origin = 'ACTIVITY_TYPE_ID'
    end
    object cdsTimesheetPRICE_LIST_ITEM_ID: TIntegerField
      DisplayLabel = 'PLI ID'
      FieldName = 'PRICE_LIST_ITEM_ID'
      Origin = 'PRICE_LIST_ITEM_ID'
    end
    object cdsTimesheetCUSTOMER_TYPE_ID: TIntegerField
      DisplayLabel = 'CT ID'
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
    end
    object cdsTimesheetCUSTOMER_GROUP_ID: TIntegerField
      DisplayLabel = 'CG ID'
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
    end
    object cdsTimesheetFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsTimesheetLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsTimesheetLOGIN_NAME: TStringField
      DisplayLabel = 'Login Name'
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
    end
    object cdsTimesheetACTIVITY_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
    end
    object cdsTimesheetCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsTimesheetCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer Name'
      FieldName = 'CUSTOMER_NAME'
      Origin = 'CUSTOMER_NAME'
      Size = 100
    end
    object cdsTimesheetPRICE_LIST_ITEM: TStringField
      DisplayLabel = 'Price Item'
      FieldName = 'PRICE_LIST_ITEM'
      Origin = 'PRICE_LIST_ITEM'
      Size = 200
    end
    object cdsTimesheetACTIVITY_TYPE: TStringField
      DisplayLabel = 'Activity Type'
      FieldName = 'ACTIVITY_TYPE'
      Origin = 'ACTIVITY_TYPE'
      Size = 50
    end
    object cdsTimesheetACTIVITY: TStringField
      DisplayLabel = 'Activity'
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object cdsTimesheetTIME_SPENT: TFloatField
      DisplayLabel = 'Spent'
      FieldName = 'TIME_SPENT'
      Origin = 'TIME_SPENT'
    end
    object cdsTimesheetTIME_HOURS: TFloatField
      DisplayLabel = 'Hrs'
      FieldKind = fkInternalCalc
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object Value: TFloatField
      DisplayLabel = 'Value'
      FieldKind = fkInternalCalc
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object cdsTimesheetEditACTUAL_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
    end
    object cdsTimesheetSTD_RATE: TFloatField
      DisplayLabel = 'Std Rate'
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
    end
    object cdsTimesheetABBREVIATION: TStringField
      DisplayLabel = 'Abbr'
      FieldName = 'ABBREVIATION'
      Origin = 'ABBREVIATION'
      Size = 5
    end
    object cdsTimesheetRATE_UNIT: TStringField
      DisplayLabel = 'Rate Unit'
      FieldName = 'RATE_UNIT'
      Origin = 'RATE_UNIT'
      Size = 30
    end
    object cdsTimesheetDATE_MODIFIED: TDateField
      DisplayLabel = 'Modified'
      FieldName = 'DATE_MODIFIED'
      Origin = 'DATE_MODIFIED'
    end
    object cdsTimesheetTHE_PERIOD: TIntegerField
      DisplayLabel = 'Period'
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
    end
    object cdsTimesheetPERIOD_NAME: TStringField
      DisplayLabel = 'Period'
      FieldName = 'PERIOD_NAME'
      Origin = 'PERIOD_NAME'
      Size = 10
    end
    object cdsTimesheetBILLABLE: TIntegerField
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
    end
    object cdsTimesheetBILLABLE_STR: TStringField
      DisplayLabel = 'Bill'
      FieldName = 'BILLABLE_STR'
      Origin = 'BILLABLE_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTimesheetDAY_NAME: TStringField
      DisplayLabel = 'Day'
      FieldName = 'DAY_NAME'
      Origin = 'DAY_NAME'
      FixedChar = True
      Size = 3
    end
    object cdsTimesheetDAY_ORDER: TIntegerField
      DisplayLabel = 'D Ord'
      FieldName = 'DAY_ORDER'
      Origin = 'DAY_ORDER'
    end
    object cdsTimesheetLOCKED: TIntegerField
      DisplayLabel = 'Lck'
      FieldKind = fkInternalCalc
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
    end
    object cdsTimesheetLOCKED_STR: TStringField
      DisplayLabel = 'Lck'
      FieldName = 'LOCKED_STR'
      Origin = 'LOCKED_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTimesheetINVOICE_DATE: TDateField
      DisplayLabel = 'Inv Date'
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cdsTimesheetCARRY_FORWARD: TIntegerField
      DisplayLabel = 'C/Fwd'
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
    end
    object cdsTimesheetDATE_CARRIED_FORWARD: TDateField
      DisplayLabel = 'Carried Fwd'
      FieldName = 'DATE_CARRIED_FORWARD'
      Origin = 'DATE_CARRIED_FORWARD'
    end
    object cdsTimesheetIS_ADDITIONAL_WORK: TIntegerField
      DisplayLabel = 'Ad Wk'
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
    end
    object cdsTimesheetIS_ADDITIONAL_WORK_STR: TStringField
      DisplayLabel = 'Ad Wrk'
      FieldName = 'IS_ADDITIONAL_WORK_STR'
      Origin = 'IS_ADDITIONAL_WORK_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTimesheetCUSTOMER_GROUP_LINK_NAME: TStringField
      DisplayLabel = 'Cust Grp Link'
      FieldName = 'CUSTOMER_GROUP_LINK_NAME'
      Origin = 'CUSTOMER_GROUP_LINK_NAME'
      Size = 100
    end
    object cdsTimesheetCARRY_FORWARD_STR: TStringField
      DisplayLabel = 'C/Fwd'
      FieldName = 'CARRY_FORWARD_STR'
      Origin = 'CARRY_FORWARD_STR'
      FixedChar = True
      Size = 1
    end
    object cdsTimesheetAPPROVED: TIntegerField
      DisplayLabel = 'Apr'
      FieldName = 'APPROVED'
      Origin = 'APPROVED'
    end
    object cdsTimesheetFULL_NAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'FULL_NAME'
      Origin = 'FULL_NAME'
      Size = 61
    end
    object cdsTimesheetDATE_CFWD_RELEASED: TDateField
      DisplayLabel = 'Released'
      FieldName = 'DATE_CFWD_RELEASED'
      Origin = 'DATE_CFWD_RELEASED'
    end
    object cdsTimesheetRELEASE_CFWD_TO_PERIOD: TIntegerField
      DisplayLabel = 'To Period'
      FieldName = 'RELEASE_CFWD_TO_PERIOD'
      Origin = 'RELEASE_CFWD_TO_PERIOD'
    end
  end
  object dtsTimesheet: TDataSource
    DataSet = cdsTimesheet
    Left = 135
    Top = 65
  end
  object View_timesheetView: TFDQuery
    Connection = VbdevConnection
    SQL.Strings = (
      'SELECT * FROM VIEW_TIMESHEET')
    Left = 839
    Top = 132
    object View_timesheetViewID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object View_timesheetViewUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
    end
    object View_timesheetViewCUSTOMER_ID: TIntegerField
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object View_timesheetViewRATE_UNIT_ID: TIntegerField
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
    end
    object View_timesheetViewINVOICE_ID: TIntegerField
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object View_timesheetViewCN_ID: TIntegerField
      FieldName = 'CN_ID'
      Origin = 'CN_ID'
    end
    object View_timesheetViewACTIVITY_TYPE_ID: TIntegerField
      FieldName = 'ACTIVITY_TYPE_ID'
      Origin = 'ACTIVITY_TYPE_ID'
    end
    object View_timesheetViewPRICE_LIST_ITEM_ID: TIntegerField
      FieldName = 'PRICE_LIST_ITEM_ID'
      Origin = 'PRICE_LIST_ITEM_ID'
    end
    object View_timesheetViewCUSTOMER_TYPE_ID: TIntegerField
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
    end
    object View_timesheetViewCUSTOMER_GROUP_ID: TIntegerField
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
    end
    object View_timesheetViewFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object View_timesheetViewLAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object View_timesheetViewLOGIN_NAME: TStringField
      FieldName = 'LOGIN_NAME'
      Origin = 'LOGIN_NAME'
    end
    object View_timesheetViewACTIVITY_DATE: TDateField
      FieldName = 'ACTIVITY_DATE'
      Origin = 'ACTIVITY_DATE'
    end
    object View_timesheetViewCUSTOMER_TYPE: TStringField
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object View_timesheetViewCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'CUSTOMER_NAME'
      Size = 100
    end
    object View_timesheetViewPRICE_LIST_ITEM: TStringField
      FieldName = 'PRICE_LIST_ITEM'
      Origin = 'PRICE_LIST_ITEM'
      Size = 200
    end
    object View_timesheetViewACTIVITY_TYPE: TStringField
      FieldName = 'ACTIVITY_TYPE'
      Origin = 'ACTIVITY_TYPE'
      Size = 50
    end
    object View_timesheetViewACTIVITY: TStringField
      FieldName = 'ACTIVITY'
      Origin = 'ACTIVITY'
      Size = 500
    end
    object View_timesheetViewTIME_SPENT: TFloatField
      FieldName = 'TIME_SPENT'
      Origin = 'TIME_SPENT'
    end
    object View_timesheetViewTIME_HOURS: TFloatField
      FieldName = 'TIME_HOURS'
      Origin = 'TIME_HOURS'
    end
    object View_timesheetViewITEM_VALUE: TFloatField
      FieldName = 'ITEM_VALUE'
      Origin = 'ITEM_VALUE'
    end
    object View_timesheetViewACTUAL_RATE: TFloatField
      FieldName = 'ACTUAL_RATE'
      Origin = 'ACTUAL_RATE'
    end
    object View_timesheetViewSTD_RATE: TFloatField
      FieldName = 'STD_RATE'
      Origin = 'STD_RATE'
    end
    object View_timesheetViewABBREVIATION: TStringField
      FieldName = 'ABBREVIATION'
      Origin = 'ABBREVIATION'
      Size = 5
    end
    object View_timesheetViewRATE_UNIT: TStringField
      FieldName = 'RATE_UNIT'
      Origin = 'RATE_UNIT'
      Size = 30
    end
    object View_timesheetViewDATE_MODIFIED: TDateField
      FieldName = 'DATE_MODIFIED'
      Origin = 'DATE_MODIFIED'
    end
    object View_timesheetViewTHE_PERIOD: TIntegerField
      FieldName = 'THE_PERIOD'
      Origin = 'THE_PERIOD'
    end
    object View_timesheetViewPERIOD_NAME: TStringField
      FieldName = 'PERIOD_NAME'
      Origin = 'PERIOD_NAME'
      Size = 10
    end
    object View_timesheetViewBILLABLE: TIntegerField
      FieldName = 'BILLABLE'
      Origin = 'BILLABLE'
    end
    object View_timesheetViewBILLABLE_STR: TStringField
      FieldName = 'BILLABLE_STR'
      Origin = 'BILLABLE_STR'
      FixedChar = True
      Size = 1
    end
    object View_timesheetViewDAY_NAME: TStringField
      FieldName = 'DAY_NAME'
      Origin = 'DAY_NAME'
      FixedChar = True
      Size = 3
    end
    object View_timesheetViewDAY_ORDER: TIntegerField
      FieldName = 'DAY_ORDER'
      Origin = 'DAY_ORDER'
    end
    object View_timesheetViewLOCKED: TIntegerField
      FieldName = 'LOCKED'
      Origin = 'LOCKED'
    end
    object View_timesheetViewLOCKED_STR: TStringField
      FieldName = 'LOCKED_STR'
      Origin = 'LOCKED_STR'
      FixedChar = True
      Size = 1
    end
    object View_timesheetViewINVOICE_DATE: TDateField
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object View_timesheetViewCARRY_FORWARD: TIntegerField
      FieldName = 'CARRY_FORWARD'
      Origin = 'CARRY_FORWARD'
    end
    object View_timesheetViewDATE_CARRIED_FORWARD: TDateField
      FieldName = 'DATE_CARRIED_FORWARD'
      Origin = 'DATE_CARRIED_FORWARD'
    end
    object View_timesheetViewIS_ADDITIONAL_WORK: TIntegerField
      FieldName = 'IS_ADDITIONAL_WORK'
      Origin = 'IS_ADDITIONAL_WORK'
    end
    object View_timesheetViewIS_ADDITIONAL_WORK_STR: TStringField
      FieldName = 'IS_ADDITIONAL_WORK_STR'
      Origin = 'IS_ADDITIONAL_WORK_STR'
      FixedChar = True
      Size = 1
    end
    object View_timesheetViewCUSTOMER_GROUP_LINK_NAME: TStringField
      FieldName = 'CUSTOMER_GROUP_LINK_NAME'
      Origin = 'CUSTOMER_GROUP_LINK_NAME'
      Size = 100
    end
    object View_timesheetViewCARRY_FORWARD_STR: TStringField
      FieldName = 'CARRY_FORWARD_STR'
      Origin = 'CARRY_FORWARD_STR'
      FixedChar = True
      Size = 1
    end
    object View_timesheetViewAPPROVED: TIntegerField
      FieldName = 'APPROVED'
      Origin = 'APPROVED'
    end
    object View_timesheetViewFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Origin = 'FULL_NAME'
      Size = 61
    end
    object View_timesheetViewPERIOD_NAME1: TStringField
      FieldName = 'PERIOD_NAME1'
      Origin = 'PERIOD_NAME1'
      Size = 10
    end
    object View_timesheetViewDATE_CARRIED_FORWARD1: TDateField
      FieldName = 'DATE_CARRIED_FORWARD1'
      Origin = 'DATE_CARRIED_FORWARD1'
    end
    object View_timesheetViewDATE_CFWD_RELEASED: TDateField
      FieldName = 'DATE_CFWD_RELEASED'
      Origin = 'DATE_CFWD_RELEASED'
    end
    object View_timesheetViewRELEASE_CFWD_TO_PERIOD: TIntegerField
      FieldName = 'RELEASE_CFWD_TO_PERIOD'
      Origin = 'RELEASE_CFWD_TO_PERIOD'
    end
  end
end
