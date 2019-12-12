unit Report_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls, Data.DB,
  System.StrUtils, System.IOUtils, Winapi.ShellApi, System.Win.Registry,

  frxClass,

  BaseLayout_Frm, VBCommonValues, Base_DM, CommonFunction,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxContainer, cxEdit,
  cxClasses, cxStyles, dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, cxGridCustomTableView,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxGridCustomView,
  cxGridTableView, cxGridLevel, cxGrid, cxTL, cxTLdxBarBuiltInMenu, cxMaskEdit,
  cxInplaceContainer, cxTextEdit, cxDBData, cxGridBandedTableView, dxCustomHint,
  cxGridDBBandedTableView, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, dxBar,
  cxDBLookupComboBox, dxLayoutcxEditAdapters, cxCurrencyEdit, dxScreenTip, cxHint,
  dxLayoutControlAdapters, cxButtons, cxGridDBDataDefinitions, cxCheckBox,
  dxBarExtItems, cxGridExportLink, dxPrnDev, dxPrnDlg, cxGroupBox, cxRadioGroup,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxMemo, dxSkinMoneyTwins,
  cxDBNavigator, dxScrollbarAnnotations;

type
  TReportArray = array of string;
  TReportDescriptionArray = array of string;
  TExportGridArray = array of TcxGrid;

  TReportFrm = class(TBaseLayoutFrm)
    trlReportSelection: TcxTreeList;
    colReport: TcxTreeListColumn;
    styCategory: TcxStyle;
    grpMain: TdxLayoutGroup;
    litReportSelectionList: TdxLayoutItem;
    grpReports: TdxLayoutGroup;
    grpBillableSummary: TdxLayoutGroup;
    litBillableFromPeriod: TdxLayoutItem;
    litBillableGrid: TdxLayoutItem;
    grdBillableSummary: TcxGrid;
    viewBillable: TcxGridDBBandedTableView;
    lvlBillable: TcxGridLevel;
    grpPeriod: TdxLayoutGroup;
    litBillableToPeriod: TdxLayoutItem;
    lucBillableFromPeriod: TcxLookupComboBox;
    lucBillableToPeriod: TcxLookupComboBox;
    edtBCustomerID: TcxGridDBBandedColumn;
    edtBPeriod: TcxGridDBBandedColumn;
    edtBName: TcxGridDBBandedColumn;
    edtBhours: TcxGridDBBandedColumn;
    edtBValue: TcxGridDBBandedColumn;
    edtBNonHours: TcxGridDBBandedColumn;
    edtBNonValue: TcxGridDBBandedColumn;
    edtBCarryForward: TcxGridDBBandedColumn;
    repScreenTip: TdxScreenTipRepository;
    tipCloseReports: TdxScreenTip;
    styHintController: TcxHintStyleController;
    tipReportType: TdxScreenTip;
    actClose: TAction;
    actGetData: TAction;
    doctToolbar: TdxBarDockControl;
    litToolbar: TdxLayoutItem;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    btnClose: TdxBarLargeButton;
    btnGetData: TdxBarLargeButton;
    btnEcho: TdxBarLargeButton;
    colIndex: TcxTreeListColumn;
    grpData: TdxLayoutGroup;
    lucGroupBillableBy: TcxComboBox;
    litGroupBillableBy: TdxLayoutItem;
    btnExcel: TdxBarLargeButton;
    btnPDF: TdxBarLargeButton;
    actExcel: TAction;
    actPDF: TAction;
    tipExcel: TdxScreenTip;
    tipPDF: TdxScreenTip;
    cntOpenDoc: TdxBarControlContainerItem;
    cbxOepnDocument: TcxCheckBox;
    dlgFileSave: TSaveDialog;
    grpDetailByUser: TdxLayoutGroup;
    grpOptions: TdxLayoutGroup;
    grpReportSelection: TdxLayoutGroup;
    grpDetailByCustomer: TdxLayoutGroup;
    grpDetailByActivity: TdxLayoutGroup;
    grpSummaryByActivity: TdxLayoutGroup;
    grdSystemUser: TcxGrid;
    viewSystemUser: TcxGridDBBandedTableView;
    lvlSystemUser: TcxGridLevel;
    grdCustomerListing: TcxGrid;
    viewCustomerListing: TcxGridDBBandedTableView;
    lvlCustomerListing: TcxGridLevel;
    grdActivityType: TcxGrid;
    viewActivityType: TcxGridDBBandedTableView;
    lvlActivityType: TcxGridLevel;
    grdSummaryByActivity: TcxGrid;
    viewSummaryByActivity: TcxGridDBBandedTableView;
    lvlSummaryByActivity: TcxGridLevel;
    litDetailByUser: TdxLayoutItem;
    litDetailByCustomer: TdxLayoutItem;
    litDetailByActivity: TdxLayoutItem;
    litSummaryByActivity: TdxLayoutItem;
    btnPreview: TdxBarLargeButton;
    btnPrint: TdxBarLargeButton;
    actPreview: TAction;
    actPrint: TAction;
    tipPreview: TdxScreenTip;
    tipPrint: TdxScreenTip;
    dlgPrint: TdxPrintDialog;
    litZeroBillableValues: TdxLayoutItem;
    cbxRemoveZeroBillableValues: TcxCheckBox;
    edtUID: TcxGridDBBandedColumn;
    edtUFirstname: TcxGridDBBandedColumn;
    edtULastName: TcxGridDBBandedColumn;
    radDateType: TcxRadioGroup;
    litDateType: TdxLayoutItem;
    litBillable: TdxLayoutItem;
    litWorkType: TdxLayoutItem;
    radBillable: TcxRadioGroup;
    radWorkType: TcxRadioGroup;
    grpPeriodListing: TdxLayoutGroup;
    grdPeriodListing: TcxGrid;
    viewPeriodListing: TcxGridDBBandedTableView;
    lvlPeriodListing: TcxGridLevel;
    edtPeriod: TcxGridDBBandedColumn;
    litlitPeriodListing: TdxLayoutItem;
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
    edtAID: TcxGridDBBandedColumn;
    edtAName: TcxGridDBBandedColumn;
    grpSummaryByActivityOptions: TdxLayoutGroup;
    edtSAPeriod: TcxGridDBBandedColumn;
    edtSAATypeID: TcxGridDBBandedColumn;
    edtSAActivityType: TcxGridDBBandedColumn;
    edtSAAmandaMins: TcxGridDBBandedColumn;
    edtSAAmandaHours: TcxGridDBBandedColumn;
    edtSAAmandaValue: TcxGridDBBandedColumn;
    edtSAChanelMins: TcxGridDBBandedColumn;
    edtSAChanelHours: TcxGridDBBandedColumn;
    edtSAChanelVlaue: TcxGridDBBandedColumn;
    edtSAChristaMins: TcxGridDBBandedColumn;
    edtSAChristaHours: TcxGridDBBandedColumn;
    edtSAChristaValue: TcxGridDBBandedColumn;
    edtSAAlbertusMins: TcxGridDBBandedColumn;
    edtSAAlbertusHours: TcxGridDBBandedColumn;
    edtSAAlbetusValue: TcxGridDBBandedColumn;
    litSumByActivityPeriod: TdxLayoutItem;
    lucSumByActivityPeriod: TcxLookupComboBox;
    grpDateRange: TdxLayoutGroup;
    lucFromDate: TcxDateEdit;
    lucToDate: TcxDateEdit;
    litFromDate: TdxLayoutItem;
    litToDate: TdxLayoutItem;
    grdTimesheetBillable: TcxGrid;
    viewTimesheetBillable: TcxGridDBBandedTableView;
    lvlTimesheetBillable: TcxGridLevel;
    edtTID: TcxGridDBBandedColumn;
    edtTFirstName: TcxGridDBBandedColumn;
    edtTLastName: TcxGridDBBandedColumn;
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
    edtTThePeriod: TcxGridDBBandedColumn;
    edtTWeekEnding: TcxGridDBBandedColumn;
    edtTBillable: TcxGridDBBandedColumn;
    edtTBillableStr: TcxGridDBBandedColumn;
    edtTInvoiceNo: TcxGridDBBandedColumn;
    edtTCreditNoteNo: TcxGridDBBandedColumn;
    edtTLocked: TcxGridDBBandedColumn;
    edtTInvDate: TcxGridDBBandedColumn;
    edtTCFwd: TcxGridDBBandedColumn;
    edtTCFwdStr: TcxGridDBBandedColumn;
    edtTAddWork: TcxGridDBBandedColumn;
    edtTAddWorkStr: TcxGridDBBandedColumn;
    edtTTotalCFwd: TcxGridDBBandedColumn;
    edtTLockedStr: TcxGridDBBandedColumn;
    litGetBillableData: TdxLayoutItem;
    btnGetBillableData: TcxButton;
    tipGetBillableData: TdxScreenTip;
    cbxAlwaysMaximize: TcxCheckBox;
    cntAlwaysMaximized: TdxBarControlContainerItem;
    grdTimesheet: TcxGrid;
    viewTimesheet: TcxGridDBBandedTableView;
    lvlTimesheet: TcxGridLevel;
    grpTimesheet: TdxLayoutGroup;
    litTimesheet: TdxLayoutItem;
    edtTSID: TcxGridDBBandedColumn;
    lucSystemUser: TcxGridDBBandedColumn;
    edtTSCID: TcxGridDBBandedColumn;
    edtTSPID: TcxGridDBBandedColumn;
    lucPriceList: TcxGridDBBandedColumn;
    lucRateUnit: TcxGridDBBandedColumn;
    lucActivityType: TcxGridDBBandedColumn;
    edtTSInvID: TcxGridDBBandedColumn;
    edtTSActivity: TcxGridDBBandedColumn;
    edtTSTimeMins: TcxGridDBBandedColumn;
    edtTSRate: TcxGridDBBandedColumn;
    edtTSStdRate: TcxGridDBBandedColumn;
    edtTSItemValue: TcxGridDBBandedColumn;
    edtTSCreditnoteID: TcxGridDBBandedColumn;
    cbxTSLocked: TcxGridDBBandedColumn;
    lucTSActivityDate: TcxGridDBBandedColumn;
    edtTSModified: TcxGridDBBandedColumn;
    edtTSPeriod: TcxGridDBBandedColumn;
    cbxTSBillable: TcxGridDBBandedColumn;
    edtTSInvoiceDate: TcxGridDBBandedColumn;
    cbxTSCarryForward: TcxGridDBBandedColumn;
    cbxTSApproved: TcxGridDBBandedColumn;
    cbxTSAddWork: TcxGridDBBandedColumn;
    edtTSCGrpID: TcxGridDBBandedColumn;
    imgNav: TcxImageList;
    navTimesheet: TcxDBNavigator;
    litNavTimesheet: TdxLayoutItem;
    edtTSTimeHours: TcxGridDBBandedColumn;
    grpTimesheetDetail: TdxLayoutGroup;
    litCarryForwardTimesheet: TdxLayoutItem;
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
    grpCustomerGroup: TdxLayoutGroup;
    grdCustomerGroup: TcxGrid;
    viewCustomerGroup: TcxGridDBBandedTableView;
    lvlCustomerGroup: TcxGridLevel;
    grdCustomer: TcxGrid;
    viewCustomer: TcxGridDBBandedTableView;
    lvlCustomer: TcxGridLevel;
    procedure CmDrawBorder(var Msg: TMessage); message CM_DRAWBORDER;
    procedure PopulateReportSelectionList;
    procedure GetPeriods;
    procedure HideGroupTabs;
    procedure GetSystemUser;
    procedure GetBillableSummary;
    procedure DoGetData(Sender: TObject);
    procedure GetCustomer;
    procedure GetActivityType;
    procedure GetSummaryByActivity;
    procedure GetTimesheetDetail;
    procedure GetPriceList;
    procedure GetRateUnit;
    procedure GetBillableTimesheet;
    procedure GetCustomerGroup;
    procedure GetCustomerForGroup;
    procedure CloseDataSets;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DoCloseReportForm(Sender: TObject);

    procedure btnEchoClick(Sender: TObject);
    procedure lucGroupBillableByPropertiesCloseUp(Sender: TObject);
    procedure DoExcel(Sender: TObject);
    procedure DoPDF(Sender: TObject);
    procedure lucGroupBillableByPropertiesChange(Sender: TObject);
    procedure DoPrint(Sender: TObject);
    procedure lucGroupBillableByKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure cxTreeList1StylesGetContentStyle(Sender: TcxCustomTreeList;
      AColumn: TcxTreeListColumn; ANode: TcxTreeListNode; var AStyle: TcxStyle);

    procedure trlReportSelectionStylesGetContentStyle(Sender: TcxCustomTreeList;
      AColumn: TcxTreeListColumn; ANode: TcxTreeListNode; var AStyle: TcxStyle);

    procedure trlReportSelectionFocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);

    procedure trlReportSelectionMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure viewBillableCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);

    procedure viewBillableCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

    procedure viewBillableFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure lucSumByActivityPeriodPropertiesChange(Sender: TObject);
    procedure radDateTypePropertiesEditValueChanged(Sender: TObject);
    procedure radBillablePropertiesEditValueChanged(Sender: TObject);
    procedure radWorkTypePropertiesEditValueChanged(Sender: TObject);
    procedure viewPeriodListingFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure viewTimesheetBillableCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cbxAlwaysMaximizePropertiesEditValueChanged(Sender: TObject);
    procedure edtTSInvIDGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure lucTSActivityDatePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FReportArray: TReportArray;
    FReportDescriptionArray: TReportDescriptionArray;
    FNodeIndex: Integer;
    FGridArray: TExportGridArray;
    FGridIndex: Integer;

    property ReportArray: TReportArray read FReportArray write FReportArray;
    property ReportDescriptionArray: TReportDescriptionArray read FReportDescriptionArray write FReportDescriptionArray;
    property NodeIndex: Integer read FNodeIndex write FNodeIndex;
    property GridArray: TExportGridArray read FGridArray write FGridArray;
    property GridIndex: Integer read FGridIndex write FGridIndex;
  public
    { Public declarations }
  protected
    procedure HandleTSAfterPost(var MyMsg: TMessage); message WM_RECORD_ID;
  end;

