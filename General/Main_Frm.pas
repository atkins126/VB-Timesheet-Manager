unit Main_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.Win.Registry, Data.DB,

  BaseLayout_Frm, VBProxyClass, VBCommonValues, CommonFunction,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxScreenTip, dxCustomHint, cxHint,
  dxSkinsForm, cxNavigator, cxDBNavigator, dxBar, dxStatusBar, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxDBLookupComboBox,
  cxTextEdit, cxCheckBox, cxCalendar, CommonMethods, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxDropDownEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  dxBarExtItems, cxBarEditItem;

type
  TMainFrm = class(TBaseLayoutFrm)
    sknController: TdxSkinController;
    repScreenTip: TdxScreenTipRepository;
    tipExit: TdxScreenTip;
    tipCloseScreen: TdxScreenTip;
    tipLaunchMasterTableManager: TdxScreenTip;
    styHintController: TcxHintStyleController;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    docToolbar: TdxBarDockControl;
    grpToolbar: TdxLayoutGroup;
    litToolbar: TdxLayoutItem;
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
    dteActivityDate: TcxGridDBBandedColumn;
    dteModified: TcxGridDBBandedColumn;
    edtPeriod: TcxGridDBBandedColumn;
    cbxBillable: TcxGridDBBandedColumn;
    edtDayname: TcxGridDBBandedColumn;
    edtDayOrder: TcxGridDBBandedColumn;
    dteInvoiceDate: TcxGridDBBandedColumn;
    cbxCarryForward: TcxGridDBBandedColumn;
    cbxApproved: TcxGridDBBandedColumn;
    cbsAddWork: TcxGridDBBandedColumn;
    lblUser: TdxBarStatic;
    lblViewMode: TdxBarStatic;
    lblPeriod: TdxBarStatic;
    lblFromDate: TdxBarStatic;
    lblToDate: TdxBarStatic;
    btnGet: TdxBarLargeButton;
    actGetTimesheetData: TAction;
    dteFromDate: TcxBarEditItem;
    dteToDate: TcxBarEditItem;
    lucPeriod: TcxBarEditItem;
    lucUser: TcxBarEditItem;
    lucViewMode: TcxBarEditItem;
    procedure DoExitTimesheetManager(Sender: TObject);
    procedure DoInsertEntry(Sender: TObject);
    procedure DoEditEntry(Sender: TObject);
    procedure DoDeleteEntry(Sender: TObject);
    procedure DoRefresh(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure lucViewModePropertiesChange(Sender: TObject);
    procedure lucPeriodPropertiesEditValueChanged(Sender: TObject);
    procedure DoGetTimesheetData(Sender: TObject);
    procedure viewTimesheetCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure lucViewModePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FCurrentUserID: Integer;
    FCurrentPeriod: Integer;
    FIteration: Extended;

    property CurrentUserID: Integer read FCurrentUserID write FCurrentUserID;
    property CurrentPeriod: Integer read FCurrentPeriod write FCurrentPeriod;
    property Iteration: Extended read FIteration write FIteration;

    procedure UpdateApplicationSkin(SkinResourceFileName, SkinName: string);
    procedure OpenTables;
    procedure SetButtonStatus(EditMode: Boolean);
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
  Base_Frm,
  Progress_Frm;

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
  layMain.LayoutLookAndFeel := lafCustomSkin;
//  cntShowMasterList.Control := cbxShowMasterList;
  styHintController.HintHidePause := 15000;
end;

procedure TMainFrm.FormShow(Sender: TObject);
var
  VBShell: string;
{$IFDEF DEBUG}ErrorMsg, {$ENDIF}SkinResourceFileName, SkinName: string;
  Day, Month, Year: Word;
  RegKey: TRegistry;
begin
  inherited;
  Screen.Cursor := crHourglass;
  dxBarMakeInactiveImagesDingy := False;
  FSwitchPrefix := ['/'];
  FCallingFromShell := FindCmdLineSwitch('VB_SHELL', VBShell, True, [clstValueNextParam, clstValueAppended]);

  if MsgDialogFrm = nil then
    MsgDialogFrm := TMsgDialogFrm.Create(nil);

  try
{$IFDEF DEBUG}
    Self.BorderStyle := bsSizeable;
    ErrorMsg := '';
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

    sbrMain.Panels[1].Text := 'User: ' + VBBaseDM.FUserData.UserName;
    VBBaseDM.SetConnectionProperties;
    VBBaseDM.sqlConnection.Open;
    VBBaseDM.Client := TVBServerMethodsClient.Create(VBBaseDM.sqlConnection.DBXConnection);
    TSDM.ShellResource := VBBaseDM.GetShellResource;
    SkinResourceFileName := RESOURCE_FOLDER + SKIN_RESOURCE_FILE;
    SkinName := TSDM.ShellResource.SkinName;

    if Length(Trim(SkinName)) = 0 then
      SkinName := DEFAULT_SKIN_NAME;

    UpdateApplicationSkin(SkinResourceFileName, SkinName);

    if BaseFrm = nil then
      BaseFrm := TBaseFrm.Create(nil);

    DecodeDate(Date, Year, Month, Day);
    VBBaseDM.CurrentPeriod := Year * 100 + Month;
    VBBaseDM.CurrentMonth := VBBaseDM.CurrentPeriod mod 100;
    viewTimesheet.DataController.DataSource := TSDM.dtsTimesheet;
    TcxLookupComboBoxProperties(lucCustomer.Properties).listSource := TSDM.dtsCustomerLookup;
    TcxLookupComboBoxProperties(lucPriceItem.Properties).listSource := TSDM.dtsPriceList;
    TcxLookupComboBoxProperties(lucRateUnit.Properties).listSource := TSDM.dtsRateUnit;
    TcxLookupComboBoxProperties(lucActivityType.Properties).listSource := TSDM.dtsActivityType;
    TcxLookupComboBoxProperties(lucCustomerGroup.Properties).listSource := TSDM.dtsCustomerGroup;

    TcxLookupComboBoxProperties(lucPeriod.Properties).ListSource := TSDM.dtsTSPeriod;
    TcxLookupComboBoxProperties(lucUser.Properties).ListSource := TSDM.dtsSytemUser;
    TcxDateEditProperties(dteFromDate.Properties).MinDate := StrToDate('10/01/2018');
    TcxDateEditProperties(dteFromDate.Properties).MaxDate := Date;
    TcxDateEditProperties(dteToDate.Properties).MinDate := StrToDate('10/01/2018');
    TcxDateEditProperties(dteToDate.Properties).MaxDate := Date;

    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    try
      RegKey.OpenKey(KEY_USER_DATA, True);
      OpenTables;
      FCurrentUserID := RegKey.ReadInteger('User ID');

      if not TSDM.cdsSystemUser.Locate('ID', FCurrentUserID, []) then
        TSDM.cdsSystemUser.First;

//      lucUser.SetFocus(True);
      TcxLookupComboBox(lucUser).EditValue := TSDM.cdsSystemUser.FieldByName('LOGIN_NAME').AsString;
      RegKey.CloseKey;

      RegKey.OpenKey(KEY_TIME_SHEET, True);
      TcxComboBox(lucViewMode).EditValue := RegKey.ReadInteger('View Mode Index');
      FCurrentPeriod := Regkey.ReadInteger('Period');

      if not TSDM.cdsTSPeriod.Locate('THE_PERIOD', FCurrentPeriod, []) then
        TSDm.cdsTSPeriod.First;

      TcxLookupComboBox(lucPeriod).EditValue := TSDM.cdsTSPeriod.FieldByName('THE_PERIOD').AsString;
      RegKey.CloseKey;
    finally
      RegKey.Free
    end;

    actGetTimesheetData.Execute;
    FIteration := 0;

    if FCallingFromShell then
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
      end
      else
        WindowState := wsMaximized;
  finally
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
end;

procedure TMainFrm.DoExitTimesheetManager(Sender: TObject);
begin
//  inherited;
  MainFrm.Close;
end;

procedure TMainFrm.DoInsertEntry(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.DoEditEntry(Sender: TObject);
begin
  inherited;
  TSDM.cdsTimesheet.Edit;
end;

procedure TMainFrm.DoDeleteEntry(Sender: TObject);
begin
  inherited;
  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
    TSDM.cdsTimesheet.Cancel;
end;

procedure TMainFrm.DoRefresh(Sender: TObject);
begin
  inherited;
  OpenTables;
  FIteration := 0;
end;

procedure TMainFrm.DoGetTimesheetData(Sender: TObject);
var
  ParamList: string;
begin
  inherited;
  viewTimesheet.DataController.BeginUpdate;
  try
    if FIteration > 0 then
      SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Price List Table' + '|PROGRESS=' + FIteration.ToString)), 0);

    ParamList := ' WHERE T.USER_ID=' + TSDM.cdsSystemUser.FieldByName('ID').AsString +
      ' AND T.THE_PERIOD=' + VarAsType(lucPeriod.EditValue, varString) + SEMI_COLON +
      ONE_SPACE + SEMI_COLON + 'ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE';

    VBBaseDM.GetData(27, TSDM.cdsTimesheet, TSDM.cdsTimesheet.Name, ParamList,
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

procedure TMainFrm.viewTimesheetCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
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

procedure TMainFrm.OpenTables;
var
  Counter: Integer;
//  Iteration: Extended;
//  ParamList: string;
begin
  if ProgressFrm = nil then
    ProgressFrm := TProgressFrm.Create(nil);
  ProgressFrm.FormStyle := fsStayOnTop;
  ProgressFrm.Show;

  try
    Counter := 1;
    FIteration := Counter / TABLE_COUNT * 100;

    // Customer Lookup
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Customer Table' + '|PROGRESS=' + FIteration.ToString)), 0);
    VBBaseDM.GetData(58, TSDM.cdsCustomerLookup, TSDM.cdsCustomerLookup.Name, ONE_SPACE,
      'C:\Data\Xml\Customer Lookup.xml', TSDM.cdsCustomerLookup.UpdateOptions.Generatorname,
      TSDM.cdsCustomerLookup.UpdateOptions.UpdateTableName);

    if not TSDM.cdsCustomerLookup.Active then
      TSDM.cdsCustomerLookup.CreateDataSet;

    // Price List
    Inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Price List Table' + '|PROGRESS=' + FIteration.ToString)), 0);
    VBBaseDM.GetData(42, TSDM.cdsPriceList, TSDM.cdsPriceList.Name, ONE_SPACE,
      'C:\Data\Xml\Price List.xml', TSDM.cdsPriceList.UpdateOptions.Generatorname,
      TSDM.cdsPriceList.UpdateOptions.UpdateTableName);

    if not TSDM.cdsPriceList.Active then
      TSDM.cdsPriceList.CreateDataSet;

    // Activity Type
    Inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Activity Type Table' + '|PROGRESS=' + FIteration.ToString)), 0);
    VBBaseDM.GetData(39, TSDM.cdsActivityType, TSDM.cdsActivityType.Name, ONE_SPACE,
      'C:\Data\Xml\Activity Type.xml', TSDM.cdsActivityType.UpdateOptions.Generatorname,
      TSDM.cdsActivityType.UpdateOptions.UpdateTableName);

    if not TSDM.cdsActivityType.Active then
      TSDM.cdsActivityType.CreateDataSet;

    // Customer Group
    Inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Customer Group Table' + '|PROGRESS=' + FIteration.ToString)), 0);
    VBBaseDM.GetData(56, TSDM.cdsCustomerGroup, TSDM.cdsCustomerGroup.Name, ONE_SPACE,
      'C:\Data\Xml\Customer Group.xml', TSDM.cdsCustomerGroup.UpdateOptions.Generatorname,
      TSDM.cdsCustomerGroup.UpdateOptions.UpdateTableName);

    if not TSDM.cdsCustomerGroup.Active then
      TSDM.cdsCustomerGroup.CreateDataSet;

    // Rate Unit
    Inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Rate Unit Table' + '|PROGRESS=' + FIteration.ToString)), 0);
    VBBaseDM.GetData(38, TSDM.cdsRateUnit, TSDM.cdsRateUnit.Name, ONE_SPACE,
      'C:\Data\Xml\Rate Unit.xml', TSDM.cdsRateUnit.UpdateOptions.Generatorname,
      TSDM.cdsRateUnit.UpdateOptions.UpdateTableName);

    if not TSDM.cdsRateUnit.Active then
      TSDM.cdsRateUnit.CreateDataSet;

    // Period - From timesheet
    Inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Timesheet Period Table' + '|PROGRESS=' + FIteration.ToString)), 0);
    VBBaseDM.GetData(62, TSDM.cdsTSPeriod, TSDM.cdsTSPeriod.Name, ONE_SPACE,
      'C:\Data\Xml\Timesheet Period.xml', TSDM.cdsTSPeriod.UpdateOptions.Generatorname,
      TSDM.cdsTSPeriod.UpdateOptions.UpdateTableName);

    if not TSDM.cdsTSPeriod.Active then
      TSDM.cdsTSPeriod.CreateDataSet;

//    // Timesheet
//    Inc(Counter);
//    FIteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Timesheet Table' + '|PROGRESS=' + FIteration.ToString)), 0);
//    actGetTimesheetData.Execute;

    Inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;

    // System User
    Inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening System User Table' + '|PROGRESS=' + FIteration.ToString)), 0);
    VBBaseDM.GetData(24, TSDM.cdsSystemUser, TSDM.cdsSystemUser.Name, ONE_SPACE,
      'C:\Data\Xml\System User.xml', TSDM.cdsSystemUser.UpdateOptions.Generatorname,
      TSDM.cdsSystemUser.UpdateOptions.UpdateTableName);

    if not TSDM.cdsSystemUser.Active then
      TSDM.cdsSystemUser.CreateDataSet;

    Inc(Counter);
    FIteration := Counter / TABLE_COUNT * 100;
//    // Vehicle
//    Inc(Counter);
//    FIteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Vehicle Table' + '|PROGRESS=' + FIteration.ToString)), 0);
//    VBBaseDM.GetData(49, TSDM.cdsVehicle, TSDM.cdsVehicle.Name, ONE_SPACE,
//      'C:\Data\Xml\Vehicle.xml', TSDM.cdsVehicle.UpdateOptions.Generatorname,
//      TSDM.cdsVehicle.UpdateOptions.UpdateTableName);
//
//    if not TSDM.cdsVehicle.Active then
//      TSDM.cdsVehicle.CreateDataSet;
//
//// Open all lookup tables  -----------------------------------------------------
//
//    // Contact type
//    Inc(Counter);
//    FIteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Contact Type Table' + '|PROGRESS=' + FIteration.ToString)), 0);
//    VBBaseDM.GetData(11, LookupDM.cdsContactType, LookupDM.cdsContactType.Name, ONE_SPACE,
//      'C:\Data\Xml\Contact Type.xml', LookupDM.cdsContactType.UpdateOptions.Generatorname,
//      LookupDM.cdsContactType.UpdateOptions.UpdateTableName);
//
//    // Salutation
//    Inc(Counter);
//    FIteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Salutation Table' + '|PROGRESS=' + FIteration.ToString)), 0);
//    VBBaseDM.GetData(23, LookupDM.cdsSalutation, LookupDM.cdsSalutation.Name, ONE_SPACE,
//      'C:\Data\Xml\Slutation.xml', LookupDM.cdsSalutation.UpdateOptions.Generatorname,
//      LookupDM.cdsSalutation.UpdateOptions.UpdateTableName);
//
//    LookupDM.cdsBFSalutation.Close;
//    LookupDM.cdsDirectorSalutation.Close;
//
//    LookupDM.cdsBFSalutation.Data := LookupDM.cdsSalutation.Data;
//    LookupDM.cdsDirectorSalutation.Data := LookupDM.cdsSalutation.Data;
//
//   // Job function
//    Inc(Counter);
//    FIteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Job Function Table' + '|PROGRESS=' + FIteration.ToString)), 0);
//    VBBaseDM.GetData(19, LookupDM.cdsJobFunction, LookupDM.cdsJobFunction.Name, ONE_SPACE,
//      'C:\Data\Xml\Job Function.xml', LookupDM.cdsJobFunction.UpdateOptions.Generatorname,
//      LookupDM.cdsJobFunction.UpdateOptions.UpdateTableName);
//
//    // Bank
//    Inc(Counter);
//    FIteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Bank Table' + '|PROGRESS=' + FIteration.ToString)), 0);
//    VBBaseDM.GetData(5, LookupDM.cdsBank, LookupDM.cdsBank.Name, ONE_SPACE,
//      'C:\Data\Xml\Bank.xml', LookupDM.cdsBank.UpdateOptions.Generatorname,
//      LookupDM.cdsBank.UpdateOptions.UpdateTableName);
//
//    // Bank account type
//    Inc(Counter);
//    FIteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Bank Account Type Table' + '|PROGRESS=' + FIteration.ToString)), 0);
//    VBBaseDM.GetData(6, LookupDM.cdsBankAccountType, LookupDM.cdsBankAccountType.Name, ONE_SPACE,
//      'C:\Data\Xml\Bank Account Type.xml', LookupDM.cdsBankAccountType.UpdateOptions.Generatorname,
//      LookupDM.cdsBankAccountType.UpdateOptions.UpdateTableName);
//
//    // Vehicle make
//    Inc(Counter);
//    FIteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Vehicle Make Table' + '|PROGRESS=' + FIteration.ToString)), 0);
//    VBBaseDM.GetData(48, LookupDM.cdsVehicleMake, LookupDM.cdsVehicleMake.Name, ONE_SPACE,
//      'C:\Data\Xml\Vehicle Make.xml', LookupDM.cdsVehicleMake.UpdateOptions.Generatorname,
//      LookupDM.cdsVehicleMake.UpdateOptions.UpdateTableName);
//
//    // Month of Year
//    Inc(Counter);
//    FIteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Month of Year Table' + '|PROGRESS=' + FIteration.ToString)), 0);
//    VBBaseDM.GetData(20, LookupDM.cdsMonthOfYear, LookupDM.cdsMonthOfYear.Name, ONE_SPACE,
//      'C:\Data\Xml\Month of Year.xml', LookupDM.cdsMonthOfYear.UpdateOptions.Generatorname,
//      LookupDM.cdsMonthOfYear.UpdateOptions.UpdateTableName);
//
//    LookupDM.cdsARMonthOfYear.Close;
//    LookupDM.cdsVATMonth.Close;
//
//    LookupDM.cdsARMonthOfYear.Data := LookupDM.cdsSalutation.Data;
//    LookupDM.cdsVATMonth.Data := LookupDM.cdsSalutation.Data;
  finally
//    ProgressFrm.Close;
//    FreeAndNil(ProgressFrm);
  end;
end;

procedure TMainFrm.SetButtonStatus(EditMode: Boolean);
begin
  actInsert.Enabled := not EditMode;
  actEdit.Enabled := not EditMode;
  actDelete.Enabled := EditMode;
  actRefresh.Enabled := EditMode;
end;

procedure TMainFrm.HandleStateChange(var MyMsg: TMessage);
var
  EditMode: Boolean;
begin
  EditMode := StringToBoolean(PChar(MyMsg.WParam));
  SetButtonStatus(EditMode);
//
//  try
//    if SL.Values['REQUEST'] = 'REFRESH_DATA' then
//      SendMessage(CustomerFrm.Handle, WM_RECORD_ID, DWORD(PChar(SL.DelimitedText)), 0);
//  finally
//    MyMsg.Result := -1;
//  end;
end;

procedure TMainFrm.lucPeriodPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    Regkey.OpenKey(KEY_TIME_SHEET, True);
    Regkey.WriteInteger('Period', VarAsType(lucPeriod.EditValue, varInteger));
    RegKey.CloseKey;
  finally
    RegKey.Free
  end;
end;

procedure TMainFrm.lucViewModePropertiesChange(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  barToolbar.Bars.BeginUpdate;
  try
    case TcxComboBox(lucViewMode).ItemIndex of
      0:
        begin
          lucPeriod.Visible := ivAlways;
          lblPeriod.Visible := ivAlways;
          lblFromDate.Visible := ivNever;
          dteFromDate.Visible := ivNever;
          lblToDate.Visible := ivNever;
          dteToDate.Visible := ivNever;
        end;

      1:
        begin
          lucPeriod.Visible := ivNever;
          lblPeriod.Visible := ivNever;
          lblFromDate.Visible := ivAlways;
          dteFromDate.Visible := ivAlways;
          lblToDate.Visible := ivAlways;
          dteToDate.Visible := ivAlways;
        end;
    end;
  finally
    barToolbar.Bars.EndUpdate(True);
  end;

  Regkey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    Regkey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);
    RegKey.WriteInteger('View Mode Index', TcxComboBox(lucViewMode).ItemIndex);
  finally
    Regkey.Free
  end;
end;

procedure TMainFrm.lucViewModePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//
end;

end.

