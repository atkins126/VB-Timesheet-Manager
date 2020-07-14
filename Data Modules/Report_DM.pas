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
  System.SysUtils, System.Classes, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Data.SqlExpr, Winapi.Windows, {Vcl.Forms,}

  Base_DM, VBBase_DM, VBCommonValues,

  frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet,

  FireDAC.Stan.StorageXML, FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageBin,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.DApt,
  FireDAC.Phys.SQLiteVDataSet, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Phys.SQLiteWrapper.Stat;

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
    rptTimesheetByActivityType: TfrxReport;
    fdsTimesheetByCustomer: TfrxDBDataset;
    fdsTimesheetByActivityType: TfrxDBDataset;
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
    cdsCarryForwardDetailID: TIntegerField;
    cdsCarryForwardDetailUSER_ID: TIntegerField;
    cdsCarryForwardDetailCUSTOMER_ID: TIntegerField;
    cdsCarryForwardDetailPRICE_LIST_ITEM_ID: TIntegerField;
    cdsCarryForwardDetailRATE_UNIT_ID: TIntegerField;
    cdsCarryForwardDetailACTIVITY_TYPE_ID: TIntegerField;
    cdsCarryForwardDetailINVOICE_ID: TIntegerField;
    cdsCarryForwardDetailACTIVITY: TStringField;
    cdsCarryForwardDetailTIME_SPENT: TFloatField;
    cdsCarryForwardDetailTIME_HOURS: TFloatField;
    cdsCarryForwardDetailACTUAL_RATE: TFloatField;
    cdsCarryForwardDetailSTD_RATE: TFloatField;
    cdsCarryForwardDetailCN_ID: TIntegerField;
    cdsCarryForwardDetailITEM_VALUE: TFloatField;
    cdsCarryForwardDetailLOCKED: TIntegerField;
    cdsCarryForwardDetailACTIVITY_DATE: TDateField;
    cdsCarryForwardDetailDATE_MODIFIED: TDateField;
    cdsCarryForwardDetailTHE_PERIOS: TIntegerField;
    cdsCarryForwardDetailBILLABLE: TIntegerField;
    cdsCarryForwardDetailDAY_NAME: TStringField;
    cdsCarryForwardDetailDAY_ORDER: TIntegerField;
    cdsCarryForwardDetailINVOICE_DATE: TDateField;
    cdsCarryForwardDetailCARRY_FORWARD: TIntegerField;
    cdsCarryForwardDetailAPPROVED: TIntegerField;
    cdsCarryForwardDetailIS_ADDITIONAL_WORK: TIntegerField;
    cdsCarryForwardDetailCUSTOMER_GROUP_ID: TIntegerField;
    cdsCarryForwardDetailBILLABLE_STR: TStringField;
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
    rptBillCFwd: TfrxReport;
    dtsTimesheetDetail: TDataSource;
    cdsTimesheetCF: TFDMemTable;
    dtsTimesheetCF: TDataSource;
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
    cdsSystemUser1ID: TIntegerField;
    cdsSystemUser1FIRST_NAME: TStringField;
    cdsSystemUser1LAST_NAME: TStringField;
    cdsSystemUser1LOGIN_NAME: TStringField;
    cdsSystemUser1EMAIL_ADDRESS: TStringField;
    cdsSystemUser1PASSWORD: TStringField;
    cdsSystemUser1ACCOUNT_ENABLED: TIntegerField;
    dtsSystemUser1: TDataSource;
    cdsSystemUser2: TFDMemTable;
    cdsSystemUser2ID: TIntegerField;
    cdsSystemUser2FIRST_NAME: TStringField;
    cdsSystemUser2LAST_NAME: TStringField;
    cdsSystemUser2LOGIN_NAME: TStringField;
    cdsSystemUser2EMAIL_ADDRESS: TStringField;
    cdsSystemUser2PASSWORD: TStringField;
    cdsSystemUser2ACCOUNT_ENABLED: TIntegerField;
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
    cdsRateUnit1ID: TIntegerField;
    cdsRateUnit1NAME: TStringField;
    dtsRateUnit1: TDataSource;
    cdsRateUnit2: TFDMemTable;
    cdsRateUnit2ID: TIntegerField;
    cdsRateUnit2NAME: TStringField;
    dtsRateUnit2: TDataSource;
    cdsActivityType1: TFDMemTable;
    cdsActivityType1ID: TIntegerField;
    cdsActivityType1NAME: TStringField;
    dtsActivityType1: TDataSource;
    cdsActivityType2: TFDMemTable;
    cdsActivityType2ID: TIntegerField;
    cdsActivityType2NAME: TStringField;
    dtsActivityType2: TDataSource;
    cdsBillCFwd: TFDMemTable;
    dtsBillCFwd: TDataSource;
    cdsBillCFwdID: TIntegerField;
    cdsBillCFwdFIRST_NAME: TStringField;
    cdsBillCFwdLAST_NAME: TStringField;
    cdsBillCFwdLOGIN_NAME: TStringField;
    cdsBillCFwdACTIVITY_DATE: TDateField;
    cdsBillCFwdCUSTOMER_TYPE: TStringField;
    cdsBillCFwdCUSTOMER_NAME: TStringField;
    cdsBillCFwdACTIVITY_TYPE: TStringField;
    cdsBillCFwdACTIVITY: TStringField;
    cdsBillCFwdPRICE_LIST_ITEM: TStringField;
    cdsBillCFwdTIME_SPENT: TFloatField;
    cdsBillCFwdTIME_HOURS: TFloatField;
    cdsBillCFwdACTUAL_RATE: TFloatField;
    cdsBillCFwdSTD_RATE: TFloatField;
    cdsBillCFwdITEM_VALUE: TFloatField;
    cdsBillCFwdTHE_PERIOD: TIntegerField;
    cdsBillCFwdBILLABLE: TIntegerField;
    cdsBillCFwdBILLABLE_STR: TStringField;
    cdsBillCFwdINVOICE_ID: TIntegerField;
    cdsBillCFwdCN_ID: TIntegerField;
    cdsBillCFwdLOCKED: TIntegerField;
    cdsBillCFwdLOCKED_STR: TStringField;
    cdsBillCFwdINVOICE_DATE: TDateField;
    cdsBillCFwdCARRY_FORWARD: TIntegerField;
    cdsBillCFwdCARRY_FORWARD_STR: TStringField;
    cdsBillCFwdIS_ADDITIONAL_WORK: TIntegerField;
    cdsBillCFwdIS_ADDITIONAL_WORK_STR: TStringField;
    cdsBillCFwdBILL_CFWD: TStringField;
    BillCFwd: TfrxDBDataset;
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
    rptTimesheetByActivityDate: TfrxReport;
    fdsTimesheetByActivityDate: TfrxDBDataset;
    cdsTSSummaryByActivityDOREEN: TFloatField;
    cdsTSSummaryByActivityDOREEN_HRS: TFloatField;
    cdsTSSummaryByActivityDOREEN_ITEM_VALUE: TFloatField;
    cdsTSSortOrderFIELD_INDEX: TIntegerField;
    cdsBillCFwdCARRY_FORWARD_VALUE: TFloatField;
    dtsTSBillableExcel: TDataSource;
    cdsTSBillableExcel: TFDMemTable;
    cdsTSBillableExcelID: TIntegerField;
    cdsTSBillableExcelFIRST_NAME: TStringField;
    cdsTSBillableExcelLAST_NAME: TStringField;
    cdsTSBillableExcelLOGIN_NAME: TStringField;
    cdsTSBillableExcelACTIVITY_DATE: TDateField;
    cdsTSBillableExcelCUSTOMER_TYPE: TStringField;
    cdsTSBillableExcelCUSTOMER_NAME: TStringField;
    cdsTSBillableExcelACTIVITY_TYPE: TStringField;
    cdsTSBillableExcelACTIVITY: TStringField;
    cdsTSBillableExcelPRICE_LIST_ITEM: TStringField;
    cdsTSBillableExcelTIME_SPENT: TFloatField;
    cdsTSBillableExcelTIME_HOURS: TFloatField;
    cdsTSBillableExcelACTUAL_RATE: TFloatField;
    cdsTSBillableExcelSTD_RATE: TFloatField;
    cdsTSBillableExcelABBREVIATION: TStringField;
    cdsTSBillableExcelITEM_VALUE: TFloatField;
    cdsTSBillableExcelTHE_PERIOD: TIntegerField;
    cdsTSBillableExcelBILLABLE: TIntegerField;
    cdsTSBillableExcelBILLABLE_STR: TStringField;
    cdsTSBillableExcelINVOICE_ID: TIntegerField;
    cdsTSBillableExcelCN_ID: TIntegerField;
    cdsTSBillableExcelLOCKED: TIntegerField;
    cdsTSBillableExcelLOCKED_STR: TStringField;
    cdsTSBillableExcelINVOICE_DATE: TDateField;
    cdsTSBillableExcelCARRY_FORWARD: TIntegerField;
    cdsTSBillableExcelCARRY_FORWARD_STR: TStringField;
    cdsTSBillableExcelIS_ADDITIONAL_WORK: TIntegerField;
    cdsTSBillableExcelIS_ADDITIONAL_WORK_STR: TStringField;
    cdsTSBillableExcelCARRY_FORWARD_VALUE: TFloatField;
    cdsBillCFwdExcel: TFDMemTable;
    dtsBillCFwdExcel: TDataSource;
    cdsBillCFwdExcelBILL_CFWD: TStringField;
    cdsBillCFwdExcelCUSTOMER_NAME: TStringField;
    cdsBillCFwdExcelLOGIN_NAME: TStringField;
    cdsBillCFwdExcelACTIVITY_DATE: TDateField;
    cdsBillCFwdExcelACTIVITY_TYPE: TStringField;
    cdsBillCFwdExcelID: TIntegerField;
    cdsBillCFwdExcelFIRST_NAME: TStringField;
    cdsBillCFwdExcelLAST_NAME: TStringField;
    cdsBillCFwdExcelCUSTOMER_TYPE: TStringField;
    cdsBillCFwdExcelACTIVITY: TStringField;
    cdsBillCFwdExcelPRICE_LIST_ITEM: TStringField;
    cdsBillCFwdExcelTIME_SPENT: TFloatField;
    cdsBillCFwdExcelTIME_HOURS: TFloatField;
    cdsBillCFwdExcelACTUAL_RATE: TFloatField;
    cdsBillCFwdExcelSTD_RATE: TFloatField;
    cdsBillCFwdExcelITEM_VALUE: TFloatField;
    cdsBillCFwdExcelTHE_PERIOD: TIntegerField;
    cdsBillCFwdExcelBILLABLE: TIntegerField;
    cdsBillCFwdExcelBILLABLE_STR: TStringField;
    cdsBillCFwdExcelINVOICE_ID: TIntegerField;
    cdsBillCFwdExcelCN_ID: TIntegerField;
    cdsBillCFwdExcelLOCKED: TIntegerField;
    cdsBillCFwdExcelLOCKED_STR: TStringField;
    cdsBillCFwdExcelINVOICE_DATE: TDateField;
    cdsBillCFwdExcelCARRY_FORWARD: TIntegerField;
    cdsBillCFwdExcelCARRY_FORWARD_STR: TStringField;
    cdsBillCFwdExcelIS_ADDITIONAL_WORK: TIntegerField;
    cdsBillCFwdExcelIS_ADDITIONAL_WORK_STR: TStringField;
    cdsBillCFwdExcelCARRY_FORWARD_VALUE: TFloatField;
    rptTimesheetByCustomerType: TfrxReport;
    cdsPeriodPERIOD_NAME: TStringField;
    cdsToPeriodPERIOD_NAME: TStringField;
    cdsPeriodListingPERIOD_NAME: TStringField;
    cdsSumByActivityPeriodPERIOD_NAME: TStringField;
    cdsTimesheetPERIOD_NAME: TStringField;
    cdsCarryForwardDetailPERIOD_NAME: TStringField;
    cdsTimesheetCFPERIOD_NAME: TStringField;
    cdsBillCFwdPERIOD_NAME: TStringField;
    cdsBillCFwdExcelPERIOD_NAME: TStringField;
    cdsTSBillablePERIOD_NAME: TStringField;
    cdsTSBillableExcelPERIOD_NAME: TStringField;
    cdsMonthlyBillingPERIOD_NAME: TStringField;
    cdsTimesheetCARRY_FORWARD_VALUE: TFloatField;
    cdsCarryForwardDetailCARRY_FORWARD_VALUE: TFloatField;
    cdsTimesheetCFCARRY_FORWARD_VALUE: TFloatField;
    cdsTimesheetDetail: TFDMemTable;
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
    cdsTimesheetDetailCARRY_FORWARD_VALUE: TFloatField;
    cdsTimesheetDetailACTUAL_RATE: TFloatField;
    cdsTimesheetDetailSTD_RATE: TFloatField;
    cdsTimesheetDetailDATE_MODIFIED: TDateField;
    cdsTimesheetDetailTHE_PERIOD: TIntegerField;
    cdsTimesheetDetailPERIOD_NAME: TStringField;
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
    cdsTimesheetDetailDATE_CARRIED_FORWARD: TDateField;
    cdsTimesheetDetailDATE_RELEASED: TDateField;
    cdsTimesheetDetailRELEASE_TO_PERIOD: TIntegerField;
    cdsTimesheetDATE_CARRIED_FORWARD: TDateField;
    cdsTimesheetDATE_RELEASED: TDateField;
    cdsTimesheetRELEASE_CFWD_TO_PERIOD: TIntegerField;
    qryPeriodTHE_PERIOD: TIntegerField;
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
    dtsRelease: TDataSource;
    procedure cdsTimesheetCalcFields(DataSet: TDataSet);
    procedure cdsTimesheetAfterPost(DataSet: TDataSet);
    procedure cdsTimesheetBeforePost(DataSet: TDataSet);
    procedure cdsTimesheetBeforeEdit(DataSet: TDataSet);
    procedure cdsCarryForwardDetailCalcFields(DataSet: TDataSet);
    procedure cdsCarryForwardDetailBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsTimesheetDetailCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    FID: Integer;
    FReportFileName: TReportFileName;
    FRateUnitLegend: string;
    FReport: TfrxReport;
  public
    { Public declarations }

    property Report: TfrxReport read FReport write FReport;
    property ReportFileName: TReportFileName read FReportFileName write FReportFileName;
    property RateUnitLegend: string read FRateUnitLegend write FRateUnitLegend;
    procedure CreateIndex(ReportTypeIndex: Integer; FieldNames: string);
  end;

