unit Main_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.Win.Registry, Data.DB,
  System.DateUtils, System.IOUtils, Winapi.ShellApi, System.Types,

  Base_Frm, BaseLayout_Frm, VBProxyClass, VBCommonValues, CommonFunctions, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxScreenTip, dxCustomHint, cxHint,
  dxSkinsForm, cxNavigator, cxDBNavigator, dxBar, dxStatusBar, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxDBLookupComboBox,
  cxTextEdit, cxCheckBox, cxCalendar, CommonMethods, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxDropDownEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  dxBarExtItems, cxBarEditItem, cxMemo, Vcl.Menus, dxScrollbarAnnotations,
  dxRibbonSkins, dxRibbonCustomizationForm, dxRibbon, dxPrnDev, dxPrnDlg,
  cxGridExportLink, cxDataUtils;

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
    sbrMain: TdxStatusBar;
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
    dteInvoiceDate: TcxGridDBBandedColumn;
    cbxCarryForward: TcxGridDBBandedColumn;
    cbxApproved: TcxGridDBBandedColumn;
    cbxAddWork: TcxGridDBBandedColumn;
    btnPreview: TdxBarLargeButton;
    actGetTimesheetData: TAction;
    lucPeriod: TcxBarEditItem;
    lucUser: TcxBarEditItem;
    lucViewMode: TdxBarCombo;
    dteFromDate: TcxBarEditItem;
    dteToDate: TcxBarEditItem;
    actPreview: TAction;
    actPrint: TAction;
    actPDF: TAction;
    actExcel: TAction;
    actTimsheetDetail: TAction;
    actOptions: TAction;
    btnPrint: TdxBarLargeButton;
    btnPDF: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
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
    actToggleApprovalStatus: TAction;
    btnApprove: TdxBarLargeButton;
    actApprove: TAction;
    actUnApprove: TAction;
    N1: TMenuItem;
    Approve1: TMenuItem;
    UnApprove1: TMenuItem;
    popApproval: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    btnUnApprove: TdxBarButton;
    tipApprove: TdxScreenTip;
    btnToggleBillable: TdxBarLargeButton;
    actBilable: TAction;
    actNotBillable: TAction;
    actToggleBillable: TAction;
    popBillable: TdxBarPopupMenu;
    btnBillable: TdxBarButton;
    btnNotBillable: TdxBarButton;
    N2: TMenuItem;
    Billable1: TMenuItem;
    NotBillable1: TMenuItem;
    tipBillable: TdxScreenTip;
    popInvoice: TdxBarPopupMenu;
    actInvoiceItem: TAction;
    actUnInvoice: TAction;
    btnInvoice: TdxBarLargeButton;
    btnInvoiceItem: TdxBarButton;
    btnUnInvoiceItem: TdxBarButton;
    N3: TMenuItem;
    Invoice1: TMenuItem;
    UnInvoice1: TMenuItem;
    popCarryForward: TdxBarPopupMenu;
    actCarryForward: TAction;
    actClearCarryForward: TAction;
    btnCarryForward: TdxBarButton;
    btnClearCarryForwrd: TdxBarButton;
    btnCarryFwd: TdxBarLargeButton;
    N4: TMenuItem;
    CarryForward1: TMenuItem;
    ClearCarryForward1: TMenuItem;
    tipInvoice: TdxScreenTip;
    tipCarryForward: TdxScreenTip;
    actMonthlyBilling: TAction;
    btnMonthlyBilling: TdxBarLargeButton;
    tipMonthlyBilling: TdxScreenTip;
    edtDateCfwdReleased: TcxGridDBBandedColumn;
    edtReleaseCfwdToPeriod: TcxGridDBBandedColumn;
    procedure DoExitTimesheetManager(Sender: TObject);
    procedure DoEditInsertEntry(Sender: TObject);
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
  private
    { Private declarations }
    FTSUserID: Integer;
    FTimesheetPeriod: Integer;
    FIteration: Extended;
    FShowingForm: Boolean;
    FFromDate: TDateTime;
    FToDate: TDateTime;

    procedure UpdateApplicationSkin(SkinResourceFileName, SkinName: string);
    procedure OpenTables;
    procedure SetButtonStatus(EditMode: Boolean);
    procedure VerifyRegistry;
    procedure ReadRegValues;
    procedure ApproveTimesheetItem(ATag: Integer);
    procedure BillTimesheetItem(ATag: Integer);
    procedure InvoiceTimesheetItem;
    procedure UnInvoiceTimesheetItem;
    procedure CarryForwardItem(ATag: Integer);
  protected
    procedure HandleStateChange(var MyMsg: TMessage); message WM_STATE_CHANGE;
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
  public
    { Public declarations }
  end;

