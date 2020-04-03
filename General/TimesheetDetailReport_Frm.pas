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
  cxCheckListBox, cxButtons, cxGridDBDataDefinitions, dxLayoutControlAdapters;

type
  TTimesheetDetailReportFrm = class(TBaseLayoutFrm)
    lucDateType: TcxComboBox;
    lucBillable: TcxComboBox;
    lucWorkType: TcxComboBox;
    lucToDate: TcxDateEdit;
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
    lucFromDate: TcxDateEdit;
    dlgPrint: TdxPrintDialog;
    dlgFileSave: TSaveDialog;
    grpOther1: TdxLayoutGroup;
    grpOther2: TdxLayoutGroup;
    cbxOpenDocument: TcxCheckBox;
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
    edtTCFwdValue: TcxGridDBBandedColumn;
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
    litReportType: TdxLayoutItem;
    litBillCfComparisonDescription: TdxLayoutLabeledItem;
    lucReportType: TcxComboBox;
    litBillCfwd: TdxLayoutItem;
    lucSelectReportBy: TcxComboBox;
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
    edtBCCFwdValue: TcxGridDBBandedColumn;
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
    tipToScreen: TdxScreenTip;
    styHintController: TcxHintStyleController;
    litSortOptions: TdxLayoutItem;
    grpSortOptions: TdxLayoutGroup;
    litSaveSortOptions: TdxLayoutItem;
    cbxSaveSortOrder: TcxCheckBox;
    litReportGrouping: TdxLayoutItem;
    cbxGroupedReport: TcxCheckBox;
    grdSortOrder: TcxGrid;
    lvlSortOrder: TcxGridLevel;
    viewSortOrder: TcxGridDBTableView;
    edtID: TcxGridDBColumn;
    edtSortBy: TcxGridDBColumn;
    edtFieldName: TcxGridDBColumn;
    edtOrdValue: TcxGridDBColumn;
    tipGroupedReport: TdxScreenTip;
    tipSaveSortOrder: TdxScreenTip;
    edtAbbreviation: TcxGridDBBandedColumn;
    litTimesheetDetail: TdxLayoutItem;
    grpTimesheetDetail: TdxLayoutGroup;
    litTSDetailLegend: TdxLayoutLabeledItem;
    grp3: TdxLayoutGroup;
    sep1: TdxLayoutSeparatorItem;
    litExpandTimesheet: TdxLayoutItem;
    litCollapseTimesheet: TdxLayoutItem;
    grpExpandCoolapseTimesheet: TdxLayoutGroup;
    btnExpandTimesheet: TcxButton;
    btnCooapseTimesheet: TcxButton;
    actExpandTimesheet: TAction;
    actCollapseTimesheet: TAction;
    btnUser: TcxButton;
    btnCustomer: TcxButton;
    btnActType: TcxButton;
    btnActDate: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure DoPrint(Sender: TObject);
    procedure DoExcel(Sender: TObject);
    procedure DoPDF(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lucDateTypePropertiesEditValueChanged(Sender: TObject);
    procedure lucSelectReportByPropertiesEditValueChanged(Sender: TObject);
    procedure lucReportTypePropertiesChange(Sender: TObject);
    procedure cbxSaveSortOptoionsPropertiesChange(Sender: TObject);
    procedure viewSortOrderDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure viewSortOrderStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure cbxIncludePropertiesEditValueChanged(Sender: TObject);
    procedure cbxGroupedReportPropertiesChange(Sender: TObject);
    procedure lucSelectReportByPropertiesChange(Sender: TObject);
    procedure lucPeriodPropertiesChange(Sender: TObject);
    procedure lucFromDatePropertiesChange(Sender: TObject);
    procedure viewSystemUserKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure viewSortOrderDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);

    procedure viewSystemUserCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

    procedure viewBillCfwdDataControllerSummaryFooterSummaryItemsSummary(
      ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
      var OutArguments: TcxSummaryEventOutArguments);

    procedure edtTLoginNameGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cbxOepnDocumentPropertiesChange(Sender: TObject);
    procedure cbxRemoveZeroBillableValuesPropertiesChange(Sender: TObject);
    procedure DoExpandTimesheet(Sender: TObject);
    procedure DoCollapseTimesheet(Sender: TObject);
    procedure btnUserClick(Sender: TObject);
    procedure btnCustomerClick(Sender: TObject);
    procedure btnActTypeClick(Sender: TObject);
    procedure btnActDateClick(Sender: TObject);

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
    FSortListID: TStringList;
    FGroupByField: string;
    FShowingForm: Boolean;

    procedure GetPeriods;
    procedure GetSystemUser;
    procedure GetCustomer;
    procedure GetActivityType;
    procedure CloseDataSets;
    procedure GetTimesheetDetail;
    procedure GetBillCfwd;
    procedure GetRateUnit;
    procedure HideTabs;
    procedure ShowTabs;
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
    procedure PopulateSortOptions;
    procedure ReorderRows(AView: TcxGridDBTableView; ADestRow: TcxCustomGridRecord);
    procedure SetOrderValue(DataSet: TDataSet; AValue: Variant);
    function OrderByClause: string;
    procedure SetReportGrouping;
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