var
  ReportFrm: TReportFrm;

const
  ARRAY_COUNT = 5;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  VB_DM,
  RUtils,
  Report_DM, Lookup_DM, Progress_Frm;

procedure TReportFrm.FormCreate(Sender: TObject);
var
  I: Integer;
  Progress: Extended;
  RegKey: TRegistry;
  DownloadCaption: string;
begin
  inherited;
  Height := 800;
  Width := 1450;
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  cntOpenDoc.Control := cbxOepnDocument;
  cntAlwaysMaximized.Control := cbxAlwaysMaximize;
  TcxDateEditProperties(lucTSActivityDate.Properties).MinDate := StrToDate('01/01/2019');
  TcxDateEditProperties(lucTSActivityDate.Properties).MaxDate := Date;

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  RegKey.OpenKey(KEY_VB_APPS, True);

  if not RegKey.ValueExists('Maximize Report Form') then
    RegKey.WriteBool('Maximize Report Form', True);

  cbxAlwaysMaximize.Checked := RegKey.ReadBool('Maximize Report Form');
  PopulateReportSelectionList;
  SetLength(FReportArray, ARRAY_COUNT);
  SetLength(FReportDescriptionArray, ARRAY_COUNT);
  SetLength(FGridArray, ARRAY_COUNT);
  FReportArray[0] := 'Detail by User';
  FReportArray[1] := 'Detail by Customer';
  FReportArray[2] := 'Detail by Activity';
  FReportArray[3] := 'Summary by Activity';
  FReportArray[4] := 'Billable Summary';

  FReportDescriptionArray[0] := 'Timesheet details grouped by user';
  FReportDescriptionArray[1] := 'Timesheet details grouped by customer';
  FReportDescriptionArray[2] := 'Timesheet details grouped by activity';
  FReportDescriptionArray[3] := 'Get billable summary grouped by activity';
  FReportDescriptionArray[4] := 'Get billable summary data for the selected period(s)';

  FGridArray[0] := grdTimesheetBillable;
  FGridArray[1] := grdTimesheetBillable;
  FGridArray[2] := grdTimesheetBillable;
  FGridArray[3] := grdSummaryByActivity;
  FGridArray[4] := grdBillableSummary;

