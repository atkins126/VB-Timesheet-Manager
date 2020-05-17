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
    cdsTimesheetOLD: TFDMemTable;
    cdsTimesheetOLDEditID: TIntegerField;
    cdsTimesheetOLDEditUSER_ID: TIntegerField;
    cdsTimesheetOLDEditCUSTOMER_ID: TIntegerField;
    cdsTimesheetOLDEditPRICE_LIST_ITEM_ID: TIntegerField;
    cdsTimesheetOLDEditRATE_UNIT_ID: TIntegerField;
    cdsTimesheetOLDEditACTIVITY_TYPE_ID: TIntegerField;
    cdsTimesheetOLDEditINVOICE_ID: TIntegerField;
    cdsTimesheetOLDEditCN_ID: TIntegerField;
    cdsTimesheetOLDEditCUSTOMER_GROUP_ID: TIntegerField;
    cdsTimesheetOLDEditACTIVITY: TStringField;
    cdsTimesheetOLDEditTIME_SPENT: TFloatField;
    cdsTimesheetOLDEditTIME_HOURS: TFloatField;
    cdsTimesheetOLDEditACTUAL_RATE: TFloatField;
    cdsTimesheetOLDEditSTD_RATE: TFloatField;
    cdsTimesheetOLDEditITEM_VALUE: TFloatField;
    cdsTimesheetOLDEditLOCKED: TIntegerField;
    cdsTimesheetOLDEditACTIVITY_DATE: TDateField;
    cdsTimesheetOLDEditDATE_MODIFIED: TDateField;
    cdsTimesheetOLDEditTHE_PERIOD: TIntegerField;
    cdsTimesheetOLDEditBILLABLE: TIntegerField;
    cdsTimesheetOLDEditDAY_NAME: TStringField;
    cdsTimesheetOLDEditDAY_ORDER: TIntegerField;
    cdsTimesheetOLDEditINVOICE_DATE: TDateField;
    cdsTimesheetOLDEditCARRY_FORWARD: TIntegerField;
    cdsTimesheetOLDEditAPPROVED: TIntegerField;
    cdsTimesheetOLDEditIS_ADDITIONAL_WORK: TIntegerField;
    dtsTimesheetOLD: TDataSource;
    VbdevConnection: TFDConnection;
    cdsStdActivity: TFDMemTable;
    dtsStdActivity: TDataSource;
    cdsStdActivityID: TIntegerField;
    cdsStdActivityNAME: TStringField;
    cdsRateUnitABBREVIATION: TStringField;
    cdsRatePUnitrefABBREVIATION: TStringField;
    cdsTimesheetOLDDATE_CFWD_RELEASED: TDateField;
    cdsTimesheetOLDRELEASE_CFWD_TO_PERIOD: TIntegerField;
    cdsCarryForward: TFDMemTable;
    dtsCarryForward: TDataSource;
    cdsCarryForwardID: TIntegerField;
    cdsCarryForwardUSER_ID: TIntegerField;
    cdsCarryForwardCUSTOMER_ID: TIntegerField;
    cdsCarryForwardPRICE_LIST_ITEM_ID: TIntegerField;
    cdsCarryForwardRATE_UNIT_ID: TIntegerField;
    cdsCarryForwardACTIVITY_TYPE_ID: TIntegerField;
    cdsCarryForwardINVOICE_ID: TIntegerField;
    cdsCarryForwardCN_ID: TIntegerField;
    cdsCarryForwardCUSTOMER_GROUP_ID: TIntegerField;
    cdsCarryForwardACTIVITY: TStringField;
    cdsCarryForwardTIME_SPENT: TFloatField;
    cdsCarryForwardTIME_HOURS: TFloatField;
    cdsCarryForwardACTUAL_RATE: TFloatField;
    cdsCarryForwardSTD_RATE: TFloatField;
    cdsCarryForwardITEM_VALUE: TFloatField;
    cdsCarryForwardLOCKED: TIntegerField;
    cdsCarryForwardACTIVITY_DATE: TDateField;
    cdsCarryForwardDATE_MODIFIED: TDateField;
    cdsCarryForwardTHE_PERIOD: TIntegerField;
    cdsCarryForwardBILLABLE: TIntegerField;
    cdsCarryForwardDAY_NAME: TStringField;
    cdsCarryForwardDAY_ORDER: TIntegerField;
    cdsCarryForwardINVOICE_DATE: TDateField;
    cdsCarryForwardCARRY_FORWARD: TIntegerField;
    cdsCarryForwardAPPROVED: TIntegerField;
    cdsCarryForwardIS_ADDITIONAL_WORK: TIntegerField;
    cdsCarryForwardDATE_CFWD_RELEASED: TDateField;
    cdsCarryForwardRELEASE_CFWD_TO_PERIOD: TIntegerField;
    cdsReleaseCFwd: TFDMemTable;
    cdsReleaseCFwdID: TIntegerField;
    cdsReleaseCFwdFIRST_NAME: TStringField;
    cdsReleaseCFwdLAST_NAME: TStringField;
    cdsReleaseCFwdLOGIN_NAME: TStringField;
    cdsReleaseCFwdACTIVITY_DATE: TDateField;
    cdsReleaseCFwdCUSTOMER_TYPE: TStringField;
    cdsReleaseCFwdCUSTOMER_NAME: TStringField;
    cdsReleaseCFwdACTIVITY_TYPE: TStringField;
    cdsReleaseCFwdACTIVITY: TStringField;
    cdsReleaseCFwdPRICE_LIST_ITEM: TStringField;
    cdsReleaseCFwdTIME_SPENT: TFloatField;
    cdsReleaseCFwdTIME_HOURS: TFloatField;
    cdsReleaseCFwdACTUAL_RATE: TFloatField;
    cdsReleaseCFwdSTD_RATE: TFloatField;
    cdsReleaseCFwdABBREVIATION: TStringField;
    cdsReleaseCFwdITEM_VALUE: TFloatField;
    cdsReleaseCFwdTHE_PERIOD: TIntegerField;
    cdsReleaseCFwdBILLABLE: TIntegerField;
    cdsReleaseCFwdBILLABLE_STR: TStringField;
    cdsReleaseCFwdINVOICE_ID: TIntegerField;
    cdsReleaseCFwdCN_ID: TIntegerField;
    cdsReleaseCFwdLOCKED: TIntegerField;
    cdsReleaseCFwdLOCKED_STR: TStringField;
    cdsReleaseCFwdINVOICE_DATE: TDateField;
    cdsReleaseCFwdCARRY_FORWARD: TIntegerField;
    cdsReleaseCFwdCARRY_FORWARD_STR: TStringField;
    cdsReleaseCFwdIS_ADDITIONAL_WORK: TIntegerField;
    cdsReleaseCFwdIS_ADDITIONAL_WORK_STR: TStringField;
    cdsReleaseCFwdCARRY_FORWARD_VALUE: TFloatField;
    dtsReleaseCFwd: TDataSource;
    cdsPeriod: TFDMemTable;
    cdsPeriodTHE_PERIOD: TIntegerField;
    cdsReleaseToPeriod: TFDMemTable;
    cdsReleaseToPeriodTHE_PERIOD: TIntegerField;
    dtsPeriod: TDataSource;
    dtsReleaseToPeriod: TDataSource;
    cdsToPeriod: TFDMemTable;
    cdsToPeriodTHE_PERIOD: TIntegerField;
    dtsToPeriod: TDataSource;
    cdsTimesheetOLDPERIOD_NAME: TStringField;
    cdsCarryForwardPERIOD_NAME: TStringField;
    cdsTSPeriodPERIOD_NAME: TStringField;
    cdsPeriodPERIOD_NAME: TStringField;
    cdsToPeriodPERIOD_NAME: TStringField;
    cdsReleaseToPeriodPERIOD_NAME: TStringField;
    cdsReleaseCFwdPERIOD_NAME: TStringField;
    cdsTimesheetOLDDATE_CARRIED_FORWARD: TDateField;
    dtsContactDetailCo: TDataSource;
    cdsContactDetailCo: TFDMemTable;
    cdsContactDetailCoCONTACT_TYPE_ID: TIntegerField;
    cdsContactDetailCoCUSTOMER_ID: TIntegerField;
    cdsContactDetailCoCONTACT_TYPE: TStringField;
    cdsContactDetailCoVALUE: TStringField;
    cdsContactDetailCoCONTACT_DETAIL_CO_ID: TIntegerField;
    cdsTimesheet: TFDMemTable;
    dtsTimesheet: TDataSource;
    View_timesheetView: TFDQuery;
    View_timesheetViewID: TIntegerField;
    View_timesheetViewUSER_ID: TIntegerField;
    View_timesheetViewCUSTOMER_ID: TIntegerField;
    View_timesheetViewRATE_UNIT_ID: TIntegerField;
    View_timesheetViewINVOICE_ID: TIntegerField;
    View_timesheetViewCN_ID: TIntegerField;
    View_timesheetViewACTIVITY_TYPE_ID: TIntegerField;
    View_timesheetViewPRICE_LIST_ITEM_ID: TIntegerField;
    View_timesheetViewCUSTOMER_TYPE_ID: TIntegerField;
    View_timesheetViewCUSTOMER_GROUP_ID: TIntegerField;
    View_timesheetViewFIRST_NAME: TStringField;
    View_timesheetViewLAST_NAME: TStringField;
    View_timesheetViewLOGIN_NAME: TStringField;
    View_timesheetViewACTIVITY_DATE: TDateField;
    View_timesheetViewCUSTOMER_TYPE: TStringField;
    View_timesheetViewCUSTOMER_NAME: TStringField;
    View_timesheetViewPRICE_LIST_ITEM: TStringField;
    View_timesheetViewACTIVITY_TYPE: TStringField;
    View_timesheetViewACTIVITY: TStringField;
    View_timesheetViewTIME_SPENT: TFloatField;
    View_timesheetViewTIME_HOURS: TFloatField;
    View_timesheetViewITEM_VALUE: TFloatField;
    View_timesheetViewACTUAL_RATE: TFloatField;
    View_timesheetViewSTD_RATE: TFloatField;
    View_timesheetViewABBREVIATION: TStringField;
    View_timesheetViewRATE_UNIT: TStringField;
    View_timesheetViewDATE_MODIFIED: TDateField;
    View_timesheetViewTHE_PERIOD: TIntegerField;
    View_timesheetViewPERIOD_NAME: TStringField;
    View_timesheetViewBILLABLE: TIntegerField;
    View_timesheetViewBILLABLE_STR: TStringField;
    View_timesheetViewDAY_NAME: TStringField;
    View_timesheetViewDAY_ORDER: TIntegerField;
    View_timesheetViewLOCKED: TIntegerField;
    View_timesheetViewLOCKED_STR: TStringField;
    View_timesheetViewINVOICE_DATE: TDateField;
    View_timesheetViewCARRY_FORWARD: TIntegerField;
    View_timesheetViewDATE_CARRIED_FORWARD: TDateField;
    View_timesheetViewIS_ADDITIONAL_WORK: TIntegerField;
    View_timesheetViewIS_ADDITIONAL_WORK_STR: TStringField;
    View_timesheetViewCUSTOMER_GROUP_LINK_NAME: TStringField;
    View_timesheetViewCARRY_FORWARD_STR: TStringField;
    View_timesheetViewAPPROVED: TIntegerField;
    View_timesheetViewFULL_NAME: TStringField;
    View_timesheetViewPERIOD_NAME1: TStringField;
    View_timesheetViewDATE_CARRIED_FORWARD1: TDateField;
    View_timesheetViewDATE_CFWD_RELEASED: TDateField;
    View_timesheetViewRELEASE_CFWD_TO_PERIOD: TIntegerField;
    cdsTimesheetID: TIntegerField;
    cdsTimesheetUSER_ID: TIntegerField;
    cdsTimesheetCUSTOMER_ID: TIntegerField;
    cdsTimesheetRATE_UNIT_ID: TIntegerField;
    cdsTimesheetINVOICE_ID: TIntegerField;
    cdsTimesheetCN_ID: TIntegerField;
    cdsTimesheetACTIVITY_TYPE_ID: TIntegerField;
    cdsTimesheetPRICE_LIST_ITEM_ID: TIntegerField;
    cdsTimesheetCUSTOMER_TYPE_ID: TIntegerField;
    cdsTimesheetCUSTOMER_GROUP_ID: TIntegerField;
    cdsTimesheetFIRST_NAME: TStringField;
    cdsTimesheetLAST_NAME: TStringField;
    cdsTimesheetLOGIN_NAME: TStringField;
    cdsTimesheetACTIVITY_DATE: TDateField;
    cdsTimesheetCUSTOMER_TYPE: TStringField;
    cdsTimesheetCUSTOMER_NAME: TStringField;
    cdsTimesheetPRICE_LIST_ITEM: TStringField;
    cdsTimesheetACTIVITY_TYPE: TStringField;
    cdsTimesheetACTIVITY: TStringField;
    cdsTimesheetTIME_SPENT: TFloatField;
    cdsTimesheetTIME_HOURS: TFloatField;
    Value: TFloatField;
    cdsTimesheetEditACTUAL_RATE: TFloatField;
    cdsTimesheetSTD_RATE: TFloatField;
    cdsTimesheetABBREVIATION: TStringField;
    cdsTimesheetRATE_UNIT: TStringField;
    cdsTimesheetDATE_MODIFIED: TDateField;
    cdsTimesheetTHE_PERIOD: TIntegerField;
    cdsTimesheetPERIOD_NAME: TStringField;
    cdsTimesheetBILLABLE: TIntegerField;
    cdsTimesheetBILLABLE_STR: TStringField;
    cdsTimesheetDAY_NAME: TStringField;
    cdsTimesheetDAY_ORDER: TIntegerField;
    cdsTimesheetLOCKED: TIntegerField;
    cdsTimesheetLOCKED_STR: TStringField;
    cdsTimesheetINVOICE_DATE: TDateField;
    cdsTimesheetCARRY_FORWARD: TIntegerField;
    cdsTimesheetDATE_CARRIED_FORWARD: TDateField;
    cdsTimesheetIS_ADDITIONAL_WORK: TIntegerField;
    cdsTimesheetIS_ADDITIONAL_WORK_STR: TStringField;
    cdsTimesheetCUSTOMER_GROUP_LINK_NAME: TStringField;
    cdsTimesheetCARRY_FORWARD_STR: TStringField;
    cdsTimesheetAPPROVED: TIntegerField;
    cdsTimesheetFULL_NAME: TStringField;
    cdsTimesheetDATE_CFWD_RELEASED: TDateField;
    cdsTimesheetRELEASE_CFWD_TO_PERIOD: TIntegerField;
    procedure dtsTimesheetStateChange(Sender: TObject);
    procedure cdsCustomerLookupCalcFields(DataSet: TDataSet);
    procedure cdsTimesheetOLDNewRecord(DataSet: TDataSet);
    procedure cdsCustomerLookupPrefCalcFields(DataSet: TDataSet);
    procedure PostData(DataSet: TFDMemTable);
    procedure cdsTimesheetOLDBeforeEdit(DataSet: TDataSet);
    procedure cdsTimesheetOLDAfterPost(DataSet: TDataSet);
    procedure cdsTimesheetOLDBeforePost(DataSet: TDataSet);
    procedure cdsTimesheetOLDCalcFields(DataSet: TDataSet);
  private
    FCurrentUserID: Integer;
    FDefaultInvoiceDate: TDateTime;
    { Private declarations }
  public
    { Public declarations }
    TimesheetOption: TTimesheetOptions;
    property CurrentUserID: Integer read FCurrentUserID write FCurrentUserID;
    property DefaultInvoiceDate: TDateTime read FDefaultInvoiceDate write FDefaultInvoiceDate;

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
  inherited;
  case cdsCustomerLookup.FieldByName('IS_ACTIVE').Asinteger of
    0: cdsCustomerLookup.FieldByName('ACTIVE_STATUS').AsString := 'No';
    1: cdsCustomerLookup.FieldByName('ACTIVE_STATUS').AsString := 'Yes';
  end;
end;

procedure TTSDM.cdsCustomerLookupPrefCalcFields(DataSet: TDataSet);
begin
  inherited;
  case cdsCustomerLookupPref.FieldByName('IS_ACTIVE').Asinteger of
    0: cdsCustomerLookupPref.FieldByName('ACTIVE_STATUS').AsString := 'No';
    1: cdsCustomerLookupPref.FieldByName('ACTIVE_STATUS').AsString := 'Yes';
  end;
end;

procedure TTSDM.cdsTimesheetOLDAfterPost(DataSet: TDataSet);
begin
  inherited;
  VBBaseDM.DBAction := acBrowsing;
end;

procedure TTSDM.cdsTimesheetOLDBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  VBBaseDM.DBAction := acEdit;
end;

procedure TTSDM.cdsTimesheetOLDBeforePost(DataSet: TDataSet);
begin
  inherited;
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

procedure TTSDM.cdsTimesheetOLDCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalculateFieldValues(TFDMemTable(DataSet));
end;

procedure TTSDM.cdsTimesheetOLDNewRecord(DataSet: TDataSet);
begin
  inherited;
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