var
  MainFrm: TMainFrm;

const
  TABLE_COUNT = 8;

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
  TimesheetPrefrrences_Frm,
  TimesheetDetailReport_Frm,
  BillableSummary_Frm,
  TimesheetActivitySummary_Frm,
  InvoiceItem_Frm, MonthlyBillableReport_Frm;

procedure TMainFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TMainFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := Application.Title;
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  ribMain.ActiveTab := tabTimesheet;
  ribMain.Update;
end;

procedure TMainFrm.FormShow(Sender: TObject);
var
  VBShell: string;
  {$IFDEF DEBUG}ErrorMsg, {$ENDIF}SkinResourceFileName, SkinName: string;
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
    SkinResourceFileName := RESOURCE_FOLDER + SKIN_RESOURCE_FILE;
    SkinName := TSDM.ShellResource.SkinName;

    if Length(Trim(SkinName)) = 0 then
      SkinName := DEFAULT_SKIN_NAME;

    UpdateApplicationSkin(SkinResourceFileName, SkinName);

    if BaseFrm = nil then
      BaseFrm := TBaseFrm.Create(nil);

    VBBaseDM.CurrentPeriod := RUtils.CurrentPeriod(Date);
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
    TcxDateEditProperties(dteFromDate.Properties).MinDate := StrToDate('01/01/2019');
    TcxDateEditProperties(dteFromDate.Properties).MaxDate := Date;
    TcxDateEditProperties(dteToDate.Properties).MinDate := StrToDate('01/01/2019');
    TcxDateEditProperties(dteToDate.Properties).MaxDate := Date;

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
      RegKey.OpenKey(KEY_TIME_SHEET, True);
      FFromDate := RegKey.ReadDate('From Date');
      dteFromDate.EditValue := FFromDate;
      FToDate := RegKey.ReadDate('To Date');
      dteToDate.EditValue := FToDate;
      FTimesheetPeriod := RegKey.ReadInteger('Period');
      lucPeriod.EditValue := FTimesheetPeriod;

      if not TSDM.cdsTSPeriod.Locate('THE_PERIOD', FTimesheetPeriod, []) then
      begin
        TSDM.cdsTSPeriod.First;
        FTimesheetPeriod := TSDM.cdsTSPeriod.FieldByName('THE_PERIOD').AsInteger;
      end;

      GetMonthEndDate(FTimesheetPeriod);
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
      viewTimesheet.Controller.FocusedRecord.Selected := True;
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

procedure TMainFrm.DoCopyCell(Sender: TObject);
begin
  inherited;
  CopyCellValue(viewTimesheet);
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
    Exit;

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
  C.DeleteSelection;
  TSDM.PostData(TSDM.cdsTimesheet);
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