procedure TTimesheetDetailReportFrm.lucFromDatePropertiesChange(Sender: TObject);
begin
  inherited;
  if not FShowingForm then
    HideTabs;
//  Showtabs;
  ReportDM.cdsTSBillable.Close;
  ReportDM.cdsBillCfwd.Close;
end;

procedure TTimesheetDetailReportFrm.edtTLoginNameGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if ARecord is TcxGridGroupRow then
    AText := TcxGridGroupRow(ARecord).Value;
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
  FSortListID := RUtils.CreateStringList(COMMA, SINGLE_QUOTE);
  FShowingForm := True;

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  RegKey.OpenKey(KEY_TIME_SHEET, True);

  if not RegKey.ValueExists('Save Report Sort Order') then
    RegKey.WriteBool('Save Report Sort Order', True);

  if not RegKey.ValueExists('Group Timsheet Detail Report') then
    RegKey.WriteBool('Group Timsheet Detail Report', True);

  if not RegKey.ValueExists('Open Document After Export') then
    RegKey.WriteBool('Open Document After Export', True);

  if not RegKey.ValueExists('Remove Zero Billable Values') then
    RegKey.WriteBool('Remove Zero Billable Values', True);

  if not RegKey.ValueExists('Timesheet Detail Report Type Index') then
    RegKey.WriteInteger('Timesheet Detail Report Type Index', 0);

  cbxSaveSortOrder.Checked := RegKey.ReadBool('Save Report Sort Order');
  cbxGroupedReport.Checked := RegKey.ReadBool('Group Timsheet Detail Report');
  cbxOpenDocument.Checked := RegKey.ReadBool('Open Document After Export');
  cbxRemoveZeroBillableValues.Checked := RegKey.ReadBool('Remove Zero Billable Values');
  lucSelectReportBy.ItemIndex := RegKey.ReadInteger('Timesheet Detail Report Type Index');

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
  lucSelectReportBy.ItemIndex := 0;
  lucReportType.ItemIndex := 0;
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

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Rate Unit Table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=' + DownloadCaption + '|PROGRESS=' + FloatToStr(progress))), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);
    GetRateUnit;

    ReportDM.RateUnitLegend := 'Col R: ';
    while not ReportDm.cdsRateUnit.EOF do
    begin
      ReportDM.RateUnitLegend := ReportDM.RateUnitLegend +
        ReportDM.cdsRateUnit.FieldByName('ABBREVIATION').AsString + ' = ' +
        ReportDM.cdsRateUnit.FieldByName('NAME').AsString;

      ReportDM.cdsRateUnit.Next;

      if not ReportDM.cdsRateUnit.EOF then
        ReportDM.RateUnitLegend := ReportDM.RateUnitLegend + ';  ';
    end;

    litTSDetailLegend.CaptionOptions.Text := ReportDM.RateUnitLegend;

//    lucSelectReportBy.SetFocus;
//    AComboBox := TcxBarEditItemControl(lucSelectReportBy.Links[0].Control).Edit as TcxComboBox;
//    AComboBox.ItemIndex := 0;

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
    SetReportGrouping;
    {$IFDEF DEBUG}
    viewSortOrder.OptionsCustomize.ColumnsQuickCustomization := True;
    {$ELSE}
    viewSortOrder.OptionsCustomize.ColumnsQuickCustomization := False;
    {$ENDIF}
//    grdSortOrder.Height := 120;
  finally
    FreeAndNil(RegKey);
    ProgressFrm.Close;
    FreeAndNil(ProgressFrm);
  end;
end;

procedure TTimesheetDetailReportFrm.FormDestroy(Sender: TObject);
begin
  inherited;
  if FSortListID <> nil then
    FSortListID.Free;

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
    if lucFromDate.CanFocus and Self.Showing then
      lucFromDate.SetFocus;
  end;

//  litTimesheetDetail.Visible := False;
//  litBillCfwd.Visible := False;
  HideTabs;
  ShowTabs;

  WindowState := wsMaximized;
  FShowingForm := False;
  Screen.Cursor := crDefault;
