unit Report_DM;

{Note to developer:
 This is a listing of the report files on disk to be loaded into the relevant
 report component at runtime.
 All reports are located in the C:\Data\VB\Reports\ folder.

 Report Compnent                  Filename
 -------------------------------------------------------------------------------
 rptTimesheetByUser               TimesheetByUser.fr3
 rptTimesheetByActivity           TimesheetByCustomer.fr3
 rptTimesheetByCustomer           TSSummaryByActivity.fr3
 rptBillableSummaryByCustomer     BillableSummaryByCustomer.fr3
 rptBillableSummaryByPeriod       BillableSummaryByPeriod.fr3
 rptMonthlyBilling                TimesheetBillCfwdByUser.fr3
 rptBillCfwdByUser                MonthlyBilling.fr3
}


interface

uses
  System.SysUtils, System.Classes, Base_DM, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Data.SqlExpr, Winapi.Windows, Vcl.Forms,

  frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet,

  FireDAC.Stan.StorageXML, FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageBin,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.DApt,
  FireDAC.Phys.SQLiteVDataSet, FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TReportFileName = array of string;

  TReportDM = class(TBaseDM)
    cdsBillableSummary: TFDMemTable;
    cdsBillableSummaryCUSTOMER_ID: TIntegerField;
    cdsBillableSummaryTHE_PERIOD: TIntegerField;
    cdsBillableSummaryNAME: TStringField;
    cdsBillableSummaryTOTAL_BILLABLE_HOURS: TFloatField;
    cdsBillableSummaryTOTAL_BILLABLE: TFloatField;
    cdsBillableSummaryTOTAL_NON_BILLABLE_HOURS: TFloatField;
    cdsBillableSummaryTOTAL_NON_BILLABLE: TFloatField;
    cdsBillableSummaryTOTAL_CARRY_FORWARD: TFloatField;
    dtsBillableSummary: TDataSource;
    cdsPeriod: TFDMemTable;
    cdsPeriodTHE_PERIOD: TIntegerField;
    cdsToPeriod: TFDMemTable;
    cdsToPeriodTHE_PERIOD: TIntegerField;
    dtsPeriod: TDataSource;
    dtsToPeriod: TDataSource;
    conSQLLite: TFDConnection;
    qryPeriod: TFDQuery;
    locSQL: TFDLocalSQL;
    cdsTSBillable: TFDMemTable;
    dtsTSBillable: TDataSource;
    frxPDFExport: TfrxPDFExport;
    rptBillableSummaryByCustomer: TfrxReport;
    rptTimesheetDetail: TfrxReport;
    fdsBillableSummaryByCustomer: TfrxDBDataset;
    fdsTimesheetDetail: TfrxDBDataset;
    rptBillableSummaryByPeriod: TfrxReport;
    fdsBillableSummaryByPeriod: TfrxDBDataset;
    cdsPeriodListing: TFDMemTable;
    dtsPeriodListing: TDataSource;
    cdsPeriodListingTHE_PERIOD: TIntegerField;
    cdsTSCustomer: TFDMemTable;
    dtsTSCustomer: TDataSource;
    cdsTSCustomerID: TIntegerField;
    cdsTSCustomerCUSTOMER_TYPE_ID: TIntegerField;
    cdsTSCustomerSTATUS_ID: TIntegerField;
    cdsTSCustomerNAME: TStringField;
    cdsTSCustomerCUSTOMER_TYPE: TStringField;
    cdsTSCustomerCUSTOMER_STATUS: TStringField;
    cdsTSCustomerIS_ACTIVE: TIntegerField;
    cdsTSCustomerCUSTOMER_GROUP_ID: TIntegerField;
    cdsTSCustomerCUSTOMER_ID: TIntegerField;
    cdsTSCustomerCUSTOMER_GROUP_LINK_NAME: TStringField;
    cdsActivityType: TFDMemTable;
    dtsActivityType: TDataSource;
    cdsActivityTypeID: TIntegerField;
    cdsActivityTypeNAME: TStringField;
    cdsTSSummaryByActivity: TFDMemTable;
    dtsTSSummaryByActivity: TDataSource;
    cdsTSSummaryByUser: TFDMemTable;
    dtsTSSummaryByUser: TDataSource;
    qryDummy: TFDQuery;
    cdsTSSummaryByUserUSER_ID: TIntegerField;
    cdsTSSummaryByUserLOGIN_NAME: TStringField;
    cdsTSSummaryByUserAVB_COMPANIES: TFloatField;
    cdsTSSummaryByUserAVB_PERSONAL: TFloatField;
    cdsTSSummaryByUserTIMESHEETS: TFloatField;
    cdsTSSummaryByUserFILING_AND_POST: TFloatField;
    cdsTSSummaryByUserPC_BANK: TFloatField;
    cdsTSSummaryByUserOFFICE_ADMIN: TFloatField;
    cdsTSSummaryByUserSOCIAL: TFloatField;
    cdsTSSummaryByUserCOMPUTERS: TFloatField;
    cdsTSSummaryByUserTRAINING_RESEARCH: TFloatField;
    cdsTSSummaryByUserESTATES_WILLS: TFloatField;
    cdsTSSummaryByUserWORKMENS_COMP: TFloatField;
    cdsTSSummaryByUserSARS_TAX: TFloatField;
    cdsTSSummaryByUserCIPC: TFloatField;
    cdsTSSummaryByUserCRRADLE_OF_HOPE: TFloatField;
    cdsTSSummaryByUserDEBTORS: TFloatField;
    cdsTSSummaryByUserTRAVELLING: TFloatField;
    cdsTSSummaryByUserJUDY_PLACE: TFloatField;
    cdsTSSummaryByActivityTHE_PERIOD: TIntegerField;
    cdsTSSummaryByActivityACTIVITY_TYPE_ID: TIntegerField;
    cdsTSSummaryByActivityACTIVITY_TYPE: TStringField;
    cdsTSSummaryByActivityAMANDA: TFloatField;
    cdsTSSummaryByActivityAMANDA_HRS: TFloatField;
    cdsTSSummaryByActivityAMANDA_ITEM_VALUE: TFloatField;
    cdsTSSummaryByActivityCHANEL: TFloatField;
    cdsTSSummaryByActivityCHANEL_HRS: TFloatField;
    cdsTSSummaryByActivityCHANEL_ITEM_VALUE: TFloatField;
    cdsTSSummaryByActivityCHRISTA: TFloatField;
    cdsTSSummaryByActivityCHRISTA_HRS: TFloatField;
    cdsTSSummaryByActivityCHRISTA_ITEM_VALUE: TFloatField;
    cdsTSSummaryByActivityALBERTUS: TFloatField;
    cdsTSSummaryByActivityALBERTUS_HRS: TFloatField;
    cdsTSSummaryByActivityALBERTUS_ITEM_VALUE: TFloatField;
    cdsSumByActivityPeriod: TFDMemTable;
    dtsSumByActivityPeriod: TDataSource;
    cdsSumByActivityPeriodTHE_PERIOD: TIntegerField;
    cdsTSBillableID: TIntegerField;
    cdsTSBillableFIRST_NAME: TStringField;
    cdsTSBillableLAST_NAME: TStringField;
    cdsTSBillableLOGIN_NAME: TStringField;
    cdsTSBillableACTIVITY_DATE: TDateField;
    cdsTSBillableCUSTOMER_TYPE: TStringField;
    cdsTSBillableCUSTOMER_NAME: TStringField;
    cdsTSBillableACTIVITY_TYPE: TStringField;
    cdsTSBillableACTIVITY: TStringField;
    cdsTSBillablePRICE_LIST_ITEM: TStringField;
    cdsTSBillableTIME_SPENT: TFloatField;
    cdsTSBillableTIME_HOURS: TFloatField;
    cdsTSBillableACTUAL_RATE: TFloatField;
    cdsTSBillableSTD_RATE: TFloatField;
    cdsTSBillableITEM_VALUE: TFloatField;
    cdsTSBillableTHE_PERIOD: TIntegerField;
    cdsTSBillableBILLABLE: TIntegerField;
    cdsTSBillableBILLABLE_STR: TStringField;
    cdsTSBillableINVOICE_ID: TIntegerField;
    cdsTSBillableCN_ID: TIntegerField;
    cdsTSBillableLOCKED: TIntegerField;
    cdsTSBillableINVOICE_DATE: TDateField;
    cdsTSBillableCARRY_FORWARD: TIntegerField;
    cdsTSBillableCARRY_FORWARD_STR: TStringField;
    cdsTSBillableIS_ADDITIONAL_WORK: TIntegerField;
    cdsTSBillableIS_ADDITIONAL_WORK_STR: TStringField;
    cdsTSBillableCARRY_FORWARD_VALUE: TFloatField;
    rptTimesheetByCustomer: TfrxReport;
    rptTimesheetByActivity: TfrxReport;
    fdsTimesheetByCustomer: TfrxDBDataset;
    fdsTimesheetByActivity: TfrxDBDataset;
    cdsTSBillableLOCKED_STR: TStringField;
    rptTSSummaryByActivity: TfrxReport;
    fdsTSSummaryByActivity: TfrxDBDataset;
    cdsTimesheet: TFDMemTable;
    dtsTimesheet: TDataSource;
    cdsTimesheetID: TIntegerField;
    cdsTimesheetUSER_ID: TIntegerField;
    cdsTimesheetCUSTOMER_ID: TIntegerField;
    cdsTimesheetPRICE_LIST_ITEM_ID: TIntegerField;
    cdsTimesheetRATE_UNIT_ID: TIntegerField;
    cdsTimesheetACTIVITY_TYPE_ID: TIntegerField;
    cdsTimesheetINVOICE_ID: TIntegerField;
    cdsTimesheetACTIVITY: TStringField;
    cdsTimesheetTIME_SPENT: TFloatField;
    cdsTimesheetTIME_HOURS: TFloatField;
    cdsTimesheetACTUAL_RATE: TFloatField;
    cdsTimesheetSTD_RATE: TFloatField;
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
    cdsTimesheetBILLABLE_STR: TStringField;
    cdsCarryForwardDetail: TFDMemTable;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField9: TIntegerField;
    FloatField5: TFloatField;
    IntegerField10: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField2: TStringField;
    IntegerField13: TIntegerField;
    DateField4: TDateField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    StringField3: TStringField;
    dtsCarryForwardDetail: TDataSource;
    cdsCustomerGroup: TFDMemTable;
    dtsCustomerGroup: TDataSource;
    cdsCustomer: TFDMemTable;
    cdsCustomerID: TIntegerField;
    cdsCustomerCUSTOMER_TYPE_ID: TIntegerField;
    cdsCustomerSTATUS_ID: TIntegerField;
    cdsCustomerNAME: TStringField;
    cdsCustomerFIRST_NAME: TStringField;
    cdsCustomerLAST_NAME: TStringField;
    cdsCustomerINITIALS: TStringField;
    cdsCustomerTRADING_AS: TStringField;
    cdsCustomerBILL_TO: TStringField;
    cdsCustomerCO_NO: TStringField;
    cdsCustomerTAX_NO: TStringField;
    cdsCustomerVAT_NO: TStringField;
    cdsCustomerIS_ACTIVE: TIntegerField;
    cdsCustomerCUSTOMER_GROUP_ID: TIntegerField;
    dtsCustomer: TDataSource;
    cdsPriceListView: TFDMemTable;
    cdsPriceListViewID: TIntegerField;
    cdsPriceListViewRATE_UNIT_ID: TIntegerField;
    cdsPriceListViewNAME: TStringField;
    cdsPriceListViewRATE: TFloatField;
    cdsPriceListViewDESCRIPTION: TStringField;
    cdsPriceListViewINVOICE_DESCRIPTION: TStringField;
    cdsPriceListViewRATE_UNIT: TStringField;
    dtsPriceListView: TDataSource;
    cdsRateUnit: TFDMemTable;
    cdsRateUnitID: TIntegerField;
    cdsRateUnitNAME: TStringField;
    dtsRateUnit: TDataSource;
    cdsSystemUser: TFDMemTable;
    cdsSystemUserID: TIntegerField;
    cdsSystemUserFIRST_NAME: TStringField;
    cdsSystemUserLAST_NAME: TStringField;
    cdsSystemUserLOGIN_NAME: TStringField;
    cdsSystemUserEMAIL_ADDRESS: TStringField;
    cdsSystemUserPASSWORD: TStringField;
    cdsSystemUserACCOUNT_ENABLED: TIntegerField;
    dtsSystemUser: TDataSource;
    rptBillCfwdByUser: TfrxReport;
    cdsTimesheetDetail: TFDMemTable;
    dtsTimesheetDetail: TDataSource;
    cdsTimesheetCF: TFDMemTable;
    dtsTimesheetCF: TDataSource;
    cdsTimesheetDetailID: TIntegerField;
    cdsTimesheetDetailUSER_ID: TIntegerField;
    cdsTimesheetDetailCUSTOMER_ID: TIntegerField;
    cdsTimesheetDetailRATE_UNIT_ID: TIntegerField;
    cdsTimesheetDetailINVOICE_ID: TIntegerField;
    cdsTimesheetDetailCN_ID: TIntegerField;
    cdsTimesheetDetailACTIVITY_TYPE_ID: TIntegerField;
    cdsTimesheetDetailPRICE_LIST_ITEM_ID: TIntegerField;
    cdsTimesheetDetailCUSTOMER_TYPE_ID: TIntegerField;
    cdsTimesheetDetailFIRST_NAME: TStringField;
    cdsTimesheetDetailLAST_NAME: TStringField;
    cdsTimesheetDetailLOGIN_NAME: TStringField;
    cdsTimesheetDetailACTIVITY_DATE: TDateField;
    cdsTimesheetDetailCUSTOMER_TYPE: TStringField;
    cdsTimesheetDetailCUSTOMER_NAME: TStringField;
    cdsTimesheetDetailACTIVITY_TYPE: TStringField;
    cdsTimesheetDetailACTIVITY: TStringField;
    cdsTimesheetDetailPRICE_LIST_ITEM: TStringField;
    cdsTimesheetDetailTIME_SPENT: TFloatField;
    cdsTimesheetDetailTIME_HOURS: TFloatField;
    cdsTimesheetDetailITEM_VALUE: TFloatField;
    cdsTimesheetDetailACTUAL_RATE: TFloatField;
    cdsTimesheetDetailSTD_RATE: TFloatField;
    cdsTimesheetDetailDATE_MODIFIED: TDateField;
    cdsTimesheetDetailTHE_PERIOD: TIntegerField;
    cdsTimesheetDetailBILLABLE: TIntegerField;
    cdsTimesheetDetailBILLABLE_STR: TStringField;
    cdsTimesheetDetailDAY_NAME: TStringField;
    cdsTimesheetDetailDAY_ORDER: TIntegerField;
    cdsTimesheetDetailLOCKED: TIntegerField;
    cdsTimesheetDetailLOCKED_STR: TStringField;
    cdsTimesheetDetailINVOICE_DATE: TDateField;
    cdsTimesheetDetailCARRY_FORWARD: TIntegerField;
    cdsTimesheetDetailIS_ADDITIONAL_WORK: TIntegerField;
    cdsTimesheetDetailIS_ADDITIONAL_WORK_STR: TStringField;
    cdsTimesheetDetailCUSTOMER_GROUP_ID: TIntegerField;
    cdsTimesheetDetailCUSTOMER_GROUP_LINK_NAME: TStringField;
    cdsTimesheetDetailCARRY_FORWARD_STR: TStringField;
    cdsTimesheetDetailAPPROVED: TIntegerField;
    cdsTimesheetDetailFULL_NAME: TStringField;
    cdsTimesheetCFID: TIntegerField;
    cdsTimesheetCFUSER_ID: TIntegerField;
    cdsTimesheetCFCUSTOMER_ID: TIntegerField;
    cdsTimesheetCFRATE_UNIT_ID: TIntegerField;
    cdsTimesheetCFINVOICE_ID: TIntegerField;
    cdsTimesheetCFCN_ID: TIntegerField;
    cdsTimesheetCFACTIVITY_TYPE_ID: TIntegerField;
    cdsTimesheetCFPRICE_LIST_ITEM_ID: TIntegerField;
    cdsTimesheetCFCUSTOMER_TYPE_ID: TIntegerField;
    cdsTimesheetCFFIRST_NAME: TStringField;
    cdsTimesheetCFLAST_NAME: TStringField;
    cdsTimesheetCFLOGIN_NAME: TStringField;
    cdsTimesheetCFACTIVITY_DATE: TDateField;
    cdsTimesheetCFCUSTOMER_TYPE: TStringField;
    cdsTimesheetCFCUSTOMER_NAME: TStringField;
    cdsTimesheetCFACTIVITY_TYPE: TStringField;
    cdsTimesheetCFACTIVITY: TStringField;
    cdsTimesheetCFPRICE_LIST_ITEM: TStringField;
    cdsTimesheetCFTIME_SPENT: TFloatField;
    cdsTimesheetCFTIME_HOURS: TFloatField;
    cdsTimesheetCFITEM_VALUE: TFloatField;
    cdsTimesheetCFACTUAL_RATE: TFloatField;
    cdsTimesheetCFSTD_RATE: TFloatField;
    cdsTimesheetCFDATE_MODIFIED: TDateField;
    cdsTimesheetCFTHE_PERIOD: TIntegerField;
    cdsTimesheetCFBILLABLE: TIntegerField;
    cdsTimesheetCFBILLABLE_STR: TStringField;
    cdsTimesheetCFDAY_NAME: TStringField;
    cdsTimesheetCFDAY_ORDER: TIntegerField;
    cdsTimesheetCFLOCKED: TIntegerField;
    cdsTimesheetCFLOCKED_STR: TStringField;
    cdsTimesheetCFINVOICE_DATE: TDateField;
    cdsTimesheetCFCARRY_FORWARD: TIntegerField;
    cdsTimesheetCFIS_ADDITIONAL_WORK: TIntegerField;
    cdsTimesheetCFIS_ADDITIONAL_WORK_STR: TStringField;
    cdsTimesheetCFCUSTOMER_GROUP_ID: TIntegerField;
    cdsTimesheetCFCUSTOMER_GROUP_LINK_NAME: TStringField;
    cdsTimesheetCFCARRY_FORWARD_STR: TStringField;
    cdsTimesheetCFAPPROVED: TIntegerField;
    cdsTimesheetCFFULL_NAME: TStringField;
    cdsSystemUser1: TFDMemTable;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField18: TIntegerField;
    dtsSystemUser1: TDataSource;
    cdsSystemUser2: TFDMemTable;
    IntegerField19: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    IntegerField20: TIntegerField;
    dtsSystemUser2: TDataSource;
    cdsPriceList1: TFDMemTable;
    cdsPriceList1ID: TIntegerField;
    cdsPriceList1RATE_UNIT_ID: TIntegerField;
    cdsPriceList1NAME: TStringField;
    cdsPriceList1RATE: TFloatField;
    cdsPriceList1DESCRIPTION: TStringField;
    cdsPriceList1INVOICE_DESCRIPTION: TStringField;
    cdsPriceList1RATE_UNIT: TStringField;
    dtsPriceList1: TDataSource;
    cdsPriceList2: TFDMemTable;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    StringField14: TStringField;
    FloatField6: TFloatField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    dtsPriceList2: TDataSource;
    cdsRateUnit1: TFDMemTable;
    IntegerField23: TIntegerField;
    StringField18: TStringField;
    dtsRateUnit1: TDataSource;
    cdsRateUnit2: TFDMemTable;
    IntegerField24: TIntegerField;
    StringField19: TStringField;
    dtsRateUnit2: TDataSource;
    cdsActivityType1: TFDMemTable;
    IntegerField25: TIntegerField;
    StringField20: TStringField;
    dtsActivityType1: TDataSource;
    cdsActivityType2: TFDMemTable;
    IntegerField26: TIntegerField;
    StringField21: TStringField;
    dtsActivityType2: TDataSource;
    cdsBillCfwd: TFDMemTable;
    dtsBillCfwd: TDataSource;
    cdsBillCfwdID: TIntegerField;
    cdsBillCfwdFIRST_NAME: TStringField;
    cdsBillCfwdLAST_NAME: TStringField;
    cdsBillCfwdLOGIN_NAME: TStringField;
    cdsBillCfwdACTIVITY_DATE: TDateField;
    cdsBillCfwdCUSTOMER_TYPE: TStringField;
    cdsBillCfwdCUSTOMER_NAME: TStringField;
    cdsBillCfwdACTIVITY_TYPE: TStringField;
    cdsBillCfwdACTIVITY: TStringField;
    cdsBillCfwdPRICE_LIST_ITEM: TStringField;
    cdsBillCfwdTIME_SPENT: TFloatField;
    cdsBillCfwdTIME_HOURS: TFloatField;
    cdsBillCfwdACTUAL_RATE: TFloatField;
    cdsBillCfwdSTD_RATE: TFloatField;
    cdsBillCfwdITEM_VALUE: TFloatField;
    cdsBillCfwdTHE_PERIOD: TIntegerField;
    cdsBillCfwdBILLABLE: TIntegerField;
    cdsBillCfwdBILLABLE_STR: TStringField;
    cdsBillCfwdINVOICE_ID: TIntegerField;
    cdsBillCfwdCN_ID: TIntegerField;
    cdsBillCfwdLOCKED: TIntegerField;
    cdsBillCfwdLOCKED_STR: TStringField;
    cdsBillCfwdINVOICE_DATE: TDateField;
    cdsBillCfwdCARRY_FORWARD: TIntegerField;
    cdsBillCfwdCARRY_FORWARD_STR: TStringField;
    cdsBillCfwdIS_ADDITIONAL_WORK: TIntegerField;
    cdsBillCfwdIS_ADDITIONAL_WORK_STR: TStringField;
    cdsBillCfwdTOTAL_CARRY_FORWARD: TFloatField;
    cdsBillCfwdBILL_CFWD: TStringField;
    fdsBillCfwd: TfrxDBDataset;
    cdsMonthlyBilling: TFDMemTable;
    rptMonthlyBilling: TfrxReport;
    fdsMonthlyBilling: TfrxDBDataset;
    VbdevConnection: TFDConnection;
    dtsMonthlyBilling: TDataSource;
    cdsYear: TFDMemTable;
    dtsYear: TDataSource;
    cdsMonthlyBillingTHE_PERIOD: TIntegerField;
    cdsMonthlyBillingTOTAL_BILLABLE: TFloatField;
    cdsMonthlyBillingTOTAL_CARRY_FORWARD: TFloatField;
    cdsMonthlyBillingTOTAL_HOURS_BILLABLE: TFloatField;
    cdsMonthlyBillingTHE_MONTH: TStringField;
    cdsMonthlyBillingTHE_YEAR: TIntegerField;
    cdsYearTHE_YEAR: TIntegerField;
    cdsTSSortOrder: TFDMemTable;
    dtsTSSortOrder: TDataSource;
    cdsTSSortOrderID: TIntegerField;
    cdsTSSortOrderSORT_BY: TStringField;
    cdsTSSortOrderFIELD_NAME: TStringField;
    cdsTSSortOrderORD_VALUE: TIntegerField;
    cdsRateUnitABBREVIATION: TStringField;
    cdsTSBillableABBREVIATION: TStringField;
    rptTimesheetDetailGrouped: TfrxReport;
    procedure cdsTimesheetCalcFields(DataSet: TDataSet);
    procedure cdsTimesheetAfterPost(DataSet: TDataSet);
    procedure cdsTimesheetBeforePost(DataSet: TDataSet);
    procedure cdsTimesheetBeforeEdit(DataSet: TDataSet);
    procedure cdsCarryForwardDetailCalcFields(DataSet: TDataSet);
    procedure cdsCarryForwardDetailBeforePost(DataSet: TDataSet);
    procedure cdsTimesheetDetailCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FID: Integer;
    FReportFileName: TReportFileName;
    FRateUnitLegend: String;
  public
    { Public declarations }
    FReport: TfrxReport;

    property Report: TfrxReport read FReport write FReport;
    property ReportFileName: TReportFileName read FReportFileName write FReportFileName;
    property RateUnitLegend: String read FRateUnitLegend write FRateUnitLegend;
  end;

