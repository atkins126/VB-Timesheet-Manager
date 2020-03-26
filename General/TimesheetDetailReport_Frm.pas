unit TimesheetDetailReport_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, System.Win.Registry, System.IOUtils,
  Vcl.ComCtrls, Data.DB, WinApi.ShellApi, Vcl.Menus, Vcl.StdCtrls, System.Math,

  frxClass, FireDAC.Comp.Client,

  BaseLayout_Frm, VBCommonValues, Base_DM, CommonFunctions, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxCore, cxDateUtils,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, dxBar, dxBarExtItems, dxLayoutcxEditAdapters, dxPrnDev,
  dxPrnDlg, cxCheckBox, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxCurrencyEdit, cxMemo,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxBarEditItem, dxScreenTip,
  cxGridExportLink, dxCustomHint, cxHint, cxGridDBTableView, cxCustomListBox,
  cxCheckListBox, cxButtons, cxGridDBDataDefinitions;

type
  TTimesheetDetailReportFrm = class(TBaseLayoutFrm)
    lucDateType: TcxComboBox;
    lucBillable: TcxComboBox;
    lucWorkType: TcxComboBox;
    dteToDate: TcxDateEdit;
    lucPeriod: TcxLookupComboBox;
    actCloseForm: TAction;
    actGetData: TAction;
    actPreview: TAction;
    actPrint: TAction;
    actExcel: TAction;
    actPDF: TAction;
    litToolbar: TdxLayoutItem;
    docToolbar: TdxBarDockControl;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    btnClose: TdxBarLargeButton;
    btnGetData: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnPDF: TdxBarLargeButton;
    btnPreview: TdxBarLargeButton;
    btnPrint: TdxBarLargeButton;
    litDateType: TdxLayoutItem;
    litBillable: TdxLayoutItem;
    litWorkType: TdxLayoutItem;
    litPeriod: TdxLayoutItem;
    litFromDate: TdxLayoutItem;
    litToDate: TdxLayoutItem;
    grpAll: TdxLayoutGroup;
    grpDateType: TdxLayoutGroup;
    grpSubOptions: TdxLayoutGroup;
    grpData: TdxLayoutGroup;
    grp1: TdxLayoutGroup;
    grp2: TdxLayoutGroup;
    grpDate: TdxLayoutGroup;
    grp4: TdxLayoutGroup;
    dteFromDate: TcxDateEdit;
    dlgPrint: TdxPrintDialog;
    dlgFileSave: TSaveDialog;
    grpOther1: TdxLayoutGroup;
    grpOther2: TdxLayoutGroup;
    cbxOepnDocument: TcxCheckBox;
    cbxRemoveZeroBillableValues: TcxCheckBox;
    litOpenDoc: TdxLayoutItem;
    litRemoveZeroBillable: TdxLayoutItem;
    litUser: TdxLayoutItem;
    grdTimesheet: TcxGrid;
    viewTimesheet: TcxGridDBBandedTableView;
    edtTSID: TcxGridDBBandedColumn;
    edtTSCID: TcxGridDBBandedColumn;
    edtTSPID: TcxGridDBBandedColumn;
    lucSystemUser: TcxGridDBBandedColumn;
    edtTSPeriod: TcxGridDBBandedColumn;
    lucTSActivityDate: TcxGridDBBandedColumn;
    lucPriceList: TcxGridDBBandedColumn;
    lucRateUnit: TcxGridDBBandedColumn;
    lucActivityType: TcxGridDBBandedColumn;
    edtTSActivity: TcxGridDBBandedColumn;
    edtTSTimeMins: TcxGridDBBandedColumn;
    edtTSTimeHours: TcxGridDBBandedColumn;
    edtTSRate: TcxGridDBBandedColumn;
    edtTSStdRate: TcxGridDBBandedColumn;
    edtTSItemValue: TcxGridDBBandedColumn;
    edtTSInvID: TcxGridDBBandedColumn;
    edtTSCreditnoteID: TcxGridDBBandedColumn;
    cbxTSLocked: TcxGridDBBandedColumn;
    edtTSModified: TcxGridDBBandedColumn;
    cbxTSBillable: TcxGridDBBandedColumn;
    edtTSInvoiceDate: TcxGridDBBandedColumn;
    cbxTSCarryForward: TcxGridDBBandedColumn;
    cbxTSApproved: TcxGridDBBandedColumn;
    cbxTSAddWork: TcxGridDBBandedColumn;
    edtTSCGrpID: TcxGridDBBandedColumn;
    lvlTimesheet: TcxGridLevel;
    grdCarryForwardDetail: TcxGrid;
    viewCarryForwardDetail: TcxGridDBBandedTableView;
    edtCFID: TcxGridDBBandedColumn;
    edtCFCustomerID: TcxGridDBBandedColumn;
    edtCFPIID: TcxGridDBBandedColumn;
    lucCFSystemuser: TcxGridDBBandedColumn;
    edtCFPeriod: TcxGridDBBandedColumn;
    lucCFActivityDate: TcxGridDBBandedColumn;
    lucCFPriceList: TcxGridDBBandedColumn;
    lucCFRateUnit: TcxGridDBBandedColumn;
    lucCFActivityType: TcxGridDBBandedColumn;
    edtCFActivity: TcxGridDBBandedColumn;
    edtCFTimeMins: TcxGridDBBandedColumn;
    edtCFTimeHours: TcxGridDBBandedColumn;
    edtCFRate: TcxGridDBBandedColumn;
    edtCFStdRate: TcxGridDBBandedColumn;
    edtCFItemValue: TcxGridDBBandedColumn;
    edtCFInvID: TcxGridDBBandedColumn;
    edtCFCreditnoteID: TcxGridDBBandedColumn;
    cbxCFLocked: TcxGridDBBandedColumn;
    lucCFModified: TcxGridDBBandedColumn;
    cbxCFBillable: TcxGridDBBandedColumn;
    edtCFInvoiceDate: TcxGridDBBandedColumn;
    cbxCFCarryForward: TcxGridDBBandedColumn;
    cbxCFApproved: TcxGridDBBandedColumn;
    cbxCFAddWork: TcxGridDBBandedColumn;
    edtCFCGID: TcxGridDBBandedColumn;
    lvlCarryForwardDetail: TcxGridLevel;
    grdSystemUser: TcxGrid;
    viewSystemUser: TcxGridDBBandedTableView;
    edtUID: TcxGridDBBandedColumn;
    edtUFirstname: TcxGridDBBandedColumn;
    edtULastName: TcxGridDBBandedColumn;
    lvlSystemUser: TcxGridLevel;
    litDCustomerListing: TdxLayoutItem;
    grdCustomerListing: TcxGrid;
    viewCustomerListing: TcxGridDBBandedTableView;
    edtCID: TcxGridDBBandedColumn;
    edtCCTID: TcxGridDBBandedColumn;
    edtCStatusID: TcxGridDBBandedColumn;
    edtCCustomerName: TcxGridDBBandedColumn;
    edtCCustomerType: TcxGridDBBandedColumn;
    edtCCustomerStatus: TcxGridDBBandedColumn;
    edtCIsActive: TcxGridDBBandedColumn;
    edtCCGrpID: TcxGridDBBandedColumn;
    edtCCustID: TcxGridDBBandedColumn;
    edtCCustGrpLinkName: TcxGridDBBandedColumn;
    lvlCustomerListing: TcxGridLevel;
    litActivityListing: TdxLayoutItem;
    grdActivityType: TcxGrid;
    viewActivityType: TcxGridDBBandedTableView;
    edtAID: TcxGridDBBandedColumn;
    edtAName: TcxGridDBBandedColumn;
    lvlActivityType: TcxGridLevel;
    grdTimesheetBillable: TcxGrid;
    viewTimesheetBillable: TcxGridDBBandedTableView;
    edtTID: TcxGridDBBandedColumn;
    edtTFirstName: TcxGridDBBandedColumn;
    edtTLastName: TcxGridDBBandedColumn;
    edtTThePeriod: TcxGridDBBandedColumn;
    edtTLoginName: TcxGridDBBandedColumn;
    edtTActivityDate: TcxGridDBBandedColumn;
    edtTCustomerType: TcxGridDBBandedColumn;
    edtTCustomerName: TcxGridDBBandedColumn;
    edtTActivtyType: TcxGridDBBandedColumn;
    edtTAActivty: TcxGridDBBandedColumn;
    edtTPriceItem: TcxGridDBBandedColumn;
    edtTTimeSpent: TcxGridDBBandedColumn;
    edtTHours: TcxGridDBBandedColumn;
    edtTRate: TcxGridDBBandedColumn;
    edtTStdRate: TcxGridDBBandedColumn;
    edtTItemValue: TcxGridDBBandedColumn;
    edtTTotalCFwd: TcxGridDBBandedColumn;
    edtTWeekEnding: TcxGridDBBandedColumn;
    edtTBillable: TcxGridDBBandedColumn;
    edtTBillableStr: TcxGridDBBandedColumn;
    edtTInvoiceNo: TcxGridDBBandedColumn;
    edtTInvDate: TcxGridDBBandedColumn;
    edtTCreditNoteNo: TcxGridDBBandedColumn;
    edtTLocked: TcxGridDBBandedColumn;
    edtTLockedStr: TcxGridDBBandedColumn;
    edtTCFwd: TcxGridDBBandedColumn;
    edtTCFwdStr: TcxGridDBBandedColumn;
    edtTAddWork: TcxGridDBBandedColumn;
    edtTAddWorkStr: TcxGridDBBandedColumn;
    lvlTimesheetBillable: TcxGridLevel;
    litBillCfComparison: TdxLayoutItem;
    litBillCfComparisonDescription: TdxLayoutLabeledItem;
    lucBillCfComparison: TcxComboBox;
    litBillCfwd: TdxLayoutItem;
    lucReportType: TcxComboBox;
    litGetDataBy: TdxLayoutItem;
    grdBillCfwd: TcxGrid;
    viewBillCfwd: TcxGridDBBandedTableView;
    edtBCID: TcxGridDBBandedColumn;
    edtBCFirstName: TcxGridDBBandedColumn;
    edtBCLastName: TcxGridDBBandedColumn;
    edtBCThePeriod: TcxGridDBBandedColumn;
    edtBCLoginName: TcxGridDBBandedColumn;
    edtBCActivityDate: TcxGridDBBandedColumn;
    edtBCCustomerType: TcxGridDBBandedColumn;
    edtBCCustomerName: TcxGridDBBandedColumn;
    edtBCActivtyType: TcxGridDBBandedColumn;
    edtBCAActivty: TcxGridDBBandedColumn;
    edtBCPriceItem: TcxGridDBBandedColumn;
    edtBCTimeSpent: TcxGridDBBandedColumn;
    edtBCHours: TcxGridDBBandedColumn;
    edtBCRate: TcxGridDBBandedColumn;
    edtBCStdRate: TcxGridDBBandedColumn;
    edtBCItemValue: TcxGridDBBandedColumn;
    edtBCTotalCFwd: TcxGridDBBandedColumn;
    edtBCWeekEnding: TcxGridDBBandedColumn;
    edtBCBillable: TcxGridDBBandedColumn;
    edtBCBillableStr: TcxGridDBBandedColumn;
    edtBCInvoiceNo: TcxGridDBBandedColumn;
    edtBCInvDate: TcxGridDBBandedColumn;
    edtBCCreditNoteNo: TcxGridDBBandedColumn;
    edtBCLocked: TcxGridDBBandedColumn;
    edtBCLockedStr: TcxGridDBBandedColumn;
    edtBCCFwd: TcxGridDBBandedColumn;
    edtBCCFwdStr: TcxGridDBBandedColumn;
    edtBCAddWork: TcxGridDBBandedColumn;
    edtBCAddWorkStr: TcxGridDBBandedColumn;
    lvlBillCfwd: TcxGridLevel;
    edtBillCfwd: TcxGridDBBandedColumn;
    repScreenTip: TdxScreenTipRepository;
    tipClose: TdxScreenTip;
    tipPreview: TdxScreenTip;
    tipPrint: TdxScreenTip;
    tipPDF: TdxScreenTip;
    tipExcel: TdxScreenTip;
    tipToGrid: TdxScreenTip;
    styHintController: TcxHintStyleController;
    litSortOptions: TdxLayoutItem;
    grpSortOptions: TdxLayoutGroup;
    litSaveSortOptions: TdxLayoutItem;
    cbxSaveSortOrder: TcxCheckBox;
    litGroupedReport: TdxLayoutItem;
    cbxGroupedReport: TcxCheckBox;
    grdSortOrder: TcxGrid;
    lvlSortOrder: TcxGridLevel;
    viewSortOrder: TcxGridDBTableView;
    edtID: TcxGridDBColumn;
    cbxInclude: TcxGridDBColumn;
    edtSortBy: TcxGridDBColumn;
    edtFieldName: TcxGridDBColumn;
    edtOrdValue: TcxGridDBColumn;
    tipGroupedReport: TdxScreenTip;
    tipSaveSortOrder: TdxScreenTip;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure DoPrint(Sender: TObject);
    procedure DoExcel(Sender: TObject);
    procedure DoPDF(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lucDateTypePropertiesEditValueChanged(Sender: TObject);
    procedure lucReportTypePropertiesEditValueChanged(Sender: TObject);
    procedure lucBillCfComparisonPropertiesChange(Sender: TObject);
    procedure cbxSaveSortOptoionsPropertiesChange(Sender: TObject);
    procedure viewSortOrderDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure viewSortOrderStartDrag(Sender: TObject; var DragObject: TDragObject);

    procedure viewSortOrderDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);

    procedure viewSystemUserCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

    procedure viewBillCfwdDataControllerSummaryFooterSummaryItemsSummary(
      ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
      var OutArguments: TcxSummaryEventOutArguments);
    procedure cbxIncludePropertiesEditValueChanged(Sender: TObject);
    procedure cbxGroupedReportPropertiesChange(Sender: TObject);
  private
    { Private declarations }