//  for I := 0 to grpReports.Count - 1 do
//    grpReports.Items[I].Visible := False;

  grpTimesheet.ShowBorder := False;
  grpTimesheetDetail.ItemIndex := 0;
  litTimesheet.Control := grdTimesheet;
  litCarryForwardTimesheet.Control := grdCarryForwardDetail;
  lucBillableFromPeriod.Properties.ListSource := ReportDM.dtsPeriod;
  lucBillableToPeriod.Properties.ListSource := ReportDM.dtsToPeriod;
  lucSumByActivityPeriod.Properties.ListSource := ReportDM.dtsSumByActivityPeriod;

  viewBillable.DataController.DataSource := ReportDM.dtsBillableSummary;
  viewBillable.OptionsView.GroupByBox := False;
  lucGroupBillableBy.ItemIndex := 0;
  lucGroupBillableByPropertiesCloseUp(lucGroupBillableBy.Properties);
  viewSystemUser.DataController.DataSource := VBDM.dtsSystemUser;
  viewCustomerListing.DataController.DataSource := ReportDM.dtsTSCustomer;
  viewActivityType.DataController.DataSource := ReportDM.dtsActivityType;
  viewSummaryByActivity.DataController.DataSource := ReportDM.dtsTSSummaryByActivity;
  viewTimesheetBillable.DataController.DataSource := ReportDM.dtsTSBillable;
  viewTimesheet.DataController.DataSource := ReportDM.dtsTimesheet;
  viewCarryForwardDetail.DataController.DataSource := ReportDM.dtsCarryForwardDetail;
  navTimesheet.DataSource := ReportDM.dtsTimesheet;

  TcxLookupComboBoxProperties(lucSystemUser.Properties).ListSource := LookupDM.dtsSystemUser;
  TcxLookupComboBoxProperties(lucCFSystemuser.Properties).ListSource := LookupDM.dtsSystemUser;

  TcxLookupComboBoxProperties(lucPriceList.Properties).ListSource := LookupDM.dtsPriceListView;
  TcxLookupComboBoxProperties(lucCFPriceList.Properties).ListSource := LookupDM.dtsPriceListView;

  TcxLookupComboBoxProperties(lucRateUnit.Properties).ListSource := LookupDM.dtsRateuit;
  TcxLookupComboBoxProperties(lucCFRateUnit.Properties).ListSource := LookupDM.dtsRateuit;

  TcxLookupComboBoxProperties(lucActivityType.Properties).ListSource := LookupDM.dtsActivityType;
  TcxLookupComboBoxProperties(lucCFActivityType.Properties).ListSource := LookupDM.dtsActivityType;

  edtBPeriod.Caption := '    Period';
  edtBName.Caption := '    Customer';
  viewPeriodListing.DataController.DataSource := ReportDM.dtsPeriodListing;

  GetPeriods;
  if not ReportDM.cdsPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
    ReportDM.cdsPeriod.Last;

  lucBillableFromPeriod.Text := ReportDM.cdsPeriod.FieldByName('THE_PERIOD').Value;

  if not ReportDM.cdsToPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
    ReportDM.cdsToPeriod.Last;

  lucBillableToPeriod.Text := ReportDM.cdsToPeriod.FieldByName('THE_PERIOD').Value;

  lucSumByActivityPeriod.Properties.OnChange := nil;
  try
    if not ReportDM.cdsSumByActivityPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
      ReportDM.cdsSumByActivityPeriod.Last;

    lucSumByActivityPeriod.Text := ReportDM.cdsSumByActivityPeriod.FieldByName('THE_PERIOD').Value;
  finally
    lucSumByActivityPeriod.Properties.OnChange := lucSumByActivityPeriodPropertiesChange;
  end;

//  TfrxGroupHeader(ReportDM.rptBillableSummaryByCustomer.FindObject('bndCustomerHeader')).Visible := False;
//  TfrxMemoView(ReportDM.rptBillableSummaryByCustomer.FindObject('lblCustomerHeader')).Visible := False;

  if ProgressFrm = nil then
    ProgressFrm := TProgressFrm.Create(nil);
  ProgressFrm.lblAppTitle.Caption := 'Getting Data...';
  ProgressFrm.Update;
  ProgressFrm.Show;
  ProgressFrm.Update;
  I := 1;

  try
    DownloadCaption := 'Opening_System_User_Table';
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    GetSystemUser;

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening_Customer_Table';
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    GetCustomer;

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening_Activity_Type_Table';
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    GetActivityType;

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening_Customer_Table';
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    GetPriceList;

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening_Rate_Unit_Table';
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    GetRateUnit;
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=100' + '|CAPTION=All_tables_opened')), 0);

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening_Customer_Group_Table';
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    GetRateUnit;
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=100' + '|CAPTION=All_tables_opened')), 0);

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening_Customer_Table';
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    GetRateUnit;
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=100' + '|CAPTION=All_tables_opened')), 0);
  finally
    ProgressFrm.Close;
    FreeAndNil(ProgressFrm);
  end;
end;

procedure TReportFrm.FormShow(Sender: TObject);
var
  ANode: TcxTreeListNode;
begin
  inherited;
  try
    ANode := trlReportSelection.FindNodeByText('Detail by User', colReport);
    ANode.Selected := True;
    ANode.Focused := True;
    if cbxAlwaysMaximize.Checked then
      WindowState := wsMaximized;
  finally
    Screen.Cursor := crDefault;
  end;

//  ANode := trlReportSelection.FindNodeByText('Billable Summary', colReport);
//  ANode.Selected := True;
//  ANode.Focused := True;
end;

procedure TReportFrm.DoCloseReportForm(Sender: TObject);
begin
  inherited;
  CloseDataSets;
  ReportFrm.Close;
end;

procedure TReportFrm.DoExcel(Sender: TObject);
var
  DestFolder, FolderPath, ExportFileName: string;
  FileSaved: Boolean;
//  ProgressDialog: TExcelExportProgressFrm;
begin
  inherited;
  //FolderPath := RUtils.GetMyDocumentsFolder(VBBaseDM.FShellResource.RootFolder) + EXCEL_DOCS;
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

  case FNodeIndex of
    0, 1, 2:
      begin
        edtTLoginName.GroupIndex := -1;
        edtTCustomerName.GroupIndex := -1;
        edtTActivtyType.GroupIndex := -1;
        edtTLoginName.Visible := False;
        edtTCustomerName.Visible := False;
        edtTActivtyType.Visible := False;

        actGetData.Execute;

        case FNodeIndex of
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
      end;

    3:
      begin
        actGetData.Execute;

        viewSummaryByActivity.ViewData.Expand(True);
        viewSummaryByActivity.DataController.BeginUpdate;
        FGridArray[FGridIndex].Visible := False;
        FGridArray[FGridIndex].Align := alNone;
        FGridArray[FGridIndex].Font.Name := 'Calibri';
        FGridArray[FGridIndex].Font.Size := 11;
      end;

    4:
      begin
        actGetData.Execute;
        viewBillable.ViewData.Expand(True);
        viewBillable.DataController.BeginUpdate;
        edtBPeriod.Caption := 'Period';
        edtBName.Caption := 'Customer';
