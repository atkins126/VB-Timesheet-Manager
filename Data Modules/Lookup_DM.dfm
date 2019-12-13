inherited LookupDM: TLookupDM
  object cdsPriceListView: TFDMemTable
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
    UpdateOptions.GeneratorName = 'PRICE_LIST_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'PRICE_LIST'
    Left = 300
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
    Left = 300
    Top = 60
  end
  object cdsActivityType: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxActivityType'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxActivityType'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 215
    Top = 10
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
    Left = 215
    Top = 60
  end
  object cdsSystemUser: TFDMemTable
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
    Left = 120
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
    Left = 120
    Top = 60
  end
  object cdsRateUnit: TFDMemTable
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
    UpdateOptions.GeneratorName = 'RATE_UNIT_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'RATE_UNIT'
    Left = 375
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
  end
  object dtsRateuit: TDataSource
    DataSet = cdsRateUnit
    Left = 375
    Top = 60
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
      end>
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 574
    Top = 12
  end
  object View_price_listView: TFDQuery
    Connection = VbliveConnection
    SQL.Strings = (
      'SELECT * FROM VIEW_PRICE_LIST')
    Left = 573
    Top = 67
  end
end