//    FReportFileName: TReportFileName;
    FOrderByClause: string;
    FDragRecord: Integer;
    FItem: TcxCustomGridTableItem;
    FSortOptioinsList: TStringlist;
    FSourceRecordIndex: Integer;
    FDestRecordIndex: Integer;
    FID: Integer;
    FMadChanges: Boolean;

    procedure GetPeriods;
    procedure GetSystemUser;
    procedure GetCustomer;
    procedure GetActivityType;
    procedure CloseDataSets;
    procedure GetTimesheetDetail;
    procedure GetBillCfwd;
    procedure HideTabs;
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
    procedure PopulateSortOptions;
    procedure ReorderRows(AView: TcxGridDBTableView; ADestRow: TcxCustomGridRecord);
    procedure SetOrderValue(DataSet: TDataSet; AValue: Variant);
    function OrderByClause: string;
  public
    { Public declarations }
  end;

var
  TimesheetDetailReportFrm: TTimesheetDetailReportFrm;

const
  TS_REPORT_SORT_OPTIONS = 4;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  TS_DM,
  RUtils,
  Report_DM,
  Progress_Frm;

procedure TTimesheetDetailReportFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TTimesheetDetailReportFrm.FormCreate(Sender: TObject);
var
  I: Integer;
  Progress: Extended;
  RegKey: TRegistry;
  DownloadCaption: string;
