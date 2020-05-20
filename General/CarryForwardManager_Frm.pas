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
//  TcxLookupComboBoxAccess = class (TcxLookupComboBox);

  TCarryForwardManagerFrm = class(TBaseLayoutFrm)
    grdTimesheet: TcxGrid;
    viewTimesheet: TcxGridDBBandedTableView;
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
    edtAbbreviation: TcxGridDBBandedColumn;
    edtTItemValue: TcxGridDBBandedColumn;
    edtTCFwdValue: TcxGridDBBandedColumn;
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
    lvlTimesheet: TcxGridLevel;
    repScreenTip: TdxScreenTipRepository;
    tipClose: TdxScreenTip;
    tipPreview: TdxScreenTip;
    tipPrint: TdxScreenTip;
    tipPDF: TdxScreenTip;
    tipExcel: TdxScreenTip;
    tipToScreen: TdxScreenTip;
    tipGroupedReport: TdxScreenTip;
    tipRefreshData: TdxScreenTip;
    tipExportFormattedExcelData: TdxScreenTip;
    styHintController: TcxHintStyleController;
    dlgPrint: TdxPrintDialog;
    dlgFileSave: TSaveDialog;
    lucPeriod: TcxLookupComboBox;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    litToolbar: TdxLayoutItem;
    docToolbar: TdxBarDockControl;
    btnClose: TdxBarLargeButton;
    grpPeriodSelection: TdxLayoutGroup;
    litFromPeriod: TdxLayoutItem;
    btnToScreen: TdxBarLargeButton;
    actCloseForm: TAction;
    actGetTimeSheetData: TAction;
    litGrid: TdxLayoutItem;
    lucReleasePeriod: TcxLookupComboBox;
    litReleaseToPeriod: TdxLayoutItem;
    sep1: TdxLayoutSeparatorItem;
    styReadOnly: TcxEditStyleController;
    tipExpandAll: TdxScreenTip;
    tipCollapseAll: TdxScreenTip;
    styGroupFormat: TcxStyle;
    edtTPeriodName: TcxGridDBBandedColumn;
    btnRelease: TdxBarLargeButton;
    actRelease: TAction;
    tipRelease: TdxScreenTip;
    btnOptions: TdxBarLargeButton;
    actOptions: TAction;
    cntPeriod: TdxBarControlContainerItem;
    cntReleasePeriod: TdxBarControlContainerItem;
    lblPeriod: TdxBarStatic;
    lblReleasePeriod: TdxBarStatic;
    lblSpace01: TdxBarStatic;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure DoGetTimesheetData(Sender: TObject);
    procedure viewTimesheetCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure edtTThePeriodGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure viewTimesheetStylesGetGroupStyle(Sender: TcxGridTableView;
      ARecord: TcxCustomGridRecord; ALevel: Integer; var AStyle: TcxStyle);
    procedure DoRelease(Sender: TObject);
    procedure lucPeriodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lucPeriodPropertiesPopup(Sender: TObject);
    procedure DoOptions(Sender: TObject);
    procedure lucPeriodPropertiesCloseUp(Sender: TObject);
    procedure lucPeriodPropertiesInitPopup(Sender: TObject);
    procedure lucPeriodPropertiesEditValueChanged(Sender: TObject);
    procedure lucReleaseToPeriodPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FShowingForm: Boolean;
    FPeriod: Integer;
    FReleaseToPeriod: Integer;
    FItemsRelease: Boolean;

    procedure GetPeriods;
    procedure GetTimesheetData;
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
  Report_DM, TimesheetOptions_Frm;
//  Progress_Frm;

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
  viewTimesheet.DataController.DataSource := TSDM.dtsReleaseCFwd;
  lucPeriod.Properties.ListSource := TSDM.dtsPeriod;
  lucReleasePeriod.Properties.ListSource := TSDM.dtsReleaseToPeriod;
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  DoMyMouseWheel(lucPeriod, False);

  if ReportDM = nil then
    ReportDM := TReportDM.Create(nil);

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  RegKey.OpenKey(KEY_TIMESHEET_CARRY_FORWARD_MANAGER, True);

  try
    if not RegKey.ValueExists('Period') then
      RegKey.WriteInteger('Period', VBBaseDM.CurrentPeriod);

    if not RegKey.ValueExists('Release To Period') then
      RegKey.WriteInteger('Release To Period', VBBaseDM.CurrentPeriod);

    FPeriod := RegKey.ReadInteger('Period');
    GetPeriods;
    RegKey.CloseKey;
    actGetTimeSheetData.Execute;
  finally
    Regkey.Free;
  end;
end;

procedure TCarryForwardManagerFrm.edtTThePeriodGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
var
  TheYear, TheMonth: Integer;
begin
  if ARecord is TcxGridGroupRow then
  begin
    if TcxCustomGridTableItem(Sender).Name = 'edtTThePeriod' then
    begin
      TheYear := TcxGridGroupRow(ARecord).Value div 100;
      TheMonth := TcxGridGroupRow(ARecord).Value mod 100;
      AText := ShortMonths[TheMonth] + ' ' + TheYear.ToString;
    end
    else
      AText := TcxGridGroupRow(ARecord).Value;
  end;
//    AText := TcxGridGroupRow(ARecord).Values[edtTPeriodName.Index];
end;

procedure TCarryForwardManagerFrm.FormShow(Sender: TObject);
begin
  WindowState := wsMaximized;
  FShowingForm := False;
  Screen.Cursor := crDefault;
end;

