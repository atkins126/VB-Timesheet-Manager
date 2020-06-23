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
    barManager: TdxBarManager;
    barToolbarCFwd: TdxBar;
    litCFwdToolbar: TdxLayoutItem;
    docToolbarCFwd: TdxBarDockControl;
    btnClose: TdxBarLargeButton;
    btnToScreen: TdxBarLargeButton;
    actCloseForm: TAction;
    actGetTimeSheetDataCFwd: TAction;
    litCFwdGrid: TdxLayoutItem;
    lucReleaseCarryForwardToPeriod: TcxLookupComboBox;
    styReadOnly: TcxEditStyleController;
    styGroupFormat: TcxStyle;
    edtPeriodName: TcxGridDBBandedColumn;
    btnRelease: TdxBarLargeButton;
    actRelease: TAction;
    tipRelease: TdxScreenTip;
    btnOptions: TdxBarLargeButton;
    actOptions: TAction;
    cntReleasePeriod: TdxBarControlContainerItem;
    lblReleasePeriod: TdxBarStatic;
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
    lucChangeToPeriod: TcxLookupComboBox;
    cntChangeToPeriod: TdxBarControlContainerItem;
    lblChangeToPeriod: TdxBarStatic;
    lblSpacer3: TdxBarStatic;
    cbxGetAllCarryForwardItems: TcxCheckBox;
    popReleaseCFwd: TPopupMenu;
    popUndoRelease: TPopupMenu;
    Release1: TMenuItem;
    GetData1: TMenuItem;
    GetData2: TMenuItem;
    Reverse1: TMenuItem;
    GetData3: TMenuItem;
    edtCFwdReleaseDate: TcxGridDBBandedColumn;
    edtCFwdToPeriod: TcxGridDBBandedColumn;
    lucGroupCFwdBy: TcxComboBox;
    cntGroupCFwdBy: TdxBarControlContainerItem;
    lucGroupReleaseBy: TcxComboBox;
    cntGoupReleaseBy: TdxBarControlContainerItem;
    lblGoupReelaseBy: TdxBarStatic;
    lblGroupCFwdBy: TdxBarStatic;
    lblSpace3: TdxBarStatic;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure DoGetTimesheetData(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DoRelease(Sender: TObject);
    procedure DoOptions(Sender: TObject);
    procedure lucPeriodPropertiesCloseUp(Sender: TObject);
    procedure cbxPersistentRecordSelectionPropertiesEditValueChanged(Sender: TObject);
    procedure DoReverseRelease(Sender: TObject);
    procedure DoChangeReleasePeriod(Sender: TObject);
    procedure lucReleaseCarryForwardToPeriodPropertiesEditValueChanged(Sender: TObject);
    procedure cbxGetAllCarryForwardItemsPropertiesEditValueChanged(Sender: TObject);
    procedure lucReleaseCarryForwardToPeriodPropertiesCloseUp(Sender: TObject);
    procedure lucReleaseCarryForwardToPeriodPropertiesInitPopup(Sender: TObject);
    procedure lucReleaseCarryForwardToPeriodPropertiesPopup(Sender: TObject);

    procedure viewTimesheetCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

    procedure edtThePeriodGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);

    procedure viewTimesheetStylesGetGroupStyle(Sender: TcxGridTableView;
      ARecord: TcxCustomGridRecord; ALevel: Integer; var AStyle: TcxStyle);
    procedure lucGroupCFwdByPropertiesEditValueChanged(Sender: TObject);

  private
    { Private declarations }
    FShowingForm: Boolean;
    FReleaseToPeriod: Integer;
    FChangeToPeriod: Integer;
    FReleaseItems: Boolean;

    procedure GetPeriods;
    procedure GetTimesheetDataCFwd;
    procedure GetTimesheetDataRelease;
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
  public
    { Public declarations }
    property ReleaseItems: Boolean read FReleaseItems write FReleaseItems;
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
  FReleaseItems := False;
  viewTimesheet.DataController.DataSource := TSDM.dtsCarryForward;
  viewTimesheetRelease.DataController.DataSource := TSDM.dtsRelease;

  lucReleaseCarryForwardToPeriod.Properties.ListSource := TSDM.dtsAllPeriod;
  lucChangeToPeriod.Properties.ListSource := TSDM.dtsChangeToPeriod;

  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  grpCFwdRelease.ItemIndex := 0;
  DoMyMouseWheel(lucReleaseCarryForwardToPeriod, False);
  DoMyMouseWheel(lucChangeToPeriod, False);
  cbxPersistentSelection.EditValue := TSDM.TimesheetOption.PersitentRecordSelection;
  viewTimesheet.OptionsView.GroupByBox := False;
  viewTimesheetRelease.OptionsView.GroupByBox := False;
  TSDM.CFwdOrreleased := False;

  if ReportDM = nil then
    ReportDM := TReportDM.Create(nil);

  GetPeriods;
  //  actGetTimeSheetDataCFwd.Execute;
  //  actGetTimesheetDataRelease.Execute;

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  RegKey.OpenKey(KEY_TIMESHEET_CARRY_FORWARD_MANAGER, True);

  try
    if not RegKey.ValueExists('CFwd Group By Index') then
      RegKey.WriteInteger('CFwd Group By Index', 0);

    if not RegKey.ValueExists('Release Group By Index') then
      RegKey.WriteInteger('Release Group By Index', 0);

    //    GetPeriods;
    lucGroupCFwdBy.ItemIndex := RegKey.ReadInteger('CFwd Group By Index');
    lucGroupReleaseBy.ItemIndex := RegKey.ReadInteger('Release Group By Index');
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