//  AComboBox: TcxComboBox;
begin
  inherited;
  Width := 1300;
  Height := 800;
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  TcxDateEditProperties(lucTSActivityDate.Properties).MinDate := StrToDate('01/01/2019');
  TcxDateEditProperties(lucTSActivityDate.Properties).MaxDate := Date;
  FSortOptioinsList := RUtils.CreateStringList(COMMA, SINGLE_QUOTE);
  edtOrdValue.SortOrder := soAscending;
  FMadChanges := False;

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  RegKey.OpenKey(KEY_TIME_SHEET, True);

  if not RegKey.ValueExists('Save Report Sort Order') then
    RegKey.WriteBool('Save Report Sort Order', True);

  cbxSaveSortOrder.Checked := RegKey.ReadBool('Save Report Sort Order');

  if not RegKey.ValueExists('Group Timsheet Detail Report') then
    RegKey.WriteBool('Group Timsheet Detail Report', True);

  cbxGroupedReport.Checked := RegKey.ReadBool('Group Timsheet Detail Report');

  if ReportDM = nil then
    ReportDM := TReportDM.Create(nil);

//  cbxAlwaysMaximize.Checked := RegKey.ReadBool('Maximize Report Form');
//  PopulateReportSelectionList;

//  SetLength(ReportDM.ReportFileName, REPORT_COUNT);
//
//  ReportDM.ReportFileName[0] := 'TimesheetUser.fr3';
//  ReportDM.ReportFileName[1] := 'TimesheetCustomer.fr3';
//  ReportDM.ReportFileName[2] := 'TimesheetActivityType.fr3';
//  ReportDM.ReportFileName[3] := 'TimesheetBillCfwdByUser.fr3';
//  ReportDM.ReportFileName[4] := 'TimesheetBillCfwdByCustomer.fr3';
//  ReportDM.ReportFileName[5] := 'rptMonthlyBilling.fr3';

  lucPeriod.Properties.ListSource := ReportDM.dtsPeriodListing;
  viewSystemUser.DataController.DataSource := ReportDM.dtsSystemUser;
  viewCustomerListing.DataController.DataSource := ReportDM.dtsTSCustomer;
  viewActivityType.DataController.DataSource := ReportDM.dtsActivityType;
  viewTimesheetBillable.DataController.DataSource := ReportDM.dtsTSBillable;
//  viewSummaryByActivity.DataController.DataSource := ReportDM.dtsTSSummaryByActivity;
  viewTimesheet.DataController.DataSource := ReportDM.dtsTimesheet;
  viewCarryForwardDetail.DataController.DataSource := ReportDM.dtsCarryForwardDetail;
  viewBillCfwd.DataController.DataSource := ReportDM.dtsBillCfwd;
  viewSortOrder.DataController.DataSource := ReportDM.dtsTSSortOrder;

  TcxLookupComboBoxProperties(lucSystemUser.Properties).ListSource := ReportDM.dtsSystemUser;
  TcxLookupComboBoxProperties(lucCFSystemuser.Properties).ListSource := ReportDM.dtsSystemUser;

  TcxLookupComboBoxProperties(lucPriceList.Properties).ListSource := ReportDM.dtsPriceListView;
  TcxLookupComboBoxProperties(lucCFPriceList.Properties).ListSource := ReportDM.dtsPriceListView;

  TcxLookupComboBoxProperties(lucRateUnit.Properties).ListSource := ReportDM.dtsRateUnit;
  TcxLookupComboBoxProperties(lucCFRateUnit.Properties).ListSource := ReportDM.dtsRateUnit;

  TcxLookupComboBoxProperties(lucActivityType.Properties).ListSource := ReportDM.dtsActivityType;
  TcxLookupComboBoxProperties(lucCFActivityType.Properties).ListSource := ReportDM.dtsActivityType;

//  FOrderByClause := ' ORDER BY 1, 6, 5, 8 ';
  lucReportType.ItemIndex := 0;
  lucBillCfComparison.ItemIndex := 0;
  PopulateSortOptions;
  GetPeriods;

  if not ReportDM.cdsPeriodListing.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
    ReportDM.cdsPeriodListing.Last;

  lucPeriod.EditValue := ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').Asinteger;

//  if not ReportDM.cdsToPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
//    ReportDM.cdsToPeriod.Last;

//  lucSumByActivityPeriod.Properties.OnChange := nil;
//  try
//    if not ReportDM.cdsSumByActivityPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
//      ReportDM.cdsSumByActivityPeriod.Last;
//
//    lucSumByActivityPeriod.Text := ReportDM.cdsSumByActivityPeriod.FieldByName('THE_PERIOD').Value;
//  finally
//    lucSumByActivityPeriod.Properties.OnChange := lucSumByActivityPeriodPropertiesChange;
//  end;
//
////  TfrxGroupHeader(ReportDM.rptBillableSummaryByCustomer.FindObject('bndCustomerHeader')).Visible := False;
////  TfrxMemoView(ReportDM.rptBillableSummaryByCustomer.FindObject('lblCustomerHeader')).Visible := False;

  if ProgressFrm = nil then
    ProgressFrm := TProgressFrm.Create(nil);
  ProgressFrm.lblAppTitle.Caption := 'Getting Data...';
  ProgressFrm.Update;
  ProgressFrm.Show;
  ProgressFrm.Update;
  I := 1;

  try
    DownloadCaption := 'Opening System User Table';
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=' + DownloadCaption + '|PROGRESS=' + FloatToStr(progress))), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);
    GetSystemUser;

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening Customer Table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);
    GetCustomer;

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening Activity Type Table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=' + DownloadCaption + '|PROGRESS=' + FloatToStr(progress))), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);
    GetActivityType;

    HideTabs;
//    lucReportType.SetFocus;
//    AComboBox := TcxBarEditItemControl(lucReportType.Links[0].Control).Edit as TcxComboBox;
//    AComboBox.ItemIndex := 0;

    grpData.Items[0].Visible := True;
    grpData.Items[3].Visible := False;

//    Inc(I);
//    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
//    DownloadCaption := 'Opening_Customer_Table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
//    GetPriceList;
//
//    Inc(I);
//    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
//    DownloadCaption := 'Opening_Rate_Unit_Table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
//    GetRateUnit;
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=100' + '|CAPTION=All_tables_opened')), 0);
//
//    Inc(I);
//    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
//    DownloadCaption := 'Opening_Customer_Group_Table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
//    GetRateUnit;
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=100' + '|CAPTION=All_tables_opened')), 0);
//
//    Inc(I);
//    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
//    DownloadCaption := 'Opening_Customer_Table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
//    GetRateUnit;
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=100' + '|CAPTION=All_tables_opened')), 0);
    RegKey.CloseKey;
    lucDateType.ItemIndex := 0;
    lucBillable.ItemIndex := 2;
    lucWorkType.ItemIndex := 2;
    {$IFDEF DEBUG}
    viewSortOrder.OptionsCustomize.ColumnsQuickCustomization := True;
    {$ELSE}
    viewSortOrder.OptionsCustomize.ColumnsQuickCustomization := False;
    {$ENDIF}
    grdSortOrder.Height := 120;
  finally
    FreeAndNil(RegKey);
    ProgressFrm.Close;
    FreeAndNil(ProgressFrm);
  end;