var
  ReportDM: TReportDM;

const
  TABLE_COUNT = 6;
  REPORT_COUNT = 6;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses VBBase_DM, VBCommonValues, RUtils;

{$R *.dfm}

procedure TReportDM.cdsTimesheetAfterPost(DataSet: TDataSet);
begin
  inherited;
  DataSet := cdsTimesheet;
  SetLength(VBBaseDM.DataSetArray, 1);
  VBBaseDM.DataSetArray[0] := TFDMemTable(DataSet);

  VBBaseDM.ApplyUpdates(VBBaseDM.DataSetArray, TFDMemTable(DataSet).UpdateOptions.GeneratorName,
    TFDMemTable(DataSet).UpdateOptions.UpdateTableName,
    TFDMemTable(DataSet).Tag);

  SendMessage(Application.MainForm.Handle, WM_RECORD_ID, DWORD(PChar('REQUEST=REFRESH_DATA' + '|ID=' + FID.ToString)), 0);
end;

procedure TReportDM.cdsTimesheetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  VBBaseDM.MadeChanges := False;
end;

procedure TReportDM.cdsTimesheetBeforePost(DataSet: TDataSet);
begin
  inherited;
  FID := cdsTimesheet.FieldByName('ID').AsInteger;
end;

procedure TReportDM.cdsTimesheetCalcFields(DataSet: TDataSet);
//var
//  Day, Month, Year: Word;
//  PeriodMonth: Integer;
begin
  inherited;