end;

procedure TTimesheetDetailReportFrm.btnActDateClick(Sender: TObject);
begin
  inherited;
  edtTActivityDate.GroupIndex := 0;
end;

procedure TTimesheetDetailReportFrm.btnActTypeClick(Sender: TObject);
begin
  inherited;
  edtTCustomerName.GroupIndex := 0;
end;

procedure TTimesheetDetailReportFrm.btnCustomerClick(Sender: TObject);
begin
  inherited;
  edtTCustomerName.GroupIndex := 0;
end;

procedure TTimesheetDetailReportFrm.btnUserClick(Sender: TObject);
begin
  inherited;
  edtTLoginName.GroupIndex := 0;
end;

procedure TTimesheetDetailReportFrm.cbxGroupedReportPropertiesChange(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  if not FShowingForm then
  begin
    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);
    try
      RegKey.WriteBool('Group Timsheet Detail Report', cbxGroupedReport.Checked);
      RegKey.CloseKey;
    finally
      Regkey.Free;
    end;
  end;
end;

procedure TTimesheetDetailReportFrm.cbxIncludePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  ReportDM.cdsTSSortOrder.Post;
end;

procedure TTimesheetDetailReportFrm.cbxOepnDocumentPropertiesChange(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  if not FShowingForm then
  begin
    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);
    try
      RegKey.WriteBool('Group Timsheet Detail Report', cbxOpenDocument.Checked);
      RegKey.CloseKey;
    finally
      Regkey.Free;
    end;
  end;
end;

procedure TTimesheetDetailReportFrm.cbxRemoveZeroBillableValuesPropertiesChange(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  if not FShowingForm then
  begin
    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);
    try
      RegKey.WriteBool('Remove Zero Billable Values', cbxRemoveZeroBillableValues.Checked);
      RegKey.CloseKey;
    finally
      Regkey.Free;
    end;
  end;
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
  ReportDM.cdsRateUnit.Close;
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
var
  WhereClause: string;
begin
  ReportDM.cdsSystemUser.Close;
  WhereClause := ' ORDER BY U.LOGIN_NAME';

  VBBaseDM.GetData(24, ReportDM.cdsSystemUser, ReportDM.cdsSystemUser.Name, WhereClause,
    'C:\Data\Xml\System User.xml', ReportDM.cdsSystemUser.UpdateOptions.Generatorname,
    ReportDM.cdsSystemUser.UpdateOptions.UpdateTableName);
end;

procedure TTimesheetDetailReportFrm.GetRateUnit;
begin
  ReportDM.cdsRateUnit.Close;

  VBBaseDM.GetData(38, ReportDM.cdsRateUnit, ReportDM.cdsRateUnit.Name, ONE_SPACE,
    'C:\Data\Xml\Rate Unit.xml', ReportDM.cdsRateUnit.UpdateOptions.Generatorname,
    ReportDM.cdsRateUnit.UpdateOptions.UpdateTableName);
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

//  lucSelectReportBy.SetFocus;
//  AComboBox := TcxBarEditItemControl(lucSelectReportBy.Links[0].Control).Edit as TcxComboBox;

  case lucSelectReportBy.ItemIndex of
    0: // User Name
      begin
        FileName := 'Timesheet Detail by User';
//        ReportDM.Report := ReportDM.rptTimesheetByUser;
        ReportDM.Report := ReportDM.rptTimesheetDetail;
        DC := viewSystemUser.DataController;
        C := viewSystemUser.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);

          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', lucFromDate.Date), '''') +
            ' AND T.ACTIVITY_DATE <= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', lucToDate.Date), '''');
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
        WhereClause := DateClause + UserClause + BillableClause + WorkTypeClause + FOrderByClause;
      end;

    1: // Customer
      begin
        FileName := 'Timesheet Detail by Customer';
//        ReportDM.Report := ReportDM.rptTimesheetByCustomer;
        ReportDM.Report := ReportDM.rptTimesheetDetail;
        DC := viewCustomerListing.DataController;
        C := viewCustomerListing.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + FormatDateTime('yyyy-MM-dd', lucFromDate.Date) +
            ' AND T.ACTIVITY_DATE <= ' + FormatDateTime('yyyy-MM-dd', lucToDate.Date);
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

        FOrderByClause := OrderByClause;
        WhereClause := DateClause + CustomerClause + BillableClause + WorkTypeClause + FOrderByClause;
      end;

    2: // Activity Type
      begin
        FileName := 'Timesheet Detail by Activity';