procedure TMainFrm.DoTimeSheetDetail(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    if TimesheetDetailReportFrm = nil then
      TimesheetDetailReportFrm := TTimesheetDetailReportFrm.Create(nil);
    TimesheetDetailReportFrm.ShowModal;
    TimesheetDetailReportFrm.Close;
    FreeAndNil(TimesheetDetailReportFrm);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.btnApproveClick(Sender: TObject);
var
  aControl: TdxBarItemControl;
  APopupPoint: TPoint;
begin
  inherited;
  aControl := TdxBarButton(Sender).ClickItemLink.Control;
  APopupPoint := Point(aControl.ItemBounds.Left, aControl.ItemBounds.Bottom);
  APopupPoint := aControl.Parent.ClientToScreen(APopupPoint);

  case TdxBarLargeButton(Sender).Tag of
    0: popApproval.Popup(APopupPoint.X, APopupPoint.Y);
    1: popBillable.Popup(APopupPoint.X, APopupPoint.Y);
    2: popInvoice.Popup(APopupPoint.X, APopupPoint.Y);
    3: popCarryForward.Popup(APopupPoint.X, APopupPoint.Y);
  end;
end;

procedure TMainFrm.DoApprovalStatus(Sender: TObject);
begin
  inherited;
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
  I: Integer;
  RecIndex, ChangeCount: Integer;
begin
  inherited;
  DC := viewTimesheet.DataController;
  C := viewTimesheet.Controller;
//  DC.BeginUpdate;
  ChangeCount := 0;

//  try
  begin
    for I := 0 to C.SelectedRecordCount - 1 do
    begin
      RecIndex := C.SelectedRecords[I].RecordIndex;
      DC.FocusedRecordIndex := RecIndex;

      if DC.Values[C.SelectedRecords[I].RecordIndex, edtInvoiceID.Index] <= 0 then
      begin
        DC.Edit;

        case ATag of
          100: // Approve
            if DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] = 0 then
            begin
              DC.SetEditValue(cbxApproved.Index, 1, evsValue);
              DC.Post(True);
              Inc(ChangeCount);
            end;

          101: // Un-approve
            if DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] = 1 then
            begin
              DC.SetEditValue(cbxApproved.Index, 0, evsValue);
              DC.Post(True);
              Inc(ChangeCount);
            end;
        end;
      end;
    end;
  end;

//      if ChangeCount = 0 then
//      begin
//        Beep;
//        DisplayMsg(
//          Application.Title,
//          'Data Validation Error',
//          'One or more items could not be invoiced.' + CRLF + CRLF +
//          'Possible reason(s):' + CRLF +
//          'Item is locked.' + CRLF +
//          'Item has not yet been approved.' + CRLF +
//          'Item is carried forward.',
//          mtError,
//          [mbOK]
//          );
//      end
//      else
  if ChangeCount > 0 then
    TSDM.PostData(TSDM.cdsTimesheet);

// if DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] = 0 then
// DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] := 1
// else
// DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] := 0;
//
// DC.Post(True);
// end;
// TSDM.PostData(TSDM.cdsTimesheet);
//  finally
//    DC.EndUpdate;
//  end;
end;

procedure TMainFrm.DoCarryForward(Sender: TObject);
begin
  inherited;
  CarryForwardItem(TAction(Sender).Tag);
end;

procedure TMainFrm.CarryForwardItem(ATag: Integer);
var
  DC: TcxDBDataController;
  C: TcxCustomGridTableController;
  I, RecIndex, ChangeCount: Integer;
begin
  inherited;
  DC := viewTimesheet.DataController;
  C := viewTimesheet.Controller;
//  DC.BeginUpdate;
  ChangeCount := 0;

//  try
//  begin
  for I := 0 to C.SelectedRecordCount - 1 do
  begin
    RecIndex := C.SelectedRecords[I].RecordIndex;
    DC.FocusedRecordIndex := RecIndex;
    DC.Edit;

    case ATag of
      130: // Carry forward
        begin
//            DC.Values[C.SelectedRecords[I].RecordIndex, cbxCarryForward.Index] := 1;
//            DC.Values[C.SelectedRecords[I].RecordIndex, edtInvoiceID.Index] := 0;

          if DC.Values[C.SelectedRecords[I].RecordIndex, cbxCarryForward.Index] = 0 then
          begin
            DC.SetEditValue(cbxCarryForward.Index, 1, evsValue);
            DC.SetEditValue(edtInvoiceID.Index, 0, evsValue);
            DC.Post(True);
//      DC.PostEditingData;
            Inc(ChangeCount);
          end;
        end;

      131: // Release carry forward
        begin
//            DC.Values[RecIndex, cbxCarryForward.Index] := 0;
//            DC.Values[RecIndex, edtInvoiceID.Index] := -1;

          if DC.Values[C.SelectedRecords[I].RecordIndex, cbxCarryForward.Index] = 1 then
          begin
            DC.SetEditValue(cbxCarryForward.Index, 0, evsValue);
            DC.SetEditValue(edtInvoiceID.Index, -1, evsValue);
            DC.Post(True);