//  if cdsTimesheet.FieldByName('TIME_SPENT').AsFloat = 0 then
//    cdsTimesheet.FieldByName('TIME_HOURS').AsFloat := 0
//  else
//    cdsTimesheet.FieldByName('TIME_HOURS').AsFloat := cdsTimesheet.FieldByName('TIME_SPENT').AsFloat / 60;
//
//  if cdsTimesheet.FieldByName('BILLABLE').AsInteger = 0 then
//    cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := 0
//  else
//    case cdsTimesheet.FieldByName('RATE_UNIT_ID').AsInteger of
//      1: cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
//        cdsTimesheet.FieldByName('ACTUAL_RATE').AsFloat *
//          cdsTimesheet.FieldByName('TIME_HOURS').AsFloat;
//
//      2: cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
//        cdsTimesheet.FieldByName('ACTUAL_RATE').AsFloat;
//    end;

//  DecodeDate(cdsTimesheet.FieldByName('ACTIVITY_DATE').AsDateTime, Year, Month, Day);
//  PeriodMonth := cdsTimesheet.FieldByName('THE_PERIOD').AsInteger mod 1000;
//  if PeriodMonth <> Month then
//  begin
//    if not (cdsTimesheet.State in [dsEdit, dsInsert]) then
//      cdsTimesheet.Edit;
//    if Day < 10 then
//      cdsTimesheet.FieldByName('THE_PERIOD').AsInteger := Year * 100000 + Day
//    else
//      cdsTimesheet.FieldByName('THE_PERIOD').AsInteger := Year * 10000 + Day;
//    cdsTimesheet.AfterPost := nil;
//    try
//      cdsTimesheet.Post;
//    finally
//      cdsTimesheet.AfterPost := cdsTimesheetAfterPost;
//    end;
//  end;

  cdsTimesheet.FieldByName('BILLABLE_STR').AsString := 'Y';
  if cdsTimesheet.FieldByName('BILLABLE').AsInteger = 0 then
    cdsTimesheet.FieldByName('BILLABLE_STR').AsString := 'N';

