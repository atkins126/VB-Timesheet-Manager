unit TS_DM;

interface

uses
  System.SysUtils, System.Classes, WinApi.Windows, Vcl.Forms, Data.DBXDataSnap,
  Data.DBXCommon,

  Base_DM, VBBase_DM, CommonValues, VBCommonValues,

  IPPeerClient, Data.DB, Data.SqlExpr,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.DApt, FireDAC.Stan.StorageBin;

type
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
    procedure dtsTimesheetStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TSDM: TTSDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RUtils;

{$R *.dfm}

procedure TTSDM.dtsTimesheetStateChange(Sender: TObject);
var
  EditMode: String;
begin
//  EditMode := 'False';
//  EditMode :=  cdsTimesheet.State in [dsEdit, dsInsert];
//    EditMode := 'True';

  EditMode :=  BooleanToString( cdsTimesheet.State in [dsEdit, dsInsert]);
  SendMessage(Application.MainForm.Handle, WM_STATE_CHANGE, DWORD(PChar(EditMode)), 0);
end;

end.