//      DC.PostEditingData;
            Inc(ChangeCount);
          end;
        end;
    end;
  end;
//  end;

  if ChangeCount > 0 then
    TSDM.PostData(TSDM.cdsTimesheet);
//  finally
//    DC.EndUpdate;
//  end;
end;

procedure TMainFrm.DoBillable(Sender: TObject);
begin
  inherited;
  BillTimesheetItem(TAction(Sender).Tag);

// case TAction(Sender).Tag of
// 110: BillTimesheetItem(abBillable);
// 111: BillTimesheetItem(abNotBillable);
// 112: BillTimesheetItem(abToggleBillable);
// end;
end;

procedure TMainFrm.BillTimesheetItem(ATag: Integer);
var
  DC: TcxDBDataController;
  C: TcxCustomGridTableController;
  I: Integer;
  RecIndex: Integer;
  ChangeCount: Integer;
begin
  inherited;
  DC := viewTimesheet.DataController;
  C := viewTimesheet.Controller;
//  DC.BeginUpdate;

//  try
//  begin
  for I := 0 to C.SelectedRecordCount - 1 do
  begin
    DC.Edit;
    RecIndex := C.SelectedRecords[I].RecordIndex;
    DC.FocusedRecordIndex := RecIndex;

    if DC.Values[C.SelectedRecords[I].RecordIndex, cbxLocked.Index] = 0 then
    begin
      case ATag of
        110:
          begin
            if (DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] = 0)
              and (DC.Values[C.SelectedRecords[I].RecordIndex, cbxCarryForward.Index] = 0) then
              DC.SetEditValue(cbxBillable.Index, 1, evsValue);
            DC.Post(True);
            Inc(ChangeCount);
          end;
        111:
          begin
            DC.SetEditValue(cbxBillable.Index, 0, evsValue);
            DC.Post(True);
            Inc(ChangeCount);
          end;
      end;

// case VarAstype(lucRateUnit.EditValue, varInteger) of
// 1: edtitemValue.Value := edtTimeSpent.Value * edtRate.Value / 60;
// else
// edtitemValue.Value := {edtTimeSpent.Value * }edtRate.Value;
// end;

      DC.SetEditValue(edtItemValue.Index, 0, evsValue);
// DC.Values[RecIndex, edtItemValue.Index] := 0;

      if DC.Values[RecIndex, cbxBillable.Index] = 1 then
        if DC.Values[RecIndex, lucRateUnit.Index] = 1 then
          DC.SetEditValue(edtItemValue.Index, DC.Values[RecIndex, edtTimeSpent.Index] *
            DC.Values[RecIndex, edtRate.Index] / 60, evsValue)
// DC.Values[RecIndex, edtItemValue.Index] := DC.Values[RecIndex, edtTimeSpent.Index] *
// DC.Values[RecIndex, edtRate.Index] / 60
        else
          DC.SetEditValue(edtItemValue.Index,
            DC.Values[RecIndex, edtRate.Index], evsValue);
// DC.Values[RecIndex, edtItemValue.Index] := DC.Values[RecIndex, edtRate.Index];

    end;
  end;
//  end;
  if ChangeCount > 0 then
    TSDM.PostData(TSDM.cdsTimesheet);
//  actRefresh.Execute;

// if DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] = 0 then
// DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] := 1
// else
// DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] := 0;
//
// DC.Post(True);
// end;
// TSDM.PostData(TSDM.cdsTimesheet);
//  finally
//    DC.EndUpdate;
//  end;
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
  I, ChangeCount: Integer;
  RecIndex: Integer;
  InvoiceDate: TDateTime;
begin
  inherited;
  if InvoiceItemFrm = nil then
    InvoiceItemFrm := TInvoiceItemFrm.Create(nil);

  if InvoiceItemFrm.ShowModal = mrOK then
    try