var
  ReportDM: TReportDM;

const
  TABLE_COUNT = 8;
  REPORT_COUNT = 6;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  RUtils;

{$R *.dfm}

procedure TReportDM.cdsTimesheetAfterPost(DataSet: TDataSet);
begin
//  DataSet := cdsTimesheet;
//  SetLength(VBBaseDM.DataSetArray, 1);
//  VBBaseDM.DataSetArray[0] := TFDMemTable(DataSet);
//
//  VBBaseDM.ApplyUpdates(VBBaseDM.DataSetArray, TFDMemTable(DataSet).UpdateOptions.GeneratorName,
//    TFDMemTable(DataSet).UpdateOptions.UpdateTableName,
//    TFDMemTable(DataSet).Tag);
//
//  SendMessage(Application.MainForm.Handle, WM_RECORD_ID, DWORD(PChar('REQUEST=REFRESH_DATA' + '|ID=' + FID.ToString)), 0);
end;

procedure TReportDM.cdsTimesheetBeforeEdit(DataSet: TDataSet);
begin
  VBBaseDM.MadeChanges := False;
end;

procedure TReportDM.cdsTimesheetBeforePost(DataSet: TDataSet);
begin
  FID := cdsTimesheet.FieldByName('ID').AsInteger;
end;

procedure TReportDM.cdsTimesheetCalcFields(DataSet: TDataSet);
//var
//  Day, Month, Year: Word;
//  PeriodMonth: Integer;
begin
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

  if cdsTimesheet.FieldByName('BILLABLE').AsInteger = 1 then
    cdsTimesheet.FieldByName('BILLABLE_STR').AsString := 'Y'
  else
    cdsTimesheet.FieldByName('BILLABLE_STR').AsString := 'N';