procedure TCarryForwardManagerFrm.DoCloseForm(Sender: TObject);
//var
//  RegKey: TRegistry;
begin
  Self.ModalResult := mrOK;
//  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
//  RegKey.RootKey := HKEY_CURRENT_USER;
//  RegKey.OpenKey(KEY_TIMESHEET_CARRY_FORWARD_MANAGER, True);

  {TODO: Do this on-the-fly for each control}
//  try
//    if cbxSaveSettingsOnExit.EditValue then
//    begin
//      RegKey.WriteInteger('Period', lucPeriod.EditValue);
//      RegKey.WriteBool('Fetch All Periods', cbxAllPeriods.Checked);
//      RegKey.WriteInteger('Billable Status Index', lucBillable.ItemIndex);
//      RegKey.WriteInteger('Release To Period', lucReleaseToPeriod.EditValue);
//      RegKey.CloseKey;
//    end;
//  finally
//    RegKey.Free;
//    Self.ModalResult := mrOK;
//  end;
end;

procedure TCarryForwardManagerFrm.DoGetTimesheetData(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  try
    GetTimesheetData;
    viewTimesheet.ViewData.Expand(True);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCarryForwardManagerFrm.DoOptions(Sender: TObject);
begin
//  Screen.Cursor := crHourglass;
//  try
//    if TimesheetOptionsFrm = nil then
//      TimesheetOptionsFrm := TTimesheetOptionsFrm.Create(nil);
//
//    TimesheetOptionsFrm.OptionsTabindex := 2;
//    TimesheetOptionsFrm.ShowModal;
//    TimesheetOptionsFrm.Close;
//    FreeAndNil(TimesheetOptionsFrm);
//  finally
//    Screen.Cursor := crDefault;
//  end;
end;

procedure TCarryForwardManagerFrm.DoRelease(Sender: TObject);
//const
//  RELEASE_CARRY_FORWARD =
//    ' UPDATE TIMESHEET SET ' +
//    ' RELEASE_CFWD_TO_PERIOD = %d, ' +
//    ' DATE_CFWD_RELEASED = %s, ' +
//    ' CARRY_FORWARD = 0 ' +
//    ' WHERE ID IN(%s)';

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
    raise ESelectionException.Create('No timesheet items selected. Please select at least one item to release.');

  Beep;
  if DisplayMsg(
    Application.Title,
    'Release Carry Forward Confirmation',
    'You have selected ' + SelectCount.ToString +
    ' carried forward items to be released to billing period ' +
    TSDM.cdsReleaseToPeriod.FieldByName('PERIOD_NAME').AsString + CRLF + CRLF +
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
        IDValues := IDValues + IntToStr(ARecord.Values[edtTID.Index]);
        if I < C.SelectedRecordCount - 1 then
          IDValues := IDValues + ',';
      end;
    end;

    CommandString := Format(RELEASE_CARRY_FORWARD, [
      TSDM.cdsReleaseToPeriod.FieldByName('THE_PERIOD').AsInteger,
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

    actGetTimesheetData.Execute;
  finally
    Response.Free;
  end;
end;

procedure TCarryForwardManagerFrm.GetPeriods;
begin
  TSDM.cdsToPeriod.Close;
  TSDM.cdsReleaseToPeriod.Close;

  VBBaseDM.GetData(62, TSDM.cdsPeriod, TSDM.cdsPeriod.Name, ONE_SPACE,
    'C:\Data\Xml\Period.xml', TSDM.cdsPeriod.UpdateOptions.Generatorname,
    TSDM.cdsPeriod.UpdateOptions.UpdateTableName);

  TSDM.cdsToPeriod.Data := TSDM.cdsPeriod.Data;
  TSDM.cdsReleaseToPeriod.Data := TSDM.cdsPeriod.Data;

  if not TSDM.cdsPeriod.Locate('THE_PERIOD', FPeriod, []) then
    TSDM.cdsPeriod.First;

  lucPeriod.EditValue := FPeriod;
end;

procedure TCarryForwardManagerFrm.GetTimesheetData;
var
  WhereClause, OrderByClause, FileName, DateClause, BillableClause: string;
//  ActivityClause, BillableClause, WorkTypeClause, FileName: string;
begin
  WhereClause := ' WHERE T.CARRY_FORWARD = 1 ';
  BillableClause := ' AND T.BILLABLE = 1';
  DateClause := 'AND T.THE_PERIOD = ' + IntToStr(TSDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger);
  OrderByClause := ' ORDER BY T.THE_PERIOD, T.CUSTOMER_NAME';
  FileName := 'Carry Forward Items';
  WhereClause := WhereClause + DateClause + BillableClause + OrderByClause;

  VBBaseDM.GetData(45, TSDM.cdsReleaseCFwd, TSDM.cdsReleaseCFwd.Name, WhereClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsReleaseCFwd.UpdateOptions.Generatorname,
    TSDM.cdsReleaseCFwd.UpdateOptions.UpdateTableName);
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
      if SameText(TcxLookupComboBox(Sender).Name, 'lucPeriod') then
        RegKey.WriteInteger('Period', lucPeriod.EditValue)

      else if SameText(TcxLookupComboBox(Sender).Name, 'lucReleaseToPeriod') then
        RegKey.WriteInteger('Release To Period', lucReleasePeriod.EditValue);

      FPeriod := RegKey.ReadInteger('Period');
      FReleaseToPeriod := RegKey.ReadInteger('Release To Period');

      RegKey.CloseKey;
    finally
      RegKey.Free;
    end;

    actGetTimesheetData.Execute;
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
      RegKey.WriteInteger('Release To Period', lucReleasePeriod.EditValue);
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