//      InvoiceDate := VarAsType(InvoiceItemFrm.dteInvoiceDate.EditValue, varDate);
      InvoiceDate := TSDM.DefaultInvoiceDate;
      DC := viewTimesheet.DataController;
      C := viewTimesheet.Controller;
      ChangeCount := 0;

      for I := 0 to C.SelectedRecordCount - 1 do
      begin
        // If item is NOT locked...
        if DC.Values[C.SelectedRecords[I].RecordIndex, cbxLocked.Index] = 0 then
        begin
          DC.Edit;
          RecIndex := C.SelectedRecords[I].RecordIndex;
          DC.FocusedRecordIndex := RecIndex;

          // If item is approved AND it is NOT carried forward...
          if (DC.Values[C.SelectedRecords[I].RecordIndex, cbxApproved.Index] = 1)
            and (DC.Values[C.SelectedRecords[I].RecordIndex, cbxCarryForward.Index] = 0) then
            if DC.Values[C.SelectedRecords[I].RecordIndex, edtInvoiceID.Index] <= 0 then
            begin
              DC.SetEditValue(edtInvoiceID.Index, 1, evsValue);
              DC.SetEditValue(cbxLocked.Index, 1, evsValue);
              DC.SetEditValue(dteInvoiceDate.Index, InvoiceDate, evsValue);
              Inc(ChangeCount);
            end;
        end;
        DC.Post(True);
      end;

//      if ChangeCount = 0 then
//      begin
//        Beep;
//        DisplayMsg(
//          Application.Title,
//          'Data Validation Error',
//          'One or more items could not be invoiced.' + CRLF + CRLF +
//          'Possible reason(s):' + CRLF +
//          'Item is locked.' + CRLF +
//          'Item has not yet been approved.' + CRLF +
//          'Item is carried forward.',
//          mtError,
//          [mbOK]
//          );
//      end
//      else
//      begin
      if ChangeCount > 0 then
        TSDM.PostData(TSDM.cdsTimesheet);
//        actRefresh.Execute;
//      end;
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
        DC.SetEditValue(dteInvoiceDate.Index, Null, evsValue);
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
      TSDM.PostData(TSDM.cdsTimesheet);
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
// C: TcxCustomGridTableController;
begin
  inherited;
  DC := viewTimesheet.DataController;
// C := viewTimesheet.Controller;
  if DC.Values[AViewInfo.GridRecord.Index, cbxApproved.Index] then
    ACanvas.Brush.Color := clGreen
  else
    ACanvas.Brush.Color := clMaroon;
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
  WhereClause, OrderByClause: string;
  AToDateEdit: TcxDateEdit;
begin
  inherited;
  Screen.Cursor := crHourglass;
  if lucViewMode.ItemIndex = 0 then
  begin
    if FTimesheetPeriod < 201901 then
      raise EValidateException.Create('Invalid period. Please select a valid period and try again.');

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
      raise EValidateException.Create('Ivalide From and/or to date. Please sselect valid dates and try again.');

    if FFromDate > FToDate then
    begin
      dteToDate.SetFocus;
      AToDateEdit := TcxBarEditItemControl(dteToDate.Links[0].Control).Edit as TcxDateEdit;
      AToDateEdit.Date := FFromDate;
    end;

    WhereClause := ' WHERE T.USER_ID =' + FTSUserID.ToString +
      ' AND T.ACTIVITY_DATE >=' + AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', FFromDate), '''') +
      ' AND T.ACTIVITY_DATE <=' + AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', FToDate), '''');

    OrderByClause := ' ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE';
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

    VBBaseDM.GetData(27, TSDM.cdsTimesheet, TSDM.cdsTimesheet.Name, WhereClause {ParamList},
      'C:\Data\Xml\Timesheet.xml', TSDM.cdsTimesheet.UpdateOptions.Generatorname,
      TSDM.cdsTimesheet.UpdateOptions.UpdateTableName);

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

procedure TMainFrm.UpdateApplicationSkin(SkinResourceFileName, SkinName: string);
begin
  sknController.BeginUpdate;
  try
    sknController.NativeStyle := False;
    sknController.UseSkins := True;
    if dxSkinsUserSkinLoadFromFile(SkinResourceFileName, SkinName) then
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
    RegKey.OpenKey(KEY_TIME_SHEET, True);

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
    RegKey.OpenKey(KEY_TIME_SHEET, True);
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
  finally
    RegKey.Free
  end;
