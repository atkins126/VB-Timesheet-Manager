unit CarryForwardManager_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.Actions, Vcl.ActnList, Vcl.Controls,
  Vcl.Dialogs, System.ImageList, Vcl.ImgList, Data.DB, System.Math, Vcl.Menus,
  Vcl.StdCtrls, System.Win.Registry,

  frxClass, FireDAC.Comp.Client,

  BaseLayout_Frm, VBCommonValues, Base_DM, CommonFunctions, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter, cxData, cxCalendar,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxDBData, cxCurrencyEdit, cxTextEdit, cxMemo, cxCheckBox, cxGridLevel, cxEdit,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGrid,
  cxGridDBBandedTableView, cxGridCustomView, dxScreenTip, dxPrnDev, dxPrnDlg,
  dxCustomHint, cxHint, cxContainer, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxBar, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxButtons, cxLabel, dxBarExtItems, cxBarEditItem;

type
  // TcxLookupComboBoxAccess = class (TcxLookupComboBox);

  TCarryForwardManagerFrm = class(TBaseLayoutFrm)
    grdTimesheet: TcxGrid;
    viewTimesheet: TcxGridDBBandedTableView;
    edtID: TcxGridDBBandedColumn;
    edtFirstName: TcxGridDBBandedColumn;
    edtLastName: TcxGridDBBandedColumn;
    edtThePeriod: TcxGridDBBandedColumn;
    edtLoginName: TcxGridDBBandedColumn;
    edtActivityDate: TcxGridDBBandedColumn;
    edtCustomerType: TcxGridDBBandedColumn;
    edtCustomerName: TcxGridDBBandedColumn;
    edtActivtyType: TcxGridDBBandedColumn;
    edtAActivty: TcxGridDBBandedColumn;
    edtPriceItem: TcxGridDBBandedColumn;
    edtTimeSpent: TcxGridDBBandedColumn;
    edtHours: TcxGridDBBandedColumn;
    edtRate: TcxGridDBBandedColumn;
    edtStdRate: TcxGridDBBandedColumn;
    edtAbbreviation: TcxGridDBBandedColumn;
    edtItemValue: TcxGridDBBandedColumn;
    edtCFwdValue: TcxGridDBBandedColumn;
    edtBillable: TcxGridDBBandedColumn;
    edtBillableStr: TcxGridDBBandedColumn;
    edtInvoiceNo: TcxGridDBBandedColumn;
    edtInvDate: TcxGridDBBandedColumn;
    edtCreditNoteNo: TcxGridDBBandedColumn;
    edtLocked: TcxGridDBBandedColumn;
    edtLockedStr: TcxGridDBBandedColumn;
    edtCFwd: TcxGridDBBandedColumn;
    edtCFwdStr: TcxGridDBBandedColumn;
    edtAddWork: TcxGridDBBandedColumn;
    edtAddWorkStr: TcxGridDBBandedColumn;
    lvlTimesheet: TcxGridLevel;
    repScreenTip: TdxScreenTipRepository;
    tipClose: TdxScreenTip;
    tipPreview: TdxScreenTip;
    tipPrint: TdxScreenTip;
    tipPDF: TdxScreenTip;
    tipExcel: TdxScreenTip;
    tipGetCFwdData: TdxScreenTip;
    styHintController: TcxHintStyleController;
    dlgPrint: TdxPrintDialog;
    dlgFileSave: TSaveDialog;
    lucPeriod: TcxLookupComboBox;
    barManager: TdxBarManager;
    barToolbarCFwd: TdxBar;
    litCFwdToolbar: TdxLayoutItem;
    docToolbarCFwd: TdxBarDockControl;
    btnClose: TdxBarLargeButton;
    btnToScreen: TdxBarLargeButton;
    actCloseForm: TAction;
    actGetTimeSheetDataCFwd: TAction;
    litCFwdGrid: TdxLayoutItem;
    lucReleaseToPeriod: TcxLookupComboBox;
    styReadOnly: TcxEditStyleController;
    styGroupFormat: TcxStyle;
    edtPeriodName: TcxGridDBBandedColumn;
    btnRelease: TdxBarLargeButton;
    actRelease: TAction;
    tipRelease: TdxScreenTip;
    btnOptions: TdxBarLargeButton;
    actOptions: TAction;
    cntPeriod: TdxBarControlContainerItem;
    cntReleasePeriod: TdxBarControlContainerItem;
    lblPeriod: TdxBarStatic;
    lblReleasePeriod: TdxBarStatic;
    lblSpace1: TdxBarStatic;
    cntPersistentSelection: TdxBarControlContainerItem;
    cbxPersistentSelection: TcxCheckBox;
    tipPersistentRecordSelection: TdxScreenTip;
    lblSpace2: TdxBarStatic;
    tipDataPeriod: TdxScreenTip;
    tipReleasePeriod: TdxScreenTip;
    grpCFwdRelease: TdxLayoutGroup;
    grpCarryForward: TdxLayoutGroup;
    grpRelease: TdxLayoutGroup;
    litReleaseToolbar: TdxLayoutItem;
    litReleaseGrid: TdxLayoutItem;
    docTolbarRelease: TdxBarDockControl;
    barRelease: TdxBar;
    btnCloseFormR: TdxBarLargeButton;
    btnGetDataR: TdxBarLargeButton;
    btnReleaseR: TdxBarLargeButton;
    btnReverse: TdxBarLargeButton;
    grdTimesheetRelease: TcxGrid;
    viewTimesheetRelease: TcxGridDBBandedTableView;
    edtRID: TcxGridDBBandedColumn;
    edtRFirstName: TcxGridDBBandedColumn;
    edtRLastName: TcxGridDBBandedColumn;
    edtRThePeriod: TcxGridDBBandedColumn;
    edtRPeriodName: TcxGridDBBandedColumn;
    edtRLoginName: TcxGridDBBandedColumn;
    edtRActivityDate: TcxGridDBBandedColumn;
    edtRCustomerType: TcxGridDBBandedColumn;
    edtRCustomerName: TcxGridDBBandedColumn;
    edtRActivtyType: TcxGridDBBandedColumn;
    edtRAActivty: TcxGridDBBandedColumn;
    edtRPriceItem: TcxGridDBBandedColumn;
    edtRTimeSpent: TcxGridDBBandedColumn;
    edtRHours: TcxGridDBBandedColumn;
    edtRRate: TcxGridDBBandedColumn;
    edtRStdRate: TcxGridDBBandedColumn;
    edtRAbbreviation: TcxGridDBBandedColumn;
    edtRItemValue: TcxGridDBBandedColumn;
    edtRCFwdValue: TcxGridDBBandedColumn;
    edtRBillable: TcxGridDBBandedColumn;
    edtRBillableStr: TcxGridDBBandedColumn;
    edtRInvoiceNo: TcxGridDBBandedColumn;
    edtRInvDate: TcxGridDBBandedColumn;
    edtRCreditNoteNo: TcxGridDBBandedColumn;
    edtRLocked: TcxGridDBBandedColumn;
    edtRLockedStr: TcxGridDBBandedColumn;
    edtRCFwd: TcxGridDBBandedColumn;
    edtRCFwdStr: TcxGridDBBandedColumn;
    edtRAddWork: TcxGridDBBandedColumn;
    edtRAddWorkStr: TcxGridDBBandedColumn;
    lvlTimesheetRelease: TcxGridLevel;
    actGetTimesheetDataRelease: TAction;
    actChangeReleasePeriod: TAction;
    tipChangeReleasePeriod: TdxScreenTip;
    tipGetReleaseData: TdxScreenTip;
    actReverseRelease: TAction;
    tipReverseRelease: TdxScreenTip;
    lucReleaseDataPeriod: TcxLookupComboBox;
    lucChangeToPeriod: TcxLookupComboBox;
    cntReleaseDataPeriod: TdxBarControlContainerItem;
    cntChangeToPeriod: TdxBarControlContainerItem;
    lblReleaseDataPeriod: TdxBarStatic;
    lblChangeToPeriod: TdxBarStatic;
    lblSpacer3: TdxBarStatic;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure DoGetTimesheetData(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DoRelease(Sender: TObject);
    procedure lucPeriodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lucPeriodPropertiesPopup(Sender: TObject);
    procedure DoOptions(Sender: TObject);
    procedure lucPeriodPropertiesCloseUp(Sender: TObject);
    procedure lucPeriodPropertiesInitPopup(Sender: TObject);
    procedure lucPeriodPropertiesEditValueChanged(Sender: TObject);
    procedure lucReleaseToPeriodPropertiesEditValueChanged(Sender: TObject);
    procedure cbxPersistentRecordSelectionPropertiesEditValueChanged(Sender: TObject);
    procedure DoReverseRelease(Sender: TObject);
    procedure DoChangeReleasePeriod(Sender: TObject);

    procedure viewTimesheetCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

    procedure edtThePeriodGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);

    procedure viewTimesheetStylesGetGroupStyle(Sender: TcxGridTableView;
      ARecord: TcxCustomGridRecord; ALevel: Integer; var AStyle: TcxStyle);
  private
    { Private declarations }
    FShowingForm: Boolean;
    FCFwdPeriod: Integer;
    FReleaseToPeriod: Integer;
    FReleaseDataPeriod: Integer;
    FChangeToPeriod: Integer;
    FItemsRelease: Boolean;

    procedure GetPeriods;
    procedure GetTimesheetDataCFwd;
    procedure GetTimesheetDataRelease;
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
  public
    { Public declarations }
    property ItemsRelease: Boolean read FItemsRelease write FItemsRelease;
  end;