//        edtBPeriod.Width := 50;
        FGridArray[FGridIndex].Visible := False;
        FGridArray[FGridIndex].Align := alNone;
        FGridArray[FGridIndex].Font.Name := 'Calibri';
        FGridArray[FGridIndex].Font.Size := 11;
      end;
  end;

  case FNodeIndex of
    0, 1, 2:
      viewTimesheetBillable.OptionsView.BandHeaders := False;
  end;

  try

    ExportFileName := dlgFileSave.FileName;
    ExportGridToXLSX(
      ExportFileName, // Filename to export
      FGridArray[FGridIndex], // Grid whose data must be exported
      True, // Expand groups
      True, // Save all records (Selected and un-selected ones)
      True, // Use native format
      'xlsx');

    if cbxOepnDocument.Checked then
      ShellExecute(0, 'open', PChar('Excel.exe'), PChar('"' + ExportFileName + '"'), nil, SW_SHOWNORMAL)
  finally
    case FNodeIndex of
      0, 1, 2: viewTimesheetBillable.OptionsView.BandHeaders := True;

      4:
        begin
          FGridArray[FGridIndex].Font.Name := 'Verdana';
          FGridArray[FGridIndex].Font.Size := 8;
          FGridArray[FGridIndex].Align := alClient;
          FGridArray[FGridIndex].Visible := True;
          ReportDM.cdsBillableSummary.First;
          viewBillable.ViewData.Collapse(True);
//    edtBPeriod.Width := 400;
          viewBillable.DataController.EndUpdate;
          edtBPeriod.Caption := '    Period';
          edtBName.Caption := '    Customer';
        end;

      3:
        begin
          FGridArray[FGridIndex].Font.Name := 'Verdana';
          FGridArray[FGridIndex].Font.Size := 8;
          FGridArray[FGridIndex].Align := alClient;
          FGridArray[FGridIndex].Visible := True;
          ReportDM.cdsTSSummaryByActivity.First;
          viewSummaryByActivity.ViewData.Collapse(True);
          viewSummaryByActivity.DataController.EndUpdate;
        end;
    end;

  end;
end;

procedure TReportFrm.DoPDF(Sender: TObject);
var
  FileSaved: Boolean;
  DC: TcxCustomDataController;
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
      'The file ' + ExtractFileName(dlgFileSave.FileName) + ' already exists. Do you want to overwrite this file?',
      mtConfirmation,
      [mbYes, mbNo]
      ) = mrNo then
      Exit;
  end;

  case FNodeIndex of
    0, 1, 2:
      begin
        actGetData.Execute;

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

    3:
      begin
        actGetData.Execute;

        DC := viewBillable.DataController;
        DC.BeginUpdate;
        try
          ReportDM.frxPDFExport.FileName := dlgFileSave.FileName;
          if ReportDM.FReport.PrepareReport(True) then
            ReportDM.FReport.Export(ReportDM.frxPDFExport);
        finally
          ReportDM.cdsTSSummaryByActivity.First;
          DC.EndUpdate;
        end;
      end;

    4:
      begin
        actGetData.Execute;

        DC := viewBillable.DataController;
        DC.BeginUpdate;
        try
          ReportDM.frxPDFExport.FileName := dlgFileSave.FileName;
          if ReportDM.FReport.PrepareReport(True) then
            ReportDM.FReport.Export(ReportDM.frxPDFExport);
        finally
          ReportDM.cdsBillableSummary.First;
          viewBillable.ViewData.Collapse(True);
          DC.EndUpdate;
        end;
      end;
  end;
end;

