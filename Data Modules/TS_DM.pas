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
    cdsTimesheetDATE_CFWD_RELEASED: TDateField;
    cdsTimesheetRELEASE_CFWD_TO_PERIOD: TIntegerField;
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
    procedure dtsTimesheetStateChange(Sender: TObject);
    procedure cdsCustomerLookupCalcFields(DataSet: TDataSet);
    procedure cdsTimesheetNewRecord(DataSet: TDataSet);
    procedure cdsCustomerLookupPrefCalcFields(DataSet: TDataSet);
    procedure PostData(DataSet: TFDMemTable);
    procedure cdsTimesheetBeforeEdit(DataSet: TDataSet);
    procedure cdsTimesheetAfterPost(DataSet: TDataSet);
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

procedure TTSDM.cdsTimesheetAfterPost(DataSet: TDataSet);
begin
  inherited;
  VBBaseDM.DBAction := acBrowsing;
end;

procedure TTSDM.cdsTimesheetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  VBBaseDM.DBAction := acModify;
end;

procedure TTSDM.cdsTimesheetNewRecord(DataSet: TDataSet);
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

