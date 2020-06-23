unit TS_DM;

interface

uses
  System.SysUtils, System.Classes, WinApi.Windows, Vcl.Forms, Data.DBXDataSnap,
  Data.DBXCommon, System.DateUtils,

  Base_DM, VBBase_DM, CommonValues, VBCommonValues,

  IPPeerClient, Data.DB, Data.SqlExpr,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.DApt, FireDAC.Stan.StorageBin, FireDAC.Comp.UI,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Phys.IBBase;

type
  TTimesheetOptions = record
    UseDefaultCustomer: Boolean;
    UseDefaultPriceItem: Boolean;
    UseDefaultRate: Boolean;
    DefaultCustomerID: Integer;
    DefaultPriceItemID: Integer;
    DefaultRate: Extended;
    RateUnitID: Integer;
    PriceListItemActionIndex: Integer;
    UseTodaysDate: Boolean;
    IncrementalLookupFitlering: Boolean;
    HighlightLookupSearchMatch: Boolean;
    SaveGridLayout: Boolean;
    PersitentRecordSelection: Boolean;
    IncludeCarryForwardItems: Boolean;
  end;

//    Regkey.WriteBool('Incremental Lookup Fitlering', cbxIncrementalFiltering.Checked);
//    RegKey.WriteBool('Highlight Lookup Search Match', cbxHighlightSearchMatch.Checked);

  TTSDM = class(TVBBaseDM)
    cdsCustomerLookup: TFDMemTable;
    cdsPriceList: TFDMemTable;
    cdsActivityType: TFDMemTable;
    cdsRateUnit: TFDMemTable;
    cdsTSPeriod: TFDMemTable;
    cdsSystemUser: TFDMemTable;
    dtsCustomerLookup: TDataSource;
    dtsPriceList: TDataSource;
    dtsActivityType: TDataSource;
    dtsRateUnit: TDataSource;
    dtsTSPeriod: TDataSource;
    dtsSytemUser: TDataSource;
    VbliveConnection: TFDConnection;
    cdsCustomerGroup: TFDMemTable;
    dtsCustomerGroup: TDataSource;
    cdsCustomerLookupID: TIntegerField;
    cdsCustomerLookupCUSTOMER_TYPE_ID: TIntegerField;
    cdsCustomerLookupNAME: TStringField;
    cdsCustomerLookupTRADING_AS: TStringField;
    cdsCustomerLookupCO_NO: TStringField;
    cdsCustomerLookupTAX_NO: TStringField;
    cdsCustomerLookupIS_ACTIVE: TIntegerField;
    cdsCustomerLookupCUSTOMER_GROUP_ID: TIntegerField;
    cdsCustomerLookupCUSTOMER_TYPE: TStringField;
    cdsCustomerLookupCUSTOMER_STATUS: TStringField;
    cdsCustomerLookupSTATUS_ID: TIntegerField;
    cdsPriceListID: TIntegerField;
    cdsPriceListRATE_UNIT_ID: TIntegerField;
    cdsPriceListNAME: TStringField;
    cdsPriceListRATE: TFloatField;
    cdsPriceListINVOICE_DESCRIPTION: TStringField;
    cdsPriceListDESCRIPTION: TStringField;
    cdsPriceListRATE_UNIT: TStringField;
    cdsActivityTypeID: TIntegerField;
    cdsActivityTypeNAME: TStringField;
    cdsCustomerGroupID: TIntegerField;
    cdsCustomerGroupNAME: TStringField;
    cdsRateUnitID: TIntegerField;
    cdsRateUnitNAME: TStringField;
    cdsTSPeriodTHE_PERIOD: TIntegerField;
    cdsSystemUserID: TIntegerField;
    cdsSystemUserFIRST_NAME: TStringField;
    cdsSystemUserLAST_NAME: TStringField;
    cdsSystemUserLOGIN_NAME: TStringField;
    cdsSystemUserEMAIL_ADDRESS: TStringField;
    cdsSystemUserPASSWORD: TStringField;
    cdsSystemUserACCOUNT_ENABLED: TIntegerField;
    cdsCustomerLookupACTIVE_STATUS: TStringField;
    cdsCustomerLookupPref: TFDMemTable;
    cdsPriceListPref: TFDMemTable;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField8: TStringField;
    FloatField1: TFloatField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    dtsCustomerLookupPref: TDataSource;
    dtsPriceListPref: TDataSource;
    cdsRatePUnitref: TFDMemTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dtsRateUnitPref: TDataSource;
    cdsCustomerLookupPrefID: TIntegerField;
    cdsCustomerLookupPrefCUSTOMER_TYPE_ID: TIntegerField;
    cdsCustomerLookupPrefSTATUS_ID: TIntegerField;
    cdsCustomerLookupPrefCUSTOMER_GROUP_ID: TIntegerField;
    cdsCustomerLookupPrefNAME: TStringField;
    cdsCustomerLookupPrefTRADING_AS: TStringField;
    cdsCustomerLookupPrefCO_NO: TStringField;
    cdsCustomerLookupPrefTAX_NO: TStringField;
    cdsCustomerLookupPrefIS_ACTIVE: TIntegerField;
    cdsCustomerLookupPrefCUSTOMER_TYPE: TStringField;
    cdsCustomerLookupPrefCUSTOMER_STATUS: TStringField;
    cdsCustomerLookupPrefACTIVE_STATUS: TStringField;
    cdsTimesheet: TFDMemTable;
    cdsTimesheetEditID: TIntegerField;
    cdsTimesheetEditUSER_ID: TIntegerField;
    cdsTimesheetEditCUSTOMER_ID: TIntegerField;
    cdsTimesheetEditPRICE_LIST_ITEM_ID: TIntegerField;
    cdsTimesheetEditRATE_UNIT_ID: TIntegerField;
    cdsTimesheetEditACTIVITY_TYPE_ID: TIntegerField;
    cdsTimesheetEditINVOICE_ID: TIntegerField;
    cdsTimesheetEditCN_ID: TIntegerField;
    cdsTimesheetEditCUSTOMER_GROUP_ID: TIntegerField;
    cdsTimesheetEditACTIVITY: TStringField;
    cdsTimesheetEditTIME_SPENT: TFloatField;
    cdsTimesheetEditTIME_HOURS: TFloatField;
    cdsTimesheetEditACTUAL_RATE: TFloatField;
    cdsTimesheetEditSTD_RATE: TFloatField;
    cdsTimesheetEditITEM_VALUE: TFloatField;
    cdsTimesheetEditLOCKED: TIntegerField;
    cdsTimesheetEditACTIVITY_DATE: TDateField;
    cdsTimesheetEditDATE_MODIFIED: TDateField;
    cdsTimesheetEditTHE_PERIOD: TIntegerField;
    cdsTimesheetEditBILLABLE: TIntegerField;
    cdsTimesheetEditDAY_NAME: TStringField;
    cdsTimesheetEditDAY_ORDER: TIntegerField;
    cdsTimesheetEditINVOICE_DATE: TDateField;
    cdsTimesheetEditCARRY_FORWARD: TIntegerField;
    cdsTimesheetEditAPPROVED: TIntegerField;
    cdsTimesheetEditIS_ADDITIONAL_WORK: TIntegerField;
    dtsTimesheet: TDataSource;
    VbdevConnection: TFDConnection;
    cdsStdActivity: TFDMemTable;
    dtsStdActivity: TDataSource;
    cdsStdActivityID: TIntegerField;
    cdsStdActivityNAME: TStringField;
    cdsRateUnitABBREVIATION: TStringField;
    cdsRatePUnitrefABBREVIATION: TStringField;
    cdsTimesheetDATE_RELEASED: TDateField;
    cdsTimesheetRELEASE_TO_PERIOD: TIntegerField;
    cdsCarryForward1: TFDMemTable;
    dtsCarryForward1: TDataSource;
    cdsCarryForward1ID: TIntegerField;
    cdsCarryForward1USER_ID: TIntegerField;
    cdsCarryForward1CUSTOMER_ID: TIntegerField;
    cdsCarryForward1PRICE_LIST_ITEM_ID: TIntegerField;
    cdsCarryForward1RATE_UNIT_ID: TIntegerField;
    cdsCarryForward1ACTIVITY_TYPE_ID: TIntegerField;
    cdsCarryForward1INVOICE_ID: TIntegerField;
    cdsCarryForward1CN_ID: TIntegerField;
    cdsCarryForward1CUSTOMER_GROUP_ID: TIntegerField;
    cdsCarryForward1ACTIVITY: TStringField;
    cdsCarryForward1TIME_SPENT: TFloatField;
    cdsCarryForward1TIME_HOURS: TFloatField;
    cdsCarryForward1ACTUAL_RATE: TFloatField;
    cdsCarryForward1STD_RATE: TFloatField;
    cdsCarryForward1ITEM_VALUE: TFloatField;
    cdsCarryForward1LOCKED: TIntegerField;
    cdsCarryForward1ACTIVITY_DATE: TDateField;
    cdsCarryForward1DATE_MODIFIED: TDateField;
    cdsCarryForward1THE_PERIOD: TIntegerField;
    cdsCarryForward1BILLABLE: TIntegerField;
    cdsCarryForward1DAY_NAME: TStringField;
    cdsCarryForward1DAY_ORDER: TIntegerField;
    cdsCarryForward1INVOICE_DATE: TDateField;
    cdsCarryForward1CARRY_FORWARD: TIntegerField;
    cdsCarryForward1APPROVED: TIntegerField;
    cdsCarryForward1IS_ADDITIONAL_WORK: TIntegerField;
    cdsCarryForward1DATE_RELEASED: TDateField;
    cdsCarryForward1RELEASE_TO_PERIOD: TIntegerField;
    cdsCarryForward: TFDMemTable;
    cdsCarryForwardID: TIntegerField;
    cdsCarryForwardFIRST_NAME: TStringField;
    cdsCarryForwardLAST_NAME: TStringField;
    cdsCarryForwardLOGIN_NAME: TStringField;
    cdsCarryForwardACTIVITY_DATE: TDateField;
    cdsCarryForwardCUSTOMER_TYPE: TStringField;
    cdsCarryForwardCUSTOMER_NAME: TStringField;
    cdsCarryForwardACTIVITY_TYPE: TStringField;
    cdsCarryForwardACTIVITY: TStringField;
    cdsCarryForwardPRICE_LIST_ITEM: TStringField;
    cdsCarryForwardTIME_SPENT: TFloatField;
    cdsCarryForwardTIME_HOURS: TFloatField;
    cdsCarryForwardACTUAL_RATE: TFloatField;
    cdsCarryForwardSTD_RATE: TFloatField;
    cdsCarryForwardABBREVIATION: TStringField;
    cdsCarryForwardITEM_VALUE: TFloatField;
    cdsCarryForwardTHE_PERIOD: TIntegerField;
    cdsCarryForwardBILLABLE: TIntegerField;
    cdsCarryForwardBILLABLE_STR: TStringField;
    cdsCarryForwardINVOICE_ID: TIntegerField;
    cdsCarryForwardCN_ID: TIntegerField;
    cdsCarryForwardLOCKED: TIntegerField;
    cdsCarryForwardLOCKED_STR: TStringField;
    cdsCarryForwardINVOICE_DATE: TDateField;
    cdsCarryForwardCARRY_FORWARD: TIntegerField;
    cdsCarryForwardCARRY_FORWARD_STR: TStringField;
    cdsCarryForwardIS_ADDITIONAL_WORK: TIntegerField;
    cdsCarryForwardIS_ADDITIONAL_WORK_STR: TStringField;
    cdsCarryForwardCARRY_FORWARD_VALUE: TFloatField;
    dtsCarryForward: TDataSource;
    cdsPeriod: TFDMemTable;
    cdsPeriodTHE_PERIOD: TIntegerField;
    cdsAllPeriod: TFDMemTable;
    cdsAllPeriodTHE_PERIOD: TIntegerField;
    dtsPeriod: TDataSource;
    dtsAllPeriod: TDataSource;
    cdsToPeriod: TFDMemTable;
    cdsToPeriodTHE_PERIOD: TIntegerField;
    dtsToPeriod: TDataSource;
    cdsTimesheetPERIOD_NAME: TStringField;
    cdsCarryForward1PERIOD_NAME: TStringField;
    cdsTSPeriodPERIOD_NAME: TStringField;
    cdsPeriodPERIOD_NAME: TStringField;
    cdsToPeriodPERIOD_NAME: TStringField;
    cdsAllPeriodPERIOD_NAME: TStringField;
    cdsCarryForwardPERIOD_NAME: TStringField;
    cdsTimesheetDATE_CARRIED_FORWARD: TDateField;
    dtsContactDetailCo: TDataSource;
    cdsContactDetailCo: TFDMemTable;
    cdsContactDetailCoCONTACT_TYPE_ID: TIntegerField;
    cdsContactDetailCoCUSTOMER_ID: TIntegerField;
    cdsContactDetailCoCONTACT_TYPE: TStringField;
    cdsContactDetailCoVALUE: TStringField;
    cdsContactDetailCoCONTACT_DETAIL_CO_ID: TIntegerField;
    cdsTimesheetView: TFDMemTable;
    dtsTimesheetView: TDataSource;
    cdsTimesheetViewID: TIntegerField;
    cdsTimesheetViewUSER_ID: TIntegerField;
    cdsTimesheetViewCUSTOMER_ID: TIntegerField;
    cdsTimesheetViewRATE_UNIT_ID: TIntegerField;
    cdsTimesheetViewINVOICE_ID: TIntegerField;
    cdsTimesheetViewCN_ID: TIntegerField;
    cdsTimesheetViewACTIVITY_TYPE_ID: TIntegerField;
    cdsTimesheetViewPRICE_LIST_ITEM_ID: TIntegerField;
    cdsTimesheetViewCUSTOMER_TYPE_ID: TIntegerField;
    cdsTimesheetViewCUSTOMER_GROUP_ID: TIntegerField;
    cdsTimesheetViewFIRST_NAME: TStringField;
    cdsTimesheetViewLAST_NAME: TStringField;
    cdsTimesheetViewLOGIN_NAME: TStringField;
    cdsTimesheetViewACTIVITY_DATE: TDateField;
    cdsTimesheetViewCUSTOMER_TYPE: TStringField;
    cdsTimesheetViewCUSTOMER_NAME: TStringField;
    cdsTimesheetViewPRICE_LIST_ITEM: TStringField;
    cdsTimesheetViewACTIVITY_TYPE: TStringField;
    cdsTimesheetViewACTIVITY: TStringField;
    cdsTimesheetViewTIME_SPENT: TFloatField;
    cdsTimesheetViewTIME_HOURS: TFloatField;
    Value: TFloatField;
    cdsTimesheetViewEditACTUAL_RATE: TFloatField;
    cdsTimesheetViewSTD_RATE: TFloatField;
    cdsTimesheetViewABBREVIATION: TStringField;
    cdsTimesheetViewRATE_UNIT: TStringField;
    cdsTimesheetViewDATE_MODIFIED: TDateField;
    cdsTimesheetViewTHE_PERIOD: TIntegerField;
    cdsTimesheetViewPERIOD_NAME: TStringField;
    cdsTimesheetViewBILLABLE: TIntegerField;
    cdsTimesheetViewBILLABLE_STR: TStringField;
    cdsTimesheetViewDAY_NAME: TStringField;
    cdsTimesheetViewDAY_ORDER: TIntegerField;
    cdsTimesheetViewLOCKED: TIntegerField;
    cdsTimesheetViewLOCKED_STR: TStringField;
    cdsTimesheetViewINVOICE_DATE: TDateField;
    cdsTimesheetViewCARRY_FORWARD: TIntegerField;
    cdsTimesheetViewDATE_CARRIED_FORWARD: TDateField;
    cdsTimesheetViewIS_ADDITIONAL_WORK: TIntegerField;
    cdsTimesheetViewIS_ADDITIONAL_WORK_STR: TStringField;
    cdsTimesheetViewCUSTOMER_GROUP_LINK_NAME: TStringField;
    cdsTimesheetViewCARRY_FORWARD_STR: TStringField;
    cdsTimesheetViewAPPROVED: TIntegerField;
    cdsTimesheetViewFULL_NAME: TStringField;
    cdsTimesheetViewDATE_RELEASED: TDateField;
    cdsTimesheetViewRELEASE_TO_PERIOD: TIntegerField;
    cdsContactDetailCoFIRST_NAME: TStringField;
    cdsContactDetailCoLAST_NAME: TStringField;
    cdsContactDetailCoIS_PRIMARY_CONTACT: TIntegerField;
    cdsDirector: TFDMemTable;
    dtsDirector: TDataSource;
    cdsDirectorID: TIntegerField;
    cdsDirectorCUSTOMER_ID: TIntegerField;
    cdsDirectorSALUTATION_ID: TIntegerField;
    cdsDirectorSALUTATION: TStringField;
    cdsDirectorFIRST_NAME: TStringField;
    cdsDirectorLAST_NAME: TStringField;
    cdsDirectorMIDDLE_NAME: TStringField;
    cdsDirectorTAX_NO: TStringField;
    cdsDirectorMOBILE_PHONE: TStringField;
    cdsDirectorEMAIL_ADDRESS: TStringField;
    dtsRelease: TDataSource;
    cdsRelease: TFDMemTable;
    cdsReleaseID: TIntegerField;
    cdsReleaseFIRST_NAME: TStringField;
    cdsReleaseLAST_NAME: TStringField;
    cdsReleaseLOGIN_NAME: TStringField;
    cdsReleaseACTIVITY_DATE: TDateField;
    cdsReleaseCUSTOMER_TYPE: TStringField;
    cdsReleaseCUSTOMER_NAME: TStringField;
    cdsReleaseACTIVITY_TYPE: TStringField;
    cdsReleaseACTIVITY: TStringField;
    cdsReleasePRICE_LIST_ITEM: TStringField;
    cdsReleaseTIME_SPENT: TFloatField;
    cdsReleaseTIME_HOURS: TFloatField;
    cdsReleaseACTUAL_RATE: TFloatField;
    cdsReleaseSTD_RATE: TFloatField;
    cdsReleaseABBREVIATION: TStringField;
    cdsReleaseITEM_VALUE: TFloatField;
    cdsReleaseTHE_PERIOD: TIntegerField;
    cdsReleasePERIOD_NAME: TStringField;
    cdsReleaseBILLABLE: TIntegerField;
    cdsReleaseBILLABLE_STR: TStringField;
    cdsReleaseINVOICE_ID: TIntegerField;
    cdsReleaseCN_ID: TIntegerField;
    cdsReleaseLOCKED: TIntegerField;
    cdsReleaseLOCKED_STR: TStringField;
    cdsReleaseINVOICE_DATE: TDateField;
    cdsReleaseCARRY_FORWARD: TIntegerField;
    cdsReleaseCARRY_FORWARD_STR: TStringField;
    cdsReleaseIS_ADDITIONAL_WORK: TIntegerField;
    cdsReleaseIS_ADDITIONAL_WORK_STR: TStringField;
    cdsReleaseCARRY_FORWARD_VALUE: TFloatField;
    cdsCarryForwardDATE_RELEASED: TDateTimeField;
    cdsCarryForwardRELEASE_TO_PERIOD: TIntegerField;
    cdsReleaseDATE_RELEASED: TDateTimeField;
    cdsReleaseRELEASE_TO_PERIOD: TIntegerField;
    cdsChangeToPeriod: TFDMemTable;
    dtsChangeToPeriod: TDataSource;
    cdsChangeToPeriodTHE_PERIOD: TIntegerField;
    cdsChangeToPeriodPERIOD_NAME: TStringField;
    cdsTSInvoicing: TFDMemTable;
    cdsTSInvoicingID: TIntegerField;
    cdsTSInvoicingFIRST_NAME: TStringField;
    cdsTSInvoicingLAST_NAME: TStringField;
    cdsTSInvoicingLOGIN_NAME: TStringField;
    cdsTSInvoicingACTIVITY_DATE: TDateField;
    cdsTSInvoicingCUSTOMER_TYPE: TStringField;
    cdsTSInvoicingCUSTOMER_NAME: TStringField;
    cdsTSInvoicingACTIVITY_TYPE: TStringField;
    cdsTSInvoicingACTIVITY: TStringField;
    cdsTSInvoicingPRICE_LIST_ITEM: TStringField;
    cdsTSInvoicingTIME_SPENT: TFloatField;
    cdsTSInvoicingTIME_HOURS: TFloatField;
    cdsTSInvoicingACTUAL_RATE: TFloatField;
    cdsTSInvoicingSTD_RATE: TFloatField;
    cdsTSInvoicingABBREVIATION: TStringField;
    cdsTSInvoicingITEM_VALUE: TFloatField;
    cdsTSInvoicingTHE_PERIOD: TIntegerField;
    cdsTSInvoicingPERIOD_NAME: TStringField;
    cdsTSInvoicingBILLABLE: TIntegerField;
    cdsTSInvoicingBILLABLE_STR: TStringField;
    cdsTSInvoicingINVOICE_ID: TIntegerField;
    cdsTSInvoicingCN_ID: TIntegerField;
    cdsTSInvoicingLOCKED: TIntegerField;
    cdsTSInvoicingLOCKED_STR: TStringField;
    cdsTSInvoicingINVOICE_DATE: TDateField;
    cdsTSInvoicingCARRY_FORWARD: TIntegerField;
    cdsTSInvoicingCARRY_FORWARD_STR: TStringField;
    cdsTSInvoicingIS_ADDITIONAL_WORK: TIntegerField;
    cdsTSInvoicingIS_ADDITIONAL_WORK_STR: TStringField;
    cdsTSInvoicingCARRY_FORWARD_VALUE: TFloatField;
    dtsTSInvoicing: TDataSource;
    cdsTSInvoicingIntegerField: TIntegerField;
    cdsTSInvoicingIntegerField2: TIntegerField;
    cdsTSInvoicingIntegerField3: TIntegerField;
    cdsTSInvoicingACTIVITY_TYPE_ID: TIntegerField;
    cdsTSInvoicingPRICE_LIST_ITEM_ID: TIntegerField;
    cdsTSInvoicingCUSTOMER_TYPE_ID: TIntegerField;
    cdsTSCustomer: TFDMemTable;
    dtsTSCustomer: TDataSource;
    View_timesheet_customerView: TFDQuery;
    cdsTSCustomerID: TIntegerField;
    cdsTSCustomerCUSTOMER_TYPE_ID: TIntegerField;
    cdsTSCustomerSTATUS_ID: TIntegerField;
    cdsTSCustomerNAME: TStringField;
    cdsTSCustomerCUSTOMER_TYPE: TStringField;
    cdsTSCustomerCUSTOMER_STATUS: TStringField;
    cdsTSCustomerIS_ACTIVE: TIntegerField;
    cdsTSCustomerCUSTOMER_GROUP_ID: TIntegerField;
    cdsTSCustomerCUSTOMER_GROUP_LINK_NAME: TStringField;
    cdsInvoiceList: TFDMemTable;
    dtsInvoiceList: TDataSource;
    cdsInvoiceListINVOICE_ID: TIntegerField;
    cdsInvoiceListCUSTOMER_ID: TIntegerField;
    cdsInvoiceListCUSTOMER_TYPE_ID: TIntegerField;
    cdsInvoiceListNAME: TStringField;
    cdsInvoiceListINVOICE_DATE: TDateTimeField;
    cdsInvoiceListPRICE_LIST_ITEM: TStringField;
    cdsInvoiceListACTIVITY: TStringField;
    cdsInvoiceListITEM_VALUE: TFloatField;
    cdsInvoiceListACTIVITY_TYPE: TStringField;
    procedure dtsTimesheetStateChange(Sender: TObject);
    procedure cdsCustomerLookupCalcFields(DataSet: TDataSet);
    procedure cdsTimesheetNewRecord(DataSet: TDataSet);
    procedure PostData(DataSet: TFDMemTable);
    procedure cdsTimesheetBeforeEdit(DataSet: TDataSet);
    procedure cdsTimesheetAfterPost(DataSet: TDataSet);
    procedure cdsTimesheetBeforePost(DataSet: TDataSet);
    procedure cdsTimesheetCalcFields(DataSet: TDataSet);
  private
    FCurrentUserID: Integer;
    FDefaultInvoiceDate: TDateTime;
    FInvoiceNo: Integer;
    FCustomerID: Integer;
    FCFwdOrreleased: Boolean;
    { Private declarations }
  public
    { Public declarations }
    TimesheetOption: TTimesheetOptions;
    property CurrentUserID: Integer read FCurrentUserID write FCurrentUserID;
    property DefaultInvoiceDate: TDateTime read FDefaultInvoiceDate write FDefaultInvoiceDate;
    property InvoiceNo: Integer read FInvoiceNo write FInvoiceNo;
    property CustomerID: Integer read FCustomerID write FCustomerID;
    property CFwdOrreleased: Boolean read FCFwdOrreleased write FCFwdOrreleased;

    function GetDefaulttInvoiceDate: TDateTime;

  end;