end;

procedure TTimesheetDetailReportFrm.FormDestroy(Sender: TObject);
begin
  inherited;
  if FSortOptioinsList <> nil then
    FSortOptioinsList.Free;

  if Assigned(ReportDM) then
    FreeAndNil(ReportDM);
end;

procedure TTimesheetDetailReportFrm.FormShow(Sender: TObject);
begin
  inherited;
  if lucDateType.ItemIndex = 0 then
  begin
    if lucPeriod.CanFocus and Self.Showing then
      lucPeriod.SetFocus;
  end
  else
  begin
    if dteFromDate.CanFocus and Self.Showing then
      dteFromDate.SetFocus;
  end;

  WindowState := wsMaximized;
  Screen.Cursor := crDefault;
end;

procedure TTimesheetDetailReportFrm.cbxGroupedReportPropertiesChange(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  RegKey.OpenKey(KEY_TIME_SHEET, True);
  try
    RegKey.WriteBool('Group Timsheet Detail Report', cbxSaveSortOrder.Checked);
    RegKey.CloseKey;
  finally
    Regkey.Free;
  end;
end;

procedure TTimesheetDetailReportFrm.cbxIncludePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  ReportDM.cdsTSSortOrder.Post;
end;

procedure TTimesheetDetailReportFrm.cbxSaveSortOptoionsPropertiesChange(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  RegKey.OpenKey(KEY_TIME_SHEET, True);
  try
    RegKey.WriteBool('Save Report Sort Order', cbxSaveSortOrder.Checked);
    RegKey.CloseKey;
  finally
    Regkey.Free;
  end;
end;

procedure TTimesheetDetailReportFrm.CloseDataSets;
begin
//  ReportDM.cdsSumByActivityPeriod.Close;
  ReportDM.cdsActivityType.Close;
//  ReportDM.cdsBillableSummary.Close;
  ReportDM.cdsTSCustomer.Close;
//  ReportDM.cdsPeriod.Close;
//  ReportDM.cdsToPeriod.Close;
  ReportDM.cdsPeriodListing.Close;
  ReportDM.cdsPriceListView.Close;
  ReportDM.cdsRateUnit.Close;
//  ReportDM.cdsTSSummaryByActivity.Close;
  ReportDM.cdsSystemUser.Close;
//  ReportDM.cdsTSBillable.Close;
end;

procedure TTimesheetDetailReportFrm.GetActivityType;
begin
  ReportDM.cdsActivityType.Close;

  VBBaseDM.GetData(39, ReportDM.cdsActivityType, ReportDM.cdsActivityType.Name, ONE_SPACE,
    'C:\Data\Xml\Activity Type.xml', ReportDM.cdsActivityType.UpdateOptions.Generatorname,
    ReportDM.cdsActivityType.UpdateOptions.UpdateTableName);
end;

procedure TTimesheetDetailReportFrm.GetCustomer;
begin
  ReportDM.cdsTSCustomer.Close;

  VBBaseDM.GetData(41, ReportDM.cdsTSCustomer, ReportDM.cdsTSCustomer.Name, ONE_SPACE,
    'C:\Data\Xml\Customer Listing.xml', ReportDM.cdsTSCustomer.UpdateOptions.Generatorname,
    ReportDM.cdsTSCustomer.UpdateOptions.UpdateTableName);
end;

procedure TTimesheetDetailReportFrm.GetPeriods;
begin
  ReportDM.cdsPeriodListing.Close;

  VBBaseDM.GetData(62, ReportDM.cdsPeriodListing, ReportDM.cdsPeriodListing.Name, ONE_SPACE,
    'C:\Data\Xml\Period.xml', ReportDM.cdsPeriodListing.UpdateOptions.Generatorname,
    ReportDM.cdsPeriodListing.UpdateOptions.UpdateTableName);

  if not ReportDM.cdsPeriodListing.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
    ReportDM.cdsPeriodListing.First;
end;

procedure TTimesheetDetailReportFrm.GetSystemUser;
begin
  ReportDM.cdsSystemUser.Close;

  VBBaseDM.GetData(24, ReportDM.cdsSystemUser, ReportDM.cdsSystemUser.Name, ONE_SPACE,
    'C:\Data\Xml\System User.xml', ReportDM.cdsSystemUser.UpdateOptions.Generatorname,
    ReportDM.cdsSystemUser.UpdateOptions.UpdateTableName);
end;

procedure TTimesheetDetailReportFrm.GetTimesheetDetail;
var
  DC: TcxCustomDataController;
  C: TcxGridBandedTableController;
  I: Integer;
  WhereClause, UserClause, DateClause, CustomerClause: string;
  ActivityClause, BillableClause, WorkTypeClause, FileName: string;
//  AComboBox: TcxComboBox;
begin
  WhereClause := '';
  UserClause := '';
  DateClause := '';
  CustomerClause := '';
  ActivityClause := '';
  BillableClause := '';
  WorkTypeClause := '';

  case lucBillable.ItemIndex of
    0: BillableClause := ' AND T.BILLABLE = 1';
    1: BillableClause := ' AND T.BILLABLE = 0';
  end;

  case lucWorkType.ItemIndex of
    0: WorkTypeClause := ' AND T.IS_ADDITIONAL_WORK = 0';
    1: WorkTypeClause := ' AND T.IS_ADDITIONAL_WORK = 1';
  end;

//  lucReportType.SetFocus;
//  AComboBox := TcxBarEditItemControl(lucReportType.Links[0].Control).Edit as TcxComboBox;

  case lucReportType.ItemIndex of
    0:
      begin
        FileName := 'Timesheet Detail by User';
        ReportDM.FReport := ReportDM.rptTimesheetByUser;
        DC := viewSystemUser.DataController;
        C := viewSystemUser.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);

          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', dteFromDate.Date), '''') +
            ' AND T.ACTIVITY_DATE <= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', dteToDate.Date), '''');
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          UserClause := ' AND T.USER_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            UserClause := UserClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtUID.Index]);
            if I < C.SelectedRecordCount - 1 then
              UserClause := UserClause + ',';
          end;
          UserClause := UserClause + ')';
        end;

        FOrderByClause := OrderByClause;

//        OrderByClause:= 'ORDER BY T.LOGIN_NAME, T.THE_PERIOD, T.ACTIVITY_DATE';
        WhereClause := DateClause + UserClause + BillableClause + WorkTypeClause + FOrderByClause;
      end;

    1:
      begin
        FileName := 'Timesheet Detail by Customer';
        ReportDM.FReport := ReportDM.rptTimesheetByCustomer;
        DC := viewCustomerListing.DataController;
        C := viewCustomerListing.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + FormatDateTime('yyyy-MM-dd', dteFromDate.Date) +
            ' AND T.ACTIVITY_DATE <= ' + FormatDateTime('yyyy-MM-dd', dteToDate.Date);
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          CustomerClause := ' AND T.CUSTOMER_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            CustomerClause := CustomerClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtCID.Index]);
            if I < C.SelectedRecordCount - 1 then
              CustomerClause := CustomerClause + ',';
          end;
          CustomerClause := CustomerClause + ')';
        end;

//        OrderByClause := 'ORDER BY T.CUSTOMER_NAME, T.THE_PERIOD, T.LOGIN_NAME, T.ACTIVITY_DATE';
        WhereClause := DateClause + CustomerClause + BillableClause + WorkTypeClause + FOrderByClause;
      end;

    2:
      begin
        FileName := 'Timesheet Detail by Activity';
        ReportDM.FReport := ReportDM.rptTimesheetByActivity;
        DC := viewActivityType.DataController;
        C := viewActivityType.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + FormatDateTime('yyyy-MM-dd', dteFromDate.Date) +
            ' AND T.ACTIVITY_DATE <= ' + FormatDateTime('yyyy-MM-dd', dteToDate.Date);
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          ActivityClause := ' AND T.ACTIVITY_TYPE_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            ActivityClause := ActivityClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtAID.Index]);
            if I < C.SelectedRecordCount - 1 then
              ActivityClause := ActivityClause + ',';
          end;
          ActivityClause := ActivityClause + ')';
        end;

//        OrderByClause := 'ORDER BY T.ACTIVITY_TYPE, T.THE_PERIOD, T.LOGIN_NAME, T.ACTIVITY_DATE';
        WhereClause := DateClause + ActivityClause + BillableClause + WorkTypeClause + FOrderByClause;
      end;
  end;

  VBBaseDM.GetData(45, ReportDM.cdsTSBillable, ReportDM.cdsTSBillable.Name, WhereClause,
    'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsTSBillable.UpdateOptions.Generatorname,
    ReportDM.cdsTSBillable.UpdateOptions.UpdateTableName);
end;

procedure TTimesheetDetailReportFrm.GetBillCfwd;
var
  DC: TcxCustomDataController;
  C: TcxGridBandedTableController;
  I: Integer;
  WhereClause1, WhereClause2, UserClause, DateClause, CustomerClause: string;
  ActivityClause, BillCfwdClause1, BillCfwdClause2, FileName: string;
//  AComboBox: TcxComboBox;
begin
  WhereClause1 := '';
  WhereClause2 := '';
  UserClause := '';
  DateClause := '';
  CustomerClause := '';
  ActivityClause := '';
  BillCfwdClause1 := ' AND T.CARRY_FORWARD = 0 ';
  BillCfwdClause2 := ' AND T.CARRY_FORWARD = 1 ';

//  case lucBillable.ItemIndex of
//    0: BillableClause := ' AND T.BILLABLE = 1';
//    1: BillableClause := ' AND T.BILLABLE = 0';
//  end;
//
//  case lucWorkType.ItemIndex of
//    0: WorkTypeClause := ' AND T.IS_ADDITIONAL_WORK = 0';
//    1: WorkTypeClause := ' AND T.IS_ADDITIONAL_WORK = 1';
//  end;

//  lucReportType.SetFocus;
//  AComboBox := TcxBarEditItemControl(lucReportType.Links[0].Control).Edit as TcxComboBox;

//  case lucReportType.EditValue of
  case lucReportType.ItemIndex of
    0:
      begin
        FileName := 'Timesheet Detail BillCfwd by User';
        ReportDM.FReport := ReportDM.rptTimesheetByUser;
        DC := viewSystemUser.DataController;
        C := viewSystemUser.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);

          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', dteFromDate.Date), '''') +
            ' AND T.ACTIVITY_DATE <= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', dteToDate.Date), '''');
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          UserClause := ' AND T.USER_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            UserClause := UserClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtUID.Index]);
            if I < C.SelectedRecordCount - 1 then
              UserClause := UserClause + ',';
          end;
          UserClause := UserClause + ')';
        end;