end;

procedure TReportDM.cdsTimesheetDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FULL_NAME').AsString :=
    DataSet.FieldByName('FIRST_NAME').AsString + '' +
    DataSet.FieldByName('LAST_NAME').AsString;
end;

procedure TReportDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  SetLength(FReportFileName, REPORT_COUNT);

  FReportFileName[0] := 'TimesheetByUser.fr3';
  FReportFileName[1] := 'TimesheetByCustomer.fr3';
  FReportFileName[2] := 'TimesheetByActivityType.fr3';
  FReportFileName[3] := 'TimesheetBillCfwdByUser.fr3';
  FReportFileName[4] := 'TimesheetBillCfwdByCustomer.fr3';
  FReportFileName[5] := 'MonthlyBilling.fr3';
end;

procedure TReportDM.cdsCarryForwardDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  FID := cdsCarryForwardDetail.FieldByName('ID').AsInteger;
end;

procedure TReportDM.cdsCarryForwardDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
//  if cdsCarryForwardDetail.FieldByName('TIME_SPENT').AsFloat = 0 then
//    cdsCarryForwardDetail.FieldByName('TIME_HOURS').AsFloat := 0
//  else
//    cdsCarryForwardDetail.FieldByName('TIME_HOURS').AsFloat := cdsCarryForwardDetail.FieldByName('TIME_SPENT').AsFloat / 60;
//
//  if cdsCarryForwardDetail.FieldByName('BILLABLE').AsInteger = 0 then
//    cdsCarryForwardDetail.FieldByName('ITEM_VALUE').AsFloat := 0
//  else
//    case cdsCarryForwardDetail.FieldByName('RATE_UNIT_ID').AsInteger of
//      1: cdsCarryForwardDetail.FieldByName('ITEM_VALUE').AsFloat :=
//        cdsCarryForwardDetail.FieldByName('ACTUAL_RATE').AsFloat *
//          cdsCarryForwardDetail.FieldByName('TIME_HOURS').AsFloat;
//
//      2: cdsCarryForwardDetail.FieldByName('ITEM_VALUE').AsFloat :=
//        cdsCarryForwardDetail.FieldByName('ACTUAL_RATE').AsFloat;
//    end;

  cdsCarryForwardDetail.FieldByName('BILLABLE_STR').AsString := 'Y';
  if cdsCarryForwardDetail.FieldByName('BILLABLE').AsInteger = 0 then
    cdsCarryForwardDetail.FieldByName('BILLABLE_STR').AsString := 'N';
end;

end.