end;

procedure TMainFrm.ribMainTabChanged(Sender: TdxCustomRibbon);
begin
  inherited;
  litTimesheet.Visible := ribMain.ActiveTab = tabTimesheet;
end;

procedure TMainFrm.viewTimesheetCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord = nil then
    Exit;

  if AViewInfo.GridRecord.Focused then
  // This renders the background and font colours of the focused record
  begin
    if AViewInfo.Item <> nil then
      if (AViewInfo.Item <> cbxApproved) and (AViewInfo.Item.Focused) then
      begin
        // This renders the background and border colour of the focused cell
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

  try
    Counter := 1;
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
    inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Price List Table' + '|PROGRESS=' + FIteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Pricelist Table Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);
    VBBaseDM.GetData(42, TSDM.cdsPriceList, TSDM.cdsPriceList.Name, ONE_SPACE,
      'C:\Data\Xml\Price List.xml', TSDM.cdsPriceList.UpdateOptions.Generatorname,
      TSDM.cdsPriceList.UpdateOptions.UpdateTableName);

    if not TSDM.cdsPriceList.Active then
      TSDM.cdsPriceList.CreateDataSet;

    // Activity Type
    inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Activity Type Table' + '|PROGRESS=' + FIteration.ToString)), 0);
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

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Customer Group Table' + '|PROGRESS=' + FIteration.ToString)), 0);
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

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Rate Unit Table' + '|PROGRESS=' + FIteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Rate Unit Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);
    VBBaseDM.GetData(38, TSDM.cdsRateUnit, TSDM.cdsRateUnit.Name, ONE_SPACE,
      'C:\Data\Xml\Rate Unit.xml', TSDM.cdsRateUnit.UpdateOptions.Generatorname,
      TSDM.cdsRateUnit.UpdateOptions.UpdateTableName);

    if not TSDM.cdsRateUnit.Active then
      TSDM.cdsRateUnit.CreateDataSet;

    // Period - From timesheet
    inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Timesheet Period Table' + '|PROGRESS=' + FIteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening Timesheet Period Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);
    VBBaseDM.GetData(62, TSDM.cdsTSPeriod, TSDM.cdsTSPeriod.Name, ONE_SPACE,
      'C:\Data\Xml\Timesheet Period.xml', TSDM.cdsTSPeriod.UpdateOptions.Generatorname,
      TSDM.cdsTSPeriod.UpdateOptions.UpdateTableName);

    if not TSDM.cdsTSPeriod.Active then
      TSDM.cdsTSPeriod.CreateDataSet;

// // Timesheet
// Inc(Counter);
// FIteration := Counter / TABLE_COUNT * 100;
//
// SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Timesheet Table' + '|PROGRESS=' + FIteration.ToString)), 0);
// actGetTimesheetData.Execute;

    inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;

    // System User
    inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;

//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening System User Table' + '|PROGRESS=' + FIteration.ToString)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Opening System User Table')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FIteration.ToString)), 0);
    VBBaseDM.GetData(24, TSDM.cdsSystemUser, TSDM.cdsSystemUser.Name, ONE_SPACE,
      'C:\Data\Xml\System User.xml', TSDM.cdsSystemUser.UpdateOptions.Generatorname,
      TSDM.cdsSystemUser.UpdateOptions.UpdateTableName);

    if not TSDM.cdsSystemUser.Active then
      TSDM.cdsSystemUser.CreateDataSet;

    inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;
