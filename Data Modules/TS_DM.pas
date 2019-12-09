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
  FireDAC.VCLUI.Wait, FireDAC.DApt, FireDAC.Stan.StorageBin;

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
    cdsTimesheet: TFDMemTable;
    cdsCustomerLookup: TFDMemTable;
    cdsPriceList: TFDMemTable;
    cdsActivityType: TFDMemTable;
    cdsRateUnit: TFDMemTable;
    cdsTSPeriod: TFDMemTable;
    cdsSystemUser: TFDMemTable;
    dtsTimesheet: TDataSource;
    dtsCustomerLookup: TDataSource;
    dtsPriceList: TDataSource;
    dtsActivityType: TDataSource;
    dtsRateUnit: TDataSource;
    dtsTSPeriod: TDataSource;
    dtsSytemUser: TDataSource;
    VbliveConnection: TFDConnection;
    cdsTimesheetID: TIntegerField;
    cdsTimesheetUSER_ID: TIntegerField;
    cdsTimesheetCUSTOMER_ID: TIntegerField;
    cdsTimesheetPRICE_LIST_ITEM_ID: TIntegerField;
    cdsTimesheetRATE_UNIT_ID: TIntegerField;
    cdsTimesheetACTIVITY_TYPE_ID: TIntegerField;
    cdsTimesheetINVOICE_ID: TIntegerField;
    cdsTimesheetACTIVITY: TStringField;
    cdsTimesheetTIME_HOURS: TFloatField;
    cdsTimesheetITEM_VALUE: TFloatField;
    cdsTimesheetCN_ID: TIntegerField;
    cdsTimesheetLOCKED: TIntegerField;
    cdsTimesheetACTIVITY_DATE: TDateField;
    cdsTimesheetDATE_MODIFIED: TDateField;
    cdsTimesheetTHE_PERIOD: TIntegerField;
    cdsTimesheetBILLABLE: TIntegerField;
    cdsTimesheetDAY_NAME: TStringField;
    cdsTimesheetDAY_ORDER: TIntegerField;
    cdsTimesheetINVOICE_DATE: TDateField;
    cdsTimesheetCARRY_FORWARD: TIntegerField;
    cdsTimesheetAPPROVED: TIntegerField;
    cdsTimesheetIS_ADDITIONAL_WORK: TIntegerField;
    cdsTimesheetCUSTOMER_GROUP_ID: TIntegerField;
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
    cdsTimesheetACTUAL_RATE: TFloatField;
    cdsTimesheetSTD_RATE: TFloatField;
    cdsTimesheetTIME_SPENT: TFloatField;
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
    procedure dtsTimesheetStateChange(Sender: TObject);
    procedure cdsCustomerLookupCalcFields(DataSet: TDataSet);
    procedure cdsTimesheetNewRecord(DataSet: TDataSet);
    procedure cdsCustomerLookupPrefCalcFields(DataSet: TDataSet);
    procedure cdsTimesheetAfterPost(DataSet: TDataSet);
    procedure PostData(DataSet: TFDMemTable);
  private
    FCurrentUserID: Integer;
    { Private declarations }
  public
    { Public declarations }
    TimesheetOption: TTimesheetOptions;
    property CurrentUserID: Integer read FCurrentUserID write FCurrentUserID;
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
//  SetLength(VBBaseDM.FDataSetArray, 1);
//  VBBaseDM.FDataSetArray[0] := TFDMemTable(DataSet);
//  VBBaseDM.ApplyUpdates(VBBaseDM.FDataSetArray, TFDMemTable(DataSet).UpdateOptions.Generatorname, TFDMemTable(DataSet).UpdateOptions.UpdateTableName);
////  SendMessage(Application.MainForm.Handle, WM_RECORD_ID, DWORD(PChar('REQUEST=REFRESH_DATA' + '|ID=' + FID.ToString)), 0);
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
  cdsTimesheet.FieldByName('ID').AsInteger := 0;
  cdsTimesheet.FieldByName('USER_ID').AsInteger := FCurrentUserID;
//  cdsTimesheet.FieldByName('THE_PERIOD').AsInteger := VBBaseDM.CurrentPeriod;
  cdsTimesheet.FieldByName('TIME_SPENT').AsFloat := 0.0;
  cdsTimesheet.FieldByName('BILLABLE').AsInteger := 0;
  cdsTimesheet.FieldByName('CARRY_FORWARD').AsInteger := 0;
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
//  EditMode := 'False';
//  EditMode :=  cdsTimesheet.State in [dsEdit, dsInsert];
//    EditMode := 'True';

  EditMode := BooleanToString(cdsTimesheet.State in [dsEdit, dsInsert]);
  SendMessage(Application.MainForm.Handle, WM_STATE_CHANGE, DWORD(PChar(EditMode)), 0);
end;

procedure TTSDM.PostData(DataSet: TFDMemTable);
begin
  SetLength(VBBaseDM.FDataSetArray, 1);
  VBBaseDM.FDataSetArray[0] := TFDMemTable(DataSet);
  VBBaseDM.ApplyUpdates(VBBaseDM.FDataSetArray, TFDMemTable(DataSet).UpdateOptions.Generatorname, TFDMemTable(DataSet).UpdateOptions.UpdateTableName);
end;

end.