var
  CarryForwardManagerFrm: TCarryForwardManagerFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  TS_DM,
  RUtils,
  Report_DM,
  TimesheetOptions_Frm;

procedure TCarryForwardManagerFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TCarryForwardManagerFrm.FormCreate(Sender: TObject);
var
  RegKey: TRegistry;
begin
  Caption := 'Carry forward manager';
  FShowingForm := True;
  FItemsRelease := False;
  viewTimesheet.DataController.DataSource := TSDM.dtsCarryForward;
  viewTimesheetRelease.DataController.DataSource := TSDM.dtsRelease;

  lucPeriod.Properties.ListSource := TSDM.dtsPeriod;
  lucReleaseToPeriod.Properties.ListSource := TSDM.dtsToPeriod;
  lucReleaseDataPeriod.Properties.ListSource := TSDM.dtsReleaseDataPeriod;
  lucChangeToPeriod.Properties.ListSource := TSDM.dtsChangeToPeriod;

  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  grpCFwdRelease.ItemIndex := 0;
  DoMyMouseWheel(lucPeriod, False);
  cbxPersistentSelection.EditValue := TSDM.TimesheetOption.PersitentRecordSelection;

  if ReportDM = nil then
    ReportDM := TReportDM.Create(nil);

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  RegKey.OpenKey(KEY_TIMESHEET_CARRY_FORWARD_MANAGER, True);

  try
    if not RegKey.ValueExists('CFwdPeriod') then
      RegKey.WriteInteger('CFwdPeriod', VBBaseDM.CurrentPeriod);

    if not RegKey.ValueExists('Release To Period') then
      RegKey.WriteInteger('Release To Period', VBBaseDM.CurrentPeriod);

    if not RegKey.ValueExists('Release Data Period') then
      RegKey.WriteInteger('Release Data Period', VBBaseDM.CurrentPeriod);

    FCFwdPeriod := RegKey.ReadInteger('CFwdPeriod');
    FReleaseToPeriod := RegKey.ReadInteger('Release To Period');
    FReleaseDataPeriod := RegKey.ReadInteger('Release Data Period');

    GetPeriods;
    RegKey.CloseKey;
    actGetTimeSheetDataCFwd.Execute;
    actGetTimesheetDataRelease.Execute;
  finally
    Regkey.Free;
  end;
