unit Main_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.Win.Registry, Data.DB,
  System.DateUtils,

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
  dxBarExtItems, cxBarEditItem, cxMemo, Vcl.Menus;

type
  TMainFrm = class(TBaseLayoutFrm)
    sknController: TdxSkinController;
    repScreenTip: TdxScreenTipRepository;
    tipExit: TdxScreenTip;
    tipInsert: TdxScreenTip;
    tipEdit: TdxScreenTip;
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
    actReports: TAction;
    actPreferences: TAction;
    btnPrint: TdxBarLargeButton;
    btnPDF: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnReports: TdxBarLargeButton;
    btnOptions: TdxBarLargeButton;
    grdTimesheetPrint: TcxGrid;
    viewTimesheetPrint: TcxGridDBBandedTableView;
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
    lvlTimesheetPrint: TcxGridLevel;
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
    procedure DoExitTimesheetManager(Sender: TObject);
    procedure DoInsertEntry(Sender: TObject);
    procedure DoEditEntry(Sender: TObject);
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
    procedure DoReports(Sender: TObject);
    procedure DoPreferences(Sender: TObject);
    procedure viewTimesheetDblClick(Sender: TObject);
    procedure viewTimesheetSelectionChanged(Sender: TcxCustomGridTableView);
  private
    { Private declarations }
    FCurrentUserID: Integer;
    FTSUserID: Integer;
    FTimesheetPeriod: Integer;
    FTimeshetMonth: Integer;
    FIteration: Extended;
    FShowingForm: Boolean;
    FFromDate: TDateTime;
    FToDate: TDateTime;

    property CurrentUserID: Integer read FCurrentUserID write FCurrentUserID;
    property TSUserID: Integer read FTSUserID write FTSUserID;
    property TimesheetPeriod: Integer read FTimesheetPeriod write FTimesheetPeriod;
    property TimesheetMonth: Integer read FTimeshetMonth write FTimeshetMonth;
    property Iteration: Extended read FIteration write FIteration;
    property ShowingForm: Boolean read FShowingForm write FShowingForm;
    property FromDate: TDateTime read FFromDate write FFromDate;
    property ToDate: TDateTime read FToDate write FToDate;

    procedure UpdateApplicationSkin(SkinResourceFileName, SkinName: string);
    procedure OpenTables;
    procedure SetButtonStatus(EditMode: Boolean);
    procedure VerifyRegistry;
    function GetMonthEndDate(Period: Integer): TDateTime;
    procedure ReadRegValues;
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
  Progress_Frm,
  CommonValues,
  Report_DM, TimesheetEdit_Frm, TimesheetPrefrrences_Frm;

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
  Application.HintPause := 0;
  Application.HintShortPause := 0;
  styHintController.HintHidePause := 15000;
end;

procedure TMainFrm.FormShow(Sender: TObject);
var
  VBShell: string;
{$IFDEF DEBUG}ErrorMsg, {$ENDIF}SkinResourceFileName, SkinName: string;
  Day, Month, Year: Word;
  RegKey: TRegistry;
  AComboBox: TcxComboBox;
  ALookupComboBox: TcxLookupComboBox;
  ADateEdit: TcxDateEdit;
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
      begin
        TSDM.cdsSystemUser.First;
        FCurrentUserID := TSDM.cdsSystemUser.FieldByName('ID').AsInteger;
      end;
      FTSUserID := FCurrentUserID;

//      lucUser.SetFocus;
//      ALookupComboBox := TcxBarEditItemControl(lucUser.Links[0].Control).Edit as TcxLookupComboBox;
//      ALookupComboBox.EditValue := FCurrentUserID;
//      TcxLookupComboBox(lucUser).EditValue := TSDM.cdsSystemUser.FieldByName('LOGIN_NAME').AsString;
//      lucUser.EditValue := FCurrentUserID;
      lucUser.EditValue := FCurrentUserID; //TSDM.cdsSystemUser.FieldByName('LOGIN_NAME').AsString;
      RegKey.CloseKey;

      VerifyRegistry;
      ReadRegValues;

      RegKey.OpenKey(KEY_TIME_SHEET, True);

//      dteFromDate.SetFocus;
//      ADateEdit := TcxBarEditItemControl(dteFromDate.Links[0].Control).Edit as TcxDateEdit;
//      ADateEdit.Date := RegKey.ReadDate('From Date');
      FFromDate := RegKey.ReadDate('From Date');
      dteFromDate.EditValue := FFromDate;