end;

procedure TReportDM.cdsTimesheetDetailCalcFields(DataSet: TDataSet);
begin
  VBBaseDM.CalculateFieldValues(TFDMemTable(DataSet));

//  DataSet.FieldByName('FULL_NAME').AsString :=
//    DataSet.FieldByName('FIRST_NAME').AsString + '' +
//    DataSet.FieldByName('LAST_NAME').AsString;
end;

procedure TReportDM.CreateIndex(ReportTypeIndex: Integer; FieldNames: string);
var
  Index: TFDIndex;
begin
  case ReportTypeIndex of
    0:
      begin
        cdsTSBillable.Indexes.Clear;
        Index := cdsTSBillable.Indexes.Add;
        Index.Name := 'idxTSDetail';
        Index.Fields := FieldNames;
        Index.FilterOptions := [ekNoCase];
        Index.Options := [soNoCase]; // := True;
        Index.Active := True;
        Index.Selected := True;
      end;

    1:
      begin

      end;
  end;
end;

procedure TReportDM.DataModuleCreate(Sender: TObject);
begin
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
  FID := cdsCarryForwardDetail.FieldByName('ID').AsInteger;
end;

procedure TReportDM.cdsCarryForwardDetailCalcFields(DataSet: TDataSet);
begin
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

  if cdsCarryForwardDetail.FieldByName('BILLABLE').AsInteger = 1 then
    cdsCarryForwardDetail.FieldByName('BILLABLE_STR').AsString := 'Y'
  else
    cdsCarryForwardDetail.FieldByName('BILLABLE_STR').AsString := 'N';
end;

end.