procedure TReportFrm.DoPrint(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourglass;

    case grpReports.ItemIndex of
      0, 1, 2:
        begin

          case radDateType.ItemIndex of
            0:
              if viewPeriodListing.Controller.SelectedRecordCount = 0 then
              begin
                DisplayMsg(Application.Title,
                  'Invalid Period Selection',
                  'No Period selected. Please select at least one Period.',
                  mtError,
                  [mbOK]
                  );
                Exit;
              end;

            1:
              if VarIsNull(lucFromDate.EditValue) or VarIsNull(lucToDate.EditValue) then
              begin
                DisplayMsg(Application.Title,
                  'Invalid Date Selection',
                  'From and To dates must have a value. Please select valid From and To dates.',
                  mtError,
                  [mbOK]
                  );
                Exit;
              end;

          end;

          case grpReports.ItemIndex of
            0:
              if viewSystemUser.Controller.SelectedRecordCount = 0 then
              begin
                DisplayMsg(Application.Title,
                  'Invalid Selection',
                  'No User selected. Please select at least one User.',
                  mtError,
                  [mbOK]
                  );
                Exit;

//                case radDateType.ItemIndex of
//                  0:
//                    if viewPeriodListing.Controller.SelectedRecordCount = 0 then
//                    begin
//                      DisplayMsg(Application.Title,
//                        'Invalid Period Selection',
//                        'No Period selected. Please select at least one Period.',
//                        mtError,
//                        [mbOK]
//                        );
//                      Exit;
//                    end;
//
//                  1:
//                    if VarIsNull(lucFromDate.EditValue) or VarIsNull(lucToDate.EditValue) then
//                    begin
//                      DisplayMsg(Application.Title,
//                        'Invalid Date Selection',
//                        'From and To dates must have a value. Please select valid From and To dates.',
//                        mtError,
//                        [mbOK]
//                        );
//                      Exit;
//                    end;
//
//                end;

                if VarIsNull(lucFromDate.EditValue) or VarIsNull(lucToDate.EditValue) then
                begin
                  DisplayMsg(Application.Title,
                    'Invalid Date Selection',
                    'From and To dates must have a value. Please select valid From and To dates.',
                    mtError,
                    [mbOK]
                    );
                  Exit;
                end;

              end;

            1:
              if viewCustomerListing.Controller.SelectedRecordCount = 0 then
              begin
                DisplayMsg(Application.Title,
                  'Invalid Selection',
                  'No Customer selected. Please select at least one Customer.',
                  mtError,
                  [mbOK]
                  );
                Exit;
              end;

            2:
              if viewActivityType.Controller.SelectedRecordCount = 0 then
              begin
                DisplayMsg(Application.Title,
                  'Invalid Selection',
                  'No Activity Type selected. Please select at least one Activity Type.',
                  mtError,
                  [mbOK]
                  );
                Exit;
              end;
          end;

          actGetData.Execute;

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

      3:
        begin
          actGetData.Execute;

          try
            viewSummaryByActivity.DataController.BeginUpdate;
            if ReportDM.FReport.PrepareReport then
              if TAction(Sender).Tag = 0 then
                ReportDM.FReport.ShowPreparedReport
              else
              begin
                if dlgPrint.Execute then
                begin
                  ReportDM.FReport.PrintOptions.Copies :=
                    dlgPrint.DialogData.Copies;

//              ReportDM.FReport.PrintOptions.Printer.
//                dxPrintDevice.PrinterIndex;

                  ReportDM.FReport.Print;
                end;
              end;
          finally
            ReportDM.cdsTSSummaryByActivity.First;
            viewSummaryByActivity.ViewData.Collapse(True);
            viewSummaryByActivity.DataController.EndUpdate;
          end;
        end;

      4: // Billable summary
        begin
          actGetData.Execute;

          try
            viewBillable.DataController.BeginUpdate;
            if ReportDM.FReport.PrepareReport then
              if TAction(Sender).Tag = 0 then
                ReportDM.FReport.ShowPreparedReport
              else
              begin
                if dlgPrint.Execute then
                begin
                  ReportDM.FReport.PrintOptions.Copies :=
                    dlgPrint.DialogData.Copies;

//              ReportDM.FReport.PrintOptions.Printer.
//                dxPrintDevice.PrinterIndex;

                  ReportDM.FReport.Print;
                end;
              end;
          finally
            ReportDM.cdsBillableSummary.First;
            viewBillable.ViewData.Collapse(True);
            viewBillable.DataController.EndUpdate;
          end;
        end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TReportFrm.edtTSInvIDGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if AnsiLeftStr(AText, 1) = '0' then
    AText := '';
end;

procedure TReportFrm.btnEchoClick(Sender: TObject);
var
  Request, Response: string;
begin
  inherited;
  Response := 'Halleluja';
  Request := 'Salut Christian!';
  Request := VBBaseDM.EchoTheString(Request, Response);
  ShowMessage('Request = ' + Request + ';  Response = ' + Response);
end;

procedure TReportFrm.cbxAlwaysMaximizePropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  RegKey.OpenKey(KEY_VB_APPS, True);
  try
    RegKey.WriteBool('Maximize Report Form', cbxAlwaysMaximize.Checked);
  finally
    RegKey.Free;
  end;
end;

procedure TReportFrm.CmDrawBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TReportFrm.cxTreeList1StylesGetContentStyle(Sender: TcxCustomTreeList;
  AColumn: TcxTreeListColumn; ANode: TcxTreeListNode; var AStyle: TcxStyle);
begin
  inherited;
  if ANode.Level = 0 then
    AStyle := styCategory;
end;

procedure TReportFrm.PopulateReportSelectionList;
var
  TLNode, TLChildNode: TcxTreeListNode;
  I: Integer;
begin
  trlReportSelection.Clear;
  trlReportSelection.BeginUpdate;
  HideGroupTabs;
  I := 0;

  // We only need the billable summary report for now.
  try
    // Detail reports
    TLNode := trlReportSelection.Add;
    TLNode.Texts[0] := 'Detail Reports';

    TLChildNode := TLNode.AddChild;
    TLChildNode.Texts[0] := 'Detail by User';
    TLChildNode.Texts[1] := I.ToString;

    Inc(I);
    TLChildNode := TLNode.AddChild;
    TLChildNode.Texts[0] := 'Detail by Customer';
    TLChildNode.Texts[1] := I.ToString;

    Inc(I);
    TLChildNode := TLNode.AddChild;
    TLChildNode.Texts[0] := 'Detail by Activity';
    TLChildNode.Texts[1] := I.ToString;

    // Summary reports
    TLNode := trlReportSelection.Add;
    TLNode.Texts[0] := 'Summary Reports';

    Inc(I);
    TLChildNode := TLNode.AddChild;
    TLChildNode.Texts[0] := 'Summary by Activity';
    TLChildNode.Texts[1] := I.ToString;

    Inc(I);
    TLChildNode := TLNode.AddChild;
    TLChildNode.Texts[0] := 'Billable Summary';
    TLChildNode.Texts[1] := I.ToString;

    // Customer groups
    TLNode := trlReportSelection.Add;
    TLNode.Texts[0] := 'Customer Groups';

    Inc(I);
    TLChildNode := TLNode.AddChild;
    TLChildNode.Texts[0] := 'Customer Group';
    TLChildNode.Texts[1] := I.ToString;
  finally
    trlReportSelection.EndUpdate;
  end;
  trlReportSelection.FullExpand;

//  try
//    TLNode := trlReportSelection.Add;
//    TLNode.Texts[0] := 'Detail Reports';
//    TLChildNode := TLNode.AddChild;
//
//    TLChildNode.Texts[0] := 'Detail by Customer';
//    TLChildNode := TLNode.AddChild;
//    TLChildNode.Texts[0] := 'Detail by User';
//    TLChildNode := TLNode.AddChild;
//    TLChildNode.Texts[0] := 'Detail by Activity';
//
//    TLNode := trlReportSelection.Add;
//    TLNode.Texts[0] := 'Summary Reports';
//
//    TLChildNode := TLNode.AddChild;
//    TLChildNode.Texts[0] := 'Summary by Activity';
//    TLChildNode := TLNode.AddChild;
//    TLChildNode.Texts[0] := 'Bullable Summary';
//  finally
//    trlReportSelection.EndUpdate;
//  end;
//  trlReportSelection.FullExpand;

end;

procedure TReportFrm.radBillablePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  ReportDM.cdsTSBillable.Close;
end;

procedure TReportFrm.radDateTypePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  grpPeriodListing.Visible := radDateType.ItemIndex = 0;
  grpDateRange.Visible := not grpPeriodListing.Visible;
  ReportDM.cdsTSBillable.Close;
end;

procedure TReportFrm.radWorkTypePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  ReportDM.cdsTSBillable.Close;
end;

procedure TReportFrm.HideGroupTabs;
var
  I: Integer;
begin
  for I := 0 to grpReports.Count - 1 do
    grpReports.Items[I].Visible := False;
end;

procedure TReportFrm.lucGroupBillableByKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if not TcxComboBox(Sender).DroppedDown then
    Exit;
end;

procedure TReportFrm.lucGroupBillableByPropertiesChange(Sender: TObject);
begin
  inherited;
  viewBillable.OnCustomDrawCell := nil;
  edtBPeriod.GroupIndex := -1;
  edtBName.GroupIndex := -1;

  case lucGroupBillableBy.ItemIndex of
    0:
      begin
        edtBPeriod.GroupIndex := 0;
        ReportDM.cdsBillableSummary.IndexName := 'idxBillablePeriod';
        ReportDM.FReport := ReportDM.rptBillableSummaryByPeriod;
      end;
    1:
      begin
        edtBName.GroupIndex := 0;
        ReportDM.cdsBillableSummary.IndexName := 'idxBillableCustomer';
        ReportDM.FReport := ReportDM.rptBillableSummaryByCustomer;
      end;
  end;
  try
    edtBPeriod.Visible := edtBPeriod.GroupIndex = -1;
    edtBName.Visible := not edtBPeriod.Visible;
  finally
    viewBillable.OnCustomDrawCell := viewBillableCustomDrawCell;
  end;
end;

procedure TReportFrm.lucGroupBillableByPropertiesCloseUp(Sender: TObject);
begin
  inherited;
//  viewBillable.OnCustomDrawCell := nil;
//  edtBPeriod.GroupIndex := -1;
//  edtBName.GroupIndex := -1;
//
//  case lucGroupBillableBy.ItemIndex of
//    0: edtBPeriod.GroupIndex := 0;
//    1: edtBName.GroupIndex := 0;
//  end;
//  try
//    edtBPeriod.Visible := edtBPeriod.GroupIndex = -1;
//    edtBName.Visible := not edtBPeriod.Visible;
//  finally
//    viewBillable.OnCustomDrawCell := viewBillableCustomDrawCell;
//  end;
end;

procedure TReportFrm.lucSumByActivityPeriodPropertiesChange(Sender: TObject);
begin
  inherited;
  actGetData.Execute;
end;

procedure TReportFrm.lucTSActivityDatePropertiesEditValueChanged(Sender: TObject);
var
  Day, Month, Year: Word;
  PeriodMonth: Integer;
  DC: TcxGridDBDataController;
begin
  inherited;
  DC := viewTimesheet.DataController;

  DecodeDate(lucTSActivityDate.EditValue, Year, Month, Day);
  DecodeDate(ReportDM.cdsTimesheet.FieldByName('ACTIVITY_DATE').AsDateTime, Year, Month, Day);
//  PeriodMonth := ReportDM.cdsTimesheet.FieldByName('THE_PERIOD').AsInteger mod 1000;
//  if PeriodMonth <> Month then
//  begin
//    if not (ReportDM.cdsTimesheet.State in [dsEdit, dsInsert]) then
//      ReportDM.cdsTimesheet.Edit;
//    if Day < 10 then
//      ReportDM.cdsTimesheet.FieldByName('THE_PERIOD').AsInteger := Year * 100000 + Day
//    else
//      ReportDM.cdsTimesheet.FieldByName('THE_PERIOD').AsInteger := Year * 10000 + Day;
//    ReportDM.cdsTimesheet.AfterPost := nil;
//    try
//      ReportDM.cdsTimesheet.Post;
//    finally
//      ReportDM.cdsTimesheet.AfterPost := ReportDM.cdsTimesheetAfterPost;
//    end;
//  end;
end;

procedure TReportFrm.trlReportSelectionFocusedNodeChanged(
  Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
begin
  inherited;
  if AFocusedNode.Level = 0 then
    Exit;

  HideGroupTabs;

  FNodeIndex := StrToInt(AFocusedNode.Texts[1]);
  FGridIndex := FNodeIndex;
  grpReports.Items[FNodeIndex].Visible := True;
  grpReports.AlignHorz := ahParentManaged;

  tipReportType.Header.Text := FReportArray[FNodeIndex];
  tipReportType.Description.Text := FReportDescriptionArray[FNodeIndex];

  grpOptions.Visible := FNodeIndex < 3;
  grpPeriodListing.Visible := (grpOptions.Visible) and (FNodeIndex < 3) and (radDateType.ItemIndex = 0);
  grpDateRange.Visible := not (grpPeriodListing.Visible) and (FNodeIndex < 3) and (radDateType.ItemIndex = 1);

  case FNodeIndex of
    0, 1, 2:
      begin
        ReportDM.cdsTSBillable.Close;
      end;

    3:
      begin
        if ReportDM.cdsTSSummaryByActivity.IsEmpty then
          actGetData.Execute;
      end;

    4:
      begin
        grpReports.AlignHorz := ahClient;
        if ReportDM.cdsBillableSummary.IsEmpty then
          actGetData.Execute;
      end;

    5:
      begin
        grpReports.AlignHorz := ahClient;
        if ReportDM.cdsBillableSummary.IsEmpty then
          actGetData.Execute;
      end;
  end;

  //  ShowMessage(AFocusedNode.Texts[1]);
//grpReports.
end;

procedure TReportFrm.trlReportSelectionMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // This works to get the index of the selected node.
//  trlReportSelection.HitTest.HitPoint := Point(X, Y);
//  if trlReportSelection.HitTest.HitAtNode then
//    FNodeIndex := trlReportSelection.HitTest.HitNode.AbsoluteIndex;
////    Caption := IntToStr(trlReportSelection.HitTest.HitNode.AbsoluteIndex);
end;

procedure TReportFrm.trlReportSelectionStylesGetContentStyle(
  Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn; ANode: TcxTreeListNode; var AStyle: TcxStyle);
begin
  inherited;
  if ANode.Level = 0 then
    AStyle := styCategory;
end;

procedure TReportFrm.viewBillableCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

procedure TReportFrm.viewBillableCustomDrawGroupCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
var
  Pos: Integer;
  AText: string;
begin
  inherited;
  AText := AViewInfo.Text;

//  aText := System.StrUtils.ReplaceStr(aText, ' :', ':');
  AText := System.StrUtils.ReplaceStr(AText, ',', '');
  AViewInfo.Text := AText;

  // This works
//  ACanvas.Font.Style :=  [fsBold];

  Pos := AnsiPos(' :', AViewInfo.Text);
  if Pos > 0 then
  begin
    System.Delete(AText, 1, Pos + 2);
    AViewInfo.Text := AText;
  end;
end;

procedure TReportFrm.viewBillableFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
//var
//  DC: TcxGridDBDataController;
//  WhereClause, OrderByClause, GroupByClause, FileName: string;
begin
  inherited;
  if AFocusedRecord = nil then
    Exit;

  if not AFocusedRecord.IsData then
  begin
    ReportDM.cdsTimesheet.Close;
    Exit;
  end;

  GetBillableTimesheet;

//  DC := viewBillable.DataController;
//  if AFocusedRecord.IsData then
//  begin
//    ShowMessage('Period: ' + VarAsType(AFocusedRecord.Values[edtBPeriod.Index], varString));
//    ShowMessage('Customer ID: ' + VarAsType(AFocusedRecord.Values[edtBCustomerID.Index], varString));
//  end;
end;

procedure TReportFrm.viewPeriodListingFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  ReportDM.cdsTSBillable.Close;
end;

procedure TReportFrm.viewTimesheetBillableCustomDrawGroupCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
//  ACanvas.Font.Style := [fsBold];
//  ACanvas.Font.Size := 14;
end;

procedure TReportFrm.DoGetData(Sender: TObject);
begin
  inherited;
  case grpReports.ItemIndex of
    0, 1, 2: GetTimesheetDetail;
    3: GetSummaryByActivity;
    4: GetBillableSummary;
  end;
end;

procedure TReportFrm.GetActivityType;
begin
  ReportDM.cdsActivityType.Close;
  LookupDM.cdsActivityType.Close;

  VBBaseDM.GetData(39, ReportDM.cdsActivityType, ReportDM.cdsActivityType.Name, '',
    'C:\Data\Xml\Activity Type.xml', ReportDM.cdsActivityType.UpdateOptions.Generatorname,
    ReportDM.cdsActivityType.UpdateOptions.UpdateTableName);

  LookupDM.cdsActivityType.Data := ReportDM.cdsActivityType.Data;
end;

procedure TReportFrm.GetBillableSummary;
var
  SL: TStringList;
  FromPeriod, ToPeriod, I, Period: Integer;
  OrderByClause, FileName: string;

const
  SQL_PERIOD = 'SELECT THE_PERIOD FROM SourcePeriod WHERE THE_PERIOD >= %d AND THE_PERIOD <= %d';
  SQL_DELETE_SUMMARY_DATA = 'DELETE FROM BILLABLE_SUMMARY WHERE USER_ID = %d';
begin
  inherited;
  case lucGroupBillableBy.ItemIndex of
    0: ReportDM.FReport := ReportDM.rptBillableSummaryByPeriod;
    1: ReportDM.FReport := ReportDM.rptBillableSummaryByCustomer;
  end;

  if (Length(Trim(lucBillableFromPeriod.Text)) = 0)
    or (Length(Trim(lucBillableToPeriod.Text)) = 0) then
  begin
    Beep;
    DisplayMsg(Application.Title,
      'Invalid Selection',
      'Invalid periods selected. Please correct and try again.',
      mtError,
      [mbOK]
      );
    Exit;
  end;

  if lucBillableFromPeriod.EditValue > lucBillableToPeriod.EditValue then
  begin
    Beep;
    DisplayMsg(Application.Title,
      'Invalid Periods',
      'From period cannot be greater than To period.',
      mtError,
      [mbOK]
      );
    Exit;
  end;

  ReportDM.locSQL.Active := True;
  SL := RUtils.CreateStringList(PIPE, SINGLE_QUOTE);
  try
    if not ReportDM.conSQLLite.Connected then
      ReportDM.conSQLLite.Connected := True;

    ReportDM.qryPeriod.Close;
    FromPeriod := ReportDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger;
    ToPeriod := ReportDM.cdsToPeriod.FieldByName('THE_PERIOD').AsInteger;
    ReportDM.qryPeriod.Open(Format(SQL_PERIOD, [FromPeriod, ToPeriod]));
    ReportDM.qryPeriod.First;

    VBBaseDM.ExecuteSQLCommand('REQUEST=' + Format(SQL_DELETE_SUMMARY_DATA, [VBBaseDM.FUserData.UserID]));

    while not ReportDM.qryPeriod.EOF do
    begin
      Period := ReportDM.qryPeriod.FieldByName('THE_PERIOD').AsInteger;
      VBBaseDM.ExecuteStoredProcedure('SP_GEN_BILLABLE_SUMMARY_TABLE', VBBaseDM.FUserData.UserID.ToString + ',' + Period.ToString);
      ReportDM.qryPeriod.Next;
    end;

          // Suppress customers that have no transaactions for billable summary
          // report
    if cbxRemoveZeroBillableValues.Checked then
      VBBaseDM.ExecuteStoredProcedure('SP_DELETE_ZERO_BILLABLE_VALUES', VBBaseDM.FUserData.UserID.ToString);

    case lucGroupBillableBy.ItemIndex of
      0:
        begin
          FileName := 'Billable Summary by Period';
          OrderByClause := 'ORDER BY B.THE_PERIOD, B."NAME"';
        end;
      1:
        begin
          FileName := 'Billable Summary by Customer';
          OrderByClause := 'ORDER BY B."NAME", B.THE_PERIOD';
        end;
    end;

    VBBaseDM.GetData(61, ReportDM.cdsBillableSummary, ReportDM.cdsBillableSummary.Name,
      'B.USER_ID = ' + VBBaseDM.FUserData.UserID.ToString + ';' + OrderByClause,
      'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsBillableSummary.UpdateOptions.Generatorname,
      ReportDM.cdsBillableSummary.UpdateOptions.UpdateTableName);

    viewBillable.ViewData.Collapse(True);
    if SameText(lucBillableFromPeriod.Text, lucBillableToPeriod.Text) then
      viewBillable.ViewData.Expand(True);
  finally
    SL.Free;
  end;
end;

procedure TReportFrm.GetBillableTimesheet;
var
//  DC: TcxGridDBDataController;
  WhereClause, OrderByClause, GroupByClause, FileName: string;
begin
  Screen.Cursor := crHourglass;
  try
    GroupByClause := ONE_SPACE;

    WhereClause :=
      ' WHERE T.THE_PERIOD <= ' + VarAsType(lucBillableToPeriod.EditValue, varString) +
      ' AND T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ' +
      ' AND T.CARRY_FORWARD = 1 ';

    OrderByClause := 'ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE';

    VBBaseDM.GetData(27, ReportDM.cdsTimesheet, ReportDM.cdsTimesheet.Name, WhereClause + ';' + OrderByClause + ';' + GroupByClause,
      'C:\Data\Xml\Carry Forward Summary.xml', ReportDM.cdsTimesheet.UpdateOptions.Generatorname,
      ReportDM.cdsTimesheet.UpdateOptions.UpdateTableName);

    ReportDM.cdsCarryForwardDetail.Close;

    if ReportDM.cdsTimesheet.Active then
      ReportDM.cdsCarryForwardDetail.Data := ReportDM.cdsTimesheet.Data;

    WhereClause :=
      'WHERE T.THE_PERIOD >= ' + VarAsType(lucBillableFromPeriod.EditValue, varString) +
      ' AND  T.THE_PERIOD <= ' + VarAsType(lucBillableToPeriod.EditValue, varString) +
      ' AND T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ';

    VBBaseDM.GetData(27, ReportDM.cdsTimesheet, ReportDM.cdsTimesheet.Name, WhereClause + ';' + OrderByClause + ';' + GroupByClause,
      'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsTimesheet.UpdateOptions.Generatorname,
      ReportDM.cdsTimesheet.UpdateOptions.UpdateTableName);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TReportFrm.GetCustomer;
begin
  ReportDM.cdsTSCustomer.Close;

  VBBaseDM.GetData(41, ReportDM.cdsTSCustomer, ReportDM.cdsTSCustomer.Name, '',
    'C:\Data\Xml\Customer Listing.xml', ReportDM.cdsTSCustomer.UpdateOptions.Generatorname,
    ReportDM.cdsTSCustomer.UpdateOptions.UpdateTableName);
end;

procedure TReportFrm.GetCustomerForGroup;
begin
  ReportDM.cdsCustomer.Close;

  VBBaseDM.GetData(3, ReportDM.cdsCustomer, ReportDM.cdsCustomer.Name, '',
    'C:\Data\Xml\Customer Group.xml', ReportDM.cdsCustomer.UpdateOptions.Generatorname,
    ReportDM.cdsCustomer.UpdateOptions.UpdateTableName);
end;

procedure TReportFrm.GetCustomerGroup;
begin
  ReportDM.cdsCustomerGroup.Close;

  VBBaseDM.GetData(56, ReportDM.cdsCustomerGroup, ReportDM.cdsCustomerGroup.Name, '',
    'C:\Data\Xml\Customer Group.xml', ReportDM.cdsCustomerGroup.UpdateOptions.Generatorname,
    ReportDM.cdsCustomerGroup.UpdateOptions.UpdateTableName);
end;

procedure TReportFrm.GetPeriods;
begin
  ReportDM.cdsPeriod.Close;
  ReportDM.cdsToPeriod.Close;
  ReportDM.cdsPeriodListing.Close;
  ReportDM.cdsSumByActivityPeriod.Close;

  VBBaseDM.GetData(62, ReportDM.cdsPeriod, ReportDM.cdsPeriod.Name, '',
    'C:\Data\Xml\Period.xml', ReportDM.cdsPeriod.UpdateOptions.Generatorname,
    ReportDM.cdsPeriod.UpdateOptions.UpdateTableName);

  ReportDM.cdsToPeriod.Data := ReportDM.cdsPeriod.Data;
  ReportDM.cdsPeriodListing.Data := ReportDM.cdsPeriod.Data;
  ReportDM.cdsSumByActivityPeriod.Data := ReportDM.cdsPeriod.Data;

  ReportDM.cdsPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []);
  ReportDM.cdsToPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []);
  ReportDM.cdsPeriodListing.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []);
  ReportDM.cdsSumByActivityPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []);