//        OrderByClause := 'ORDER BY T.LOGIN_NAME, T.THE_PERIOD, T.ACTIVITY_DATE';
//               Field index order =   5             18            6
//        OrderByClause := ' ORDER BY 1, 6 ';
        WhereClause1 := DateClause + UserClause + BillCfwdClause1;
        WhereClause2 := DateClause + UserClause + BillCfwdClause2 + FOrderByClause;
      end;

    1:
      begin
        FileName := 'Timesheet Detail BillFwd by Customer';
        ReportDM.FReport := ReportDM.rptTimesheetByCustomer;
        DC := viewCustomerListing.DataController;
        C := viewCustomerListing.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + FormatDateTime('yyyy-MM-dd', dteFromDate.Date) +
            ' AND T.ACTIVITY_DATE <= ' + FormatDateTime('yyyy-MM-dd', dteToDate.Date);
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          CustomerClause := ' AND T.CUSTOMER_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            CustomerClause := CustomerClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtCID.Index]);
            if I < C.SelectedRecordCount - 1 then
              CustomerClause := CustomerClause + ',';
          end;
          CustomerClause := CustomerClause + ')';
        end;

//        OrderByClause := 'ORDER BY T.CUSTOMER_NAME, T.THE_PERIOD, T.LOGIN_NAME, T.ACTIVITY_DATE';
//               Field index order =   8                18                          6
//        OrderByClause := ' ORDER BY 1, 8, 18, 6 ';
        WhereClause1 := DateClause + CustomerClause + BillCfwdClause1;
        WhereClause2 := DateClause + CustomerClause + BillCfwdClause2 + FOrderByClause;
      end;

    2:
      begin
        FileName := 'Timesheet Detail by Activity';
        ReportDM.FReport := ReportDM.rptTimesheetByActivity;
        DC := viewActivityType.DataController;
        C := viewActivityType.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + FormatDateTime('yyyy-MM-dd', dteFromDate.Date) +
            ' AND T.ACTIVITY_DATE <= ' + FormatDateTime('yyyy-MM-dd', dteToDate.Date);
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          ActivityClause := ' AND T.ACTIVITY_TYPE_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            ActivityClause := ActivityClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtAID.Index]);
            if I < C.SelectedRecordCount - 1 then
              ActivityClause := ActivityClause + ',';
          end;
          ActivityClause := ActivityClause + ')';
        end;

//        OrderByClause := 'ORDER BY T.ACTIVITY_TYPE, T.THE_PERIOD, T.LOGIN_NAME, T.ACTIVITY_DATE';
//               Field index order =   9                18                          6
//        OrderByClause := ' ORDER BY 1, 9, 18, 6 ';
        WhereClause1 := DateClause + ActivityClause + BillCfwdClause1;
        WhereClause2 := DateClause + ActivityClause + BillCfwdClause2 + FOrderByClause;
      end;
  end;

  VBBaseDM.GetData(83, ReportDM.cdsBillCfwd, ReportDM.cdsBillCfwd.Name, WhereClause1 + ';' + WhereClause2,
    'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsBillCfwd.UpdateOptions.Generatorname,
    ReportDM.cdsBillCfwd.UpdateOptions.UpdateTableName);
end;

procedure TTimesheetDetailReportFrm.HideTabs;
var
  I: Integer;
begin
  for I := 0 to 2 do
    grpData.Items[I].Visible := False;
end;

procedure TTimesheetDetailReportFrm.lucBillCfComparisonPropertiesChange(Sender: TObject);
begin
  inherited;
  lucBillable.Enabled := lucBillCfComparison.ItemIndex = 0;
  lucWorkType.Enabled := lucBillCfComparison.ItemIndex = 0;

  case lucBillCfComparison.ItemIndex of
    0: litBillCfComparisonDescription.CaptionOptions.Text := 'Timesheet details';
    1: litBillCfComparisonDescription.CaptionOptions.Text := 'Timesheets grouped by billable/Cfwd with summary totals';
  end;