//      dteToDate.SetFocus;
//      ADateEdit := TcxBarEditItemControl(dteToDate.Links[0].Control).Edit as TcxDateEdit;
//      ADateEdit.Date := RegKey.ReadDate('To Date');
      FToDate := RegKey.ReadDate('To Date');
      dteToDate.EditValue := FToDate;

//      lucPeriod.SetFocus;
//      ALookupComboBox := TcxBarEditItemControl(lucPeriod.Links[0].Control).Edit as TcxLookupComboBox;
      FTimesheetPeriod := Regkey.ReadInteger('Period');
//      ALookupComboBox.EditValue := FTimesheetPeriod;
      lucPeriod.EditValue := FTimesheetPeriod;

      if not TSDM.cdsTSPeriod.Locate('THE_PERIOD', FTimesheetPeriod, []) then
      begin
        TSDm.cdsTSPeriod.First;
        FTimesheetPeriod := TSDM.cdsTSPeriod.FieldByName('THE_PERIOD').AsInteger;
      end;

      GetMonthEndDate(FTimesheetPeriod);
//      lucViewMode.SetFocus;
//      AComboBox := TcxBarEditItemControl(lucViewMode.Links[0].Control).Edit as TcxComboBox;
//      AComboBox.ItemIndex := RegKey.ReadInteger('View Mode Index');
      lucViewMode.ItemIndex := RegKey.ReadInteger('View Mode Index');

//      lucPeriod.SetFocus;
//      ALookupComboBox := TcxBarEditItemControl(lucPeriod.Links[0].Control).Edit as TcxLookupComboBox;
//      ALookupComboBox.EditValue := FTimesheetPeriod;
//
//      dteFromDate.SetFocus;
//      ADateEdit := TcxBarEditItemControl(dteFromDate.Links[0].Control).Edit as TcxDateEdit;
//      ADateEdit.Date := RegKey.ReadDate('From Date');
//
//      dteToDate.SetFocus;
//      ADateEdit := TcxBarEditItemControl(dteToDate.Links[0].Control).Edit as TcxDateEdit;
//      ADateEdit.Date := RegKey.ReadDate('To Date');
//
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
end;

procedure TMainFrm.DoExitTimesheetManager(Sender: TObject);
begin
//  inherited;
  MainFrm.Close;
end;

procedure TMainFrm.DoDeleteEntry(Sender: TObject);
var
  C: TcxCustomGridTableController;
begin
  inherited;
  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
    TSDM.cdsTimesheet.Cancel;

  C := viewTimesheet.Controller;
  Beep;
  if
    DisplayMsg(
    Application.Title,
    'Delete Confirmaiton',
    'Are you sure you want to delete the ' + C.SelectedRecordCount.ToString + ' selected timesheet item(s)?' + CRLF + CRLF +
    'This action cannot be undone!',
    mtConfirmation,
    [mbYes, mbNo]
    ) = mrNo then
    Exit;
end;

procedure TMainFrm.DoRefresh(Sender: TObject);
var
  ID, RecordIndex: Integer;
  DC: TcxDBDataController;
begin
  inherited;
  Screen.Cursor := crHourglass;
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
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoReports(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.DoGetTimesheetData(Sender: TObject);
var
  ParamList, WhereClause: string;
  AToDateEdit: TcxDateEdit;
begin
  inherited;
  if lucViewMode.ItemIndex = 0 then
  begin
    if FTimesheetPeriod < 201901 then
      raise EValidateException.Create('Invalid period. Please select a valid period and try again.');

    ParamList := ' WHERE T.USER_ID=' + FTSUserID.ToString +
      ' AND T.THE_PERIOD=' + FTimesheetPeriod.ToString + SEMI_COLON +
      ONE_SPACE + SEMI_COLON + 'ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE';
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
//    raise EValidateException.Create('From date cannot be greater than To date. Please conrrect and try again.');

    ParamList := ' WHERE T.USER_ID =' + FTSUserID.ToString +
      ' AND T.ACTIVITY_DATE >=' + AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', FFromDate), '''') +
      ' AND T.ACTIVITY_DATE <=' + AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', FtODate), '''') + SEMI_COLON +
      ONE_SPACE + SEMI_COLON + 'ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE';
  end;

  viewTimesheet.DataController.BeginUpdate;
  try
    if FIteration > 0 then
      SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('CAPTION=Opening Price List Table' + '|PROGRESS=' + FIteration.ToString)), 0);