procedure TCarryForwardManagerFrm.cbxGetAllCarryForwardItemsPropertiesEditValueChanged(Sender: TObject);
begin
  //
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

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;

  try
    if not FShowingForm then
    begin
      RegKey.OpenKey(KEY_TIMESHEET, True);
      RegKey.WriteBool('Persistent Selection', TSDM.TimesheetOption.PersitentRecordSelection);
      RegKey.CloseKey;
    end;
  finally
    RegKey.Free;
    viewTimesheet.Controller.ClearSelection;
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
  // RegKey.WriteInteger('Period', lucCarryForwardPeriod.EditValue);
  // RegKey.WriteBool('Fetch All Periods', cbxAllPeriods.Checked);
  // RegKey.WriteInteger('Billable Status Index', lucBillable.ItemIndex);
  // RegKey.WriteInteger('Release To Period', lucReleaseCarryForwardToPeriod.EditValue);
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
      10: // Carry forward items
        begin
          GetTimesheetDataCFwd;
          actRelease.Enabled := TSDM.cdsCarryForward.RecordCount > 0;
          viewTimesheet.ViewData.Collapse(True);
        end;

      11: // Released items
        begin
          GetTimesheetDataRelease;
          actChangeReleasePeriod.Enabled := TSDM.cdsRelease.RecordCount > 0;
          actReverseRelease.Enabled := TSDM.cdsRelease.RecordCount > 0;
          viewTimesheetRelease.ViewData.Collapse(True);
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
// ' RELEASE_TO_PERIOD = %d, ' +
// ' DATE_RELEASED = %s, ' +
// ' CARRY_FORWARD = 0 ' +
// ' WHERE ID IN(%s)';

var
  C: TcxGridBandedTableController;
  IDValues, CommandString: string;
  I, SelectCount: Integer;
  ARecord: TcxCustomGridRecord;
  Response: TStringList;
  Period: Integer;