end;

procedure TReportFrm.GetPriceList;
begin
  LookupDM.cdsPriceListView.Close;

  VBBaseDM.GetData(42, LookupDM.cdsPriceListView, LookupDM.cdsPriceListView.Name, '',
    'C:\Data\Xml\Price list.xml', LookupDM.cdsPriceListView.UpdateOptions.Generatorname,
    LookupDM.cdsPriceListView.UpdateOptions.UpdateTableName);
end;

procedure TReportFrm.GetRateUnit;
begin
  LookupDM.cdsRateUnit.Close;

  VBBaseDM.GetData(38, LookupDM.cdsRateUnit, LookupDM.cdsRateUnit.Name, '',
    'C:\Data\Xml\Rate unit.xml', LookupDM.cdsRateUnit.UpdateOptions.Generatorname,
    LookupDM.cdsRateUnit.UpdateOptions.UpdateTableName);
end;

procedure TReportFrm.GetSummaryByActivity;
begin
  ReportDM.FReport := ReportDM.rptTSSummaryByActivity;

  VBBaseDM.GetData(46, ReportDM.cdsTSSummaryByActivity, ReportDM.cdsTSSummaryByActivity.Name, 'T.THE_PERIOD = ' +
    IntToStr(ReportDM.cdsSumByActivityPeriod.FieldByName('THE_PERIOD').AsInteger),
    'C:\Data\Xml\Summary By Activity.xml', ReportDM.cdsTSSummaryByActivity.UpdateOptions.Generatorname,
    ReportDM.cdsTSSummaryByActivity.UpdateOptions.UpdateTableName);