//        ReportDM.Report := ReportDM.rptTimesheetByActivity;
        ReportDM.Report := ReportDM.rptTimesheetDetail;
        DC := viewActivityType.DataController;
        C := viewActivityType.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + FormatDateTime('yyyy-MM-dd', lucFromDate.Date) +
            ' AND T.ACTIVITY_DATE <= ' + FormatDateTime('yyyy-MM-dd', lucToDate.Date);
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

        FOrderByClause := OrderByClause;
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

//  lucSelectReportBy.SetFocus;
//  AComboBox := TcxBarEditItemControl(lucSelectReportBy.Links[0].Control).Edit as TcxComboBox;

//  case lucSelectReportBy.EditValue of
  case lucSelectReportBy.ItemIndex of
    0:
      begin
        FileName := 'Timesheet Detail BillCfwd by User';
//        ReportDM.Report := ReportDM.rptTimesheetByUser;
        ReportDM.Report := ReportDM.rptTimesheetDetail;
        DC := viewSystemUser.DataController;
        C := viewSystemUser.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);

          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', lucFromDate.Date), '''') +
            ' AND T.ACTIVITY_DATE <= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', lucToDate.Date), '''');
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
        ReportDM.Report := ReportDM.rptTimesheetByCustomer;
        DC := viewCustomerListing.DataController;
        C := viewCustomerListing.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + FormatDateTime('yyyy-MM-dd', lucFromDate.Date) +
            ' AND T.ACTIVITY_DATE <= ' + FormatDateTime('yyyy-MM-dd', lucToDate.Date);
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
        ReportDM.Report := ReportDM.rptTimesheetByActivityTYpe;
        DC := viewActivityType.DataController;
        C := viewActivityType.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + FormatDateTime('yyyy-MM-dd', lucFromDate.Date) +
            ' AND T.ACTIVITY_DATE <= ' + FormatDateTime('yyyy-MM-dd', lucToDate.Date);
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
  for I := 0 to grpData.Count - 1 do
    grpData.Items[I].Visible := False;
end;

procedure TTimesheetDetailReportFrm.ShowTabs;
begin
  grpData.Items[0].Visible := lucSelectReportBy.ItemIndex = 0;
  grpData.Items[1].Visible := lucSelectReportBy.ItemIndex = 1;
  grpData.Items[2].Visible := lucSelectReportBy.ItemIndex = 2;
end;

procedure TTimesheetDetailReportFrm.lucReportTypePropertiesChange(Sender: TObject);
begin
  inherited;
//  HideTabs;
//  Showtabs;
  ReportDM.cdsTSBillable.Close;
  ReportDM.cdsBillCfwd.Close;
  lucBillable.Enabled := lucReportType.ItemIndex = 0;
  lucWorkType.Enabled := lucReportType.ItemIndex = 0;

  case lucReportType.ItemIndex of
    0:
      begin
        litBillCfComparisonDescription.CaptionOptions.Text := 'Timesheet details';
//        litTimesheetDetail.Visible := True;
      end;

    1:
      begin
        litBillCfComparisonDescription.CaptionOptions.Text := 'Timesheets grouped by billable/Cfwd with summary totals';
//        litBillCfwd.Visible := True;
      end;
  end;
end;

procedure TTimesheetDetailReportFrm.lucDateTypePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if not FShowingForm then
  begin
    HideTabs;
    Showtabs;
  end;

  ReportDM.cdsTSBillable.Close;
  ReportDM.cdsBillCfwd.Close;

  lucPeriod.Enabled := lucDateType.ItemIndex = 0;
  lucFromDate.Enabled := not lucPeriod.Enabled;
  lucToDate.Enabled := not lucPeriod.Enabled;

  if lucDateType.ItemIndex = 0 then
  begin
    if lucPeriod.CanFocus and Self.Showing then
      lucPeriod.SetFocus;
  end
  else
  begin
    if lucFromDate.CanFocus and Self.Showing then
      lucFromDate.SetFocus;
  end;
end;

procedure TTimesheetDetailReportFrm.lucPeriodPropertiesChange(Sender: TObject);
begin
  inherited;
  if not FShowingForm then
  begin
    HideTabs;
    Showtabs;
  end;

  ReportDM.cdsTSBillable.Close;
  ReportDM.cdsBillCfwd.Close;
end;