//    ParamList := ' WHERE T.USER_ID=' + FTSUserID.ToString +
//      ' AND T.THE_PERIOD=' + FTimesheetPeriod.ToString + SEMI_COLON +
//      ONE_SPACE + SEMI_COLON + 'ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE';

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

procedure TMainFrm.VerifyRegistry;
var
  RegKey: TRegistry;
begin
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    Regkey.OpenKey(KEY_TIME_SHEET, True);

    if not RegKey.ValueExists('View Mode Index') then
      RegKey.WriteInteger('View Mode Index', 0);

    if not Regkey.ValueExists('Period') then
      RegKey.WriteInteger('Period', VBBaseDM.CurrentPeriod);

    if not Regkey.ValueExists('From Date') then
      Regkey.WriteDate('From Date', Date);

    if not Regkey.ValueExists('To Date') then

      Regkey.WriteDate('To Date', Date);

    if not Regkey.ValueExists('Use Default Customer') then
      Regkey.WriteBool('Use Default Customer', False);

    if not Regkey.ValueExists('Default Customer ID') then
      Regkey.WriteInteger('Default Customer ID', 0);

    if not Regkey.ValueExists('Use Default Price Item') then
      Regkey.WriteBool('Use Default Price Item', False);

    if not Regkey.ValueExists('Default Price Item ID') then
      Regkey.WriteInteger('Default Price Item ID', 0);

    if not Regkey.ValueExists('Use Default Rate') then
      Regkey.WriteBool('Use Default Rate', False);

    if not Regkey.ValueExists('Default Rate') then
      Regkey.WriteFloat('Default Rate', 0.0);

    if not Regkey.ValueExists('Auto Date on New Timesheet Line') then
      Regkey.WriteBool('Auto Date on New Timesheet Line', True);

    if not Regkey.ValueExists('Save Grid Layout') then
      Regkey.WriteBool('Save Grid Layout', False);

    if not Regkey.ValueExists('Pricelist Item Action Index') then
      RegKey.WriteInteger('Pricelist Item Action Index', 3);

    if not Regkey.ValueExists('Incremental Lookup Fitlering') then
      Regkey.WriteBool('Incremental Lookup Fitlering', True);

    if not Regkey.ValueExists('Highlight Lookup Search Match') then
      RegKey.WriteBool('Highlight Lookup Search Match', True);

    Regkey.CloseKey;
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
    TSDM.TimesheetOption.UseDefaultCustomer := Regkey.ReadBool('Use Default Customer');
    TSDM.TimesheetOption.UseDefaultPriceItem := Regkey.ReadBool('Use Default Price Item');
    TSDM.TimesheetOption.UseDefaultRate := Regkey.ReadBool('Use Default Rate');
    TSDM.TimesheetOption.UseTodaysDate := Regkey.ReadBool('Auto Date on New Timesheet Line');
    TSDM.TimesheetOption.SaveGridLayout := Regkey.ReadBool('Save Grid Layout');
    TSDM.TimesheetOption.DefaultCustomerID := Regkey.ReadInteger('Default Customer ID');
    TSDM.TimesheetOption.DefaultPriceItemID := RegKey.ReadInteger('Default Price Item ID');
    TSDM.TimesheetOption.DefaultRate := RegKey.ReadFloat('Default Rate');
    TSDM.TimesheetOption.RateUnitID := RegKey.ReadInteger('Rate Unit ID');
    TSDM.TimesheetOption.PriceListItemActionIndex := RegKey.ReadInteger('Pricelist Item Action Index');
    TSDM.TimesheetOption.IncrementalLookupFitlering := Regkey.ReadBool('Incremental Lookup Fitlering');
    TSDM.TimesheetOption.HighlightLookupSearchMatch := RegKey.ReadBool('Highlight Lookup Search Match');
  finally
    RegKey.Free
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
  actInsert.Enabled := c.SelectedRecordCount <= 1;
  actEdit.Enabled := c.SelectedRecordCount <= 1;
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
  FTimesheetPeriod := lucPeriod.EditValue;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    Regkey.OpenKey(KEY_TIME_SHEET, True);
    Regkey.WriteInteger('Period', FTimesheetPeriod);
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
  ATag: integer;
begin
  inherited;
  dteFromDate.SetFocus;
  AFromDateEdit := TcxBarEditItemControl(dteFromDate.Links[0].Control).Edit as TcxDateEdit;
  FFromDate := AFromDateEdit.Date;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    Regkey.OpenKey(KEY_TIME_SHEET, True);

    if not FShowingForm then
    begin
      Regkey.WriteDate('From Date', FFromDate);
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
  ATag: integer;
