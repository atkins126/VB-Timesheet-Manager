unit Main_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, Data.DB,

  BaseLayout_Frm, VBProxyClass,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxScreenTip, dxCustomHint, cxHint,
  dxSkinsForm, cxNavigator, cxDBNavigator, dxBar, dxStatusBar, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxDBLookupComboBox,
  cxTextEdit, cxCheckBox, cxCalendar, CommonMethods;

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
    procedure DoExitTimesheetManager(Sender: TObject);
    procedure DoInsertEntry(Sender: TObject);
    procedure DoEditEntry(Sender: TObject);
    procedure DoDeleteEntry(Sender: TObject);
    procedure DoRefresh(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure UpdateApplicationSkin(SkinResourceFileName, SkinName: string);
    procedure OpenTables;
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
  VBCommonValues,
  CommonFunction,
  Progress_Frm;

procedure TMainFrm.DoInsertEntry(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.DoEditEntry(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.DoDeleteEntry(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.DoRefresh(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := Application.Title;
  layMain.LayoutLookAndFeel := lafCustomSkin;
//  cntShowMasterList.Control := cbxShowMasterList;
  styHintController.HintHidePause := 5000;
end;

procedure TMainFrm.FormShow(Sender: TObject);
var
  VBShell: string;
{$IFDEF DEBUG}ErrorMsg, {$ENDIF}SkinResourceFileName, SkinName: string;
  Day, Month, Year: Word;
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

    OpenTables;

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

procedure TMainFrm.DoExitTimesheetManager(Sender: TObject);
begin
  inherited;
//
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

procedure TMainFrm.OpenTables;
var
  Counter: Integer;
  Iteration: Extended;
  ParamList: string;
begin
  if ProgressFrm = nil then
    ProgressFrm := TProgressFrm.Create(nil);
  ProgressFrm.FormStyle := fsStayOnTop;
  ProgressFrm.Show;

  try
    Counter := 1;
    Iteration := Counter / TABLE_COUNT * 100;

    // Customer Lookup
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Customer Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(58, TSDM.cdsCustomerLookup, TSDM.cdsCustomerLookup.Name, ONE_SPACE,
      'C:\Data\Xml\Customer Lookup.xml', TSDM.cdsCustomerLookup.UpdateOptions.Generatorname,
      TSDM.cdsCustomerLookup.UpdateOptions.UpdateTableName);

    if not TSDM.cdsCustomerLookup.Active then
      TSDM.cdsCustomerLookup.CreateDataSet;

    // Price List
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Price List Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(42, TSDM.cdsPriceList, TSDM.cdsPriceList.Name, ONE_SPACE,
      'C:\Data\Xml\Price List.xml', TSDM.cdsPriceList.UpdateOptions.Generatorname,
      TSDM.cdsPriceList.UpdateOptions.UpdateTableName);

    if not TSDM.cdsPriceList.Active then
      TSDM.cdsPriceList.CreateDataSet;

    // Activity Type
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Activity Type Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(39, TSDM.cdsActivityType, TSDM.cdsActivityType.Name, ONE_SPACE,
      'C:\Data\Xml\Activity Type.xml', TSDM.cdsActivityType.UpdateOptions.Generatorname,
      TSDM.cdsActivityType.UpdateOptions.UpdateTableName);

    if not TSDM.cdsActivityType.Active then
      TSDM.cdsActivityType.CreateDataSet;

    // Customer Group
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Customer Group Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(56, TSDM.cdsCustomerGroup, TSDM.cdsCustomerGroup.Name, ONE_SPACE,
      'C:\Data\Xml\Customer Group.xml', TSDM.cdsCustomerGroup.UpdateOptions.Generatorname,
      TSDM.cdsCustomerGroup.UpdateOptions.UpdateTableName);

    if not TSDM.cdsCustomerGroup.Active then
      TSDM.cdsCustomerGroup.CreateDataSet;

    // Rate Unit
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Rate Unit Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(38, TSDM.cdsRateUnit, TSDM.cdsRateUnit.Name, ONE_SPACE,
      'C:\Data\Xml\Rate Unit.xml', TSDM.cdsRateUnit.UpdateOptions.Generatorname,
      TSDM.cdsRateUnit.UpdateOptions.UpdateTableName);

    if not TSDM.cdsRateUnit.Active then
      TSDM.cdsRateUnit.CreateDataSet;

    // Period - From timesheet
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Timesheet Period Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(62, TSDM.cdsTSPeriod, TSDM.cdsTSPeriod.Name, ONE_SPACE,
      'C:\Data\Xml\Timesheet Period.xml', TSDM.cdsTSPeriod.UpdateOptions.Generatorname,
      TSDM.cdsTSPeriod.UpdateOptions.UpdateTableName);

    if not TSDM.cdsTSPeriod.Active then
      TSDM.cdsTSPeriod.CreateDataSet;

    // Timesheet
    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

    ParamList := ' WHERE T.USER_ID=2 AND T.THE_PERIOD=201911' + SEMI_COLON + ONE_SPACE + SEMI_COLON + 'ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE';

    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Timesheet Table' + '|PROGRESS=' + Iteration.ToString)), 0);
    VBBaseDM.GetData(27, TSDM.cdsTimesheet, TSDM.cdsTimesheet.Name, ParamList,
      'C:\Data\Xml\Timesheet.xml', TSDM.cdsTimesheet.UpdateOptions.Generatorname,
      TSDM.cdsTimesheet.UpdateOptions.UpdateTableName);

    if not TSDM.cdsTimesheet.Active then
      TSDM.cdsTimesheet.CreateDataSet;

    Inc(Counter);
    Iteration := Counter / TABLE_COUNT * 100;

//    // Beneficiary
//    Inc(Counter);
//    Iteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Beneficiary Table' + '|PROGRESS=' + Iteration.ToString)), 0);
//    VBBaseDM.GetData(8, TSDM.cdsBeneficiary, TSDM.cdsBeneficiary.Name, ONE_SPACE,
//      'C:\Data\Xml\Beneficiary.xml', TSDM.cdsBeneficiary.UpdateOptions.Generatorname,
//      TSDM.cdsBeneficiary.UpdateOptions.UpdateTableName);
//
//    if not TSDM.cdsBeneficiary.Active then
//      TSDM.cdsBeneficiary.CreateDataSet;
//
//    // Vehicle
//    Inc(Counter);
//    Iteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Vehicle Table' + '|PROGRESS=' + Iteration.ToString)), 0);
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
//    Iteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Contact Type Table' + '|PROGRESS=' + Iteration.ToString)), 0);
//    VBBaseDM.GetData(11, LookupDM.cdsContactType, LookupDM.cdsContactType.Name, ONE_SPACE,
//      'C:\Data\Xml\Contact Type.xml', LookupDM.cdsContactType.UpdateOptions.Generatorname,
//      LookupDM.cdsContactType.UpdateOptions.UpdateTableName);
//
//    // Salutation
//    Inc(Counter);
//    Iteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Salutation Table' + '|PROGRESS=' + Iteration.ToString)), 0);
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
//    Iteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Job Function Table' + '|PROGRESS=' + Iteration.ToString)), 0);
//    VBBaseDM.GetData(19, LookupDM.cdsJobFunction, LookupDM.cdsJobFunction.Name, ONE_SPACE,
//      'C:\Data\Xml\Job Function.xml', LookupDM.cdsJobFunction.UpdateOptions.Generatorname,
//      LookupDM.cdsJobFunction.UpdateOptions.UpdateTableName);
//
//    // Bank
//    Inc(Counter);
//    Iteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Bank Table' + '|PROGRESS=' + Iteration.ToString)), 0);
//    VBBaseDM.GetData(5, LookupDM.cdsBank, LookupDM.cdsBank.Name, ONE_SPACE,
//      'C:\Data\Xml\Bank.xml', LookupDM.cdsBank.UpdateOptions.Generatorname,
//      LookupDM.cdsBank.UpdateOptions.UpdateTableName);
//
//    // Bank account type
//    Inc(Counter);
//    Iteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Bank Account Type Table' + '|PROGRESS=' + Iteration.ToString)), 0);
//    VBBaseDM.GetData(6, LookupDM.cdsBankAccountType, LookupDM.cdsBankAccountType.Name, ONE_SPACE,
//      'C:\Data\Xml\Bank Account Type.xml', LookupDM.cdsBankAccountType.UpdateOptions.Generatorname,
//      LookupDM.cdsBankAccountType.UpdateOptions.UpdateTableName);
//
//    // Vehicle make
//    Inc(Counter);
//    Iteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Vehicle Make Table' + '|PROGRESS=' + Iteration.ToString)), 0);
//    VBBaseDM.GetData(48, LookupDM.cdsVehicleMake, LookupDM.cdsVehicleMake.Name, ONE_SPACE,
//      'C:\Data\Xml\Vehicle Make.xml', LookupDM.cdsVehicleMake.UpdateOptions.Generatorname,
//      LookupDM.cdsVehicleMake.UpdateOptions.UpdateTableName);
//
//    // Month of Year
//    Inc(Counter);
//    Iteration := Counter / TABLE_COUNT * 100;
//
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Month of Year Table' + '|PROGRESS=' + Iteration.ToString)), 0);
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
    ProgressFrm.Close;
    FreeAndNil(ProgressFrm);
  end;
end;

end.