// // Vehicle
// Inc(Counter);
// FIteration := Counter / TABLE_COUNT * 100;
//
// SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Vehicle Table' + '|PROGRESS=' + FIteration.ToString)), 0);
// VBBaseDM.GetData(49, TSDM.cdsVehicle, TSDM.cdsVehicle.Name, ONE_SPACE,
// 'C:\Data\Xml\Vehicle.xml', TSDM.cdsVehicle.UpdateOptions.Generatorname,
// TSDM.cdsVehicle.UpdateOptions.UpdateTableName);
//
// if not TSDM.cdsVehicle.Active then
// TSDM.cdsVehicle.CreateDataSet;
//
/// / Open all lookup tables  -----------------------------------------------------
//
// // Contact type
// Inc(Counter);
// FIteration := Counter / TABLE_COUNT * 100;
//
// SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Contact Type Table' + '|PROGRESS=' + FIteration.ToString)), 0);
// VBBaseDM.GetData(11, LookupDM.cdsContactType, LookupDM.cdsContactType.Name, ONE_SPACE,
// 'C:\Data\Xml\Contact Type.xml', LookupDM.cdsContactType.UpdateOptions.Generatorname,
// LookupDM.cdsContactType.UpdateOptions.UpdateTableName);
//
// // Salutation
// Inc(Counter);
// FIteration := Counter / TABLE_COUNT * 100;
//
// SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Salutation Table' + '|PROGRESS=' + FIteration.ToString)), 0);
// VBBaseDM.GetData(23, LookupDM.cdsSalutation, LookupDM.cdsSalutation.Name, ONE_SPACE,
// 'C:\Data\Xml\Slutation.xml', LookupDM.cdsSalutation.UpdateOptions.Generatorname,
// LookupDM.cdsSalutation.UpdateOptions.UpdateTableName);
//
// LookupDM.cdsBFSalutation.Close;
// LookupDM.cdsDirectorSalutation.Close;
//
// LookupDM.cdsBFSalutation.Data := LookupDM.cdsSalutation.Data;
// LookupDM.cdsDirectorSalutation.Data := LookupDM.cdsSalutation.Data;
//
// // Job function
// Inc(Counter);
// FIteration := Counter / TABLE_COUNT * 100;
//
// SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Job Function Table' + '|PROGRESS=' + FIteration.ToString)), 0);
// VBBaseDM.GetData(19, LookupDM.cdsJobFunction, LookupDM.cdsJobFunction.Name, ONE_SPACE,
// 'C:\Data\Xml\Job Function.xml', LookupDM.cdsJobFunction.UpdateOptions.Generatorname,
// LookupDM.cdsJobFunction.UpdateOptions.UpdateTableName);
//
// // Bank
// Inc(Counter);
// FIteration := Counter / TABLE_COUNT * 100;
//
// SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Bank Table' + '|PROGRESS=' + FIteration.ToString)), 0);
// VBBaseDM.GetData(5, LookupDM.cdsBank, LookupDM.cdsBank.Name, ONE_SPACE,
// 'C:\Data\Xml\Bank.xml', LookupDM.cdsBank.UpdateOptions.Generatorname,
// LookupDM.cdsBank.UpdateOptions.UpdateTableName);
//
// // Bank account type
// Inc(Counter);
// FIteration := Counter / TABLE_COUNT * 100;
//
// SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Bank Account Type Table' + '|PROGRESS=' + FIteration.ToString)), 0);
// VBBaseDM.GetData(6, LookupDM.cdsBankAccountType, LookupDM.cdsBankAccountType.Name, ONE_SPACE,
// 'C:\Data\Xml\Bank Account Type.xml', LookupDM.cdsBankAccountType.UpdateOptions.Generatorname,
// LookupDM.cdsBankAccountType.UpdateOptions.UpdateTableName);
//
// // Vehicle make
// Inc(Counter);
// FIteration := Counter / TABLE_COUNT * 100;
//
// SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Vehicle Make Table' + '|PROGRESS=' + FIteration.ToString)), 0);
// VBBaseDM.GetData(48, LookupDM.cdsVehicleMake, LookupDM.cdsVehicleMake.Name, ONE_SPACE,
// 'C:\Data\Xml\Vehicle Make.xml', LookupDM.cdsVehicleMake.UpdateOptions.Generatorname,
// LookupDM.cdsVehicleMake.UpdateOptions.UpdateTableName);
//
// // Month of Year
// Inc(Counter);
// FIteration := Counter / TABLE_COUNT * 100;
//
// SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Month of Year Table' + '|PROGRESS=' + FIteration.ToString)), 0);
// VBBaseDM.GetData(20, LookupDM.cdsMonthOfYear, LookupDM.cdsMonthOfYear.Name, ONE_SPACE,
// 'C:\Data\Xml\Month of Year.xml', LookupDM.cdsMonthOfYear.UpdateOptions.Generatorname,
// LookupDM.cdsMonthOfYear.UpdateOptions.UpdateTableName);
//
// LookupDM.cdsARMonthOfYear.Close;
// LookupDM.cdsVATMonth.Close;
//
// LookupDM.cdsARMonthOfYear.Data := LookupDM.cdsSalutation.Data;
// LookupDM.cdsVATMonth.Data := LookupDM.cdsSalutation.Data;
  finally
