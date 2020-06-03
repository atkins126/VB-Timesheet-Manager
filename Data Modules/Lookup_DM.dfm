inherited LookupDM: TLookupDM
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
    Left = 559
    Top = 7
  end
  object dtsCustomer: TDataSource
    DataSet = cdsCustomer
    Left = 135
    Top = 60
  end
  object dtsContactDetailCo: TDataSource
    DataSet = cdsContactDetailCo
    Left = 135
    Top = 170
  end
  object cdsContactDetailPerson: TFDMemTable
    Tag = 37
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CONTACT_TYPE_ID > 0'
        ErrorMessage = 'Contact type must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(VALUE)) > 0'
        ErrorMessage = 'Contact detail must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxCPCustID'
        Fields = 'CONTACT_PERSON_ID;CUSTOMER_ID'
      end>
    IndexName = 'idxCPCustID'
    ConstraintsEnabled = True
    MasterSource = dtsContactPerson
    MasterFields = 'ID'
    DetailFields = 'CONTACT_PERSON_ID;CUSTOMER_ID'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.DetailDelay = 450
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
    UpdateOptions.GeneratorName = 'CONTACT_DETAIL_PERSON_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CONTACT_DETAIL_PERSON'
    StoreDefs = True
    Left = 345
    Top = 10
    object cdsContactDetailPersonID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsContactDetailPersonCONTACT_TYPE_ID: TIntegerField
      DisplayLabel = 'CT ID'
      FieldName = 'CONTACT_TYPE_ID'
      Origin = 'CONTACT_TYPE_ID'
    end
    object cdsContactDetailPersonCUSTOMER_ID: TIntegerField
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object cdsContactDetailPersonCONTACT_PERSON_ID: TIntegerField
      DisplayLabel = 'CP ID'
      FieldName = 'CONTACT_PERSON_ID'
      Origin = 'CONTACT_PERSON_ID'
    end
    object cdsContactDetailPersonVALUE: TStringField
      DisplayLabel = 'Value'
      FieldName = 'VALUE'
      Origin = '"VALUE"'
      Size = 75
    end
    object cdsContactDetailPersonCOMMENT: TStringField
      DisplayLabel = 'Comment'
      FieldName = 'COMMENT'
      Origin = '"COMMENT"'
      Size = 30
    end
    object cdsContactDetailPersonCONTACT_TYPE: TStringField
      DisplayLabel = 'Contact Type'
      FieldName = 'CONTACT_TYPE'
      Origin = 'CONTACT_TYPE'
      Size = 255
    end
  end
  object dtsContactDetailPerson: TDataSource
    DataSet = cdsContactDetailPerson
    Left = 345
    Top = 60
  end
  object cdsContactPerson: TFDMemTable
    Tag = 10
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(FIRST_NAME)) > 0'
        ErrorMessage = 'Contact person first name must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'JOB_FUNCTION_ID > 0'
        ErrorMessage = 'Contact person job function must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxCPCustID'
        Fields = 'CUSTOMER_ID'
      end>
    IndexName = 'idxCPCustID'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.DetailDelay = 450
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
    UpdateOptions.GeneratorName = 'CONTACT_PERSON_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CONTACT_PERSON'
    StoreDefs = True
    Left = 235
    Top = 10
    object cdsContactPersonID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsContactPersonCUSTOMER_ID: TIntegerField
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object cdsContactPersonSALUTATION_ID: TIntegerField
      DisplayLabel = 'Sal ID'
      FieldName = 'SALUTATION_ID'
      Origin = 'SALUTATION_ID'
    end
    object cdsContactPersonJOB_FUNCTION_ID: TIntegerField
      DisplayLabel = 'JF ID'
      FieldName = 'JOB_FUNCTION_ID'
      Origin = 'JOB_FUNCTION_ID'
    end
    object cdsContactPersonFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsContactPersonLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsContactPersonINITIALS: TStringField
      DisplayLabel = 'Init'
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      Size = 5
    end
    object cdsContactPersonOTHER_NAME: TStringField
      DisplayLabel = 'Other Name'
      FieldName = 'OTHER_NAME'
      Origin = 'OTHER_NAME'
      Size = 50
    end
    object cdsContactPersonDOB: TSQLTimeStampField
      FieldName = 'DOB'
      Origin = 'DOB'
    end
    object cdsContactPersonID_NUMBER: TStringField
      DisplayLabel = 'ID Number'
      FieldName = 'ID_NUMBER'
      Origin = 'ID_NUMBER'
    end
    object cdsContactPersonPASSPORT_NUMBER: TStringField
      DisplayLabel = 'Passprt No'
      FieldName = 'PASSPORT_NUMBER'
      Origin = 'PASSPORT_NUMBER'
    end
    object cdsContactPersonIS_PRIMARY_CONTACT: TIntegerField
      DisplayLabel = 'P Cont'
      FieldName = 'IS_PRIMARY_CONTACT'
      Origin = 'IS_PRIMARY_CONTACT'
    end
    object cdsContactPersonSALUTATION: TStringField
      DisplayLabel = 'Sal'
      FieldName = 'SALUTATION'
      Origin = 'SALUTATION'
    end
    object cdsContactPersonJOB_FUNCTION: TStringField
      DisplayLabel = 'Job Function'
      FieldName = 'JOB_FUNCTION'
      Origin = 'JOB_FUNCTION'
      Size = 50
    end
  end
  object dtsContactPerson: TDataSource
    DataSet = cdsContactPerson
    Left = 235
    Top = 60
  end
  object cdsCustomer: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CUSTOMER_TYPE_ID > 0'
        ErrorMessage = 'Customer type must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 
          'CHAR_LENGTH(TRIM(NAME)) > 0 OR (CHAR_LENGTH(TRIM(FIRST_NAME)) > ' +
          '0 AND CHAR_LENGTH(TRIM(LAST_NAME)) > 0)'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <
      item
        Name = 'idxCustID'
        Fields = 'ID'
      end
      item
        Name = 'idxCustName'
        Fields = 'NAME'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'idxCustName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
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
    Left = 139
    Top = 10
    object cdsCustomerID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsCustomerCUSTOMER_TYPE_ID: TIntegerField
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
    end
    object cdsCustomerYEAR_END_MONTH_ID: TIntegerField
      DisplayLabel = 'YEM ID'
      FieldName = 'YEAR_END_MONTH_ID'
      Origin = 'YEAR_END_MONTH_ID'
    end
    object cdsCustomerTAX_OFFICE_ID: TIntegerField
      DisplayLabel = 'TO ID'
      FieldName = 'TAX_OFFICE_ID'
      Origin = 'TAX_OFFICE_ID'
    end
    object cdsCustomerAR_MONTH_ID: TIntegerField
      DisplayLabel = 'ARM ID'
      FieldName = 'AR_MONTH_ID'
      Origin = 'AR_MONTH_ID'
    end
    object cdsCustomerVAT_MONTH_ID: TIntegerField
      DisplayLabel = 'VM ID'
      FieldName = 'VAT_MONTH_ID'
      Origin = 'VAT_MONTH_ID'
    end
    object cdsCustomerVAT_COUNTRY_ID: TIntegerField
      DisplayLabel = 'VC ID'
      FieldName = 'VAT_COUNTRY_ID'
      Origin = 'VAT_COUNTRY_ID'
    end
    object cdsCustomerVAT_OFFICE_ID: TIntegerField
      DisplayLabel = 'VO ID'
      FieldName = 'VAT_OFFICE_ID'
      Origin = 'VAT_OFFICE_ID'
    end
    object cdsCustomerSTATUS_ID: TIntegerField
      DisplayLabel = 'STA ID'
      FieldName = 'STATUS_ID'
      Origin = 'STATUS_ID'
    end
    object cdsCustomerCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsCustomerNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object cdsCustomerFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsCustomerLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsCustomerINITIALS: TStringField
      DisplayLabel = 'Init'
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      Size = 5
    end
    object cdsCustomerTRADING_AS: TStringField
      DisplayLabel = 'Trading As'
      FieldName = 'TRADING_AS'
      Origin = 'TRADING_AS'
      Size = 100
    end
    object cdsCustomerBILL_TO: TStringField
      DisplayLabel = 'Bill To'
      FieldName = 'BILL_TO'
      Origin = 'BILL_TO'
      Size = 100
    end
    object cdsCustomerCO_NO: TStringField
      DisplayLabel = 'CO No'
      FieldName = 'CO_NO'
      Origin = 'CO_NO'
    end
    object cdsCustomerTAX_NO: TStringField
      DisplayLabel = 'Tax No'
      FieldName = 'TAX_NO'
      Origin = 'TAX_NO'
    end
    object cdsCustomerVAT_NO: TStringField
      DisplayLabel = 'VAT No'
      FieldName = 'VAT_NO'
      Origin = 'VAT_NO'
    end
    object cdsCustomerVAT_CUSTOMS_CODE: TStringField
      DisplayLabel = 'VAT Cust Code'
      FieldName = 'VAT_CUSTOMS_CODE'
      Origin = 'VAT_CUSTOMS_CODE'
    end
    object cdsCustomerPAYE_NO: TStringField
      DisplayLabel = 'PAYE No'
      FieldName = 'PAYE_NO'
      Origin = 'PAYE_NO'
    end
    object cdsCustomerUIF_NO: TStringField
      DisplayLabel = 'UIF No'
      FieldName = 'UIF_NO'
      Origin = 'UIF_NO'
    end
    object cdsCustomerSDL_NO: TStringField
      DisplayLabel = 'SDL No'
      FieldName = 'SDL_NO'
      Origin = 'SDL_NO'
    end
    object cdsCustomerWC_NO: TStringField
      DisplayLabel = 'WC No'
      FieldName = 'WC_NO'
      Origin = 'WC_NO'
    end
    object cdsCustomerAR_COMPLETION_DATE: TSQLTimeStampField
      DisplayLabel = 'AR Comp Date'
      FieldName = 'AR_COMPLETION_DATE'
      Origin = 'AR_COMPLETION_DATE'
    end
    object cdsCustomerPASTEL_ACC_CODE: TStringField
      DisplayLabel = 'Pastel Acc Code'
      FieldName = 'PASTEL_ACC_CODE'
      Origin = 'PASTEL_ACC_CODE'
      Size = 25
    end
    object cdsCustomerVB_TAX_ACC_CODE: TStringField
      DisplayLabel = 'VB Tax Acc Code'
      FieldName = 'VB_TAX_ACC_CODE'
      Origin = 'VB_TAX_ACC_CODE'
      Size = 25
    end
    object cdsCustomerIS_PROV_TAX_PAYER: TIntegerField
      DisplayLabel = 'Prov'
      FieldName = 'IS_PROV_TAX_PAYER'
      Origin = 'IS_PROV_TAX_PAYER'
    end
    object cdsCustomerHAS_LIVING_WILL: TIntegerField
      DisplayLabel = 'Liv Will'
      FieldName = 'HAS_LIVING_WILL'
      Origin = 'HAS_LIVING_WILL'
    end
    object cdsCustomerIS_ORGAN_DONOR: TIntegerField
      DisplayLabel = 'Org Don'
      FieldName = 'IS_ORGAN_DONOR'
      Origin = 'IS_ORGAN_DONOR'
    end
    object cdsCustomerDATE_CREATED: TSQLTimeStampField
      DisplayLabel = 'Created'
      FieldName = 'DATE_CREATED'
      Origin = 'DATE_CREATED'
    end
    object cdsCustomerDATE_MODIFIED: TSQLTimeStampField
      DisplayLabel = 'Modified'
      FieldName = 'DATE_MODIFIED'
      Origin = 'DATE_MODIFIED'
    end
    object cdsCustomerIS_ACTIVE: TIntegerField
      DisplayLabel = 'Act'
      FieldName = 'IS_ACTIVE'
      Origin = 'IS_ACTIVE'
    end
    object cdsCustomerEFILING: TStringField
      DisplayLabel = 'eFiling'
      FieldName = 'EFILING'
      Origin = 'EFILING'
      Size = 30
    end
    object cdsCustomerEF_USER_NAME: TStringField
      DisplayLabel = 'eFil User Name'
      FieldName = 'EF_USER_NAME'
      Origin = 'EF_USER_NAME'
      Size = 30
    end
    object cdsCustomerEF_PASSWORD: TStringField
      DisplayLabel = 'eFiling Password'
      FieldName = 'EF_PASSWORD'
      Origin = 'EF_PASSWORD'
    end
    object cdsCustomerYEAR_END_MONTH: TStringField
      DisplayLabel = 'Year End Month'
      FieldName = 'YEAR_END_MONTH'
      Origin = 'YEAR_END_MONTH'
      Size = 10
    end
    object cdsCustomerTAX_OFFICE: TStringField
      DisplayLabel = 'Tax Office'
      FieldName = 'TAX_OFFICE'
      Origin = 'TAX_OFFICE'
      Size = 40
    end
    object cdsCustomerVAT_MONTH: TStringField
      DisplayLabel = 'VAT Month'
      FieldName = 'VAT_MONTH'
      Origin = 'VAT_MONTH'
      Size = 10
    end
    object cdsCustomerVAT_COUNTRY: TStringField
      DisplayLabel = 'VAT Country'
      FieldName = 'VAT_COUNTRY'
      Origin = 'VAT_COUNTRY'
      Size = 50
    end
    object cdsCustomerVAT_OFFICE: TStringField
      DisplayLabel = 'VAT Office'
      FieldName = 'VAT_OFFICE'
      Origin = 'VAT_OFFICE'
      Size = 40
    end
    object cdsCustomerAR_MONTH: TStringField
      DisplayLabel = 'AR Month'
      FieldName = 'AR_MONTH'
      Origin = 'AR_MONTH'
      Size = 10
    end
    object cdsCustomerCUSTOMER_STATUS: TStringField
      DisplayLabel = 'Cust Status'
      FieldName = 'CUSTOMER_STATUS'
      Origin = 'CUSTOMER_STATUS'
    end
    object cdsCustomerIS_ACTIVE_STR: TStringField
      DisplayLabel = 'Act'
      FieldName = 'IS_ACTIVE_STR'
      Origin = 'IS_ACTIVE_STR'
      FixedChar = True
      Size = 1
    end
    object cdsCustomerIS_PROV_TAX_PAYER_STR: TStringField
      DisplayLabel = 'Prov'
      FieldName = 'IS_PROV_TAX_PAYER_STR'
      Origin = 'IS_PROV_TAX_PAYER_STR'
      FixedChar = True
      Size = 1
    end
    object cdsCustomerHAS_LIVING_WILL_STR: TStringField
      DisplayLabel = 'Liv Will'
      FieldName = 'HAS_LIVING_WILL_STR'
      Origin = 'HAS_LIVING_WILL_STR'
      FixedChar = True
      Size = 1
    end
    object cdsCustomerIS_ORGAN_DONOR_STR: TStringField
      DisplayLabel = 'Org Don'
      FieldName = 'IS_ORGAN_DONOR_STR'
      Origin = 'IS_ORGAN_DONOR_STR'
      FixedChar = True
      Size = 1
    end
  end
  object View_customerView: TFDQuery
    Connection = VbdevConnection
    SQL.Strings = (
      'SELECT * FROM VIEW_CUSTOMER')
    Left = 557
    Top = 77
    object View_customerViewID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object View_customerViewCUSTOMER_TYPE_ID: TIntegerField
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
    end
    object View_customerViewYEAR_END_MONTH_ID: TIntegerField
      FieldName = 'YEAR_END_MONTH_ID'
      Origin = 'YEAR_END_MONTH_ID'
    end
    object View_customerViewTAX_OFFICE_ID: TIntegerField
      FieldName = 'TAX_OFFICE_ID'
      Origin = 'TAX_OFFICE_ID'
    end
    object View_customerViewAR_MONTH_ID: TIntegerField
      FieldName = 'AR_MONTH_ID'
      Origin = 'AR_MONTH_ID'
    end
    object View_customerViewVAT_MONTH_ID: TIntegerField
      FieldName = 'VAT_MONTH_ID'
      Origin = 'VAT_MONTH_ID'
    end
    object View_customerViewVAT_COUNTRY_ID: TIntegerField
      FieldName = 'VAT_COUNTRY_ID'
      Origin = 'VAT_COUNTRY_ID'
    end
    object View_customerViewVAT_OFFICE_ID: TIntegerField
      FieldName = 'VAT_OFFICE_ID'
      Origin = 'VAT_OFFICE_ID'
    end
    object View_customerViewSTATUS_ID: TIntegerField
      FieldName = 'STATUS_ID'
      Origin = 'STATUS_ID'
    end
    object View_customerViewCUSTOMER_TYPE: TStringField
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object View_customerViewNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object View_customerViewFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object View_customerViewLAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object View_customerViewINITIALS: TStringField
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      Size = 5
    end
    object View_customerViewTRADING_AS: TStringField
      FieldName = 'TRADING_AS'
      Origin = 'TRADING_AS'
      Size = 100
    end
    object View_customerViewBILL_TO: TStringField
      FieldName = 'BILL_TO'
      Origin = 'BILL_TO'
      Size = 100
    end
    object View_customerViewCO_NO: TStringField
      FieldName = 'CO_NO'
      Origin = 'CO_NO'
    end
    object View_customerViewTAX_NO: TStringField
      FieldName = 'TAX_NO'
      Origin = 'TAX_NO'
    end
    object View_customerViewVAT_NO: TStringField
      FieldName = 'VAT_NO'
      Origin = 'VAT_NO'
    end
    object View_customerViewVAT_CUSTOMS_CODE: TStringField
      FieldName = 'VAT_CUSTOMS_CODE'
      Origin = 'VAT_CUSTOMS_CODE'
    end
    object View_customerViewPAYE_NO: TStringField
      FieldName = 'PAYE_NO'
      Origin = 'PAYE_NO'
    end
    object View_customerViewUIF_NO: TStringField
      FieldName = 'UIF_NO'
      Origin = 'UIF_NO'
    end
    object View_customerViewSDL_NO: TStringField
      FieldName = 'SDL_NO'
      Origin = 'SDL_NO'
    end
    object View_customerViewWC_NO: TStringField
      FieldName = 'WC_NO'
      Origin = 'WC_NO'
    end
    object View_customerViewAR_COMPLETION_DATE: TSQLTimeStampField
      FieldName = 'AR_COMPLETION_DATE'
      Origin = 'AR_COMPLETION_DATE'
    end
    object View_customerViewPASTEL_ACC_CODE: TStringField
      FieldName = 'PASTEL_ACC_CODE'
      Origin = 'PASTEL_ACC_CODE'
      Size = 25
    end
    object View_customerViewVB_TAX_ACC_CODE: TStringField
      FieldName = 'VB_TAX_ACC_CODE'
      Origin = 'VB_TAX_ACC_CODE'
      Size = 25
    end
    object View_customerViewIS_PROV_TAX_PAYER: TIntegerField
      FieldName = 'IS_PROV_TAX_PAYER'
      Origin = 'IS_PROV_TAX_PAYER'
    end
    object View_customerViewHAS_LIVING_WILL: TIntegerField
      FieldName = 'HAS_LIVING_WILL'
      Origin = 'HAS_LIVING_WILL'
    end
    object View_customerViewIS_ORGAN_DONOR: TIntegerField
      FieldName = 'IS_ORGAN_DONOR'
      Origin = 'IS_ORGAN_DONOR'
    end
    object View_customerViewDATE_CREATED: TSQLTimeStampField
      FieldName = 'DATE_CREATED'
      Origin = 'DATE_CREATED'
    end
    object View_customerViewDATE_MODIFIED: TSQLTimeStampField
      FieldName = 'DATE_MODIFIED'
      Origin = 'DATE_MODIFIED'
    end
    object View_customerViewIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
      Origin = 'IS_ACTIVE'
    end
    object View_customerViewEFILING: TStringField
      FieldName = 'EFILING'
      Origin = 'EFILING'
      Size = 30
    end
    object View_customerViewEF_USER_NAME: TStringField
      FieldName = 'EF_USER_NAME'
      Origin = 'EF_USER_NAME'
      Size = 30
    end
    object View_customerViewEF_PASSWORD: TStringField
      FieldName = 'EF_PASSWORD'
      Origin = 'EF_PASSWORD'
    end
    object View_customerViewYEAR_END_MONTH: TStringField
      FieldName = 'YEAR_END_MONTH'
      Origin = 'YEAR_END_MONTH'
      Size = 10
    end
    object View_customerViewTAX_OFFICE: TStringField
      FieldName = 'TAX_OFFICE'
      Origin = 'TAX_OFFICE'
      Size = 40
    end
    object View_customerViewVAT_MONTH: TStringField
      FieldName = 'VAT_MONTH'
      Origin = 'VAT_MONTH'
      Size = 10
    end
    object View_customerViewVAT_COUNTRY: TStringField
      FieldName = 'VAT_COUNTRY'
      Origin = 'VAT_COUNTRY'
      Size = 50
    end
    object View_customerViewVAT_OFFICE: TStringField
      FieldName = 'VAT_OFFICE'
      Origin = 'VAT_OFFICE'
      Size = 40
    end
    object View_customerViewAR_MONTH: TStringField
      FieldName = 'AR_MONTH'
      Origin = 'AR_MONTH'
      Size = 10
    end
    object View_customerViewCUSTOMER_STATUS: TStringField
      FieldName = 'CUSTOMER_STATUS'
      Origin = 'CUSTOMER_STATUS'
    end
    object View_customerViewIS_ACTIVE_STR: TStringField
      FieldName = 'IS_ACTIVE_STR'
      Origin = 'IS_ACTIVE_STR'
      FixedChar = True
      Size = 1
    end
    object View_customerViewIS_PROV_TAX_PAYER_STR: TStringField
      FieldName = 'IS_PROV_TAX_PAYER_STR'
      Origin = 'IS_PROV_TAX_PAYER_STR'
      FixedChar = True
      Size = 1
    end
    object View_customerViewHAS_LIVING_WILL_STR: TStringField
      FieldName = 'HAS_LIVING_WILL_STR'
      Origin = 'HAS_LIVING_WILL_STR'
      FixedChar = True
      Size = 1
    end
    object View_customerViewIS_ORGAN_DONOR_STR: TStringField
      FieldName = 'IS_ORGAN_DONOR_STR'
      Origin = 'IS_ORGAN_DONOR_STR'
      FixedChar = True
      Size = 1
    end
  end
  object View_contact_personView: TFDQuery
    Connection = VbdevConnection
    SQL.Strings = (
      'SELECT * FROM VIEW_CONTACT_PERSON')
    Left = 551
    Top = 149
    object View_contact_personViewID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object View_contact_personViewCUSTOMER_ID: TIntegerField
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object View_contact_personViewSALUTATION_ID: TIntegerField
      FieldName = 'SALUTATION_ID'
      Origin = 'SALUTATION_ID'
    end
    object View_contact_personViewJOB_FUNCTION_ID: TIntegerField
      FieldName = 'JOB_FUNCTION_ID'
      Origin = 'JOB_FUNCTION_ID'
    end
    object View_contact_personViewFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object View_contact_personViewLAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object View_contact_personViewINITIALS: TStringField
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      Size = 5
    end
    object View_contact_personViewOTHER_NAME: TStringField
      FieldName = 'OTHER_NAME'
      Origin = 'OTHER_NAME'
      Size = 50
    end
    object View_contact_personViewDOB: TSQLTimeStampField
      FieldName = 'DOB'
      Origin = 'DOB'
    end
    object View_contact_personViewID_NUMBER: TStringField
      FieldName = 'ID_NUMBER'
      Origin = 'ID_NUMBER'
    end
    object View_contact_personViewPASSPORT_NUMBER: TStringField
      FieldName = 'PASSPORT_NUMBER'
      Origin = 'PASSPORT_NUMBER'
    end
    object View_contact_personViewIS_PRIMARY_CONTACT: TIntegerField
      FieldName = 'IS_PRIMARY_CONTACT'
      Origin = 'IS_PRIMARY_CONTACT'
    end
    object View_contact_personViewSALUTATION: TStringField
      FieldName = 'SALUTATION'
      Origin = 'SALUTATION'
    end
    object View_contact_personViewJOB_FUNCTION: TStringField
      FieldName = 'JOB_FUNCTION'
      Origin = 'JOB_FUNCTION'
      Size = 50
    end
  end
  object View_contact_detail_coView: TFDQuery
    Connection = VbdevConnection
    SQL.Strings = (
      'SELECT * FROM VIEW_CONTACT_DETAIL_CO')
    Left = 552
    Top = 291
    object View_contact_detail_coViewCONTACT_DETAIL_CO_ID: TIntegerField
      FieldName = 'CONTACT_DETAIL_CO_ID'
      Origin = 'CONTACT_DETAIL_CO_ID'
    end
    object View_contact_detail_coViewCONTACT_TYPE_ID: TIntegerField
      FieldName = 'CONTACT_TYPE_ID'
      Origin = 'CONTACT_TYPE_ID'
    end
    object View_contact_detail_coViewCUSTOMER_ID: TIntegerField
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object View_contact_detail_coViewCONTACT_TYPE: TStringField
      FieldName = 'CONTACT_TYPE'
      Origin = 'CONTACT_TYPE'
      Size = 30
    end
    object View_contact_detail_coViewVALUE: TStringField
      FieldName = 'VALUE'
      Origin = '"VALUE"'
      Size = 75
    end
  end
  object View_contact_detail_personView: TFDQuery
    Connection = VbdevConnection
    SQL.Strings = (
      'SELECT * FROM VIEW_CONTACT_DETAIL_PERSON')
    Left = 549
    Top = 219
    object View_contact_detail_personViewID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object View_contact_detail_personViewCONTACT_TYPE_ID: TIntegerField
      FieldName = 'CONTACT_TYPE_ID'
      Origin = 'CONTACT_TYPE_ID'
    end
    object View_contact_detail_personViewCUSTOMER_ID: TIntegerField
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object View_contact_detail_personViewCONTACT_PERSON_ID: TIntegerField
      FieldName = 'CONTACT_PERSON_ID'
      Origin = 'CONTACT_PERSON_ID'
    end
    object View_contact_detail_personViewVALUE: TStringField
      FieldName = 'VALUE'
      Origin = '"VALUE"'
      Size = 75
    end
    object View_contact_detail_personViewCOMMENT: TStringField
      FieldName = 'COMMENT'
      Origin = '"COMMENT"'
      Size = 30
    end
    object View_contact_detail_personViewCONTACT_TYPE: TStringField
      FieldName = 'CONTACT_TYPE'
      Origin = 'CONTACT_TYPE'
      Size = 255
    end
  end
  object cdsContactDetailCo: TFDMemTable
    Tag = 9
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CONTACT_TYPE_ID > 0'
        ErrorMessage = 'Contact type must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(VALUE)) > 0'
        ErrorMessage = 'Contact detail must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Name = 'idxCID'
        Fields = 'CUSTOMER_ID'
      end
      item
        Active = True
        Selected = True
        Name = 'idxContactdetailValue'
        Fields = 'CUSTOMER_ID;CONTACT_TYPE_ID;VALUE'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxContactdetailValue'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.DetailDelay = 450
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
    Left = 135
    Top = 120
    object cdsContactDetailCoID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object cdsContactDetailCoCONTACT_PERSON_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CP ID'
      FieldName = 'CONTACT_PERSON_ID'
      Origin = 'CONTACT_PERSON_ID'
      Required = True
    end
    object cdsContactDetailCoCONTACT_TYPE: TStringField
      DisplayLabel = 'Contact Type'
      FieldKind = fkCalculated
      FieldName = 'CONTACT_TYPE'
      Size = 30
      Calculated = True
    end
    object cdsContactDetailCoVALUE: TStringField
      DisplayLabel = 'Value'
      FieldName = 'VALUE'
      Origin = '"VALUE"'
      Required = True
      Size = 75
    end
    object cdsContactDetailCoCOMMENT: TStringField
      DisplayLabel = 'Comment'
      FieldName = 'COMMENT'
      Origin = '"COMMENT"'
      Size = 255
    end
  end
end