end;

procedure TCarryForwardManagerFrm.FormShow(Sender: TObject);
begin
  WindowState := wsMaximized;
  FShowingForm := False;
  Screen.Cursor := crDefault;
end;

procedure TCarryForwardManagerFrm.edtThePeriodGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
var
  TheYear, TheMonth: Integer;
begin
  if ARecord is TcxGridGroupRow then
  begin
    if (TcxCustomGridTableItem(Sender).Name = 'edtThePeriod')
      or (TcxCustomGridTableItem(Sender).Name = 'edtRThePeriod') then
    begin
      TheYear := TcxGridGroupRow(ARecord).Value div 100;
      TheMonth := TcxGridGroupRow(ARecord).Value mod 100;
      AText := ShortMonths[TheMonth] + ' ' + TheYear.ToString;
    end
      // Do we need this??
    else
      AText := TcxGridGroupRow(ARecord).Value;
  end;
end;

procedure TCarryForwardManagerFrm.cbxPersistentRecordSelectionPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
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

procedure TCarryForwardManagerFrm.DoCloseForm(Sender: TObject);
// var
// RegKey: TRegistry;
begin
  Self.ModalResult := mrOK;
  // RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  // RegKey.RootKey := HKEY_CURRENT_USER;
  // RegKey.OpenKey(KEY_TIMESHEET_CARRY_FORWARD_MANAGER, True);

    { TODO: Do this on-the-fly for each control }
  // try
  // if cbxSaveSettingsOnExit.EditValue then
  // begin
  // RegKey.WriteInteger('Period', lucPeriod.EditValue);
  // RegKey.WriteBool('Fetch All Periods', cbxAllPeriods.Checked);
  // RegKey.WriteInteger('Billable Status Index', lucBillable.ItemIndex);
  // RegKey.WriteInteger('Release To Period', lucReleaseToPeriod.EditValue);
  // RegKey.CloseKey;
  // end;
  // finally
  // RegKey.Free;
  // Self.ModalResult := mrOK;
  // end;