//  VBBaseDM.GetData(47, ReportDM.cdsTSSummaryByUser, ReportDM.cdsTSSummaryByUser.Name, 'T.THE_PERIOD = ' +
//    IntToStr(ReportDM.cdsSumByActivityPeriod.FieldByName('THE_PERIOD').AsInteger),
//    'C:\Data\Xml\Summary By User.xml', ReportDM.cdsTSSummaryByUser.UpdateOptions.Generatorname,
//    ReportDM.cdsTSSummaryByUser.UpdateOptions.UpdateTableName);
end;

procedure TReportFrm.GetSystemUser;
begin
  LookupDM.cdsSystemUser.Close;

  VBBaseDM.GetData(24, VBDM.cdsSystemUser, VBDM.cdsSystemUser.Name, '',
    'C:\Data\Xml\System User.xml', VBDM.cdsSystemUser.UpdateOptions.Generatorname,
    VBDM.cdsSystemUser.UpdateOptions.UpdateTableName);

  LookupDM.cdsSystemUser.Data := VBDM.cdsSystemUser.Data;

//  VBBaseDM.GetData(24, LookupDM.cdsSystemUser, LookupDM.cdsSystemUser.Name, '',
//    'C:\Data\Xml\System User.xml', LookupDM.cdsSystemUser.UpdateOptions.Generatorname,
//    LookupDM.cdsSystemUser.UpdateOptions.UpdateTableName);
end;