begin
  inherited;
  dteToDate.SetFocus;
  AToDateEdit := TcxBarEditItemControl(dteToDate.Links[0].Control).Edit as TcxDateEdit;
  FToDate := AToDateEdit.Date;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    Regkey.OpenKey(KEY_TIME_SHEET, True);

    if not FShowingForm then
    begin
      Regkey.WriteDate('To Date', FToDate);
      actGetTimesheetData.Execute;
    end;

    RegKey.CloseKey;
  finally
    RegKey.Free
  end;
end;

procedure TMainFrm.lucViewModeChange(Sender: TObject);
var
//  AComboBox: TcxComboBox;
//  ALookupComboBox: TcxLookupComboBox;
//  AFromDateEdit, AToDateEdit: TcxDateEdit;
  RegKey: TRegistry;
  MonthEndDate: TDateTime;
begin
  inherited;
  barToolbar.Bars.BeginUpdate;
//  AComboBox := TcxBarEditItemControl(lucViewMode.Links[0].Control).Edit as TcxComboBox;
  lucPeriod.Enabled := lucViewMode.ItemIndex = 0;
  dteFromDate.Enabled := not lucPeriod.Enabled;
  dteToDate.Enabled := not lucPeriod.Enabled;
  MonthEndDate := GetMonthEndDate(FTimesheetPeriod);

  try
    case lucViewMode.ItemIndex of
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
    RegKey.WriteInteger('View Mode Index', lucViewMode.ItemIndex);
  finally
    Regkey.Free
  end;

  if not FShowingForm then
    actGetTimesheetData.Execute;
end;

procedure TMainFrm.lucViewModePropertiesEditValueChanged(Sender: TObject);
var
//  AComboBox: TcxComboBox;
//  ALookupComboBox: TcxLookupComboBox;
//  AFromDateEdit, AToDateEdit: TcxDateEdit;
  RegKey: TRegistry;
  MonthEndDate: TDateTime;
begin
  inherited;
//  barToolbar.Bars.BeginUpdate;
//  AComboBox := TcxBarEditItemControl(lucViewMode.Links[0].Control).Edit as TcxComboBox;
  lucPeriod.Enabled := lucViewMode.ItemIndex = 0;
  dteFromDate.Enabled := not lucPeriod.Enabled;
  dteToDate.Enabled := not lucPeriod.Enabled;
  MonthEndDate := GetMonthEndDate(FTimesheetPeriod);

//  try
//    case AComboBox.ItemIndex of
//      0:
//        begin
//          lucPeriod.Visible := ivAlways;
//          lblPeriod.Visible := ivAlways;
//          lblFromDate.Visible := ivNever;
//          dteFromDate.Visible := ivNever;
//          lblToDate.Visible := ivNever;
//          dteToDate.Visible := ivNever;
//        end;
//
//      1:
//        begin
//          lucPeriod.Visible := ivNever;
//          lblPeriod.Visible := ivNever;
//          lblFromDate.Visible := ivAlways;
//          dteFromDate.Visible := ivAlways;
//          lblToDate.Visible := ivAlways;
//          dteToDate.Visible := ivAlways;
//        end;
//    end;
//  finally
//    barToolbar.Bars.EndUpdate(True);
//  end;

  Regkey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    Regkey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);
    RegKey.WriteInteger('View Mode Index', lucViewMode.ItemIndex);
  finally
    Regkey.Free
  end;
//  if not FShowingForm then
//    actGetTimesheetData.Execute;
end;

function TMainFrm.GetMonthEndDate(Period: Integer): TDateTime;
var
  AYear, AMonth, Aday: Word;
begin
  Ayear := Period div 100;
  AMonth := Period mod 100;
  ADay := DaysInAMonth(AYear, AMonth);
  Result := EncodeDate(Ayear, Amonth, Aday);
end;

procedure TMainFrm.DoInsertEntry(Sender: TObject);
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

    if TimesheetEditFrm.ShowModal = mrCancel then
      if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
        TSDM.cdsTimesheet.Cancel;

    TimesheetEditFrm.Close;
    FreeAndNil(TimesheetEditFrm);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMainFrm.DoPDF(Sender: TObject);
begin
  inherited;
//
end;

procedure TMainFrm.DoPreferences(Sender: TObject);
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
begin
  inherited;
//
end;

procedure TMainFrm.DoEditEntry(Sender: TObject);
begin
  inherited;
  //
end;

procedure TMainFrm.DoExcel(Sender: TObject);
begin
  inherited;
//
end;

end.