end;

procedure TCarryForwardManagerFrm.DoGetTimesheetData(Sender: TObject);
begin
  Screen.Cursor := crHourglass;

  try
    case TAction(Sender).Tag of
      10: // Carry
        begin
          GetTimesheetDataCFwd;
          actRelease.Enabled := TSDM.cdsCarryForward.RecordCount > 0;
          viewTimesheet.ViewData.Expand(True);

        end;
      11:
        begin
          GetTimesheetDataRelease;
          actChangeReleasePeriod.Enabled := TSDM.cdsRelease.RecordCount > 0;
          actReverseRelease.Enabled := TSDM.cdsRelease.RecordCount > 0;
          viewTimesheetRelease.ViewData.Expand(True);
        end;

    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCarryForwardManagerFrm.DoOptions(Sender: TObject);
begin
  // Screen.Cursor := crHourglass;
  // try
  // if TimesheetOptionsFrm = nil then
  // TimesheetOptionsFrm := TTimesheetOptionsFrm.Create(nil);
  //
  // TimesheetOptionsFrm.OptionsTabindex := 2;
  // TimesheetOptionsFrm.ShowModal;
  // TimesheetOptionsFrm.Close;
  // FreeAndNil(TimesheetOptionsFrm);
  // finally
  // Screen.Cursor := crDefault;
  // end;
end;

procedure TCarryForwardManagerFrm.DoRelease(Sender: TObject);
// const
// RELEASE_CARRY_FORWARD =
// ' UPDATE TIMESHEET SET ' +
// ' RELEASE_CFWD_TO_PERIOD = %d, ' +
// ' DATE_CFWD_RELEASED = %s, ' +
// ' CARRY_FORWARD = 0 ' +
// ' WHERE ID IN(%s)';

var
  C: TcxGridBandedTableController;
  IDValues, CommandString: string;
  I, SelectCount: Integer;
  ARecord: TcxCustomGridRecord;
  Response: TStringList;