begin
  C := viewTimesheet.Controller;
  SelectCount := C.SelectedRecordCount;

  if SelectCount = 0 then
    raise ESelectionException.Create('No carried forwared items selected. Please select at least one item to release.');

  if VarIsNull(lucReleaseCarryForwardToPeriod.EditValue) then
    raise ESelectionException.Create('Please select the period you into which want to release the selected carried forward items.');

  Beep;
  if DisplayMsg(
    Application.Title,
    'Release Carry Forward Confirmation',
    'You have selected ' + SelectCount.ToString +
    ' carried forward items to be released to billing period ' +
    lucReleaseCarryForwardToPeriod.Text + CRLF + CRLF +
    // TSDM.cdsReleaseToPeriod.FieldByName('PERIOD_NAME').AsString + CRLF + CRLF +
    'Are you sure you want to proceed?',
    mtConfirmation,
    [mbYes, mbNo]
    ) = mrNo then
    Exit;

  FReleaseItems := True;
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

    Period := VarAsType(lucReleaseCarryForwardToPeriod.EditValue, varInteger);
    CommandString := Format(RELEASE_CARRY_FORWARD, [
      //       TSDM.cdsReleaseToPeriod.FieldByName('THE_PERIOD').AsInteger,
      //      lucReleaseCarryForwardToPeriod.Text,
//      VarAsType(lucReleaseCarryForwardToPeriod.EditValue, varInteger),
      Period,
        AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', Date), ''''),
        IDValues
        ]);

    Response.DelimitedText := VBBaseDM.Client.ExecuteSQLCommand(CommandString);

    if SameText(Response.Values['RESPONSE'], 'ERROR') then
    begin
      raise EExecutionException.Create('One or more errors occurred when trying to update the VB database.' + CRLF + CRLF +
        'Error message from server' + CRLF +
        Response.Values['ERROR_MESSAGE']);

      //      Beep;
      //      DisplayMsg(
      //        Application.Title,
      //        'VB Remote Server Error',
      //        'One or more errors occurred when trying to update the VB database.' + CRLF + CRLF +
      //        'Error message from server' + CRLF +
      //        Response.Values['ERROR_MESSAGE'],
      //        mtError,
      //        [mbOK]
      //        );
    end
    else
    begin
      TSDM.CFwdOrreleased := True;
      viewTimesheet.Controller.DeleteSelection;
      actGetTimesheetDataRelease.Execute;

      //      DisplayMsg(
      //        Application.Title,
      //        'Carry Forward released',
      //        SelectCount.ToString + ' Carried forward item(s) successfully released for billing.',
      //        mtInformation,
      //        [mbOK]);
    end;

    //    actGetTimeSheetDataCFwd.Execute;
    //    actGetTimesheetDataRelease.Execute;
  finally
    Response.Free;
  end;
end;

procedure TCarryForwardManagerFrm.DoReverseRelease(Sender: TObject);
var
  C: TcxGridBandedTableController;
  IDValues, CommandString: string;
  I, SelectCount: Integer;
  ARecord: TcxCustomGridRecord;
  Response: TStringList;
begin
  //  + AnsiQuotedStr(AnsiUpperCase('1899-12-30'), '''') + ','
  C := viewTimesheetRelease.Controller;
  SelectCount := C.SelectedRecordCount;

  if SelectCount = 0 then
    raise ESelectionException.Create('released items selected. Please select at least one item to reverse.');

  Beep;
  if DisplayMsg(
    Application.Title,
    'Reverse Release Confirmation',
    'You have selected ' + SelectCount.ToString +
    ' released items to be reversed back to carry forward status.' + CRLF + CRLF +
    'Are you sure you want to proceed?',
    mtConfirmation,
    [mbYes, mbNo]
    ) = mrNo then
    Exit;

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

    CommandString := Format(REVERSE_RELEASED_ITEMS, [AnsiQuotedStr('1899-12-30', ''''), IDValues]);
    Response.DelimitedText := VBBaseDM.Client.ExecuteSQLCommand(CommandString);

    if SameText(Response.Values['RESPONSE'], 'ERROR') then
    begin
      raise EExecutionException.Create('One or more errors occurred when trying to update the VB database.' + CRLF + CRLF +
        'Error message from server' + CRLF +
        Response.Values['ERROR_MESSAGE']);

      //      Beep;
      //      DisplayMsg(
      //        Application.Title,
      //        'VB Remote Server Error',
      //        'One or more errors occurred when trying to update the VB database.' + CRLF + CRLF +
      //        'Error message from server' + CRLF +
      //        Response.Values['ERROR_MESSAGE'],
      //        mtError,
      //        [mbOK]
      //        );
    end
    else
    begin
      TSDM.CFwdOrreleased := True;
      viewTimesheetRelease.Controller.DeleteSelection;
      actGetTimeSheetDataCFwd.Execute;

      //      DisplayMsg(
      //        Application.Title,
      //        'Carry Forward released',
      //        SelectCount.ToString + ' Carried forward item(s) successfully released for billing.',
      //        mtInformation,
      //        [mbOK]);
    end;

    //    actGetTimeSheetDataCFwd.Execute;
    //    actGetTimesheetDataRelease.Execute;
  finally
    Response.Free;
  end;
end;

procedure TCarryForwardManagerFrm.DoChangeReleasePeriod(Sender: TObject);
var
  C: TcxGridBandedTableController;
  IDValues, CommandString: string;
  I, SelectCount: Integer;
  ARecord: TcxCustomGridRecord;
  Response: TStringList;
  Period: Integer;
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

    Period := VarAsType(lucChangeToPeriod.EditValue, varInteger);
    CommandString := Format(CHANGE_RELEASE_DATE, [Period, IDValues]);
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
      viewTimesheetRelease.Controller.DeleteSelection;
      actGetTimeSheetDataCFwd.Execute;
      //      Beep;
      //      DisplayMsg(
      //        Application.Title,
      //        'Carry Forward released',
      //        SelectCount.ToString + ' Carried forward item(s) successfully released for billing.',
      //        mtInformation,
      //        [mbOK]);
    end;
  finally
    Response.Free;
  end;
end;

procedure TCarryForwardManagerFrm.GetPeriods;
var
  SelectClause, WhereClause: string;
begin
  TSDM.cdsToPeriod.Close;
  TSDM.cdsAllPeriod.Close;
  TSDM.cdsChangeToPeriod.Close;

  VBBaseDM.GetData(62, TSDM.cdsPeriod, TSDM.cdsPeriod.Name, ONE_SPACE,
    'C:\Data\Xml\Period.xml', TSDM.cdsPeriod.UpdateOptions.Generatorname,
    TSDM.cdsPeriod.UpdateOptions.UpdateTableName);

  TSDM.cdsToPeriod.Data := TSDM.cdsPeriod.Data;

  SelectClause := 'FIRST 12';
  WhereClause := 'WHERE P.THE_PERIOD >= ' + RUtils.GetCurrentPeriod(Date).ToString +
    ' ORDER BY P.THE_PERIOD';

  VBBaseDM.GetData(86, TSDM.cdsAllPeriod, TSDM.cdsAllPeriod.Name, SelectClause + ';' + WhereClause,
    'C:\Data\Xml\All Periods.xml', TSDM.cdsAllPeriod.UpdateOptions.Generatorname,
    TSDM.cdsAllPeriod.UpdateOptions.UpdateTableName);

  TSDM.cdsChangeToPeriod.Data := TSDM.cdsAllPeriod.Data;
end;

procedure TCarryForwardManagerFrm.GetTimesheetDataCFwd;
var
  WhereClause, OrderByClause, FileName: string;
  // ActivityClause, BillableClause, WorkTypeClause, FileName: string;
begin
  WhereClause :=
    ' WHERE T.CARRY_FORWARD = 1 ' +
    ' AND T.BILLABLE = 1';

  //  BillableClause := ' AND T.BILLABLE = 1';
  //  DateClause := '';
    //  DateClause := 'AND T.THE_PERIOD = ' + IntToStr(TSDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger);
  OrderByClause := ' ORDER BY T.THE_PERIOD, T.CUSTOMER_NAME';
  FileName := 'Carry Forward Items';
  //  WhereClause := WhereClause + DateClause + BillableClause + OrderByClause;

  VBBaseDM.GetData(45, TSDM.cdsCarryForward, TSDM.cdsCarryForward.Name, WhereClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsCarryForward.UpdateOptions.Generatorname,
    TSDM.cdsCarryForward.UpdateOptions.UpdateTableName);
end;

procedure TCarryForwardManagerFrm.GetTimesheetDataRelease;
var
  WhereClause, OrderByClause, FileName: string;
begin
  // WhereClause := ' WHERE T.CARRY_FORWARD = 0 AND T.RELEASE_TO_PERIOD > 0';
  WhereClause :=
    ' WHERE T.RELEASE_TO_PERIOD > 0' +
    ' AND T.BILLABLE = 1' +
    //    ' AND T.APPROVED = 1 ' +
  ' AND T.INVOICE_ID <= 0 ';
  //    ' AND T.THE_PERIOD = ' + IntToStr(TSDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger);

//  BillableClause := ' AND T.BILLABLE = 1';
//  DateClause := ' AND T.THE_PERIOD = ' + IntToStr(TSDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger);
  OrderByClause := ' ORDER BY T.THE_PERIOD, T.CUSTOMER_NAME';
  FileName := 'Released Items';
  //  WhereClause := WhereClause + DateClause + BillableClause + OrderByClause;

  VBBaseDM.GetData(45, TSDM.cdsRelease, TSDM.cdsRelease.Name, WhereClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsRelease.UpdateOptions.Generatorname,
    TSDM.cdsRelease.UpdateOptions.UpdateTableName);
end;

procedure TCarryForwardManagerFrm.lucGroupCFwdByPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
  //  RegKey := TRegistry.Create;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;

  try
    RegKey.OpenKey(KEY_TIMESHEET_CARRY_FORWARD_MANAGER, True);

    case TcxComboBox(Sender).Tag of
      20:
        begin
          viewTimesheet.DataController.BeginUpdate;
          try
            edtThePeriod.GroupIndex := -1;
            edtCustomerName.GroupIndex := -1;
            RegKey.WriteInteger('CFwd Group By Index', lucGroupCFwdBy.ItemIndex);

            case TcxComboBox(Sender).ItemIndex of
              0: edtThePeriod.GroupIndex := 0;
              1: edtCustomerName.GroupIndex := 0;
            end;
          finally
            viewTimesheet.DataController.EndUpdate;
          end;
        end;

      21:
        begin
          RegKey.WriteInteger('Release Group By Index', lucGroupReleaseBy.ItemIndex);
        end;
    end;
    RegKey.CloseKey;
  finally
    RegKey.Free;
  end;
end;

procedure TCarryForwardManagerFrm.lucPeriodPropertiesCloseUp(Sender: TObject);
begin
  DoMyMouseWheel(TcxLookupComboBox(Sender), False)
end;

procedure TCarryForwardManagerFrm.lucReleaseCarryForwardToPeriodPropertiesCloseUp(Sender: TObject);
begin
  if not TcxComboBox(Sender).DroppedDown then
    Abort;
end;

procedure TCarryForwardManagerFrm.lucReleaseCarryForwardToPeriodPropertiesEditValueChanged(Sender: TObject);
//var
//  RegKey: TRegistry;
begin
  if not FShowingForm then
  begin
    if not TcxLookupComboBox(Sender).DroppedDown then
      Abort;

    //    case TcxLookupCombobox(Sender).Tag of
    //      0: FReleaseToPeriod := lucReleaseCarryForwardToPeriod.EditValue;
    //      1: FChangeToPeriod := lucChangeToPeriod.EditValue;
    //    end;

    case grpCFwdRelease.ItemIndex of
      0:
        begin
          FReleaseToPeriod := lucReleaseCarryForwardToPeriod.EditValue;
          //          actGetTimeSheetDataCFwd.Execute;
        end;

      1:
        begin
          FChangeToPeriod := lucChangeToPeriod.EditValue;
          //          actGetTimesheetDataRelease.Execute;
        end;
    end;
  end;
end;

procedure TCarryForwardManagerFrm.lucReleaseCarryForwardToPeriodPropertiesInitPopup(Sender: TObject);
begin
  if TcxLookupComboBox(Sender).DroppedDown then
    DoMyMouseWheel(TcxLookupComboBox(Sender), True);
end;

procedure TCarryForwardManagerFrm.lucReleaseCarryForwardToPeriodPropertiesPopup(Sender: TObject);
begin
  if TcxLookupComboBox(Sender).DroppedDown then
    DoMyMouseWheel(TcxLookupComboBox(Sender), True)
  else
    DoMyMouseWheel(TcxLookupComboBox(Sender), False)
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