var
  TSDM: TTSDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RUtils;

{$R *.dfm}

procedure TTSDM.cdsCustomerLookupCalcFields(DataSet: TDataSet);
begin
  case TFDMemTable(DataSet).FieldByName('IS_ACTIVE').Asinteger of
    0: TFDMemTable(DataSet).FieldByName('ACTIVE_STATUS').AsString := 'No';
    1: TFDMemTable(DataSet).FieldByName('ACTIVE_STATUS').AsString := 'Yes';
  end;
//  case cdsCustomerLookup.FieldByName('IS_ACTIVE').Asinteger of
//    0: cdsCustomerLookup.FieldByName('ACTIVE_STATUS').AsString := 'No';
//    1: cdsCustomerLookup.FieldByName('ACTIVE_STATUS').AsString := 'Yes';
//  end;
end;

procedure TTSDM.cdsTimesheetAfterPost(DataSet: TDataSet);
begin
  VBBaseDM.DBAction := acBrowsing;
end;

procedure TTSDM.cdsTimesheetBeforeEdit(DataSet: TDataSet);
begin
  VBBaseDM.DBAction := acEdit;
end;

procedure TTSDM.cdsTimesheetBeforePost(DataSet: TDataSet);
begin
//  cdsTimesheet.FieldByName('THE_PERIOD').AsInteger :=
//    cdsTimesheet.FieldByName('ACTIVITY_DATE').Asinteger div 100 +
//    cdsTimesheet.FieldByName('ACTIVITY_DATE').AsInteger mod 100;
//
//  // Set ITEM_VALUE
//  cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := 0;
//  if cdsTimesheet.FieldByName('BILLABLE').AsInteger = 1 then
//    if cdsTimesheet.FieldByName('RATE_UNIT_ID').AsInteger = 1 then
//      cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
//        cdsTimesheet.FieldByName('TIME_SPENT').AsFloat * cdsTimesheet.FieldByName('ACTUAL_RATE').AsFloat / 60
//    else
//      cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
//        cdsTimesheet.FieldByName('ACTUAL_RATE').AsFloat;
//
//  // Set LOCK status
//  if (cdsTimesheet.FieldByName('APPROVED').Asinteger = 1)
//    or (cdsTimesheet.FieldByName('INVOICE_ID').Asinteger > 0) then
//    cdsTimesheet.FieldByName('LOCKED').AsInteger := 1
//  else
//    cdsTimesheet.FieldByName('LOCKED').AsInteger := 0;
end;