begin
  C := viewTimesheet.Controller;
  SelectCount := C.SelectedRecordCount;

  if SelectCount = 0 then
    raise ESelectionException.Create('No carried forwared items selected. Please select at least one item to release.');

  if VarIsNull(lucReleaseToPeriod.EditValue) then
    raise ESelectionException.Create('Please select the period you into which want to release the selected carried forward items.');

  Beep;
  if DisplayMsg(
    Application.Title,
    'Release Carry Forward Confirmation',
    'You have selected ' + SelectCount.ToString +
    ' carried forward items to be released to billing period ' +
    lucReleaseToPeriod.Text + CRLF + CRLF +
    // TSDM.cdsReleaseToPeriod.FieldByName('PERIOD_NAME').AsString + CRLF + CRLF +
    'Are you sure you want to proceed?',
    mtConfirmation,
    [mbYes, mbNo]
    ) = mrNo then
    Exit;

  ItemsRelease := True;
  CommandString := '';
  Response := RUtils.CreateStringList(PIPE, DOUBLE_QUOTE);

  try
    for I := 0 to SelectCount - 1 do
    begin
      ARecord := C.SelectedRecords[I];
      if not (ARecord is TcxGridGroupRow) then
      begin
        IDValues := IDValues + IntToStr(ARecord.Values[edtID.Index]);
        if I < C.SelectedRecordCount - 1 then
          IDValues := IDValues + ',';
      end;
    end;

    CommandString := Format(RELEASE_CARRY_FORWARD, [
      // TSDM.cdsReleaseToPeriod.FieldByName('THE_PERIOD').AsInteger,
      lucReleaseToPeriod.Text,
        AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', Date), ''''),
        IDValues
        ]);

    Response.DelimitedText := VBBaseDM.Client.ExecuteSQLCommand(CommandString);

    if SameText(Response.Values['RESPONSE'], 'ERROR') then
    begin
      Beep;
      DisplayMsg(
        Application.Title,
        'VB Remote Server Error',
        'One or more errors occurred when trying to update the VB database.' + CRLF + CRLF +
        'Error message from server' + CRLF +
        Response.Values['ERROR_MESSAGE'],
        mtError,
        [mbOK]
        );
    end
    else
    begin
      Beep;
      DisplayMsg(
        Application.Title,
        'Carry Forward released',
        SelectCount.ToString + ' Carried forward item(s) successfully released for billing.',
        mtInformation,
        [mbOK]);
    end;

    actGetTimeSheetDataCFwd.Execute;
    actGetTimesheetDataRelease.Execute;
  finally
    Response.Free;
  end;
end;

procedure TCarryForwardManagerFrm.DoReverseRelease(Sender: TObject);
begin
  inherited;
  //
end;

procedure TCarryForwardManagerFrm.DoChangeReleasePeriod(Sender: TObject);
var
  C: TcxGridBandedTableController;
  IDValues, CommandString: string;
  I, SelectCount: Integer;
  ARecord: TcxCustomGridRecord;
  Response: TStringList;
begin
  C := viewTimesheetRelease.Controller;
  SelectCount := C.SelectedRecordCount;

  if SelectCount = 0 then
    raise ESelectionException.Create('No relased items selected. Please select at least one item for which to change the release date.');

  if VarIsNull(lucChangeToPeriod.EditValue) then
    raise ESelectionException.Create('Please select the period you into which want to move the selected released items.');

  Beep;
  if DisplayMsg(
    Application.Title,
    'Release Carry Forward Confirmation',
    'You have selected ' + SelectCount.ToString +
    ' carried forward items to be released to billing period ' +
    lucChangeToPeriod.Text + CRLF + CRLF +
    // TSDM.cdsReleaseToPeriod.FieldByName('PERIOD_NAME').AsString + CRLF + CRLF +
    'Are you sure you want to proceed?',
    mtConfirmation,
    [mbYes, mbNo]
    ) = mrNo then
    Exit;

  ItemsRelease := True;
  CommandString := '';
  Response := RUtils.CreateStringList(PIPE, DOUBLE_QUOTE);

  try
    for I := 0 to SelectCount - 1 do
    begin
      ARecord := C.SelectedRecords[I];
      if not (ARecord is TcxGridGroupRow) then
      begin
        IDValues := IDValues + IntToStr(ARecord.Values[edtRID.Index]);
        if I < C.SelectedRecordCount - 1 then
          IDValues := IDValues + ',';
      end;
    end;

    CommandString := Format(RELEASE_CARRY_FORWARD, [
      lucChangeToPeriod.Text,
        AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', Date), ''''),
        IDValues
        ]);

    Response.DelimitedText := VBBaseDM.Client.ExecuteSQLCommand(CommandString);

    if SameText(Response.Values['RESPONSE'], 'ERROR') then
    begin
      Beep;
      DisplayMsg(
        Application.Title,
        'VB Remote Server Error',
        'One or more errors occurred when trying to update the VB database.' + CRLF + CRLF +
        'Error message from server' + CRLF +
        Response.Values['ERROR_MESSAGE'],
        mtError,
        [mbOK]
        );
    end
    else
    begin
      Beep;
      DisplayMsg(
        Application.Title,
        'Carry Forward released',
        SelectCount.ToString + ' Carried forward item(s) successfully released for billing.',
        mtInformation,
        [mbOK]);
    end;

    actGetTimeSheetDataCFwd.Execute;
    actGetTimesheetDataRelease.Execute;
  finally
    Response.Free;
  end;