procedure TReportFrm.GetTimesheetDetail;
var
  DC: TcxCustomDataController;
  C: TcxGridBandedTableController;
  I: Integer;
  WhereClause, OrderByClause, UserClause, DateClause, CustomerClause: string;
  ActivityClause, BillableClause, WorkTypeClause, FileName: string;
begin
  WhereClause := '';
  OrderByClause := '';
  UserClause := '';
  DateClause := '';
  CustomerClause := '';
  ActivityClause := '';
  BillableClause := '';
  WorkTypeClause := '';

  case radBillable.ItemIndex of
    0: BillableClause := ' AND T.BILLABLE = 1';
    1: BillableClause := ' AND T.BILLABLE = 0';
  end;

  case radWorkType.ItemIndex of
    0: WorkTypeClause := ' AND T.IS_ADDITIONAL_WORK = 0';
    1: WorkTypeClause := ' AND T.IS_ADDITIONAL_WORK = 1';
  end;

  case FNodeIndex of
    0:
      begin
//        if viewSystemUser.Controller.SelectedRecordCount = 0 then
//        begin
//          DisplayMsg(Application.Title,
//            'Invalid Selection',
//            'No User selected. Please select at least one User.',
//            mtError,
//            [mbOK]
//            );
//          Exit;
//        end;

        FileName := 'Timesheet Detail by User';
        ReportDM.FReport := ReportDM.rptTimesheetByUser;
        DC := viewSystemUser.DataController;
        C := viewSystemUser.Controller;

        case radDateType.ItemIndex of
          0:
            begin
//              if viewPeriodListing.Controller.SelectedRecordCount = 0 then
//              begin
//                DisplayMsg(Application.Title,
//                  'Invalid Period Selection',
//                  'No Period selected. Please select at least one Period.',
//                  mtError,
//                  [mbOK]
//                  );
//                Exit;
//              end;

              DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
            end;

          1:
            begin
//              if VarIsNull(lucFromDate.EditValue) or VarIsNull(lucToDate.EditValue) then
//              begin
//                DisplayMsg(Application.Title,
//                  'Invalid Date Selection',
//                  'From and To dates must have a value. Please select valid From and To dates.',
//                  mtError,
//                  [mbOK]
//                  );
//                Exit;
//              end;

              DateClause := 'WHERE T.ACTIVITY_DATE >= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', lucFromDate.Date), '''') +
                ' AND T.ACTIVITY_DATE <= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', lucToDate.Date), '''');
            end;
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          UserClause := ' AND USER_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            UserClause := UserClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtUID.Index]);
            if I < C.SelectedRecordCount - 1 then
              UserClause := UserClause + ',';
          end;
          UserClause := UserClause + ')';
        end;

        OrderByClause := 'ORDER BY T.LOGIN_NAME, T.THE_PERIOD, T.ACTIVITY_DATE';
        WhereClause := DateClause + UserClause + BillableClause + WorkTypeClause + CustomerClause + ' ';
      end;

    1:
      begin
        if viewCustomerListing.Controller.SelectedRecordCount = 0 then
//        begin
//          DisplayMsg(Application.Title,
//            'Invalid Selection',
//            'No customer selected. Please select at least one customer.',
//            mtError,
//            [mbOK]
//            );
//          Exit;
//        end;

          FileName := 'Timesheet Detail by Customer';
        ReportDM.FReport := ReportDM.rptTimesheetByCustomer;
        DC := viewCustomerListing.DataController;
        C := viewCustomerListing.Controller;

        case radDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + FormatDateTime('yyyy-MM-dd', lucFromDate.Date) +
            ' AND T.ACTIVITY_DATE <= ' + FormatDateTime('yyyy-MM-dd', lucToDate.Date);
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          CustomerClause := ' AND CUSTOMER_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            CustomerClause := CustomerClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtCID.Index]);
            if I < C.SelectedRecordCount - 1 then
              CustomerClause := CustomerClause + ',';
          end;
          CustomerClause := CustomerClause + ')';
        end;

        OrderByClause := 'ORDER BY T.CUSTOMER_NAME, T.THE_PERIOD, T.LOGIN_NAME, T.ACTIVITY_DATE';
        WhereClause := DateClause + UserClause + BillableClause + WorkTypeClause + CustomerClause + ' ';
      end;

    2:
      begin
//        if viewActivityType.Controller.SelectedRecordCount = 0 then
//        begin
//          DisplayMsg(Application.Title,
//            'Invalid Selection',
//            'No activity type selected. Please select at least one activity type.',
//            mtError,
//            [mbOK]
//            );
//          Exit;
//        end;

        FileName := 'Timesheet Detail by Activity';
        ReportDM.FReport := ReportDM.rptTimesheetByActivity;
        DC := viewActivityType.DataController;
        C := viewActivityType.Controller;

        case radDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + FormatDateTime('yyyy-MM-dd', lucFromDate.Date) +
            ' AND T.ACTIVITY_DATE <= ' + FormatDateTime('yyyy-MM-dd', lucToDate.Date);
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          ActivityClause := ' AND ACTIVITY_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            ActivityClause := ActivityClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtAID.Index]);
            if I < C.SelectedRecordCount - 1 then
              ActivityClause := ActivityClause + ',';
          end;
          ActivityClause := ActivityClause + ')';
        end;

        OrderByClause := 'ORDER BY T.ACTIVITY_TYPE, T.THE_PERIOD, T.LOGIN_NAME, T.ACTIVITY_DATE';
        WhereClause := DateClause + UserClause + BillableClause + WorkTypeClause + CustomerClause + ' ';
      end;
  end;
  VBBaseDM.GetData(63, ReportDM.cdsTSBillable, ReportDM.cdsTSBillable.Name, WhereClause + ';' + OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsTSBillable.UpdateOptions.Generatorname,
    ReportDM.cdsTSBillable.UpdateOptions.UpdateTableName);

//  ReportDM.cdsTSBillable.Data := ReportDM.cdsTimesheet.Data;
end;

procedure TReportFrm.HandleTSAfterPost(var MyMsg: TMessage);
var
//  S: PChar;
  SL: TStringList;
begin
  SL := TStringList.Create;
  SL.Delimiter := PIPE;
  SL.QuoteChar := '"';
  SL.DelimitedText := PChar(MyMsg.WParam);
//  S := PChar(MyMsg.LParam);

  try
    if SL.Values['REQUEST'] = 'REFRESH_DATA' then
    begin
      viewBillable.DataController.BeginUpdate;
      try
        GetBillableTimesheet;
        if not ReportDM.cdsTimesheet.Locate('ID', StrToInt(SL.Values['ID']), []) then
          ReportDM.cdsTimesheet.First;
      finally
        viewBillable.DataController.EndUpdate;
      end;
    end;
  finally
    MyMsg.Result := -1;
  end;
end;

procedure TReportFrm.CloseDataSets;
begin
  ReportDM.cdsSumByActivityPeriod.Close;
  ReportDM.cdsActivityType.Close;
  LookupDM.cdsActivityType.Close;
  ReportDM.cdsBillableSummary.Close;
  ReportDM.cdsTSCustomer.Close;
  ReportDM.cdsPeriod.Close;
  ReportDM.cdsToPeriod.Close;
  ReportDM.cdsPeriodListing.Close;
  LookupDM.cdsPriceListView.Close;
  LookupDM.cdsRateUnit.Close;
  ReportDM.cdsTSSummaryByActivity.Close;
  LookupDM.cdsSystemUser.Close;
  ReportDM.cdsTSBillable.Close;
end;

end.