procedure TTimesheetDetailReportFrm.lucSelectReportByPropertiesChange(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  if not FShowingForm then
  begin
    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);

    try
      RegKey.WriteBool('Timesheet Detail Report Type Index', cbxRemoveZeroBillableValues.Checked);
      RegKey.CloseKey;
    finally
      Regkey.Free;
    end;
  end;

  if not FShowingForm then
  begin
    HideTabs;
    Showtabs;
  end;

  grpData.Items[lucSelectReportBy.ItemIndex].Visible := True;

  viewSystemUser.Controller.ClearSelection;
  viewCustomerListing.Controller.ClearSelection;
  viewActivityType.Controller.ClearSelection;

  case lucReportType.ItemIndex of
    0:
      begin
        ReportDM.cdsTSBillable.Close;
        viewTimesheetBillable.DataController.Groups.ClearGrouping;
        edtTActivtyType.Visible := True;
        edtTLoginName.Visible := True;
        edtTCustomerName.Visible := True;

//        case lucSelectReportBy.ItemIndex of
//          0:
//            begin
//              edtTLoginName.GroupBy(0, True, True, True);
//              edtTLoginName.Position.BandIndex := 0;
//            end;
//
//          1:
//            begin
//              edtTCustomerName.GroupBy(0, True, True, True);
//              edtTCustomerName.Position.BandIndex := 0;
//            end;
//
//          2:
//            begin
//              edtTActivtyType.GroupBy(0, True, True, True);
//              edtTActivtyType.Position.BandIndex := 0;
//            end;
//        end;
        grpData.ItemIndex := lucSelectReportBy.ItemIndex;
      end;
  end;
end;

procedure TTimesheetDetailReportFrm.lucSelectReportByPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  HideTabs;
//  grpData.Items[lucSelectReportBy.ItemIndex].Visible := True;
//  viewTimesheetBillable.DataController.Groups.ClearGrouping;
//  edtTActivtyType.Visible := True;
//  edtTLoginName.Visible := True;
//  edtTCustomerName.Visible := True;
//  viewSystemUser.Controller.ClearSelection;
//  viewCustomerListing.Controller.ClearSelection;
//  viewActivityType.Controller.ClearSelection;
//
//  case lucReportType.ItemIndex of
//    0:
//      begin
//        case lucSelectReportBy.ItemIndex of
//          0:
//            begin
//              edtTLoginName.GroupBy(0, True, True, True);
//              edtTLoginName.Position.BandIndex := 0;
//            end;
//
//          1:
//            begin
//              edtTCustomerName.GroupBy(0, True, True, True);
//              edtTCustomerName.Position.BandIndex := 0;
//            end;
//
//          2:
//            begin
//              edtTActivtyType.GroupBy(0, True, True, True);
//              edtTActivtyType.Position.BandIndex := 0;
//            end;
//        end;
//        grpData.ItemIndex := lucSelectReportBy.ItemIndex;
//      end;
//  end;
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
    FSortListID.Add(I.ToString);
    ReportDM.cdsTSSortOrder.CreateDataSet;
    ReportDM.cdsTSSortOrder.Append;
    ReportDM.cdsTSSortOrder.FieldByName('ID').AsInteger := ID;
//    ReportDM.cdsTSSortOrder.FieldByName('INCLUDE').AsBoolean := True;
    ReportDM.cdsTSSortOrder.FieldByName('SORT_BY').AsString := 'Login Name';
    ReportDM.cdsTSSortOrder.FieldByName('FIELD_NAME').AsString := 'LOGIN_NAME';
    ReportDM.cdsTSSortOrder.FieldByName('ORD_VALUE').AsInteger := ID;
    ReportDM.cdsTSSortOrder.Post;

    Inc(ID);
    FSortListID.Add(I.ToString);
    ReportDM.cdsTSSortOrder.Append;
    ReportDM.cdsTSSortOrder.FieldByName('ID').AsInteger := ID;
//    ReportDM.cdsTSSortOrder.FieldByName('INCLUDE').AsBoolean := True;
    ReportDM.cdsTSSortOrder.FieldByName('SORT_BY').AsString := 'Activity Date';
    ReportDM.cdsTSSortOrder.FieldByName('FIELD_NAME').AsString := 'ACTIVITY_DATE';
    ReportDM.cdsTSSortOrder.FieldByName('ORD_VALUE').AsInteger := ID;
    ReportDM.cdsTSSortOrder.Post;

    Inc(ID);
    FSortListID.Add(I.ToString);
    ReportDM.cdsTSSortOrder.Append;
    ReportDM.cdsTSSortOrder.FieldByName('ID').AsInteger := ID;