end;

procedure TCarryForwardManagerFrm.GetPeriods;
begin
  TSDM.cdsToPeriod.Close;
  TSDM.cdsReleaseDataPeriod.Close;
  TSDM.cdsChangeToPeriod.Close;

  VBBaseDM.GetData(62, TSDM.cdsPeriod, TSDM.cdsPeriod.Name, ONE_SPACE,
    'C:\Data\Xml\Period.xml', TSDM.cdsPeriod.UpdateOptions.Generatorname,
    TSDM.cdsPeriod.UpdateOptions.UpdateTableName);

  TSDM.cdsToPeriod.Data := TSDM.cdsPeriod.Data;
  TSDM.cdsReleaseDataPeriod.Data := TSDM.cdsPeriod.Data;
  TSDM.cdsChangeToPeriod.Data := TSDM.cdsPeriod.Data;

  if not TSDM.cdsPeriod.Locate('THE_PERIOD', FCFwdPeriod, []) then
    TSDM.cdsPeriod.First;

  if not TSDM.cdsReleaseDataPeriod.Locate('THE_PERIOD', FCFwdPeriod, []) then
    TSDM.cdsReleaseDataPeriod.First;

  lucPeriod.EditValue := FCFwdPeriod;
  lucReleaseDataPeriod.EditValue := FCFwdPeriod;
end;

procedure TCarryForwardManagerFrm.GetTimesheetDataCFwd;
var
  WhereClause, OrderByClause, FileName, DateClause, BillableClause: string;
  // ActivityClause, BillableClause, WorkTypeClause, FileName: string;
begin
  WhereClause := ' WHERE T.CARRY_FORWARD = 1 ';
  BillableClause := ' AND T.BILLABLE = 1';
  DateClause := 'AND T.THE_PERIOD = ' + IntToStr(TSDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger);
  OrderByClause := ' ORDER BY T.THE_PERIOD, T.CUSTOMER_NAME';
  FileName := 'Carry Forward Items';
  WhereClause := WhereClause + DateClause + BillableClause + OrderByClause;

  VBBaseDM.GetData(45, TSDM.cdsCarryForward, TSDM.cdsCarryForward.Name, WhereClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsCarryForward.UpdateOptions.Generatorname,
    TSDM.cdsCarryForward.UpdateOptions.UpdateTableName);
end;

procedure TCarryForwardManagerFrm.GetTimesheetDataRelease;
var
  WhereClause, OrderByClause, FileName, DateClause, BillableClause: string;