end;

procedure TTimesheetDetailReportFrm.lucDateTypePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  lucPeriod.Enabled := lucDateType.ItemIndex = 0;
  dteFromDate.Enabled := not lucPeriod.Enabled;
  dteToDate.Enabled := not lucPeriod.Enabled;

  if lucDateType.ItemIndex = 0 then
  begin
    if lucPeriod.CanFocus and Self.Showing then
      lucPeriod.SetFocus;
  end
  else
  begin
    if dteFromDate.CanFocus and Self.Showing then
      dteFromDate.SetFocus;
  end;
end;

procedure TTimesheetDetailReportFrm.lucReportTypePropertiesEditValueChanged(Sender: TObject);
//var
//  AComboBox: TcxComboBox;
begin
  inherited;
  HideTabs;
//  lucReportType.SetFocus;
//  AComboBox := TcxBarEditItemControl(lucReportType.Links[0].Control).Edit as TcxComboBox;
//  grpData.Items[AComboBox.ItemIndex].Visible := True;
  grpData.Items[lucReportType.ItemIndex].Visible := True;

{TODO: Set correct order by clause based on report type}
//  case grpData.ItemIndex of
//    0: lucSortOptions.ItemIndex := 0;
//    1: lucSortOptions.ItemIndex := 1;
//    2: lucSortOptions.ItemIndex := 2;
//  end;
//  grpData.Items[lucReportType.EditValue].Visible := True;
end;

procedure TTimesheetDetailReportFrm.PopulateSortOptions;
var
  I, ID: Integer;
  AnItem: TcxCheckListBoxItem;
  DC: TcxGridDBDataController;
begin
  // Union field order
  // 4 = User Name
  // 5 = Activity Date
  // 7 = Customer Name
  // 8 = Activity Type

  if TFile.Exists(TSDM.ShellResource.ResourceFolder + 'TS Report Sort Order.xml') then
    ReportDM.cdsTSSortOrder.LoadFromFile(TSDM.ShellResource.ResourceFolder + 'TS Report Sort Order.xml')
  else
  begin
    ID := 1;
    ReportDM.cdsTSSortOrder.CreateDataSet;
    ReportDM.cdsTSSortOrder.Append;
    ReportDM.cdsTSSortOrder.FieldByName('ID').AsInteger := ID;
    ReportDM.cdsTSSortOrder.FieldByName('INCLUDE').AsBoolean := True;
    ReportDM.cdsTSSortOrder.FieldByName('SORT_BY').AsString := 'Login Name';
    ReportDM.cdsTSSortOrder.FieldByName('FIELD_NAME').AsString := 'LOGIN_NAME';
    ReportDM.cdsTSSortOrder.FieldByName('ORD_VALUE').AsInteger := ID;
    ReportDM.cdsTSSortOrder.Post;

    Inc(ID);
    ReportDM.cdsTSSortOrder.Append;
    ReportDM.cdsTSSortOrder.FieldByName('ID').AsInteger := ID;
    ReportDM.cdsTSSortOrder.FieldByName('INCLUDE').AsBoolean := True;
    ReportDM.cdsTSSortOrder.FieldByName('SORT_BY').AsString := 'Activity Date';
    ReportDM.cdsTSSortOrder.FieldByName('FIELD_NAME').AsString := 'ACTIVITY_DATE';
    ReportDM.cdsTSSortOrder.FieldByName('ORD_VALUE').AsInteger := ID;
    ReportDM.cdsTSSortOrder.Post;

    Inc(ID);
    ReportDM.cdsTSSortOrder.Append;
    ReportDM.cdsTSSortOrder.FieldByName('ID').AsInteger := ID;
    ReportDM.cdsTSSortOrder.FieldByName('INCLUDE').AsBoolean := False;
    ReportDM.cdsTSSortOrder.FieldByName('SORT_BY').AsString := 'Customer Name';
    ReportDM.cdsTSSortOrder.FieldByName('FIELD_NAME').AsString := 'CUSTOMER_NAME';
    ReportDM.cdsTSSortOrder.FieldByName('ORD_VALUE').AsInteger := ID;
    ReportDM.cdsTSSortOrder.Post;

    Inc(ID);
    ReportDM.cdsTSSortOrder.Append;
    ReportDM.cdsTSSortOrder.FieldByName('ID').AsInteger := ID;
    ReportDM.cdsTSSortOrder.FieldByName('INCLUDE').AsBoolean := False;
    ReportDM.cdsTSSortOrder.FieldByName('SORT_BY').AsString := 'Activity Type';
    ReportDM.cdsTSSortOrder.FieldByName('FIELD_NAME').AsString := 'ACTIVITY_TYPE';
    ReportDM.cdsTSSortOrder.FieldByName('ORD_VALUE').AsInteger := ID;
    ReportDM.cdsTSSortOrder.Post;
    ReportDM.cdsTSSortOrder.First;
    ReportDM.cdsTSSortOrder.SaveToFile(TSDM.ShellResource.ResourceFolder + 'TS Report Sort Order.xml');
  end;
end;

procedure TTimesheetDetailReportFrm.viewSortOrderStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  inherited;
//  FSourceRecordIndex := viewSortOrder.Controller.FocusedRecord.Index;
  FID := TcxGridDBTableView(TcxGridSite(Sender).GridView).DataController.DataSet.FieldValues['ID'];
end;

procedure TTimesheetDetailReportFrm.viewSortOrderDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
begin
//  Accept :=
//    TcxGridSite(TDragControlObject(Source).Control).GridView = viewSortOrder;

// Good for when you want to use this for multiple grid so that you can get the
// view generically.
  HT := TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y);
  Accept := (HT is TcxGridRecordCellHitTest) and (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex <> TcxGridSite(Sender).GridView.DataController.FocusedRecordIndex)
end;

procedure TTimesheetDetailReportFrm.viewSortOrderDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  HT: TcxCustomGridHitTest;
begin
//  with TcxGridSite(Sender) do
//  begin
  HT := TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y);
  FMadChanges := True;
  ReorderRows(TcxGridDBTableView(TcxGridSite(Sender).GridView), TcxGridRecordCellHitTest(HT).GridRecord);
//  end;
end;

procedure TTimesheetDetailReportFrm.ReorderRows(AView: TcxGridDBTableView;
  ADestRow: TcxCustomGridRecord);
var
  I: Integer;
  ADC: TcxDBDataController;
  AOrderValue: Variant;
  AOrderColumnIndex: Integer;
  IsUpper: Boolean;
begin
  with AView do
  begin
    ADC := TcxDBDataController(DataController);
    AOrderColumnIndex := TcxGridColumn(ADC.GetItemByFieldName('ORD_VALUE')).Index;
    AOrderValue := ADestRow.Values[AOrderColumnIndex];
    IsUpper := ADestRow.Index < ADC.GetRowIndexByRecordIndex(ADC.FindRecordIndexByKey(FID {AKeys}), False);
  end;

  ADestRow.Focused := True;

// -----------------
  if IsUpper then
    SetOrderValue(ADC.DataSet, AOrderValue + 1) // move dragged record 1 record lower
  else
    SetOrderValue(ADC.DataSet, AOrderValue - 1); // move dragged record 1 record above

// -----------------

//  SetOrderValue(ADC.DataSet, AOrderValue - Ord(not IsUpper) + 0.5); // move dragged record 1 record lower
  ADC.LocateByKey(FID {AKeys}); // focus the dragged record in the DataSet
  SetOrderValue(ADC.DataSet, AOrderValue);