//    ReportDM.cdsTSSortOrder.FieldByName('INCLUDE').AsBoolean := False;
    ReportDM.cdsTSSortOrder.FieldByName('SORT_BY').AsString := 'Customer Name';
    ReportDM.cdsTSSortOrder.FieldByName('FIELD_NAME').AsString := 'CUSTOMER_NAME';
    ReportDM.cdsTSSortOrder.FieldByName('ORD_VALUE').AsInteger := ID;
    ReportDM.cdsTSSortOrder.Post;

    Inc(ID);
    FSortListID.Add(I.ToString);
    ReportDM.cdsTSSortOrder.Append;
    ReportDM.cdsTSSortOrder.FieldByName('ID').AsInteger := ID;
//    ReportDM.cdsTSSortOrder.FieldByName('INCLUDE').AsBoolean := False;
    ReportDM.cdsTSSortOrder.FieldByName('SORT_BY').AsString := 'Activity Type';
    ReportDM.cdsTSSortOrder.FieldByName('FIELD_NAME').AsString := 'ACTIVITY_TYPE';
    ReportDM.cdsTSSortOrder.FieldByName('ORD_VALUE').AsInteger := ID;
    ReportDM.cdsTSSortOrder.Post;
    ReportDM.cdsTSSortOrder.First;
    ReportDM.cdsTSSortOrder.SaveToFile(TSDM.ShellResource.ResourceFolder + 'TS Report Sort Order.xml');
  end;

  ReportDM.cdsTSSortOrder.First;
  cbxGroupedReport.Caption := 'Group report by: ' + ReportDM.cdsTSSortOrder.FieldByName('SORT_BY').AsString;
  FGroupByField := ReportDM.cdsTSSortOrder.FieldByName('FIELD_NAME').AsString;
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
  HT := TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y);
  FMadChanges := True;
  ReorderRows(TcxGridDBTableView(TcxGridSite(Sender).GridView), TcxGridRecordCellHitTest(HT).GridRecord);
  FGroupByField :=  ReportDM.cdsTSSortOrder. FieldByName('FIELD_NAME').AsString;
//  SetReportGrouping;
end;

procedure TTimesheetDetailReportFrm.ReorderRows(AView: TcxGridDBTableView;
  ADestRow: TcxCustomGridRecord);
var
  I: Integer;
  DC: TcxDBDataController;
  OrderValue: Variant;
  OrderColumnIndex: Integer;
  MoveUp: Boolean;
begin
  FSortListID.Clear;

  with AView do
  begin
    DC := TcxDBDataController(DataController);
    OrderColumnIndex := TcxGridColumn(DC.GetItemByFieldName('ORD_VALUE')).Index;
    OrderValue := ADestRow.Values[OrderColumnIndex];
    MoveUp := ADestRow.Index < DC.GetRowIndexByRecordIndex(DC.FindRecordIndexByKey(FID {AKeys}), False);
  end;

  ADestRow.Focused := True;

// -----------------
  if MoveUp then
    SetOrderValue(DC.DataSet, OrderValue + 1) // move dragged record 1 record lower
  else
    SetOrderValue(DC.DataSet, OrderValue - 1); // move dragged record 1 record above

// -----------------

//  SetOrderValue(DC.DataSet, OrderValue - Ord(not MoveUp) + 0.5); // move dragged record 1 record lower
  DC.LocateByKey(FID {AKeys}); // focus the dragged record in the DataSet
  SetOrderValue(DC.DataSet, OrderValue);

// Working code
  if MoveUp then
    DC.GotoLast
  else
    DC.GotoFirst;

  I := 0;

  while DC.Values[DC.FocusedRecordIndex, OrderColumnIndex] <> OrderValue do
  begin
    SetOrderValue(DC.DataSet, Ord(MoveUp) * DC.RowCount - Sign(Ord(MoveUp) - 0.1) * (I + Ord(not MoveUp)));
    Inc(I);
    if MoveUp then
      DC.GotoPrev
    else
      DC.GotoNext;
  end;

//  ReportDM.cdsTSSortOrder.First;
//  while not ReportDM.cdsTSSortOrder.EOF do
//  begin
//    ReportDM.cdsTSSortOrder.Edit;
//    ReportDM.cdsTSSortOrder.FieldByName('ID').AsInteger := ReportDM.cdsTSSortOrder.FieldByName('ORD_VALUE').AsInteger;
//    ReportDM.cdsTSSortOrder.Post;
//    ReportDM.cdsTSSortOrder.Next;
//  end;
//  ReportDM.cdsTSSortOrder.CommitUpdates;

  ReportDM.cdsTSSortOrder.First;
  cbxGroupedReport.Caption := 'Group report by: ' + ReportDM.cdsTSSortOrder.FieldByName('SORT_BY').AsString;

  ReportDM.cdsTSSortOrder.SaveToFile(TSDM.ShellResource.ResourceFolder + 'TS Report Sort Order ' +
    FormatDateTime('dd-MM-yyyy hh mm ss', Now) + '.xml');