begin
  // WhereClause := ' WHERE T.CARRY_FORWARD = 0 AND T.RELEASE_CFWD_TO_PERIOD > 0';
  WhereClause := ' WHERE T.RELEASE_CFWD_TO_PERIOD > 0';
  BillableClause := ' AND T.BILLABLE = 1';
  DateClause := ' AND T.THE_PERIOD = ' + IntToStr(TSDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger);
  OrderByClause := ' ORDER BY T.THE_PERIOD, T.CUSTOMER_NAME';
  FileName := 'Released Items';
  WhereClause := WhereClause + DateClause + BillableClause + OrderByClause;

  VBBaseDM.GetData(45, TSDM.cdsRelease, TSDM.cdsRelease.Name, WhereClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsRelease.UpdateOptions.Generatorname,
    TSDM.cdsRelease.UpdateOptions.UpdateTableName);
end;

procedure TCarryForwardManagerFrm.lucPeriodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if not TcxComboBox(Sender).DroppedDown then
    Abort;
end;

procedure TCarryForwardManagerFrm.lucPeriodPropertiesCloseUp(Sender: TObject);
begin
  DoMyMouseWheel(TcxLookupComboBox(Sender), False)
end;

procedure TCarryForwardManagerFrm.lucPeriodPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
  if not FShowingForm then
  begin
    if not TcxLookupComboBox(Sender).DroppedDown then
      Abort;

    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIMESHEET_CARRY_FORWARD_MANAGER, True);

    try
      case grpCFwdRelease.ItemIndex of
        0:
          begin
            if SameText(TcxLookupComboBox(Sender).Name, 'lucPeriod') then
              RegKey.WriteInteger('CFwdPeriod', lucPeriod.EditValue)

            else if SameText(TcxLookupComboBox(Sender).Name, 'lucReleaseToPeriod') then
              RegKey.WriteInteger('Release To Period', lucReleaseToPeriod.EditValue);

            FCFwdPeriod := RegKey.ReadInteger('Period');
            FReleaseToPeriod := RegKey.ReadInteger('Release To Period');
          end;

        1:
          begin

          end;
      end;
      RegKey.CloseKey;
    finally
      RegKey.Free;
    end;

    case grpCFwdRelease.ItemIndex of
      0: actGetTimeSheetDataCFwd.Execute;
      1: actGetTimesheetDataRelease.Execute;
    end;
  end;
end;

procedure TCarryForwardManagerFrm.lucPeriodPropertiesInitPopup(Sender: TObject);
begin
  if TcxLookupComboBox(Sender).DroppedDown then
    DoMyMouseWheel(TcxLookupComboBox(Sender), True);
end;

procedure TCarryForwardManagerFrm.lucPeriodPropertiesPopup(Sender: TObject);
begin
  if TcxLookupComboBox(Sender).DroppedDown then
    DoMyMouseWheel(TcxLookupComboBox(Sender), True)
  else
    DoMyMouseWheel(TcxLookupComboBox(Sender), False)
end;

procedure TCarryForwardManagerFrm.lucReleaseToPeriodPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
  if not FShowingForm then
  begin
    if not TcxLookupComboBox(Sender).DroppedDown then
      Abort;

    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIMESHEET_CARRY_FORWARD_MANAGER, True);

    try
      RegKey.WriteInteger('Release To Period', lucReleaseToPeriod.EditValue);
      RegKey.CloseKey;
    finally
      RegKey.Free;
    end;
  end;
end;

procedure TCarryForwardManagerFrm.viewTimesheetCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord = nil then
    Exit;

  try
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
  except

  end;
end;

procedure TCarryForwardManagerFrm.viewTimesheetStylesGetGroupStyle(
  Sender: TcxGridTableView; ARecord: TcxCustomGridRecord; ALevel: Integer; var AStyle: TcxStyle);
begin
  if ARecord is TcxGridGroupRow then
    if ARecord.Expanded then
      AStyle := styGroupFormat;
end;

end.