// ProgressFrm.Close;
// FreeAndNil(ProgressFrm);
  end;
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

procedure TMainFrm.lucPeriodPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  FTimesheetPeriod := lucPeriod.EditValue;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);
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
  dteFromDate.SetFocus;
  AFromDateEdit := TcxBarEditItemControl(dteFromDate.Links[0].Control).Edit as TcxDateEdit;
  FFromDate := AFromDateEdit.Date;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);

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
  dteToDate.SetFocus;
  AToDateEdit := TcxBarEditItemControl(dteToDate.Links[0].Control).Edit as TcxDateEdit;
  FToDate := AToDateEdit.Date;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);

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
  dteFromDate.Enabled := not lucPeriod.Enabled;
  dteToDate.Enabled := not lucPeriod.Enabled;
// MonthEndDate := GetMonthEndDate(FTimesheetPeriod);

  try
    case lucViewMode.ItemIndex of
      0:
        begin
          lucPeriod.Visible := ivAlways;
          dteFromDate.Visible := ivNever;
          dteToDate.Visible := ivNever;
        end;

      1:
        begin
          lucPeriod.Visible := ivNever;
          dteFromDate.Visible := ivAlways;
          dteToDate.Visible := ivAlways;
        end;
    end;
  finally
    ribMain.EndUpdate;
  end;

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);
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
  dteFromDate.Enabled := not lucPeriod.Enabled;
  dteToDate.Enabled := not lucPeriod.Enabled;
// MonthEndDate := GetMonthEndDate(FTimesheetPeriod);

// try
// case AComboBox.ItemIndex of
// 0:
// begin
// lucPeriod.Visible := ivAlways;
// lblPeriod.Visible := ivAlways;
// lblFromDate.Visible := ivNever;
// dteFromDate.Visible := ivNever;
// lblToDate.Visible := ivNever;
// dteToDate.Visible := ivNever;
// end;
//
// 1:
// begin
// lucPeriod.Visible := ivNever;
// lblPeriod.Visible := ivNever;
// lblFromDate.Visible := ivAlways;
// dteFromDate.Visible := ivAlways;
// lblToDate.Visible := ivAlways;
// dteToDate.Visible := ivAlways;
// end;
// end;
// finally
// barToolbar.Bars.EndUpdate(True);
// end;

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);
    RegKey.WriteInteger('View Mode Index', lucViewMode.ItemIndex);
  finally
    RegKey.Free
  end;
// if not FShowingForm then
// actGetTimesheetData.Execute;
end;

procedure TMainFrm.DoEditInsertEntry(Sender: TObject);
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

    VBBaseDM.MyDataSet := TSDM.cdsTimesheet;
    VBBaseDM.MyDataSource := TSDM.dtsTimesheet;

    if TimesheetEditFrm.ShowModal = mrCancel then
      if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
        TSDM.cdsTimesheet.Cancel
      else
        actRefresh.Execute;

    TimesheetEditFrm.Close;
    FreeAndNil(TimesheetEditFrm);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoOptions(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    if TimesheetPrefrrencesFrm = nil then
      TimesheetPrefrrencesFrm := TTimesheetPrefrrencesFrm.Create(nil);
    TimesheetPrefrrencesFrm.ShowModal;
    TimesheetPrefrrencesFrm.Close;
    FreeAndNil(TimesheetPrefrrencesFrm);
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

end.

