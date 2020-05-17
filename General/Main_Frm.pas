unit Main_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.Win.Registry, Data.DB,
  System.DateUtils, System.IOUtils, Winapi.ShellApi, System.Types, Vcl.StdCtrls,
  Vcl.Menus, Vcl.ComCtrls,

  Base_Frm, BaseLayout_Frm, VBProxyClass, VBCommonValues, CommonFunctions,
  CommonValues, CommonMethods,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxScreenTip, dxCustomHint, cxHint,
  dxSkinsForm, cxNavigator, cxDBNavigator, dxBar, dxStatusBar, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxDBLookupComboBox,
  cxTextEdit, cxCheckBox, cxCalendar, cxContainer, dxCore, cxDateUtils, dxPrnDlg,
  cxDropDownEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, dxBarExtItems,
  cxBarEditItem, cxMemo, dxScrollbarAnnotations, dxRibbonSkins, cxGridExportLink,
  dxRibbonCustomizationForm, dxRibbon, dxPrnDev, cxDataUtils, dxRibbonStatusBar,
  dxLayoutcxEditAdapters, cxImage, cxLabel, cxButtons;

type
  TMainFrm = class(TBaseLayoutFrm)
    sknController: TdxSkinController;
    repScreenTip: TdxScreenTipRepository;
    tipExit: TdxScreenTip;
    tipInsert: TdxScreenTip;
    tipEdit: TdxScreenTip;
    styHintController: TcxHintStyleController;
    barManager: TdxBarManager;
    barTimesheet: TdxBar;
    btnExit: TdxBarLargeButton;
    btnInsert: TdxBarLargeButton;
    imgNav32: TcxImageList;
    actExit: TAction;
    btnDelete: TdxBarLargeButton;
    btnEdit: TdxBarLargeButton;
    btnRefresh: TdxBarLargeButton;
    actInsert: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actRefresh: TAction;
    litTimesheet: TdxLayoutItem;
    grdTimesheet: TcxGrid;
    viewTimesheet: TcxGridDBBandedTableView;
    lvlTimesheet: TcxGridLevel;
    edtID: TcxGridDBBandedColumn;
    edtUserID: TcxGridDBBandedColumn;
    lucCustomer: TcxGridDBBandedColumn;
    lucPriceItem: TcxGridDBBandedColumn;
    lucRateUnit: TcxGridDBBandedColumn;
    lucActivityType: TcxGridDBBandedColumn;
    edtInvoiceID: TcxGridDBBandedColumn;
    edtCreditNoteID: TcxGridDBBandedColumn;
    lucCustomerGroup: TcxGridDBBandedColumn;
    memActivity: TcxGridDBBandedColumn;
    edtTimeSpent: TcxGridDBBandedColumn;
    edtTimeHours: TcxGridDBBandedColumn;
    edtRate: TcxGridDBBandedColumn;
    edtStdRate: TcxGridDBBandedColumn;
    edtItemValue: TcxGridDBBandedColumn;
    cbxLocked: TcxGridDBBandedColumn;
    edtActivityDate: TcxGridDBBandedColumn;
    dteModified: TcxGridDBBandedColumn;
    edtPeriod: TcxGridDBBandedColumn;
    cbxBillable: TcxGridDBBandedColumn;
    edtDayname: TcxGridDBBandedColumn;
    edtDayOrder: TcxGridDBBandedColumn;
    edtInvoiceDate: TcxGridDBBandedColumn;
    cbxCarryForward: TcxGridDBBandedColumn;
    cbxApproved: TcxGridDBBandedColumn;
    cbxAddWork: TcxGridDBBandedColumn;
    actGetTimesheetData: TAction;
    lucPeriod: TcxBarEditItem;
    lucUser: TcxBarEditItem;
    lucViewMode: TdxBarCombo;
    lucFromDate: TcxBarEditItem;
    lucToDate: TcxBarEditItem;
    actPreview: TAction;
    actPrint: TAction;
    actPDF: TAction;
    actExcel: TAction;
    actTimsheetDetail: TAction;
    actOptions: TAction;
    popTimesheet: TPopupMenu;
    Insert1: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    tipDelete: TdxScreenTip;
    tipRefresh: TdxScreenTip;
    tipPreview: TdxScreenTip;
    tipPrint: TdxScreenTip;
    tipPDF: TdxScreenTip;
    tipExcel: TdxScreenTip;
    tipReports: TdxScreenTip;
    tipTimesheetPreferences: TdxScreenTip;
    actLayoutManager: TAction;
    actCopyCell: TAction;
    Copy1: TMenuItem;
    actRefreshLookupTables: TAction;
    btnRefreshLookupTables: TdxBarLargeButton;
    tipRefreshLookupTables: TdxScreenTip;
    tabTimesheet: TdxRibbonTab;
    ribMain: TdxRibbon;
    barReports: TdxBar;
    tabReports: TdxRibbonTab;
    btnReports: TdxBarLargeButton;
    tabAdmin: TdxRibbonTab;
    barAdmin: TdxBar;
    btnExit2: TdxBarLargeButton;
    btnExit3: TdxBarLargeButton;
    btnOptions: TdxBarLargeButton;
    btnLayoutManager: TdxBarLargeButton;
    lbl1: TdxBarStatic;
    dlgPrint: TdxPrintDialog;
    dlgFileSave: TSaveDialog;
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
    actBillableSummary: TAction;
    btnBillableSummary: TdxBarLargeButton;
    btnTimesheetActivitySummary: TdxBarLargeButton;
    actActivitySummary: TAction;
    tipTimesheetDetail: TdxScreenTip;
    tipBillableSummary: TdxScreenTip;
    tipTimesheetActivitySummary: TdxScreenTip;
    actApprove: TAction;
    actUnApprove: TAction;
    Approve1: TMenuItem;
    UnApprove1: TMenuItem;
    popPrintExport: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    btnUnApprove: TdxBarButton;
    tipApprove: TdxScreenTip;
    btnTImeshetAction: TdxBarLargeButton;
    actBilable: TAction;
    actNonBillable: TAction;
    popTimesheetActions: TdxBarPopupMenu;
    btnBillable: TdxBarButton;
    btnNotBillable: TdxBarButton;
    N2: TMenuItem;
    Billable1: TMenuItem;
    NotBillable1: TMenuItem;
    tipAdditionalActions: TdxScreenTip;
    actInvoiceItem: TAction;
    actUnInvoice: TAction;
    btnInvoiceItem: TdxBarButton;
    btnUnInvoiceItem: TdxBarButton;
    N3: TMenuItem;
    Invoice1: TMenuItem;
    UnInvoice1: TMenuItem;
    actCarryForward: TAction;
    actCarryForwardManagaer: TAction;
    btnCarryForward: TdxBarButton;
    btnReleaseCFwdManager: TdxBarButton;
    N4: TMenuItem;
    CarryForward1: TMenuItem;
    ClearCarryForward1: TMenuItem;
    tipInvoice: TdxScreenTip;
    tipCarryForward: TdxScreenTip;
    actMonthlyBilling: TAction;
    btnMonthlyBilling: TdxBarLargeButton;
    tipMonthlyBilling: TdxScreenTip;
    edtDateCFwdReleased: TcxGridDBBandedColumn;
    edtReleaseCFwdToPeriod: TcxGridDBBandedColumn;
    tipReleaseCFwdManager: TdxScreenTip;
    edtPeriodName: TcxGridDBBandedColumn;
    cbxPersistentSelection: TcxBarEditItem;
    edtDateCarriedForward: TcxGridDBBandedColumn;
    cbxIncludeReleasedItems: TcxBarEditItem;
    lbl2: TdxBarStatic;
    lbl3: TdxBarStatic;
    tipIncludeReleaasedItems: TdxScreenTip;
    tipPersistentRecordSelection: TdxScreenTip;
    grpLegend: TdxLayoutGroup;
    litReleasedItemColour: TdxLayoutItem;
    litReleasedItemDescription: TdxLayoutItem;
    lblCFwdItemColour: TcxLabel;
    imgCFwdItemColour: TcxImage;
    Sep1: TdxBarSeparator;
    Sep2: TdxBarSeparator;
    Sep3: TdxBarSeparator;
    Sep4: TdxBarSeparator;
    btnCopyCell: TdxBarButton;
    sep5: TdxBarSeparator;
    sep6: TdxBarSeparator;
    N5: TMenuItem;
    Preview1: TMenuItem;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    PDF1: TMenuItem;
    btnPrintExport: TdxBarLargeButton;
    tipPrintExport: TdxScreenTip;
    Sep7: TdxBarSeparator;
    tipCopyData: TdxScreenTip;
    actCopyRecord: TAction;
    CopyRecord1: TMenuItem;
    btnCopyRecord: TdxBarButton;
    styImageColour: TcxEditStyleController;
    cntSelectAll: TdxBarControlContainerItem;
    btnSelectAll: TcxButton;
    btnSelectNone: TcxButton;
    cntSelectNone: TdxBarControlContainerItem;
    tipSelectAll: TdxScreenTip;
    tipSelectNone: TdxScreenTip;
    actSelectAll: TAction;
    actClearAllSelectedItems: TAction;
    Sep8: TdxBarSeparator;
    btnSelectAllItems: TdxBarButton;
    btnSlectNone: TdxBarButton;
    SelectAll1: TMenuItem;
    ClearAll1: TMenuItem;
    sbrMain: TdxRibbonStatusBar;
    tipCarryForwardManager: TdxScreenTip;
    btnPreview: TdxBarButton;
    btnPrint: TdxBarButton;
    btnExportToPDF: TdxBarButton;
    btnExportToExcel: TdxBarButton;
    popOtherActions: TdxBarPopupMenu;
    btnOtherActions: TdxBarLargeButton;
    sepBillingStatus: TdxBarSeparator;
    sepApprovalStatus: TdxBarSeparator;
    sepCarryForward: TdxBarSeparator;
    sepInvoicing: TdxBarSeparator;
    imesheetData1: TMenuItem;
    Edit2: TMenuItem;
    PrintingExporting1: TMenuItem;
    actCustomerContactInfo: TAction;
    sepCustomerContactInfo: TdxBarSeparator;
    btnCustomerContactinfo: TdxBarButton;
    Customer1: TMenuItem;
    CustomerContactInfo1: TMenuItem;
    lblDisplay: TcxLabel;
    btnReturnID: TdxBarLargeButton;
    edtCustomerTypeID: TcxGridDBBandedColumn;
    edtFirstName: TcxGridDBBandedColumn;
    edtLastName: TcxGridDBBandedColumn;
    edtLoginName: TcxGridDBBandedColumn;
    edtCustomerType: TcxGridDBBandedColumn;
    edtCustomerName: TcxGridDBBandedColumn;
    edtPriceItem: TcxGridDBBandedColumn;
    edtActivityType: TcxGridDBBandedColumn;
    edtAbbreviation: TcxGridDBBandedColumn;
    edtrateUnit: TcxGridDBBandedColumn;
    edtBillableStr: TcxGridDBBandedColumn;
    edtLockedStr: TcxGridDBBandedColumn;
    cbxAdditionlaWorkStr: TcxGridDBBandedColumn;
    edtCustomerGroupLink: TcxGridDBBandedColumn;
    edtCarryForwardStr: TcxGridDBBandedColumn;
    edtFullName: TcxGridDBBandedColumn;
    procedure DoExitTimesheetManager(Sender: TObject);
    procedure DoDeleteEntry(Sender: TObject);
    procedure DoRefresh(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure lucPeriodPropertiesEditValueChanged(Sender: TObject);
    procedure DoGetTimesheetData(Sender: TObject);
    procedure viewTimesheetCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure lucViewModePropertiesEditValueChanged(Sender: TObject);
    procedure lucUserPropertiesEditValueChanged(Sender: TObject);
    procedure dteFromDatePropertiesEditValueChanged(Sender: TObject);
    procedure dteToDatePropertiesEditValueChanged(Sender: TObject);
    procedure lucViewModeChange(Sender: TObject);
    procedure DoPrint(Sender: TObject);
    procedure DoPDF(Sender: TObject);
    procedure DoExcel(Sender: TObject);
    procedure DoOptions(Sender: TObject);
    procedure viewTimesheetDblClick(Sender: TObject);
    procedure viewTimesheetSelectionChanged(Sender: TcxCustomGridTableView);
    procedure DoLayoutManager(Sender: TObject);
    procedure DoCopyCell(Sender: TObject);
    procedure DoRefreshLookupTables(Sender: TObject);
    procedure DoTimeSheetDetail(Sender: TObject);
    procedure DoBillableSummary(Sender: TObject);
    procedure ribMainTabChanged(Sender: TdxCustomRibbon);
    procedure DoActivitySummary(Sender: TObject);
    procedure DoApprovalStatus(Sender: TObject);
    procedure btnApproveClick(Sender: TObject);
    procedure DoBillable(Sender: TObject);
    procedure DoInvoiceItem(Sender: TObject);
    procedure DoCarryForward(Sender: TObject);

    procedure cbxApprovedCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure DoMonthlyBilling(Sender: TObject);
    procedure cbxPersistentSelectionPropertiesEditValueChanged(Sender: TObject);
    procedure DoReleaseCarryForwardManager(Sender: TObject);
    procedure DoSelectAllTimesheetItems(Sender: TObject);
    procedure DoClearTimesheetSelection(Sender: TObject);
    procedure cbxIncludeReleasedItemsPropertiesEditValueChanged(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure DoCustomerContactInfo(Sender: TObject);

    procedure viewTimesheetFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);

    procedure lucCustomerGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure DiEditInsertEntry(Sender: TObject);
  private
    { Private declarations }
    FTSUserID: Integer;
    FTimesheetPeriod: Integer;
    FIteration: Extended;
    FShowingForm: Boolean;
    FFromDate: TDateTime;
    FToDate: TDateTime;
    FCustomerName: string;
    FSkinResourceFileName: string;

    procedure UpdateApplicationSkin(SkinResourceFileName {, SkinName}: string);
    procedure OpenTables;
    procedure SetButtonStatus(EditMode: Boolean);
    procedure VerifyRegistry;
    procedure ReadRegValues;
    procedure ApproveTimesheetItem(ATag: Integer);
    procedure BillTimesheetItem(ATag: Integer);
    procedure InvoiceTimesheetItem;
    procedure UnInvoiceTimesheetItem;
    procedure CarryForwardItem;
  protected
    procedure HandleStateChange(var MyMsg: TMessage); message WM_STATE_CHANGE;
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
    procedure WMCopyData(var Msg: TWMCopyData); message WM_COPYDATA;
    procedure HandleIncomingMessage(DataStructure: PCopyDataStruct; Msg: TWMCopyData);
  public
    { Public declarations }
  end;

var
  MainFrm: TMainFrm;

const
//  TABLE_COUNT = 2;
  TABLE_COUNT = 9;

implementation

{$R *.dfm}

uses
  TS_DM,
  VBBase_DM,
  MsgDialog_Frm,
  RUtils,
  Progress_Frm,
  Report_DM,
  TimesheetEdit_Frm,
  TimesheetOptions_Frm,
  TimesheetDetailReport_Frm,
  BillableSummary_Frm,
  TimesheetActivitySummary_Frm,
  InvoiceItem_Frm,
  MonthlyBillableReport_Frm,
  CarryForwardManager_Frm,
  CustomerContactDetail_Frm;
//  ReleaseCFwd_Frm;

procedure TMainFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TMainFrm.FormCreate(Sender: TObject);
begin
  inherited;
  {TODO: Change individual action buttons to one button}
  Caption := Application.Title;
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  ribMain.ActiveTab := tabTimesheet;
  ribMain.Update;
end;

procedure TMainFrm.FormShow(Sender: TObject);
var
  VBShell: string;
  {$IFDEF DEBUG}ErrorMsg, {$ENDIF} {SkinResourceFileName,}SkinName: string;
  RegKey: TRegistry;
begin
  inherited;
  Screen.Cursor := crHourglass;
  dxBarMakeInactiveImagesDingy := False;
  FSwitchPrefix := ['/'];
  FCallingFromShell := FindCmdLineSwitch('VB_SHELL', VBShell, True, [clstValueNextParam, clstValueAppended]);
  FShowingForm := True;

  if MsgDialogFrm = nil then
    MsgDialogFrm := TMsgDialogFrm.Create(nil);

  try
    {$IFDEF DEBUG}
    Self.BorderStyle := bsSizeable;
    ErrorMsg := '';
    // Sart the local debug web server if not already running.
    if not LocalDSServerIsRunning(LOCAL_VB_SHELL_DS_SERVER, ErrorMsg) then
    begin
      Beep;
      DisplayMsg(
        Application.Title,
        'Datasnap Server Connection Error',
        'Could not establish a connection to the requested Datasnap server.' + CRLF + CRLF +
        ErrorMsg
        + CRLF + CRLF + 'Please ensure that the local ' + Application.Title + ' Datasnap '
        + CRLF + 'server is running and try again.',
        mtError,
        [mbOK]
        );
    end;
    {$ENDIF}

    if VBBaseDM = nil then
      VBBaseDM := TVBBaseDM.Create(nil);

    if TSDM = nil then
      TSDM := TTSDM.Create(nil);

    if ReportDM = nil then
      ReportDM := TReportDM.Create(nil);

    TSDM.DefaultInvoiceDate := TSDM.GetDefaulttInvoiceDate;
    VBBaseDM.PopulateUserData;
    sbrMain.Panels[1].Text := 'User: ' + VBBaseDM.UserData.UserName;
    VBBaseDM.SetConnectionProperties;
    VBBaseDM.sqlConnection.Open;
    VBBaseDM.Client := TVBServerMethodsClient.Create(VBBaseDM.sqlConnection.DBXConnection);
    VBBaseDM.CheckForUpdates(3, '');
    TSDM.ShellResource := VBBaseDM.GetShellResource;
    FSkinResourceFileName := RESOURCE_FOLDER + SKIN_RESOURCE_FILE;
//    SkinName := TSDM.ShellResource.SkinName;
//
//    if Length(Trim(SkinName)) = 0 then
//      SkinName := DEFAULT_SKIN_NAME;

    UpdateApplicationSkin(FSkinResourceFileName {, SkinName});

    if BaseFrm = nil then
      BaseFrm := TBaseFrm.Create(nil);

    VBBaseDM.CurrentPeriod := GetCurrentPeriod(Date);
    VBBaseDM.CurrentYear := Trunc(VBBaseDM.CurrentPeriod div 100);
    VBBaseDM.CurrentMonth := RUtils.MonthInt(Date);

    viewTimesheet.DataController.DataSource := TSDM.dtsTimesheet;
    viewTimesheetBillable.DataController.DataSource := ReportDM.dtsTSBillable;
    TcxLookupComboBoxProperties(lucCustomer.Properties).listSource := TSDM.dtsCustomerLookup;
    TcxLookupComboBoxProperties(lucPriceItem.Properties).listSource := TSDM.dtsPriceList;
    TcxLookupComboBoxProperties(lucRateUnit.Properties).listSource := TSDM.dtsRateUnit;
    TcxLookupComboBoxProperties(lucActivityType.Properties).listSource := TSDM.dtsActivityType;
    TcxLookupComboBoxProperties(lucCustomerGroup.Properties).listSource := TSDM.dtsCustomerGroup;
    TcxLookupComboBoxProperties(lucPeriod.Properties).listSource := TSDM.dtsTSPeriod;
    TcxLookupComboBoxProperties(lucUser.Properties).listSource := TSDM.dtsSytemUser;
    TcxDateEditProperties(lucFromDate.Properties).MinDate := StrToDate('01/01/2019');
    TcxDateEditProperties(lucFromDate.Properties).MaxDate := Date;
    TcxDateEditProperties(lucToDate.Properties).MinDate := StrToDate('01/01/2019');
    TcxDateEditProperties(lucToDate.Properties).MaxDate := Date;

    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    try
      RegKey.OpenKey(KEY_USER_DATA, True);
      OpenTables;
      TSDM.CurrentUserID := RegKey.ReadInteger('User ID');

      if not TSDM.cdsSystemUser.Locate('ID', TSDM.CurrentUserID, []) then
      begin
        TSDM.cdsSystemUser.First;
        TSDM.CurrentUserID := TSDM.cdsSystemUser.FieldByName('ID').AsInteger;
      end;

      FTSUserID := TSDM.CurrentUserID;
      lucUser.EditValue := TSDM.CurrentUserID;
      RegKey.CloseKey;
      VerifyRegistry;
      ReadRegValues;

      RegKey.OpenKey(KEY_TIMESHEET, True);
//      FFromDate := RegKey.ReadDate('From Date');
//      lucFromDate.EditValue := FFromDate;
//      FToDate := RegKey.ReadDate('To Date');
//      lucToDate.EditValue := FToDate;
      FTimesheetPeriod := RegKey.ReadInteger('Period');
      lucPeriod.EditValue := FTimesheetPeriod;
      cbxPersistentSelection.EditValue := TSDM.TimesheetOption.PersitentRecordSelection;
      cbxIncludeReleasedItems.EditValue := TSDM.TimesheetOption.IncludeCarryForwardItems;

      if TSDM.TimesheetOption.PersitentRecordSelection then
        viewTimesheet.OptionsSelection.MultiSelectMode := msmPersistent
      else
        viewTimesheet.OptionsSelection.MultiSelectMode := msmStandard;

      if not TSDM.cdsTSPeriod.Locate('THE_PERIOD', FTimesheetPeriod, []) then
      begin
        TSDM.cdsTSPeriod.First;
        FTimesheetPeriod := TSDM.cdsTSPeriod.FieldByName('THE_PERIOD').AsInteger;
      end;

      FFromDate := GetMonthStartDate(FTimesheetPeriod);
      FToDate := GetMonthEndDate(FTimesheetPeriod);
      lucFromDate.EditValue := FFromDate;
      lucToDate.EditValue := FToDate;
      lucViewMode.ItemIndex := RegKey.ReadInteger('View Mode Index');
      RegKey.CloseKey;
    finally
      RegKey.Free
    end;

    actGetTimesheetData.Execute;
    FIteration := 0;
    grdTimesheet.SetFocus;
    viewTimesheet.Focused := True;

    if not TSDM.cdsTimesheet.IsEmpty then
    begin
      viewTimesheet.DataController.FocusedRecordIndex := 0;

      if not TSDM.TimesheetOption.PersitentRecordSelection then
        viewTimesheet.Controller.FocusedRecord.Selected := True;

      viewTimesheet.Controller.FocusedItem := edtActivityDate;

      viewTimesheet.Controller.MakeFocusedItemVisible;

    end;

    VBBaseDM.DBAction := acBrowsing;

    if FCallingFromShell then
    begin
      if not SendMessageToApp('VB Shell', 'App Ready') then
      begin
        Beep;
        DisplayMsg(
          Application.Title,
          'Application launch Error',
          'Host application: VB Shell not found!',
          mtError,
          [mbOK]
          );
        Application.Terminate;
      end;
      WindowState := wsMaximized;
    end;
// else
// WindowState := wsMaximized;
  finally
    FShowingForm := False;
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if FCallingFromShell then
    SendMessageToApp('VB Shell', 'Close App')
end;

procedure TMainFrm.FormDestroy(Sender: TObject);
begin
  inherited;
  if MsgDialogFrm <> nil then
    FreeAndNil(MsgDialogFrm);

  if CustomerContactDetailFrm <> nil then
    FreeAndNil(CustomerContactDetailFrm);

  if Assigned(BaseFrm) then
    FreeAndNil(BaseFrm);

  if Assigned(TSDM) then
    FreeAndNil(TSDM);

  if Assigned(VBBaseDM) then
    FreeAndNil(VBBaseDM);

  if Assigned(ReportDM) then
    FreeAndNil(ReportDM);
end;

procedure TMainFrm.DoExitTimesheetManager(Sender: TObject);
begin
// inherited;
  MainFrm.Close;
end;

procedure TMainFrm.DiEditInsertEntry(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    case TAction(Sender).Tag of
      0: TSDM.cdsTimesheet.Insert;
      1: TSDM.cdsTimesheet.Edit;
    end;

    if TimesheetEditFrm = nil then
      TimesheetEditFrm := TTimesheetEditFrm.Create(nil);

    TimesheetEditFrm.CanEdit := TSDM.cdsTimesheet.FieldByName('APPROVED').AsInteger = 0;
    VBBaseDM.MyDataSet := TSDM.cdsTimesheet;
    VBBaseDM.MyDataSource := TSDM.dtsTimesheet;

    if TimesheetEditFrm.ShowModal = mrCancel then
      if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
        TSDM.cdsTimesheet.Cancel;
//      else
//        actRefresh.Execute;

    TimesheetEditFrm.Close;
    FreeAndNil(TimesheetEditFrm);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoCopyCell(Sender: TObject);
var
  CopyCellContentOnly: Boolean;
begin
  inherited;
  CopyCellContentOnly := TAction(Sender).Tag = 0;
  CopyRecordData(viewTimesheet, CopyCellContentOnly);
end;

procedure TMainFrm.DoCustomerContactInfo(Sender: TObject);
begin
  inherited;
  if CustomerContactDetailFrm = nil then
    CustomerContactDetailFrm := TCustomerContactDetailFrm.Create(nil);

  SendMessage(CustomerContactDetailFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(FCustomerName)), 0);
  CustomerContactDetailFrm.Show;
end;

procedure TMainFrm.DoDeleteEntry(Sender: TObject);
var
  C: TcxCustomGridTableController;
begin
  inherited;
  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
    TSDM.cdsTimesheet.Cancel;

  C := viewTimesheet.Controller;
  if C.SelectedRecordCount = 0 then
  begin
    raise ESelectionException.Create('No items selected to deleted. Please select at leaset one item to delete.');
    Exit;
  end;

  Beep;
  if
    DisplayMsg(
    Application.Title,
    'Delete Confirmaiton',
    'Are you sure you want to delete the ' + C.SelectedRecordCount.ToString + ' selected timesheet item(s)?' + CRLF + CRLF +
    'WARNING!' + CRLF + CRLF +
    'This action cannot be undone!',
    mtConfirmation,
    [mbYes, mbNo]
    ) = mrNo then
    Exit;

  VBBaseDM.DBAction := acDelete;
  {TODO: Change this. Cannot delete locked items!!}
  C.DeleteSelection;
  VBBaseDM.PostData(TSDM.cdsTimesheet);
end;

procedure TMainFrm.DoRefresh(Sender: TObject);
var
  ID, RecordIndex: Integer;
  DC: TcxDBDataController;
begin
  inherited;
  Screen.Cursor := crHourglass;
  actRefresh.Enabled := False;
  DC := viewTimesheet.DataController;
  RecordIndex := DC.FocusedRecordIndex;

  try
    if not TSDM.cdsTimesheet.IsEmpty then
    begin
      ID := TSDM.cdsTimesheet.FieldByName('ID').AsInteger;
      actGetTimesheetData.Execute;
      if not TSDM.cdsTimesheet.Locate('ID', ID, []) then
        TSDM.cdsTimesheet.First;

      grdTimesheet.SetFocus;
      viewTimesheet.Focused := True;
      if not TSDM.cdsTimesheet.IsEmpty then
      begin
        viewTimesheet.DataController.FocusedRecordIndex := RecordIndex;
        viewTimesheet.Controller.FocusedRecord.Selected := True;
        viewTimesheet.Controller.MakeFocusedItemVisible;
      end;
    end;
  finally
    actRefresh.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoRefreshLookupTables(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  actRefreshLookupTables.Enabled := False;

  try
    OpenTables;
    FIteration := 0;
  finally
    if ProgressFrm <> nil then
    begin
      ProgressFrm.Close;
      FreeAndNil(ProgressFrm);
    end;
    actRefreshLookupTables.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoReleaseCarryForwardManager(Sender: TObject);
var
  ID: Integer;
begin
  inherited;
  Screen.Cursor := crHourglass;
  ID := 0;

  if viewTimesheet.Controller.SelectedRecordCount > 0 then
    ID := viewTimesheet.Controller.SelectedRecords[0].Values[edtID.Index];

  try
    if CarryForwardManagerFrm = nil then
      CarryForwardManagerFrm := TCarryForwardManagerFrm.Create(nil);

    CarryForwardManagerFrm.ShowModal;

    if CarryForwardManagerFrm.ItemsRelease then
    begin
      actGetTimesheetData.Execute;
      viewTimesheet.Controller.ClearSelection;

      if not TSDM.cdsTimesheet.Locate('ID', ID, []) then
        TSDM.cdsTimesheet.First;
    end;

    CarryForwardManagerFrm.Close;
    FreeAndNil(CarryForwardManagerFrm);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoSelectAllTimesheetItems(Sender: TObject);
begin
  inherited;
  viewTimesheet.Controller.SelectAll;
end;

procedure TMainFrm.DoTimeSheetDetail(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    if TimesheetDetailReportFrm = nil then
      TimesheetDetailReportFrm := TTimesheetDetailReportFrm.Create(nil);
    TimesheetDetailReportFrm.ShowModal;
//    TimesheetDetailReportFrm.Close;
    FreeAndNil(TimesheetDetailReportFrm);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.btnApproveClick(Sender: TObject);
//var
//  aControl: TdxBarItemControl;
//  APopupPoint: TPoint;
begin
  inherited;
//  aControl := TdxBarButton(Sender).ClickItemLink.Control;
//  APopupPoint := Point(aControl.ItemBounds.Left, aControl.ItemBounds.Bottom);
//  APopupPoint := aControl.Parent.ClientToScreen(APopupPoint);
//
//  popTimesheet.Popup(APopupPoint.X, APopupPoint.Y);
//
////  case TdxBarLargeButton(Sender).Tag of
////    0: popApproval.Popup(APopupPoint.X, APopupPoint.Y);
////    1: popBillable.Popup(APopupPoint.X, APopupPoint.Y);
////    2: popInvoice.Popup(APopupPoint.X, APopupPoint.Y);
////    3: popCarryForward.Popup(APopupPoint.X, APopupPoint.Y);
////  end;
end;

procedure TMainFrm.btnSelectAllClick(Sender: TObject);
var
  C: TcxCustomGridTableController;
begin
  inherited;
  C := viewTimesheet.Controller;
  case Tcxbutton(Sender).Tag of
    0: C.SelectAll;
    1: C.ClearSelection;
  end;
end;

procedure TMainFrm.CarryForwardItem;
var
  DC: TcxDBDataController;
  C: TcxCustomGridTableController;
  I, RecIndex, ChangeCount: Integer;
  Msg, IDValues, CommandString: string;
  Response: TStringList;
begin
  inherited;
  Msg := 'All selected items will be marked as carried forward. ' +
    ' are you sure you want to proceed?';

  Beep;
  if DisplayMsg(
    Application.Title,
    'Data Update Confirmation',
    Msg,
    mtConfirmation,
    [mbYes, mbNo]
    ) = mrNo then
    Exit;

  DC := viewTimesheet.DataController;
  C := viewTimesheet.Controller;
  ChangeCount := 0;

  for I := 0 to C.SelectedRecordCount - 1 do
  begin
    RecIndex := C.SelectedRecords[I].RecordIndex;
    DC.FocusedRecordIndex := RecIndex;

    if DC.Values[C.SelectedRecords[I].RecordIndex, cbxCarryForward.Index] = 0 then
    begin
      DC.Edit;
      DC.SetEditValue(cbxCarryForward.Index, 1, evsValue);
      DC.SetEditValue(edtInvoiceID.Index, -1, evsValue);
      DC.SetEditValue(edtDateCarriedForward.Index, Date, evsValue);
      DC.SetEditValue(edtDateCfwdReleased.Index, Null, evsValue);
      DC.Post(True);
      IDValues := IDValues + IntToStr(C.SelectedRecords[I].Values[edtTID.Index]);

      if I < C.SelectedRecordCount - 1 then
        IDValues := IDValues + ',';
      Inc(ChangeCount);
    end;
  end;

  if ChangeCount > 0 then
  begin
    Response := RUtils.CreateStringList(PIPE, DOUBLE_QUOTE);

    try
      CommandString := Format(CARRY_FORWARD_STATUS_CHANGE, [AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', Date), ''''), IDValues]);
      Response.DelimitedText := VBBaseDM.Client.ExecuteSQLCommand(CommandString);
      if SameText(Response.Values['RESPONSE'], 'ERROR') then
        raise EServerError.Create('One or more errors occurred when posting data to the database with message;' + CRLF + CRLF +
          Response.Values['ERROR_MESSAGE']);
    finally
      Response.Free;
    end;
  end;

  viewTimesheet.Controller.ClearSelection;
end;

procedure TMainFrm.DoApprovalStatus(Sender: TObject);
var
  Msg: string;
begin
  inherited;
  case TAction(Sender).Tag of
    100: Msg := 'All selected un-approved items will be marked as approved. ' +
      ' are you sure you want to proceed?';

    101: Msg := 'All selected approved items will be marked as un-approved. ' +
      ' are you sure you want to proceed?';
  end;

  Beep;
  if DisplayMsg(
    Application.Title,
    'Data Update Confirmation',
    Msg,
    mtConfirmation,
    [mbYes, mbNo]
    ) = mrNo then
    Exit;

  ApproveTimesheetItem(TAction(Sender).Tag);

// case TAction(Sender).Tag of
// 100: ApproveTimesheetItem(apApprove);
// 101: ApproveTimesheetItem(apUnApprove);
// 102: ApproveTimesheetItem(apToggleApproval);
// end;
end;

procedure TMainFrm.ApproveTimesheetItem(ATag: Integer);
var
  DC: TcxDBDataController;
  C: TcxCustomGridTableController;
  I, Approve: Integer;
  RecIndex, ChangeCount, AlreadyApproved, AlreadyUnApproved, AlreadyInvoiced: Integer;
  IDValues, CommandString: string;
  Response: TStringList;
begin
  inherited;
  DC := viewTimesheet.DataController;
  C := viewTimesheet.Controller;

  if C.SelectedRecordCount = 0 then
    raise ESelectionException.Create('No timesheet items selected. Please select at least one item.');

  ChangeCount := 0;
  AlreadyApproved := 0;
  AlreadyUnApproved := 0;
  AlreadyInvoiced := 0;

  case ATag of
    100: Approve := 1; // Approve
    101: Approve := 0; // Un-Approve
  end;

  for I := 0 to C.SelectedRecordCount - 1 do
  begin
    RecIndex := C.SelectedRecords[I].RecordIndex;
    DC.FocusedRecordIndex := RecIndex;

    if DC.Values[C.SelectedRecords[I].RecordIndex, edtInvoiceID.Index] <= 0 then
    begin
      case ATag of
        100: // Approve
          begin
            if DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] = 0 then
            begin
              DC.Edit;
              DC.SetEditValue(cbxApproved.Index, 1, evsValue);
              DC.SetEditValue(cbxLocked.Index, 1, evsValue);
              DC.Post(True);
              IDValues := IDValues + IntToStr(C.SelectedRecords[I].Values[edtTID.Index]);
              if I < C.SelectedRecordCount - 1 then
                IDValues := IDValues + ',';
              Inc(ChangeCount);
            end
            else
              Inc(AlreadyApproved);
          end;

        101: // Un-approve
          begin
            if DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] = 1 then
            begin
              DC.Edit;
              DC.SetEditValue(cbxApproved.Index, 0, evsValue);
              DC.SetEditValue(cbxLocked.Index, 0, evsValue);
              DC.Post(True);
              IDValues := IDValues + IntToStr(C.SelectedRecords[I].Values[edtTID.Index]);
              if I < C.SelectedRecordCount - 1 then
                IDValues := IDValues + ',';
              Inc(ChangeCount);
            end
            else
              Inc(AlreadyUnApproved);
          end;
      end;
    end
    else
      Inc(AlreadyInvoiced);
  end;

  if ChangeCount > 0 then
  begin
    Response := RUtils.CreateStringList(PIPE, DOUBLE_QUOTE);

    try
      CommandString := Format(APPROVE_STATUS_CHANGE, [Approve, IDValues]);
      Response.DelimitedText := VBBaseDM.Client.ExecuteSQLCommand(CommandString);
      if SameText(Response.Values['RESPNSE'], 'ERROR') then
        raise EServerError.Create('One or more errors occurred when posting data to the database with message;' + CRLF + CRLF +
          Response.Values['ERROR_MESSAGE']);
//      VBBaseDM.PostData(TSDM.cdsTimesheet);
    finally
      Response.Free;
    end;
  end;

  viewTimesheet.Controller.ClearSelection;

  case ATag of
    100:
      begin
        if (AlreadyApproved > 0) and (AlreadyInvoiced > 0) then
        begin
          Beep;
          DisplayMsg(
            Application.Title,
            'Data Update Informaiton',
            AlreadyApproved.ToString + ' items are already approved and were not updated.' + CRLF + CRLF +
            AlreadyInvoiced.ToString + ' items have already been invoiced and cannot be modified.',
            mtInformation,
            [mbOK]
            );
        end

        else if AlreadyApproved > 0 then
        begin
          Beep;
          DisplayMsg(
            Application.Title,
            'Data Update Informaiton',
            AlreadyApproved.ToString + ' items are already approved and were not updated.',
            mtInformation,
            [mbOK]
            );
        end

        else if AlreadyInvoiced > 0 then
        begin
          Beep;
          DisplayMsg(
            Application.Title,
            'Data Update Informaiton',
            AlreadyInvoiced.ToString + ' items are already been invoiced and cannot be modified.',
            mtInformation,
            [mbOK]
            );
        end;
      end;

    101:
      begin
        if AlreadyUnApproved > 0 then
        begin
          Beep;
          DisplayMsg(
            Application.Title,
            'Data Update Informaiton',
            AlreadyUnApproved.ToString + ' items are already un-approved and were not updated.',
            mtInformation,
            [mbOK]
            );
        end;
      end;
  end;

end;

procedure TMainFrm.DoCarryForward(Sender: TObject);
begin
  inherited;
  CarryForwardItem;
end;

procedure TMainFrm.DoClearTimesheetSelection(Sender: TObject);
begin
  inherited;
  viewTimesheet.Controller.ClearSelection;
end;

procedure TMainFrm.DoBillable(Sender: TObject);
var
  Msg: string;
begin
  inherited;
  case TAction(Sender).Tag of
    110: Msg := 'All selected billable items will be marked as not billable. ' +
      ' are you sure you want to proceed?';

    111: Msg := 'All selected non billable items will be marked as billable. ' +
      ' are you sure you want to proceed?';
  end;

  Beep;
  if DisplayMsg(
    Application.Title,
    'Data Update Confirmation',
    Msg,
    mtConfirmation,
    [mbYes, mbNo]
    ) = mrNo then
    Exit;

  BillTimesheetItem(TAction(Sender).Tag);
end;

procedure TMainFrm.BillTimesheetItem(ATag: Integer);
var
  DC: TcxDBDataController;
  C: TcxCustomGridTableController;
  I {, ID}, RecIndex, AlreadyBillable, NotBillable, AlreadyInvoiced, AlreadyApproved: Integer;
  ChangeCount, Bill: Integer;
  IDValues, CommandString: string;
  Response: TStringList;
begin
  inherited;
  DC := viewTimesheet.DataController;
  C := viewTimesheet.Controller;

  if C.SelectedRecordCount = 0 then
    raise ESelectionException.Create('No timesheet items selected. Please select at least one item.');

  ChangeCount := 0;
  AlreadyApproved := 0;
  AlreadyBillable := 0;
  NotBillable := 0;

  case ATag of
    110: Bill := 1;
    111: Bill := 0;
  end;

  for I := 0 to C.SelectedRecordCount - 1 do
  begin
    RecIndex := C.SelectedRecords[I].RecordIndex;
    DC.FocusedRecordIndex := RecIndex;

//    if DC.Values[C.SelectedRecords[I].RecordIndex, cbxLocked.Index] = 0 then
    if (DC.Values[C.SelectedRecords[I].RecordIndex, edtInvoiceID.Index] <= 0)
      and (DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] = 0) then
    begin
      case ATag of
        110:
          begin
//              if (DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] = 0)
            if (DC.Values[C.SelectedRecords[I].RecordIndex, cbxBillable.Index] = 0) then
            begin
              DC.Edit;
              DC.SetEditValue(cbxBillable.Index, 1, evsValue);
              DC.Post(True);
              IDValues := IDValues + IntToStr(C.SelectedRecords[I].Values[edtTID.Index]);
              if I < C.SelectedRecordCount - 1 then
                IDValues := IDValues + ',';
              Inc(ChangeCount);
            end
            else
              Inc(AlreadyBillable);
          end;

        111:
          begin
            if (DC.Values[C.SelectedRecords[I].RecordIndex, cbxBillable.Index] = 1) then
            begin
              DC.Edit;
              DC.SetEditValue(cbxBillable.Index, 0, evsValue);
              DC.Post(True);
              IDValues := IDValues + IntToStr(C.SelectedRecords[I].Values[edtTID.Index]);
              if I < C.SelectedRecordCount - 1 then
                IDValues := IDValues + ',';
              Inc(ChangeCount);
            end
            else
              Inc(NotBillable);
          end;
      end;

      DC.SetEditValue(edtItemValue.Index, 0, evsValue);

      if DC.Values[RecIndex, cbxBillable.Index] = 1 then
        if DC.Values[RecIndex, lucRateUnit.Index] = 1 then
          DC.SetEditValue(edtItemValue.Index, DC.Values[RecIndex, edtTimeSpent.Index] *
            DC.Values[RecIndex, edtRate.Index] / 60, evsValue)
        else
          DC.SetEditValue(edtItemValue.Index,
            DC.Values[RecIndex, edtRate.Index], evsValue);
    end
    else
    begin
      if DC.Values[C.SelectedRecords[I].RecordIndex, edtInvoiceID.Index] <= 0 then
        Inc(AlreadyInvoiced)
      else if DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] = 0 then
        Inc(AlreadyApproved);
    end;
  end;

  if ChangeCount > 0 then
  begin
    Response := RUtils.CreateStringList(PIPE, DOUBLE_QUOTE);

    try
      CommandString := Format(BILLABLE_STATUS_CHANGE, [Bill, IDValues]);
      Response.DelimitedText := VBBaseDM.Client.ExecuteSQLCommand(CommandString);

      if SameText(Response.Values['RESPONSE'], 'ERROR') then
        raise EServerError.Create('One or more errors occurred when posting data to the database with message;' + CRLF + CRLF +
          Response.Values['ERROR_MESSAGE']);
    finally
      Response.Free;
    end;
  end;

  viewTimesheet.Controller.ClearSelection;

  case ATag of
    110:
      begin
        if AlreadyInvoiced > 0 then
        begin
          Beep;
          DisplayMsg(
            Application.Title,
            'Data Update Informaiton',
            AlreadyInvoiced.ToString + ' items have already been invoiced and cannot be updated.',
            mtInformation,
            [mbOK]
            );
        end

        else if AlreadyApproved > 0 then
        begin
          Beep;
          DisplayMsg(
            Application.Title,
            'Data Update Informaiton',
            AlreadyBillable.ToString + ' items have already been approved and were thus not updated.',
            mtInformation,
            [mbOK]
            );
        end

        else if AlreadyBillable > 0 then
        begin
          Beep;
          DisplayMsg(
            Application.Title,
            'Data Update Informaiton',
            AlreadyBillable.ToString + ' items are already billable and were thus not updated.',
            mtInformation,
            [mbOK]
            );
        end;
      end;

    111:
      begin
        if NotBillable > 0 then
        begin
          Beep;
          DisplayMsg(
            Application.Title,
            'Data Update Informaiton',
            NotBillable.ToString + ' items are already non-billable and were thus not updated.',
            mtInformation,
            [mbOK]
            );
        end;
      end;
  end;
end;

procedure TMainFrm.DoInvoiceItem(Sender: TObject);
begin
  inherited;
  case TAction(Sender).Tag of
    120: InvoiceTimesheetItem;
    121: UnInvoiceTimesheetItem;
  end;
end;

procedure TMainFrm.InvoiceTimesheetItem;
var
  DC: TcxDBDataController;
  C: TcxCustomGridTableController;
  I, ChangeCount, AlreadyInvoiced, AlreadyApprovedCFwd: Integer;
  RecIndex: Integer;
  InvoiceDate: TDateTime;
begin
  inherited;
  C := viewTimesheet.Controller;

  if C.SelectedRecordCount = 0 then
    raise ESelectionException.Create('No timesheet items selected. Please select at least one item.');

  AlreadyInvoiced := 0;
  AlreadyApprovedCFwd := 0;

  if InvoiceItemFrm = nil then
    InvoiceItemFrm := TInvoiceItemFrm.Create(nil);

  try
    if InvoiceItemFrm.ShowModal = mrOK then
    begin
//      InvoiceDate := VarAsType(InvoiceItemFrm.edtInvoiceDate.EditValue, varDate);
      InvoiceDate := TSDM.DefaultInvoiceDate;
      DC := viewTimesheet.DataController;
      ChangeCount := 0;

      for I := 0 to C.SelectedRecordCount - 1 do
      begin
        // If item is NOT already invoiced...
//        if DC.Values[C.SelectedRecords[I].RecordIndex, cbxLocked.Index] = 0 then
        if DC.Values[C.SelectedRecords[I].RecordIndex, edtInvoiceID.Index] <= 0 then
        begin
//          DC.Edit;
          RecIndex := C.SelectedRecords[I].RecordIndex;
          DC.FocusedRecordIndex := RecIndex;

          // If item is approved AND it is NOT carried forward...
          if (DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] = 1)
            and (DC.Values[C.SelectedRecords[I].RecordIndex, cbxCarryForward.Index] = 0) then
//            if DC.Values[C.SelectedRecords[I].RecordIndex, edtInvoiceID.Index] <= 0 then
          begin
            DC.Edit;
            DC.SetEditValue(edtInvoiceID.Index, 1, evsValue);
            DC.SetEditValue(cbxLocked.Index, 1, evsValue);
            DC.SetEditValue(edtInvoiceDate.Index, InvoiceDate, evsValue);
            Inc(ChangeCount);
            DC.Post(True);
          end
          else
            Inc(AlreadyApprovedCFwd);
        end
        else
          Inc(AlreadyInvoiced);
      end;

      if ChangeCount > 0 then
        VBBaseDM.PostData(TSDM.cdsTimesheet);
//        actRefresh.Execute;

      if AlreadyInvoiced > 0 then
      begin
        Beep;
        DisplayMsg(
          Application.Title,
          'Data Update Informaiton',
          AlreadyInvoiced.ToString + ' items are already been invoiced.',
          mtInformation,
          [mbOK]
          );
      end

      else if AlreadyApprovedCFwd > 0 then
      begin
        Beep;
        DisplayMsg(
          Application.Title,
          'Data Update Informaiton',
          AlreadyApprovedCFwd.ToString + ' items have not yet been approved or are carried forward and were not updated.',
          mtInformation,
          [mbOK]
          );
      end;
    end;
  finally
    if Assigned(InvoiceItemFrm) then
    begin
      InvoiceItemFrm.Close;
      FreeAndNil(InvoiceItemFrm);
    end;
  end;
end;

procedure TMainFrm.UnInvoiceTimesheetItem;
var
  DC: TcxDBDataController;
  C: TcxCustomGridTableController;
  I, ChangeCount: Integer;
  RecIndex: Integer;
begin
  inherited;
  DC := viewTimesheet.DataController;
  C := viewTimesheet.Controller;
  ChangeCount := 0;

//  DC.BeginUpdate;
  try
    for I := 0 to C.SelectedRecordCount - 1 do
    begin
      // Can only un-invoice item if it is NOT locked.
//      if DC.Values[C.SelectedRecords[I].RecordIndex, cbxLocked.Index] = 0 then
//      begin
      DC.Edit;
      RecIndex := C.SelectedRecords[I].RecordIndex;
      DC.FocusedRecordIndex := RecIndex;

      if DC.Values[C.SelectedRecords[I].RecordIndex, edtInvoiceID.Index] >= 0 then
      begin
        DC.SetEditValue(edtInvoiceID.Index, 0, evsValue);
        DC.SetEditValue(cbxLocked.Index, 0, evsValue);
        DC.SetEditValue(edtInvoiceDate.Index, Null, evsValue);
        Inc(ChangeCount);
      end;
      DC.Post(True);
//      end;
    end;

//    if ChangeCount = 0 then
//    begin
//      Beep;
//      DisplayMsg(
//        Application.Title,
//        'Data Validation Error',
//        'One or more items could not be un-invoiced.' + CRLF + CRLF +
//        'Possible reason(s):' + CRLF +
//        'Item is locked.' + CRLF +
//        'Item has already been invoiced.' + CRLF +
//        'Item is carried forward.',
//        mtError,
//        [mbOK]
//        );
//    end
//    else
//    begin
    if ChangeCount > 0 then
      VBBaseDM.PostData(TSDM.cdsTimesheet);
//      actRefresh.Execute;
//    end;
  finally
//    DC.EndUpdate;
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.cbxApprovedCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  DC: TcxDBDataController;
begin
  inherited;
  DC := viewTimesheet.DataController;

  if DC.Values[AViewInfo.GridRecord.Index, cbxApproved.Index] then
    ACanvas.Brush.Color := clGreen
  else
    ACanvas.Brush.Color := clMaroon;
end;

procedure TMainFrm.cbxIncludeReleasedItemsPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
  ID: Integer;
begin
  inherited;
  TSDM.TimesheetOption.IncludeCarryForwardItems := cbxIncludeReleasedItems.EditValue;

  if not FShowingForm then
  begin
    ID := TSDM.cdsTimesheet.FieldByName('ID').Asinteger;
    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);

    try
      RegKey.RootKey := HKEY_CURRENT_USER;
      RegKey.OpenKey(KEY_TIMESHEET, True);
      RegKey.WriteBool('Include Released Items', TSDM.TimesheetOption.IncludeCarryForwardItems);
      RegKey.CloseKey;
    finally
      RegKey.Free;
    end;

    actGetTimesheetData.Execute;
    if not TSDM.cdsTimesheet.Locate('ID', id, []) then
      TSDM.cdsTimesheet.First;
  end;
end;

procedure TMainFrm.cbxPersistentSelectionPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  TSDM.TimesheetOption.PersitentRecordSelection := cbxPersistentSelection.EditValue;

  if TSDM.TimesheetOption.PersitentRecordSelection then
    viewTimesheet.OptionsSelection.MultiSelectMode := msmPersistent
  else
    viewTimesheet.OptionsSelection.MultiSelectMode := msmStandard;

  if not FShowingForm then
  begin
    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    try
      RegKey.RootKey := HKEY_CURRENT_USER;
      RegKey.OpenKey(KEY_TIMESHEET, True);
      RegKey.WriteBool('Persistent Selection', TSDM.TimesheetOption.PersitentRecordSelection);
      RegKey.CloseKey;
    finally
      RegKey.Free;
      viewTimesheet.Controller.ClearSelection;
    end;
  end;
end;

procedure TMainFrm.DoActivitySummary(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    if TimesheetActivitySummaryFrm = nil then
      TimesheetActivitySummaryFrm := TTimesheetActivitySummaryFrm.Create(nil);
    TimesheetActivitySummaryFrm.ShowModal;
    TimesheetActivitySummaryFrm.Close;
    FreeAndNil(TimesheetActivitySummaryFrm);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoBillableSummary(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    if BillableSummaryFrm = nil then
      BillableSummaryFrm := TBillableSummaryFrm.Create(nil);

    BillableSummaryFrm.ShowModal;
    BillableSummaryFrm.Close;
    FreeAndNil(BillableSummaryFrm);
  finally
// ribMain.ActiveTab := tabTimesheet;
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoLayoutManager(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.DoMonthlyBilling(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    if MonthlyBillableReportFrm = nil then
      MonthlyBillableReportFrm := TMonthlyBillableReportFrm.Create(nil);
    MonthlyBillableReportFrm.ShowModal;
    MonthlyBillableReportFrm.Close;
    FreeAndNil(MonthlyBillableReportFrm);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoGetTimesheetData(Sender: TObject);
var
  WhereClause, OrderByClause, CarryForwardClause: string;
  AToDateEdit: TcxDateEdit;
begin
  inherited;
  Screen.Cursor := crHourglass;
  if lucViewMode.ItemIndex = 0 then
  begin
    if FTimesheetPeriod < 201901 then
      raise EValidateException.Create('Invalid period. Please select a valid period and try again.');

    CarryForwardClause := '';

    if cbxIncludeReleasedItems.EditValue then
      WhereClause :=
        ' WHERE T.USER_ID =' + FTSUserID.ToString +
        ' AND (T.THE_PERIOD =' + FTimesheetPeriod.ToString +
        ' OR T.RELEASE_CFWD_TO_PERIOD = ' + FTimesheetPeriod.ToString + ') '
    else
      WhereClause :=
        ' WHERE T.USER_ID=' + FTSUserID.ToString +
        ' AND T.THE_PERIOD=' + FTimesheetPeriod.ToString;

    OrderByClause := ' ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE';
    WhereClause := WhereClause + OrderByClause;

//    ParamList := ' WHERE T.USER_ID=' + FTSUserID.ToString +
//      ' AND T.THE_PERIOD=' + FTimesheetPeriod.ToString + SEMI_COLON +
//      ONE_SPACE + SEMI_COLON + 'ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE';
  end
  else if lucViewMode.ItemIndex = 1 then
  begin
    if (FFromDate = 0.00) or (FToDate = 0.00) then
      raise EValidateException.Create('Ivalid From and/or to date. Please sselect valid dates and try again.');

    if FFromDate > FToDate then
    begin
      lucToDate.SetFocus;
      AToDateEdit := TcxBarEditItemControl(lucToDate.Links[0].Control).Edit as TcxDateEdit;
      AToDateEdit.Date := FFromDate;
    end;

    if cbxIncludeReleasedItems.EditValue then
      WhereClause :=
        ' WHERE T.USER_ID =' + FTSUserID.ToString +
        ' AND ((T.ACTIVITY_DATE >=' + AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', FFromDate), '''') +
        ' AND T.ACTIVITY_DATE <=' + AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', FToDate), '''') + ') ' +
        ' OR T.RELEASE_CFWD_TO_PERIOD = ' + FTimesheetPeriod.ToString + ') '
    else
      WhereClause :=
        ' WHERE T.USER_ID =' + FTSUserID.ToString +
        ' AND T.ACTIVITY_DATE >=' + AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', FFromDate), '''') +
        ' AND T.ACTIVITY_DATE <=' + AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', FToDate), '''');

    OrderByClause := ' ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE, T.ID';
//    OrderByClause := ' ORDER BY T.ID';
    WhereClause := WhereClause + OrderByClause;
  end;

  viewTimesheet.DataController.BeginUpdate;
  try
    if (FIteration > 0) and (ProgressFrm <> nil) then
    begin
//      SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Price List Table' + '|PROGRESS=' + FIteration.ToString)), 0);
      SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Timesheet Table')), 0);
      SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);
    end;

// ParamList := ' WHERE T.USER_ID=' + FTSUserID.ToString +
// ' AND T.THE_PERIOD=' + FTimesheetPeriod.ToString + SEMI_COLON +
// ONE_SPACE + SEMI_COLON + 'ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE';

    VBBaseDM.GetData(45, TSDM.cdsTimesheet, TSDM.cdsTimesheet.Name, WhereClause {ParamList},
      'C:\Data\Xml\Timesheet.xml', TSDM.cdsTimesheet.UpdateOptions.Generatorname,
      TSDM.cdsTimesheet.UpdateOptions.UpdateTableName);

//    VBBaseDM.GetData(27, TSDM.cdsTimesheet, TSDM.cdsTimesheet.Name, WhereClause {ParamList},
//      'C:\Data\Xml\Timesheet.xml', TSDM.cdsTimesheet.UpdateOptions.Generatorname,
//      TSDM.cdsTimesheet.UpdateOptions.UpdateTableName);

    if not TSDM.cdsTimesheet.Active then
      TSDM.cdsTimesheet.CreateDataSet;
  finally
    if ProgressFrm <> nil then
    begin
      ProgressFrm.Close;
      FreeAndNil(ProgressFrm);
    end;
    viewTimesheet.DataController.EndUpdate;
    FIteration := 0;
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.UpdateApplicationSkin(SkinResourceFileName: string);
var
  SkinName: string;
begin
  SkinName := VBBaseDM.GetSkinFromRegistry;
  sknController.BeginUpdate;

  try
    sknController.NativeStyle := False;
    sknController.UseSkins := True;
    if dxSkinsUserSkinLoadFromFile(FSkinResourceFileName, SkinName) then
    begin
      sknController.SkinName := 'UserSkin';
      RootLookAndFeel.SkinName := 'UserSkin';
      barManager.LookAndFeel.SkinName := 'UserSkin';
      lafCustomSkin.LookAndFeel.SkinName := 'UserSkin';
    end
    else
    begin
      sknController.SkinName := DEFAULT_SKIN_NAME;
      RootLookAndFeel.SkinName := DEFAULT_SKIN_NAME;
      barManager.LookAndFeel.SkinName := DEFAULT_SKIN_NAME;
      lafCustomSkin.LookAndFeel.SkinName := DEFAULT_SKIN_NAME;
    end;
  finally
    sknController.Refresh;
    sknController.EndUpdate;
  end;
end;

procedure TMainFrm.VerifyRegistry;
var
  RegKey: TRegistry;
begin
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIMESHEET, True);

    if not RegKey.ValueExists('Persistent Selection') then
      RegKey.WriteBool('Persistent Selection', True);

    if not RegKey.ValueExists('Include Released Items') then
      RegKey.WriteBool('Include Released Items', True);

    if not RegKey.ValueExists('View Mode Index') then
      RegKey.WriteInteger('View Mode Index', 0);

    if not RegKey.ValueExists('Period') then
      RegKey.WriteInteger('Period', VBBaseDM.CurrentPeriod);

    if not RegKey.ValueExists('From Date') then
      RegKey.WriteDate('From Date', Date);

    if not RegKey.ValueExists('To Date') then

      RegKey.WriteDate('To Date', Date);

    if not RegKey.ValueExists('Use Default Customer') then
      RegKey.WriteBool('Use Default Customer', False);

    if not RegKey.ValueExists('Default Customer ID') then
      RegKey.WriteInteger('Default Customer ID', 0);

    if not RegKey.ValueExists('Use Default Price Item') then
      RegKey.WriteBool('Use Default Price Item', False);

    if not RegKey.ValueExists('Default Price Item ID') then
      RegKey.WriteInteger('Default Price Item ID', 0);

    if not RegKey.ValueExists('Use Default Rate') then
      RegKey.WriteBool('Use Default Rate', False);

    if not RegKey.ValueExists('Default Rate') then
      RegKey.WriteFloat('Default Rate', 0.0);

    if not RegKey.ValueExists('Auto Date on New Timesheet Line') then
      RegKey.WriteBool('Auto Date on New Timesheet Line', True);

    if not RegKey.ValueExists('Save Grid Layout') then
      RegKey.WriteBool('Save Grid Layout', False);

    if not RegKey.ValueExists('Pricelist Item Action Index') then
      RegKey.WriteInteger('Pricelist Item Action Index', 3);

    if not RegKey.ValueExists('Incremental Lookup Fitlering') then
      RegKey.WriteBool('Incremental Lookup Fitlering', True);

    if not RegKey.ValueExists('Highlight Lookup Search Match') then
      RegKey.WriteBool('Highlight Lookup Search Match', True);

    RegKey.CloseKey;
  finally
    RegKey.Free
  end;
end;

procedure TMainFrm.ReadRegValues;
var
  RegKey: TRegistry;
begin
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIMESHEET, True);
    TSDM.TimesheetOption.UseDefaultCustomer := RegKey.ReadBool('Use Default Customer');
    TSDM.TimesheetOption.UseDefaultPriceItem := RegKey.ReadBool('Use Default Price Item');
    TSDM.TimesheetOption.UseDefaultRate := RegKey.ReadBool('Use Default Rate');
    TSDM.TimesheetOption.UseTodaysDate := RegKey.ReadBool('Auto Date on New Timesheet Line');
    TSDM.TimesheetOption.SaveGridLayout := RegKey.ReadBool('Save Grid Layout');
    TSDM.TimesheetOption.DefaultCustomerID := RegKey.ReadInteger('Default Customer ID');
    TSDM.TimesheetOption.DefaultPriceItemID := RegKey.ReadInteger('Default Price Item ID');
    TSDM.TimesheetOption.DefaultRate := RegKey.ReadFloat('Default Rate');
    TSDM.TimesheetOption.RateUnitID := RegKey.ReadInteger('Rate Unit ID');
    TSDM.TimesheetOption.PriceListItemActionIndex := RegKey.ReadInteger('Pricelist Item Action Index');
    TSDM.TimesheetOption.IncrementalLookupFitlering := RegKey.ReadBool('Incremental Lookup Fitlering');
    TSDM.TimesheetOption.HighlightLookupSearchMatch := RegKey.ReadBool('Highlight Lookup Search Match');
    TSDM.TimesheetOption.PersitentRecordSelection := RegKey.ReadBool('Persistent Selection');
    TSDM.TimesheetOption.IncludeCarryForwardItems := RegKey.ReadBool('Include Released Items');
  finally
    RegKey.Free
  end;
end;

procedure TMainFrm.ribMainTabChanged(Sender: TdxCustomRibbon);
begin
  inherited;
  litTimesheet.Visible :=
    (ribMain.ActiveTab = tabTimesheet)
    or (ribMain.ActiveTab = tabReports);

  grpLegend.Visible := litTimesheet.Visible;
end;

procedure TMainFrm.viewTimesheetCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord = nil then
    Exit;

  if AViewInfo.GridRecord.Values[edtReleaseCfwdToPeriod.Index] > 0 then
  begin
    if AViewInfo.Item <> nil then
      if AViewInfo.Item <> cbxApproved then
      begin
        ACanvas.Brush.Color := $00E4FFCA; //$009EFEB1; //$9EFEB1; //$7EE4FE; // Color := $54DCFE; // $C1E0FF; //$D7E3FF; // $FFE1F0;
        ACanvas.Font.Color := RootLookAndFeel.SkinPainter.DefaultSelectionColor;
      end;
  end;

  if AViewInfo.GridRecord.Focused then
  begin
    if AViewInfo.Item <> nil then
      if AViewInfo.Item.Focused then
      begin
        ACanvas.Brush.Color := $B6EDFA;
        ACanvas.Font.Color := RootLookAndFeel.SkinPainter.DefaultSelectionColor;
        PostMessage(Handle, CM_DRAWBORDER, Integer(ACanvas), Integer(AViewInfo));
      end;
  end;
end;

procedure TMainFrm.viewTimesheetDblClick(Sender: TObject);
begin
  inherited;
  actEdit.Execute;
end;

procedure TMainFrm.viewTimesheetFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if CustomerContactDetailFrm <> nil then
    SendMessage(CustomerContactDetailFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(FCustomerName)), 0);
end;

procedure TMainFrm.viewTimesheetSelectionChanged(Sender: TcxCustomGridTableView);
var
  C: TcxCustomGridTableController;
begin
  inherited;
  C := viewTimesheet.Controller;
  actInsert.Enabled := C.SelectedRecordCount <= 1;
  actEdit.Enabled := C.SelectedRecordCount <= 1;
end;

procedure TMainFrm.OpenTables;
var
  Counter: Integer;
// Iteration: Extended;
// ParamList: string;
begin
  if ProgressFrm = nil then
    ProgressFrm := TProgressFrm.Create(nil);

  ProgressFrm.FormStyle := fsStayOnTop;
  ProgressFrm.Show;

  Counter := 1;
  FIteration := Counter / TABLE_COUNT * 100;

    // System User
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening System User Table')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);
  VBBaseDM.GetData(24, TSDM.cdsSystemUser, TSDM.cdsSystemUser.Name, ONE_SPACE,
    'C:\Data\Xml\System User.xml', TSDM.cdsSystemUser.UpdateOptions.Generatorname,
    TSDM.cdsSystemUser.UpdateOptions.UpdateTableName);

  if not TSDM.cdsSystemUser.Active then
    TSDM.cdsSystemUser.CreateDataSet;

  Inc(Counter);
  FIteration := Counter / TABLE_COUNT * 100;

    // Period - From timesheet
  Inc(Counter);
  FIteration := Counter / TABLE_COUNT * 100;

  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Timesheet Period Table')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);
  VBBaseDM.GetData(62, TSDM.cdsTSPeriod, TSDM.cdsTSPeriod.Name, ONE_SPACE,
    'C:\Data\Xml\Timesheet Period.xml', TSDM.cdsTSPeriod.UpdateOptions.Generatorname,
    TSDM.cdsTSPeriod.UpdateOptions.UpdateTableName);

  if not TSDM.cdsTSPeriod.Active then
    TSDM.cdsTSPeriod.CreateDataSet;

  Inc(Counter);
  FIteration := Counter / TABLE_COUNT * 100;

    // Customer Lookup
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Customer Table')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);

  VBBaseDM.GetData(58, TSDM.cdsCustomerLookup, TSDM.cdsCustomerLookup.Name, ONE_SPACE,
    'C:\Data\Xml\Customer Lookup.xml', TSDM.cdsCustomerLookup.UpdateOptions.Generatorname,
    TSDM.cdsCustomerLookup.UpdateOptions.UpdateTableName);

  if not TSDM.cdsCustomerLookup.Active then
    TSDM.cdsCustomerLookup.CreateDataSet;

    // Price List
  Inc(Counter);
  FIteration := Counter / TABLE_COUNT * 100;

  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Pricelist Table Table')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);
  VBBaseDM.GetData(42, TSDM.cdsPriceList, TSDM.cdsPriceList.Name, ONE_SPACE,
    'C:\Data\Xml\Price List.xml', TSDM.cdsPriceList.UpdateOptions.Generatorname,
    TSDM.cdsPriceList.UpdateOptions.UpdateTableName);

  if not TSDM.cdsPriceList.Active then
    TSDM.cdsPriceList.CreateDataSet;

    // Activity Type
  Inc(Counter);
  FIteration := Counter / TABLE_COUNT * 100;

  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Activity Type Table')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);
  VBBaseDM.GetData(39, TSDM.cdsActivityType, TSDM.cdsActivityType.Name, ONE_SPACE,
    'C:\Data\Xml\Activity Type.xml', TSDM.cdsActivityType.UpdateOptions.Generatorname,
    TSDM.cdsActivityType.UpdateOptions.UpdateTableName);

  if not TSDM.cdsActivityType.Active then
    TSDM.cdsActivityType.CreateDataSet;

    // Customer Group
  inc(Counter);
  FIteration := Counter / TABLE_COUNT * 100;

  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Customer Group Table')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);
  VBBaseDM.GetData(56, TSDM.cdsCustomerGroup, TSDM.cdsCustomerGroup.Name, ONE_SPACE,
    'C:\Data\Xml\Customer Group.xml', TSDM.cdsCustomerGroup.UpdateOptions.Generatorname,
    TSDM.cdsCustomerGroup.UpdateOptions.UpdateTableName);

  if not TSDM.cdsCustomerGroup.Active then
    TSDM.cdsCustomerGroup.CreateDataSet;

    // Rate Unit
  inc(Counter);
  FIteration := Counter / TABLE_COUNT * 100;

  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Rate Unit Table')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);
  VBBaseDM.GetData(38, TSDM.cdsRateUnit, TSDM.cdsRateUnit.Name, ONE_SPACE,
    'C:\Data\Xml\Rate Unit.xml', TSDM.cdsRateUnit.UpdateOptions.Generatorname,
    TSDM.cdsRateUnit.UpdateOptions.UpdateTableName);

  if not TSDM.cdsRateUnit.Active then
    TSDM.cdsRateUnit.CreateDataSet;

    // Customer contact details
  inc(Counter);
  FIteration := Counter / TABLE_COUNT * 100;

  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Customer Contact detail Table')), 0);
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);

  VBBaseDM.GetData(54, TSDM.cdsContactDetailCo, TSDM.cdsContactDetailCo.Name, ' ORDER BY O.CUSTOMER_ID',
    'C:\Data\Xml\View Contact Detail Co.xml', TSDM.cdsContactDetailCo.UpdateOptions.Generatorname,
    TSDM.cdsContactDetailCo.UpdateOptions.UpdateTableName);
end;

procedure TMainFrm.SetButtonStatus(EditMode: Boolean);
begin
  actInsert.Enabled := not EditMode;
  actEdit.Enabled := not EditMode;
  actDelete.Enabled := not EditMode;
  actRefresh.Enabled := not EditMode;
end;

procedure TMainFrm.HandleStateChange(var MyMsg: TMessage);
var
  EditMode: Boolean;
begin
  EditMode := StringToBoolean(PChar(MyMsg.WParam));
  SetButtonStatus(EditMode);
//
// try
// if SL.Values['REQUEST'] = 'REFRESH_DATA' then
// SendMessage(CustomerFrm.Handle, WM_RECORD_ID, DWORD(PChar(SL.DelimitedText)), 0);
// finally
// MyMsg.Result := -1;
// end;
end;

procedure TMainFrm.lucCustomerGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
//  if ARecord <> nil then
//  begin
////  if Sender = lucCustomer then
////    FCustomerName := Sender.FocusedCellViewInfo.DisplayValue;
//    FCustomerName := AText;
//    lblDisplay.Caption := FcustomerName;
//  end;
//////  FCustomerName := AText;
////  if ARecord <> nil then
//////    AText := TcxLookupComboBox(lucCustomer).Properties.ListSource.DataSet.FieldByName('NAME').AsString;
////    FCustomerName := TSDM.cdsCustomerLookup.FieldByName('NAME').AsString;
end;

procedure TMainFrm.lucPeriodPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  // This still works!
  FTimesheetPeriod := lucPeriod.EditValue;
  lucFromDate.EditValue := GetMonthStartDate(FTimesheetPeriod);
  lucToDate.EditValue := GetMonthEndDate(FTimesheetPeriod);
  // This also works.
//  FTimesheetPeriod := TSDM.cdsTSPeriod.FieldByName('THE_PERIOD').AsInteger;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIMESHEET, True);
    RegKey.WriteInteger('Period', FTimesheetPeriod);
    RegKey.CloseKey;
  finally
    RegKey.Free
  end;

  if not FShowingForm then
    actGetTimesheetData.Execute;
end;

procedure TMainFrm.lucUserPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  FTSUserID := lucUser.EditValue;
  if not FShowingForm then
    actGetTimesheetData.Execute;
end;

procedure TMainFrm.dteFromDatePropertiesEditValueChanged(Sender: TObject);
var
  AFromDateEdit: TcxDateEdit;
  RegKey: TRegistry;
  // ATag: integer;
begin
  inherited;
  lucFromDate.SetFocus;
  AFromDateEdit := TcxBarEditItemControl(lucFromDate.Links[0].Control).Edit as TcxDateEdit;
  FFromDate := AFromDateEdit.Date;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIMESHEET, True);

    if not FShowingForm then
    begin
      RegKey.WriteDate('From Date', FFromDate);
      actGetTimesheetData.Execute;
    end;

    RegKey.CloseKey;
  finally
    RegKey.Free
  end;
end;

procedure TMainFrm.dteToDatePropertiesEditValueChanged(Sender: TObject);
var
  AToDateEdit: TcxDateEdit;
  RegKey: TRegistry;
  // ATag: integer;
begin
  inherited;
  lucToDate.SetFocus;
  AToDateEdit := TcxBarEditItemControl(lucToDate.Links[0].Control).Edit as TcxDateEdit;
  FToDate := AToDateEdit.Date;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIMESHEET, True);

    if not FShowingForm then
    begin
      RegKey.WriteDate('To Date', FToDate);
      actGetTimesheetData.Execute;
    end;

    RegKey.CloseKey;
  finally
    RegKey.Free
  end;
end;

procedure TMainFrm.lucViewModeChange(Sender: TObject);
var
// AComboBox: TcxComboBox;
// ALookupComboBox: TcxLookupComboBox;
// AFromDateEdit, AToDateEdit: TcxDateEdit;
  RegKey: TRegistry;
// MonthEndDate: TDateTime;
begin
  inherited;
  ribMain.BeginUpdate;
// AComboBox := TcxBarEditItemControl(lucViewMode.Links[0].Control).Edit as TcxComboBox;
  lucPeriod.Enabled := lucViewMode.ItemIndex = 0;
  lucFromDate.Enabled := not lucPeriod.Enabled;
  lucToDate.Enabled := not lucPeriod.Enabled;

  if lucViewMode.ItemIndex = 0 then
  begin
    lbl1.Visible := ivAlways;
//    lbl3.Visible := ivNever;
  end
  else
  begin
    lbl1.Visible := ivNever;
//    lbl3.Visible := ivAlways;
  end;

// MonthEndDate := GetMonthEndDate(FTimesheetPeriod);

  try
    case lucViewMode.ItemIndex of
      0:
        begin
          lucPeriod.Visible := ivAlways;
          lucFromDate.Visible := ivNever;
          lucToDate.Visible := ivNever;
        end;

      1:
        begin
          lucPeriod.Visible := ivNever;
          lucFromDate.Visible := ivAlways;
          lucToDate.Visible := ivAlways;
        end;
    end;
  finally
    ribMain.EndUpdate;
  end;

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIMESHEET, True);
    RegKey.WriteInteger('View Mode Index', lucViewMode.ItemIndex);
  finally
    RegKey.Free
  end;

  if not FShowingForm then
    actGetTimesheetData.Execute;
end;

procedure TMainFrm.lucViewModePropertiesEditValueChanged(Sender: TObject);
var
// AComboBox: TcxComboBox;
// ALookupComboBox: TcxLookupComboBox;
// AFromDateEdit, AToDateEdit: TcxDateEdit;
  RegKey: TRegistry;
// MonthEndDate: TDateTime;
begin
  inherited;
// barToolbar.Bars.BeginUpdate;
// AComboBox := TcxBarEditItemControl(lucViewMode.Links[0].Control).Edit as TcxComboBox;
  lucPeriod.Enabled := lucViewMode.ItemIndex = 0;
  lucFromDate.Enabled := not lucPeriod.Enabled;
  lucToDate.Enabled := not lucPeriod.Enabled;
// MonthEndDate := GetMonthEndDate(FTimesheetPeriod);

// try
// case AComboBox.ItemIndex of
// 0:
// begin
// lucPeriod.Visible := ivAlways;
// lblPeriod.Visible := ivAlways;
// lblFromDate.Visible := ivNever;
// lucFromDate.Visible := ivNever;
// lblToDate.Visible := ivNever;
// lucToDate.Visible := ivNever;
// end;
//
// 1:
// begin
// lucPeriod.Visible := ivNever;
// lblPeriod.Visible := ivNever;
// lblFromDate.Visible := ivAlways;
// lucFromDate.Visible := ivAlways;
// lblToDate.Visible := ivAlways;
// lucToDate.Visible := ivAlways;
// end;
// end;
// finally
// barToolbar.Bars.EndUpdate(True);
// end;

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIMESHEET, True);
    RegKey.WriteInteger('View Mode Index', lucViewMode.ItemIndex);
  finally
    RegKey.Free
  end;
// if not FShowingForm then
// actGetTimesheetData.Execute;
end;

procedure TMainFrm.DoOptions(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    if TimesheetOptionsFrm = nil then
      TimesheetOptionsFrm := TTimesheetOptionsFrm.Create(nil);
    TimesheetOptionsFrm.ShowModal;
    TimesheetOptionsFrm.Close;
    FreeAndNil(TimesheetOptionsFrm);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoPrint(Sender: TObject);
var
  WhereClause, UserClause, OrderByClause, DateClause, FileName,
    RepFileName {, CarryForwardClause}: string;
begin
  inherited;
  Screen.Cursor := crHourglass;
  FileName := 'Timesheet Detail by User';
  DateClause := 'WHERE T.THE_PERIOD = ' + FTimesheetPeriod.ToString;
  UserClause := ' AND T.USER_ID IN (' + FTSUserID.ToString + ')';
//  CarryForwardClause = ' AND T.CARRY_FORWARD = 1 ';

  OrderByClause := 'ORDER BY T.ACTIVITY_DATE';
  WhereClause := DateClause + {CarryForwardClause + }UserClause + ' ';
//  ReportDM.Report := ReportDM.rptTimesheetByUser;
  ReportDM.Report := ReportDM.rptTimesheetDetail;

  try
    VBBaseDM.GetData(45, ReportDM.cdsTSBillable, ReportDM.cdsTSBillable.Name, WhereClause + ';' + OrderByClause,
      'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsTSBillable.UpdateOptions.Generatorname,
      ReportDM.cdsTSBillable.UpdateOptions.UpdateTableName);

    RepFileName := TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[0]; // 'TimesheetByUser.fr3';

    if not TFile.Exists(RepFileName) then
      raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

    ReportDM.Report.LoadFromFile(TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[0] {'TimesheetByUser.fr3'});

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
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoExcel(Sender: TObject);
var
  WhereClause, UserClause, OrderByClause, DateClause, FileName, RepFileName: string;
  FolderPath, ExportFileName: string;
  FileSaved: Boolean;
begin
  inherited;
  FolderPath := EXCEL_DOCS;
// FolderPath := MainFrm.FShellResource.RootFolder + '\' + FSHIFT_FOLDER + 'Export\';
  TDirectory.CreateDirectory(FolderPath);
  dlgFileSave.DefaultExt := 'xlsx';
  dlgFileSave.InitialDir := FolderPath;
  dlgFileSave.FileName := '*.xlsx';
  FileSaved := dlgFileSave.Execute;

  if not FileSaved then
    Exit;

// if dlgFileSave.Execute then
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

  FileName := 'Timesheet Detail by User';
  DateClause := 'WHERE T.THE_PERIOD = ' + FTimesheetPeriod.ToString;
  UserClause := ' AND T.USER_ID IN (' + FTSUserID.ToString + ')';
  OrderByClause := 'ORDER BY T.ACTIVITY_DATE';
  WhereClause := DateClause + UserClause + ' ';
//  ReportDM.Report := ReportDM.rptTimesheetByUser;
  ReportDM.Report := ReportDM.rptTimesheetDetail;

  VBBaseDM.GetData(45, ReportDM.cdsTSBillable, ReportDM.cdsTSBillable.Name, WhereClause + ';' + OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsTSBillable.UpdateOptions.Generatorname,
    ReportDM.cdsTSBillable.UpdateOptions.UpdateTableName);

  RepFileName := TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[0]; //'TimesheetByUser.fr3';

  if not TFile.Exists(RepFileName) then
    raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

  ReportDM.Report.LoadFromFile(TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[0] {'TimesheetByUser.fr3'});

  edtTCustomerName.Visible := True;
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

// if cbxOepnDocument.Checked then
    ShellExecute(0, 'open', PChar('Excel.exe'), PChar('"' + ExportFileName + '"'), nil, SW_SHOWNORMAL)
  finally
    viewTimesheetBillable.OptionsView.BandHeaders := True;
  end;
end;

procedure TMainFrm.DoPDF(Sender: TObject);
var
  WhereClause, UserClause, OrderByClause, DateClause, FileName, RepFileName: string;
  FileSaved: Boolean;
  DC: TcxCustomDataController;
begin
  inherited;
  Screen.Cursor := crHourglass;
  ReportDM.frxPDFExport.ShowDialog := False;
  ReportDM.frxPDFExport.Background := True;
  ReportDM.frxPDFExport.OpenAfterExport := True; // cbxOepnDocument.Checked;
  ReportDM.frxPDFExport.OverwritePrompt := True;
  ReportDM.frxPDFExport.ShowProgress := True;
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

  DC := viewTimesheetBillable.DataController;
  try
    FileName := 'Timesheet Detail by User';
    DateClause := 'WHERE T.THE_PERIOD = ' + FTimesheetPeriod.ToString;
    UserClause := ' AND T.USER_ID IN (' + FTSUserID.ToString + ')';
    OrderByClause := 'ORDER BY T.ACTIVITY_DATE';
    WhereClause := DateClause + UserClause + ' ';
//    ReportDM.Report := ReportDM.rptTimesheetByUser;
    ReportDM.Report := ReportDM.rptTimesheetDetail;

    VBBaseDM.GetData(45, ReportDM.cdsTSBillable, ReportDM.cdsTSBillable.Name, WhereClause + ';' + OrderByClause,
      'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsTSBillable.UpdateOptions.Generatorname,
      ReportDM.cdsTSBillable.UpdateOptions.UpdateTableName);

    RepFileName := TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[0]; //'TimesheetByUser.fr3';

    if not TFile.Exists(RepFileName) then
      raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

    ReportDM.Report.LoadFromFile(TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[0] {'TimesheetByUser.fr3'});

    edtTCustomerName.Visible := True;
    viewTimesheetBillable.OptionsView.BandHeaders := False;

    DC.BeginUpdate;
    ReportDM.frxPDFExport.FileName := dlgFileSave.FileName;
    if ReportDM.Report.PrepareReport(True) then
      ReportDM.Report.Export(ReportDM.frxPDFExport);
  finally
    ReportDM.cdsTSBillable.First;
    viewTimesheetBillable.OptionsView.BandHeaders := True;
    DC.EndUpdate;
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.WMCopyData(var Msg: TWMCopyData);
begin
  HandleIncomingMessage(Msg.CopyDataStruct, Msg);
end;

procedure TMainFrm.HandleIncomingMessage(DataStructure: PCopyDataStruct; Msg: TWMCopyData);
var
  S, SkinName: string;
  ID: Integer;
  RegKey: TRegistry;
begin
  // Get the message sent from the client app.
  S := PChar(DataStructure.lpData);
  ID := StrToInt(PChar(DataStructure.lpData));
  case ID of
    1: // Change Skin
      begin
        RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
        RegKey.RootKey := HKEY_CURRENT_USER;
        try
          RegKey.OpenKey(KEY_USER_PREFERENCES, True);
          SkinName := RegKey.ReadString('Skin Name');
          UpdateApplicationSkin(FSkinResourceFileName {, SkinName});
          RegKey.CloseKey;
        finally
          RegKey.Free;
        end;
      end;
  end;
end;

end.

