unit Lookup_DM;

interface

uses
  System.SysUtils, System.Classes, VBBase_DM, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.SqlExpr,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.DApt;

type
  TLookupDM = class(TVBBaseDM)
    cdsPriceListView: TFDMemTable;
    dtsPriceListView: TDataSource;
    cdsActivityType: TFDMemTable;
    cdsActivityTypeID: TIntegerField;
    cdsActivityTypeNAME: TStringField;
    dtsActivityType: TDataSource;
    cdsSystemUser: TFDMemTable;
    cdsSystemUserID: TIntegerField;
    cdsSystemUserFIRST_NAME: TStringField;
    cdsSystemUserLAST_NAME: TStringField;
    cdsSystemUserLOGIN_NAME: TStringField;
    cdsSystemUserEMAIL_ADDRESS: TStringField;
    cdsSystemUserPASSWORD: TStringField;
    cdsSystemUserACCOUNT_ENABLED: TIntegerField;
    dtsSystemUser: TDataSource;
    cdsRateUnit: TFDMemTable;
    dtsRateuit: TDataSource;
    VbliveConnection: TFDConnection;
    cdsRateUnitID: TIntegerField;
    cdsRateUnitNAME: TStringField;
    View_price_listView: TFDQuery;
    cdsPriceListViewID: TIntegerField;
    cdsPriceListViewRATE_UNIT_ID: TIntegerField;
    cdsPriceListViewNAME: TStringField;
    cdsPriceListViewRATE: TFloatField;
    cdsPriceListViewDESCRIPTION: TStringField;
    cdsPriceListViewINVOICE_DESCRIPTION: TStringField;
    cdsPriceListViewRATE_UNIT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LookupDM: TLookupDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