procedure TTSDM.cdsTimesheetCalcFields(DataSet: TDataSet);
begin
  CalculateFieldValues(TFDMemTable(DataSet));
end;

procedure TTSDM.cdsTimesheetNewRecord(DataSet: TDataSet);
begin
  {Note to devleoper.
   Do NOT under any circumstance set the values for the following fields:
   ITEM_VALUE
   TIME_HOURS
   DAY_NAME
   DAY_ORDER
   These fiedls are calculated in the DBj itself. If you set these values here
   an error is generated by Firebird to the effect that you are trying to update
   a readonly column.

   YOU HAVE BEEN WARNED!!
  }
  VBBaseDM.DBAction := acInsert;
  cdsTimesheet.FieldByName('ID').AsInteger := 0;
  cdsTimesheet.FieldByName('USER_ID').AsInteger := FCurrentUserID;
  cdsTimesheet.FieldByName('TIME_SPENT').AsFloat := 0.0;
  cdsTimesheet.FieldByName('BILLABLE').AsInteger := 0;
  cdsTimesheet.FieldByName('CARRY_FORWARD').AsInteger := 0;
  cdsTimesheet.FieldByName('INVOICE_ID').AsInteger := -1;
  cdsTimesheet.FieldByName('APPROVED').AsInteger := 0;
  cdsTimesheet.FieldByName('IS_ADDITIONAL_WORK').AsInteger := 0;
  cdsTimesheet.FieldByName('LOCKED').AsInteger := 0;

  if TimesheetOption.UseTodaysDate then
    cdsTimesheet.FieldByName('ACTIVITY_DATE').AsDateTime := Date;

  if TimesheetOption.UseDefaultCustomer then
    cdsTimesheet.FieldByName('CUSTOMER_ID').Asinteger :=
      TimesheetOption.DefaultCustomerID;

  if TimesheetOption.UseDefaultPriceItem then
  begin
    cdsTimesheet.FieldByName('PRICE_LIST_ITEM_ID').Asinteger :=
      TimesheetOption.DefaultPriceItemID;
    cdsTimesheet.FieldByName('ACTUAL_RATE').AsFloat := TimesheetOption.DefaultRate;
    cdsTimesheet.FieldByName('STD_RATE').AsFloat := TimesheetOption.DefaultRate;
    cdsTimesheet.FieldByName('RATE_UNIT_ID').AsInteger := TimesheetOption.RateUnitID;
  end;
end;

procedure TTSDM.dtsTimesheetStateChange(Sender: TObject);
var
  EditMode: string;
begin
  EditMode := BooleanToString(cdsTimesheet.State in [dsEdit, dsInsert]);
  SendMessage(Application.MainForm.Handle, WM_STATE_CHANGE, DWORD(PChar(EditMode)), 0);
end;

function TTSDM.GetDefaulttInvoiceDate: TDateTime;
var
  aYear, aMonth, aDay: Word;
begin
  DecodeDate(Date, aYear, aMonth, Aday);
  Result := EncodeDate(Ayear, Amonth, 1);
end;

procedure TTSDM.PostData(DataSet: TFDMemTable);
begin
//  SetLength(VBBaseDM.FDataSetArray, 1);
//  VBBaseDM.FDataSetArray[0] := TFDMemTable(DataSet);
//  VBBaseDM.ApplyUpdates(VBBaseDM.FDataSetArray, TFDMemTable(DataSet).UpdateOptions.Generatorname,
//    TFDMemTable(DataSet).UpdateOptions.UpdateTableName,
//    TFDMemTable(DataSet).Tag);
end;

end.