//  if MoveUp then
//    ReportDM.cdsTSSortOrder.Last
//  else
//    ReportDM.cdsTSSortOrder.First;

// Not working!!
//  DC.GotoFirst;
//  I := 0;
//
//  while (DC.Values[DC.FocusedRecordIndex, OrderColumnIndex] <> OrderValue)
//    and (I < DC.RecordCount - 1) do
//  begin
//    SetOrderValue(DC.DataSet, I + 1);
//    Inc(I);
//    DC.GotoNext;
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
  TFDMemTable(DataSet).CommitUpdates;
end;

procedure TTimesheetDetailReportFrm.SetReportGrouping;
begin
  viewTimesheetBillable.DataController.Groups.ClearGrouping;
  edtTLoginName.GroupIndex := -1;
  edtTCustomerName.GroupIndex := -1;
  edtTActivtyType.GroupIndex := -1;
  edtTActivityDate.GroupIndex := -1;

  if SameText(FGroupByField, 'LOGIN_NAME') then
  begin
    edtTLoginName.GroupBy(0, True, True, True);
    edtTLoginName.Position.BandIndex := 0;
  end

  else if SameText(FGroupByField, 'CUSTOMER_NAME') then
  begin
    edtTCustomerName.GroupBy(0, True, True, True);
    edtTCustomerName.Position.BandIndex := 0;
  end

  else if SameText(FGroupByField, 'ACTIVITY_TYPE') then
  begin
    edtTActivtyType.GroupBy(0, True, True, True);
    edtTActivtyType.Position.BandIndex := 0;
  end

  else if SameText(FGroupByField, 'ACTIVITY_DATE') then
  begin
    edtTActivityDate.GroupBy(0, True, True, True);
    edtTActivityDate.Position.BandIndex := 0;
  end;
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

procedure TTimesheetDetailReportFrm.viewSystemUserKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  AView: TcxGridBandedTableView;
begin
  inherited;
  if key = VK_SPACE then
  begin
    AView := TcxGridBandedTableView(TcxGridSite(Sender).GridView);
    AView.Controller.FocusedRecord.Selected :=
      not AView.Controller.FocusedRecord.Selected;
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
  edtTActivityDate.GroupIndex := -1;
  edtTLoginName.Visible := False;
  edtTCustomerName.Visible := False;
  edtTActivtyType.Visible := False;

  GetTimesheetDetail;
//  RepFileName := TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[grpData.ItemIndex];
//
//  if not TFile.Exists(RepFileName) then
//    raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');
//
//  ReportDM.Report.LoadFromFile(TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[grpData.ItemIndex]);

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

    if cbxOpenDocument.Checked then
      ShellExecute(0, 'open', PChar('Excel.exe'), PChar('"' + ExportFileName + '"'), nil, SW_SHOWNORMAL)
  finally
    viewTimesheetBillable.OptionsView.BandHeaders := True;
  end;
end;

procedure TTimesheetDetailReportFrm.DoExpandTimesheet(Sender: TObject);
begin
  inherited;
  viewTimesheetBillable.ViewData.Expand(True);
end;

procedure TTimesheetDetailReportFrm.DoCollapseTimesheet(Sender: TObject);
begin
  inherited;
  viewTimesheetBillable.ViewData.Collapse(True);
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
  ReportDM.frxPDFExport.OpenAfterExport := cbxOpenDocument.Checked;
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
//  ReportDM.Report.LoadFromFile(TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[grpData.ItemIndex]);

  DC := viewTimesheetBillable.DataController;
  DC.BeginUpdate;
  try
    ReportDM.frxPDFExport.FileName := dlgFileSave.FileName;
    if ReportDM.Report.PrepareReport(True) then
      ReportDM.Report.Export(ReportDM.frxPDFExport);
  finally
    ReportDM.cdsTSBillable.First;
    DC.EndUpdate;
  end;
end;

function TTimesheetDetailReportFrm.OrderByClause: string;
var
//  DC: TcxCustomDataController;
  I: Integer;
begin
//  DC := viewSortOrder.DataController;
  Result := ' ORDER BY ';

//  DC.BeginUpdate;
  ReportDM.cdsTSSortOrder.DisableControls;
  ReportDM.cdsTSSortOrder.First;