// Working code
  if isUpper then
    ADC.GotoLast
  else
    ADC.GotoFirst;
  I := 0;

  while ADC.Values[ADC.FocusedRecordIndex, AOrderColumnIndex] <> AOrderValue do
  begin
    SetOrderValue(ADC.DataSet, Ord(IsUpper) * ADC.RowCount - Sign(Ord(IsUpper) - 0.1) * (I + Ord(not IsUpper)));
    Inc(I);
    if IsUpper then
      ADC.GotoPrev
    else
      ADC.GotoNext;
  end;

// Not working!!
//  ADC.GotoFirst;
//  I := 0;
//
//  while (ADC.Values[ADC.FocusedRecordIndex, AOrderColumnIndex] <> AOrderValue)
//    and (I < ADC.RecordCount - 1) do
//  begin
//    SetOrderValue(ADC.DataSet, I + 1);
//    Inc(I);
//    ADC.GotoNext;
//  end;
end;

//procedure TTimesheetDetailReportFrm.ReorderRows(AView: TcxGridDBTableView;
//  ADestRow: TcxCustomGridRecord);
//var
//  I: Integer;
//  DC: TcxGridDBDataController;
//  OrderValue: Variant;
//  IDColumnIndex: Integer;
//  IsAbove: Boolean;
//  RowIndex: Integer;
//begin
//  DC := AView.DataController;
//  IDColumnIndex := TcxGridColumn(DC.GetItemByFieldName('ID')).Index;
//  OrderValue := ADestRow.Values[IDColumnIndex];
//  RowIndex := DC.GetRowIndexByRecordIndex(DC.FindRecordIndexByKey(FID), False);
//  IsAbove := ADestRow.Index < RowIndex;
////  IsAbove := ADestRow.Index < DC.GetRowIndexByRecordIndex(DC.FindRecordIndexByKey(FID), False);
//  ADestRow.Focused := True;
//  SetOrderValue(DC.DataSet, OrderValue - Ord(not IsAbove) + 0.5); // move dragged record 1 record lower
//  DC.LocateByKey(FID); // focus the dragged record in the DataSet
//  SetOrderValue(DC.DataSet, OrderValue);
//
////  if IsAbove then
////    DC.GotoLast
////  else
////    DC.GotoFirst;
//
////  DC.DataSet.First;
////  while not DC.DataSet.EOF do
////  begin
////    SetOrderValue(DC.DataSet, I + 1);
////    DC.DataSet.Next;
////  end;
//
//  for I := 0 to DC.RecordCount - 1 do
//  begin
//    DC.Values[I, edtID.Index] := I + 1;
//    DC.PostEditingData;
//  end;
//
//  TFDMemTable(DC.DataSet).CommitUpdates;
//
////  for I := 0 to DC.RecordCount - 1 do
////    SetOrderValue(DC.DataSet, I + 1);
//end;

procedure TTimesheetDetailReportFrm.SetOrderValue(DataSet: TDataSet; AValue: Variant);
begin
  DataSet.Edit;
  DataSet.FieldByName('ORD_VALUE').AsInteger := AValue;
//  DataSet.FieldByName('ID').AsInteger := AValue;
  DataSet.Post;
end;

procedure TTimesheetDetailReportFrm.viewBillCfwdDataControllerSummaryFooterSummaryItemsSummary(
  ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
  var OutArguments: TcxSummaryEventOutArguments);
var
  SummaryItem: TcxGridDBTableSummaryItem;
  AValue: Variant;
begin
  inherited;
  SummaryItem := Arguments.SummaryItem as TcxGridDBTableSummaryItem;

  if SummaryItem.Column = edtBCItemValue then
  begin
    AValue := Arguments.SummaryItem.DataController.Values[Arguments.RecordIndex, 26];

    case SummaryItem.ID of
      0: // Summarize only billed values
        OutArguments.Done := AValue = 1;
      1: // Summarize only C/Fwd values
        OutArguments.Done := AValue = 0;
    end;
  end;

  if SummaryItem.Column = edtBCItemValue then
  begin
    AValue := Arguments.SummaryItem.DataController.Values[Arguments.RecordIndex, 26];

    case SummaryItem.ID of
      0: // Summarize only billed values
        OutArguments.Done := AValue = 1;
      1: // Summarize only C/Fwd values
        OutArguments.Done := AValue = 0;
    end;

  end;

  if SummaryItem.Column = edtBCItemValue then
  begin
    AValue := Arguments.SummaryItem.DataController.Values[Arguments.RecordIndex, 26];

    case SummaryItem.ID of
      0: // Summarize only billed values
        OutArguments.Done := AValue = 1;
      1: // Summarize only C/Fwd values
        OutArguments.Done := AValue = 0;
    end;
  end;

  if SummaryItem.Column = edtBCHours then
  begin
    AValue := Arguments.SummaryItem.DataController.Values[Arguments.RecordIndex, 26];

    case SummaryItem.ID of
      6: // Summarize only billed values
        OutArguments.Done := AValue = 1;
      7: // Summarize only C/Fwd values
        OutArguments.Done := AValue = 0;
    end;
  end;
end;

procedure TTimesheetDetailReportFrm.viewSystemUserCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord = nil then
    Exit;

  if AViewInfo.GridRecord.Focused then
  // This renders the background and font colours of the focused record
  begin
    if AViewInfo.Item <> nil then
      if AViewInfo.Item.Focused then
      begin
        // This renders the background and border colour of the focused cell
        ACanvas.Brush.Color := $B6EDFA;
        ACanvas.Font.Color := RootLookAndFeel.SkinPainter.DefaultSelectionColor;
        PostMessage(Handle, CM_DRAWBORDER, Integer(ACanvas), Integer(AViewInfo));
      end;
  end;
end;

procedure TTimesheetDetailReportFrm.DoExcel(Sender: TObject);
var
  {DestFolder, }FolderPath, ExportFileName: string;
  FileSaved: Boolean;
//  RepFileName: string;
//  ProgressDialog: TExcelExportProgressFrm;
begin
  inherited;
  FolderPath := EXCEL_DOCS;
//  FolderPath := MainFrm.FShellResource.RootFolder + '\' + FSHIFT_FOLDER + 'Export\';
  TDirectory.CreateDirectory(FolderPath);
  dlgFileSave.DefaultExt := 'xlsx';
  dlgFileSave.InitialDir := FolderPath;
  dlgFileSave.FileName := '*.xlsx';
  FileSaved := dlgFileSave.Execute;

  if not FileSaved then
    Exit;

//  if dlgFileSave.Execute then
  if TFile.Exists(dlgFileSave.FileName) then
  begin
    Beep;
    if DisplayMsg(Application.Title,
      'File Overwrite',
      'The file ' + dlgFileSave.FileName + ' already exists.' + CRLF +
      'Do you want to overwrite this file?',
      mtConfirmation,
      [mbYes, mbNo]
      ) = mrNo then
      Exit;
  end;

  edtTLoginName.GroupIndex := -1;
  edtTCustomerName.GroupIndex := -1;
  edtTActivtyType.GroupIndex := -1;
  edtTLoginName.Visible := False;
  edtTCustomerName.Visible := False;
  edtTActivtyType.Visible := False;

  GetTimesheetDetail;