//  FGroupByField := ReportDM.cdsTSSortOrder.FieldByName('FIELD_NAME').AsString;

  try
    while not ReportDM.cdsTSSortOrder.EOF do
    begin
      Result := Result + ' T.' + ReportDM.cdsTSSortOrder.FieldByName('FIELD_NAME').AsString;
      ReportDM.cdsTSSortOrder.Next;

      if not ReportDM.cdsTSSortOrder.EOF then
        Result := Result + ',';
    end;

//    for I := 0 to DC.RecordCount - 1 do
//      if DC.Values[I, cbxInclude.Index] then
//        Inc(IncludeCount);
//
//    for I := 0 to DC.RecordCount - 1 do
//    begin
//      if DC.Values[I, cbxInclude.Index] then
//      begin
//        Result := Result + ' T.' + DC.Values[I, edtFieldName.Index];
//        if IncludeCount > 1 then
//          Result := Result + ',';
//        Dec(IncludeCount);
//      end;
//    end;
  finally
    ReportDM.cdsTSSortOrder.First;
//    DC.EndUpdate;
    ReportDM.cdsTSSortOrder.EnableControls;
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
        if VarIsNull(lucFromDate.EditValue) or VarIsNull(lucToDate.EditValue) then
        begin
          if VarIsNull(lucFromDate.EditValue) then
          begin
            if lucFromDate.CanFocus then
              lucFromDate.SetFocus;
          end

          else if VarIsNull(lucToDate.EditValue) then
          begin
            if lucToDate.CanFocus then
              lucToDate.SetFocus;
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

    case lucReportType.ItemIndex of
      0:
        begin
          GetTimesheetDetail;
          SetReportGrouping;

          if SameText(FGroupByField, 'CUSTOMER_NAME') then
            RepFileName := 'TimesheetByCustomer.fr3'

          else if SameText(FGroupByField, 'LOGIN_NAME') then
            RepFileName := 'TimesheetByUser.fr3'

          else if SameText(FGroupByField, 'ACTIVITY_TYPE') then
            RepFileName := 'TimesheetByActivityType.fr3'

          else if SameText(FGroupByField, 'ACTIVITY_DATE') then
            RepFileName := 'TimesheetByActivityDate.fr3';

          RepFileName := TSDM.ShellResource.ReportFolder + RepFileName;

//          RepFileName := TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[grpData.ItemIndex];

          if not TFile.Exists(RepFileName) then
            raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

          ReportDM.Report.LoadFromFile(RepFileName);
          TfrxMemoView(ReportDM.Report.FindObject('bndGroupHeader')).Visible := cbxGroupedReport.Checked;
          TfrxMemoView(ReportDM.Report.FindObject('bndGroupFooter')).Visible := cbxGroupedReport.Checked;
          SetReportGrouping;
        end;

      1:
        begin
          GetBillCfwd;

          case TAction(Sender).Tag of
            0, 1: // Previewing or printing
              begin
                case lucSelectReportBy.ItemIndex of
                  0: RepFileName := TSDM.ShellResource.ReportFolder + 'TimesheetBillCfwdByUser.fr3'; // ReportDM.ReportFileName[3];
                  1: RepFileName := TSDM.ShellResource.ReportFolder + 'TimesheetBillCfwdByCustomer.fr3'; //ReportDM.ReportFileName[4];
                end;

                if not TFile.Exists(RepFileName) then
                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

                ReportDM.Report.LoadFromFile(RepFileName);
              end;
          end;
        end;
    end;

//    litTimesheetDetail.Visible := lucReportType.ItemIndex = 0;
//    litBillCfwd.Visible := not litTimesheetDetail.Visible;

    grpData.Items[3].Visible := lucReportType.ItemIndex = 0;
    grpData.Items[4].Visible := not grpData.Items[3].Visible;

    case TAction(Sender).Tag of
      0, 1: // Previewing or printing
        begin
          if ReportDM.Report.PrepareReport then
            if TAction(Sender).Tag = 0 then
              ReportDM.Report.ShowPreparedReport
            else
            begin
              if dlgPrint.Execute then
              begin
                ReportDM.Report.PrintOptions.Copies :=
                  dlgPrint.DialogData.Copies;

                ReportDM.Report.Print;
              end;
            end;
        end;

      2: // Display data in grid
        begin
          case lucReportType.ItemIndex of
            0:
              begin
                grpData.ItemIndex := 3;
//                viewTimesheetBillable.ViewData.Expand(True);
              end;

            1:
              begin
                grpData.ItemIndex := 4;
                viewBillCfwd.ViewData.Expand(True);
              end;
          end;
        end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

end.