//  RepFileName := TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[grpData.ItemIndex];
//
//  if not TFile.Exists(RepFileName) then
//    raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');
//
//  ReportDM.FReport.LoadFromFile(TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[grpData.ItemIndex]);

  case grpData.ItemIndex of
    0:
      begin
        edtTCustomerName.Visible := True;
        edtTLoginName.GroupIndex := 0;
      end;
    1:
      begin
        edtTLoginName.Visible := True;
        edtTActivtyType.Visible := True;
        edtTCustomerName.GroupIndex := 0;
      end;
    2:
      begin
        edtTLoginName.Visible := True;
        edtTCustomerName.Visible := True;
        edtTActivtyType.GroupIndex := 0;
      end;
  end;

  viewTimesheetBillable.OptionsView.BandHeaders := False;

  try
    ExportFileName := dlgFileSave.FileName;
    ExportGridToXLSX(
      ExportFileName, // Filename to export
      grdTimesheetBillable, // Grid whose data must be exported
      True, // Expand groups
      True, // Save all records (Selected and un-selected ones)
      True, // Use native format
      'xlsx');

    if cbxOepnDocument.Checked then
      ShellExecute(0, 'open', PChar('Excel.exe'), PChar('"' + ExportFileName + '"'), nil, SW_SHOWNORMAL)
  finally
    viewTimesheetBillable.OptionsView.BandHeaders := True;
  end;
end;

procedure TTimesheetDetailReportFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
  CloseDataSets;

  if cbxSaveSortOrder.Checked then
    if FMadChanges then
      ReportDM.cdsTSSortOrder.SaveToFile(TSDM.ShellResource.ResourceFolder + 'TS Report Sort Order.xml');

  Self.ModalResult := mrOK;
end;

procedure TTimesheetDetailReportFrm.DoPDF(Sender: TObject);
var
  FileSaved: Boolean;
  DC: TcxCustomDataController;
//  RepFileName: string;
begin
  inherited;
  ReportDM.frxPDFExport.ShowDialog := False;
  ReportDM.frxPDFExport.Background := True;
  ReportDM.frxPDFExport.OpenAfterExport := cbxOepnDocument.Checked;
  ReportDM.frxPDFExport.OverwritePrompt := True;
  ReportDM.frxPDFExport.ShowProgress := True;
//  TfrxGroupHeader(ReportDM.rptBillableSummaryByCustomer.FindObject('bndCustomerHeader')).Visible := False;
//  TfrxMemoView(ReportDM.rptBillableSummaryByCustomer.FindObject('lblCustomerHeader')).Visible := False;
  dlgFileSave.DefaultExt := 'pdf';
  dlgFileSave.InitialDir := PDF_DOCS;
  dlgFileSave.FileName := '*.pdf';

  FileSaved := dlgFileSave.Execute;

  if not FileSaved then
    Exit;

  if TFile.Exists(dlgFileSave.FileName) then
  begin
    Beep;
    if DisplayMsg(Application.Title,
      'File Overwrite',
      'The file ' + dlgFileSave.FileName + ' already exists. Do you want to overwrite this file?',
      mtConfirmation,
      [mbYes, mbNo]
      ) = mrNo then
      Exit;
  end;

  GetTimesheetDetail;
//  RepFileName := TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[grpData.ItemIndex];
//
//  if not TFile.Exists(RepFileName) then
//    raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');
//
//  ReportDM.FReport.LoadFromFile(TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[grpData.ItemIndex]);

  DC := viewTimesheetBillable.DataController;
  DC.BeginUpdate;
  try
    ReportDM.frxPDFExport.FileName := dlgFileSave.FileName;
    if ReportDM.FReport.PrepareReport(True) then
      ReportDM.FReport.Export(ReportDM.frxPDFExport);
  finally
    ReportDM.cdsTSBillable.First;
    DC.EndUpdate;
  end;
end;

function TTimesheetDetailReportFrm.OrderByClause: string;
var
  DC: TcxCustomDataController;
  I, IncludeCount: Integer;
begin
  DC := viewSortOrder.DataController;
  Result := ' ORDER BY ';

  DC.BeginUpdate;
  IncludeCount := 0;
  for I := 0 to DC.RecordCount - 1 do
    if DC.Values[I, cbxInclude.Index] then
      Inc(IncludeCount);

  try
    for I := 0 to DC.RecordCount - 1 do
    begin
      if DC.Values[I, cbxInclude.Index] then
      begin
        Result := Result + ' T.' + DC.Values[I, edtFieldName.Index];
        if IncludeCount > 1 then
          Result := Result + ',';
        Dec(IncludeCount);
      end;
    end;
  finally
    DC.EndUpdate;
  end;
end;

procedure TTimesheetDetailReportFrm.DoPrint(Sender: TObject);
var
  RepFileName: string;
//  AFocusedItem: TdxCustomLayoutItem;
begin
  inherited;
  try
    Screen.Cursor := crHourglass;

    case lucDateType.ItemIndex of
      0:
        if lucPeriod.ItemIndex < 0 then
        begin
          lucPeriod.SetFocus;
          raise ESelectionException.Create('Invalid Period Selection. Please select a valid Period.');
        end;

      1:
        if VarIsNull(dteFromDate.EditValue) or VarIsNull(dteToDate.EditValue) then
        begin
          if VarIsNull(dteFromDate.EditValue) then
          begin
            if dteFromDate.CanFocus then
              dteFromDate.SetFocus;
          end

          else if VarIsNull(dteToDate.EditValue) then
          begin
            if dteToDate.CanFocus then
              dteToDate.SetFocus;
          end;
          raise ESelectionException.Create('From and To dates must have a value. Please select valid From and To dates.');
        end;
    end;

    case grpData.ItemIndex of
      0: if viewSystemUser.Controller.SelectedRecordCount = 0 then
          raise ESelectionException.Create('No User selected. Please select at least one User.');

      1: if viewCustomerListing.Controller.SelectedRecordCount = 0 then
          raise ESelectionException.Create('No Customer selected. Please select at least one Customer.');

      2: if viewActivityType.Controller.SelectedRecordCount = 0 then
          raise ESelectionException.Create('No Activity Type selected. Please select at least one Activity Type.');
    end;

    case lucBillCfComparison.ItemIndex of
      0:
        begin
          GetTimesheetDetail;
          RepFileName := TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[grpData.ItemIndex];

          if not TFile.Exists(RepFileName) then
            raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

          ReportDM.FReport.LoadFromFile(RepFileName);
        end;

      1:
        begin
          GetBillCfwd;

          case TAction(Sender).Tag of
            0, 1: // Previewing or printing
              begin
                case lucReportType.ItemIndex of
                  0: RepFileName := TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[3];
                  1: RepFileName := TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[4];
                end;

                if not TFile.Exists(RepFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

                ReportDM.FReport.LoadFromFile(RepFileName);
              end;
          end;
        end;
    end;

    case TAction(Sender).Tag of
      0, 1: // Previewing or printing
        begin
          if ReportDM.FReport.PrepareReport then
            if TAction(Sender).Tag = 0 then
              ReportDM.FReport.ShowPreparedReport
            else
            begin
              if dlgPrint.Execute then
              begin
                ReportDM.FReport.PrintOptions.Copies :=
                  dlgPrint.DialogData.Copies;

                ReportDM.FReport.Print;
              end;
            end;
        end;

      2: // Display data in grid
        begin
          litBillCfwd.Visible := True;
          grpData.ItemIndex := 3;
          viewBillCfwd.ViewData.Expand(True);
//          AFocusedItem := layMain.FindItem(litBillCfComparison);
//          if AFocusedItem <> nil then
//            grpData.items ItemIndex := AFocusedItem.Index;
        end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

end.

