unit CarryForward_Frm;

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

  TCarryForwardFrm = class(TBaseLayoutFrm)
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
    lucFromPeriod: TcxLookupComboBox;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    litToolbar: TdxLayoutItem;
    docToolbar: TdxBarDockControl;
    btnClose: TdxBarLargeButton;
    lucToPeriod: TcxLookupComboBox;
    cbxAllPeriods: TcxCheckBox;
    grpPeriodSelection: TdxLayoutGroup;
    litFromPeriod: TdxLayoutItem;
    litToPeriod: TdxLayoutItem;
    litAllData: TdxLayoutItem;
    btnToScreen: TdxBarLargeButton;
    actCloseForm: TAction;
    actGetTimeSheetData: TAction;
    litGrid: TdxLayoutItem;
    lucReleaseToPeriod: TcxLookupComboBox;
    litReleaseToPeriod: TdxLayoutItem;
    sep1: TdxLayoutSeparatorItem;
    cbxReleaseToCurrentPeriod: TcxCheckBox;
    litReleaseToCurrentPeriod: TdxLayoutItem;
    styReadOnly: TcxEditStyleController;
    grpControls: TdxLayoutGroup;
    litExpandAll: TdxLayoutItem;
    litCollapseAll: TdxLayoutItem;
    btnExpandAll: TcxButton;
    btnCollapseAll: TcxButton;
    tipExpandAll: TdxScreenTip;
    tipCollapseAll: TdxScreenTip;
    styGroupFormat: TcxStyle;
    spc1: TdxLayoutEmptySpaceItem;
    litOrLabel: TdxLayoutItem;
    lblOR: TcxLabel;
    styOR: TcxEditStyleController;
    edtTPeriodName: TcxGridDBBandedColumn;
    btnRelease: TdxBarLargeButton;
    actRelease: TAction;
    tipRelease: TdxScreenTip;
    lucBillable: TcxComboBox;
    litBillable: TdxLayoutItem;
    btnOptions: TdxBarLargeButton;
    actOptions: TAction;
    litAlwaysExpand: TdxLayoutItem;
    cbxExpandGrid: TcxCheckBox;
    spc2: TdxLayoutEmptySpaceItem;
    cbxSaveSettingsOnExit: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure DoGetTimesheetData(Sender: TObject);
    procedure viewTimesheetCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure edtTThePeriodGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure lucFromPeriodPropertiesInitPopup(Sender: TObject);
    procedure lucReleaseToPeriodPropertiesInitPopup(Sender: TObject);
    procedure btnExpandAllClick(Sender: TObject);
    procedure btnCollapseAllClick(Sender: TObject);
    procedure viewTimesheetStylesGetGroupStyle(Sender: TcxGridTableView;
      ARecord: TcxCustomGridRecord; ALevel: Integer; var AStyle: TcxStyle);
    procedure DoRelease(Sender: TObject);
    procedure lucBillablePropertiesChange(Sender: TObject);
    procedure lucFromPeriodPropertiesEditValueChanged(Sender: TObject);
    procedure lucBillablePropertiesInitPopup(Sender: TObject);
    procedure lucFromPeriodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lucFromPeriodPropertiesPopup(Sender: TObject);
    procedure lucFromPeriodPropertiesCloseUp(Sender: TObject);
    procedure DoOptions(Sender: TObject);
    procedure cbxAllPeriodsPropertiesEditValueChanged(Sender: TObject);
    procedure cbxReleaseToCurrentPeriodPropertiesEditValueChanged(      Sender: TObject);
  private
    { Private declarations }
    FShowingForm: Boolean;
    FFromPeriod: Integer;
    FToPeriod: Integer;
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
  CarryForwardFrm: TCarryForwardFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  TS_DM,
  RUtils,
  Report_DM, TimesheetOptions_Frm;
//  Progress_Frm;

procedure TCarryForwardFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TCarryForwardFrm.edtTThePeriodGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
var
  TheYear, TheMonth: Integer;
begin
  inherited;
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

procedure TCarryForwardFrm.FormCreate(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  Caption := 'Carry forward manager';
  FShowingForm := True;
  FItemsRelease := False;
  viewTimesheet.DataController.DataSource := TSDM.dtsReleaseCFwd;
  lucFromPeriod.Properties.ListSource := TSDM.dtsPeriod;
  lucToPeriod.Properties.ListSource := TSDM.dtsToPeriod;
  lucReleaseToPeriod.Properties.ListSource := TSDM.dtsReleaseToPeriod;
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;

  DoMyMouseWheel(lucFromPeriod, False);
  DoMyMouseWheel(lucToPeriod, False);
  DoMyMouseWheel(lucBillable, False);

//  lucFromPeriod.Properties.UseMouseWheel := False;
//  lucToPeriod.Properties.UseMouseWheel := False;
//  lucBillable.Properties.UseMouseWheel := False;

  if ReportDM = nil then
    ReportDM := TReportDM.Create(nil);

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  RegKey.OpenKey(KEY_TIMESHEET_RELEASE_CFWD_MANAGER, True);

  try
    if not RegKey.ValueExists('Save Settings On Exit') then
      RegKey.WriteBool('Save Settings On Exit', True);

    if not RegKey.ValueExists('From Period') then
      RegKey.WriteInteger('From Period', VBBaseDM.CurrentPeriod);

    if not RegKey.ValueExists('To Period') then
      RegKey.WriteInteger('To Period', VBBaseDM.CurrentPeriod);

    if not RegKey.ValueExists('Fetch All Periods') then
      RegKey.WriteBool('Fetch All Periods', True);

    if not RegKey.ValueExists('Billable Status Index') then
      RegKey.WriteInteger('Billable Status Index', 0);

    if not RegKey.ValueExists('Release To Period') then
      RegKey.WriteInteger('Release To Period', VBBaseDM.CurrentPeriod);

    if not RegKey.ValueExists('Always Release To Current Period') then
      RegKey.WriteBool('Always Release To Current Period', True);

    if not RegKey.ValueExists('Always Expand Grid') then
      RegKey.WriteBool('Always Expand Grid', True);

    FFromPeriod := RegKey.ReadInteger('From Period');
    FToPeriod := RegKey.ReadInteger('To Period');

    cbxSaveSettingsOnExit.EditValue := RegKey.ReadBool('Save Settings On Exit');
    cbxAllPeriods.Checked := RegKey.ReadBool('Fetch All Periods');
//    cbxReleaseToCurrentPeriod.Checked := RegKey.ReadBool('Always Release To Current Period');
    lucBillable.ItemIndex := RegKey.ReadInteger('Billable Status Index');
    GetPeriods;
    cbxReleaseToCurrentPeriod.Checked := RegKey.ReadBool('Always Release To Current Period');

    if cbxReleaseToCurrentPeriod.Checked then
      lucReleaseToPeriod.EditValue := VBBaseDM.CurrentPeriod
    else
    begin
      if not TSDM.cdsReleaseToPeriod.Locate('THE_PERIOD', FReleaseToPeriod, []) then
      begin
        TSDM.cdsReleaseToPeriod.First;
        lucReleaseToPeriod.EditValue := TSDM.cdsReleaseToPeriod.FieldByName('THE_PERIOD').AsInteger;
      end;
    end;

    cbxExpandGrid.Checked := RegKey.ReadBool('Always Expand Grid');
    RegKey.CloseKey;

    actGetTimeSheetData.Execute;
  finally
    Regkey.Free;
  end;
end;

procedure TCarryForwardFrm.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
  FShowingForm := False;
  Screen.Cursor := crDefault;
end;

procedure TCarryForwardFrm.cbxReleaseToCurrentPeriodPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  lucReleaseToPeriod.Properties.ReadOnly := cbxReleaseToCurrentPeriod.Checked;

  TcxCustomEditProperties(lucReleaseToPeriod.Properties).Buttons.Items[0].Visible :=
    not cbxReleaseToCurrentPeriod.Checked;

  if cbxReleaseToCurrentPeriod.Checked then
    lucReleaseToPeriod.Style.StyleController := styReadOnly
  else
    lucReleaseToPeriod.Style.StyleController := nil;

  if cbxReleaseToCurrentPeriod.Checked then
  begin
    if not TSDM.cdsReleaseToPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
    begin
      TSDM.cdsReleaseToPeriod.Last;
      lucReleaseToPeriod.EditValue := TSDM.cdsReleaseToPeriod.FieldByName('THE_PERIOD').AsInteger;
    end
    else
      lucReleaseToPeriod.EditValue := VBBaseDM.CurrentPeriod;
  end;
end;

procedure TCarryForwardFrm.DoCloseForm(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  RegKey.OpenKey(KEY_TIMESHEET_RELEASE_CFWD_MANAGER, True);

  try
    RegKey.WriteBool('Save Settings On Exit', cbxSaveSettingsOnExit.EditValue);

    if cbxSaveSettingsOnExit.EditValue then
    begin
      RegKey.WriteInteger('From Period', lucFromPeriod.EditValue);
      RegKey.WriteInteger('To Period', lucToPeriod.EditValue);
      RegKey.WriteBool('Fetch All Periods', cbxAllPeriods.Checked);
      RegKey.WriteInteger('Billable Status Index', lucBillable.ItemIndex);
      RegKey.WriteInteger('Release To Period', lucReleaseToPeriod.EditValue);
      RegKey.WriteBool('Always Release To Current Period', cbxReleaseToCurrentPeriod.Checked);
      RegKey.WriteBool('Always Expand Grid', cbxExpandGrid.Checked);
      RegKey.CloseKey;
    end;
  finally
    RegKey.Free;
    Self.ModalResult := mrOK;
  end;
end;

procedure TCarryForwardFrm.btnExpandAllClick(Sender: TObject);
begin
  inherited;
  viewTimesheet.ViewData.Expand(True);
end;

procedure TCarryForwardFrm.btnCollapseAllClick(Sender: TObject);
begin
  inherited;
  viewTimesheet.ViewData.Collapse(True);
end;

procedure TCarryForwardFrm.cbxAllPeriodsPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  lucFromPeriod.Properties.ReadOnly := cbxAllPeriods.Checked;
  lucToPeriod.Properties.ReadOnly := cbxAllPeriods.Checked;

  TcxCustomEditProperties(lucFromPeriod.Properties).Buttons.Items[0].Visible :=
    not cbxAllPeriods.Checked;

  TcxCustomEditProperties(lucToPeriod.Properties).Buttons.Items[0].Visible :=
    not cbxAllPeriods.Checked;

  if cbxAllPeriods.Checked then
  begin
    lucFromPeriod.Style.StyleController := styReadOnly;
    lucToPeriod.Style.StyleController := styReadOnly;
  end
  else
  begin
    lucFromPeriod.Style.StyleController := nil;
    lucToPeriod.Style.StyleController := nil;
  end;
end;

procedure TCarryForwardFrm.DoGetTimesheetData(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    GetTimesheetData;
    viewTimesheet.ViewData.Expand(True);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCarryForwardFrm.DoOptions(Sender: TObject);
begin
  inherited;
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

procedure TCarryForwardFrm.DoRelease(Sender: TObject);
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
  inherited;
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

procedure TCarryForwardFrm.GetPeriods;
begin
  TSDM.cdsToPeriod.Close;
  TSDM.cdsReleaseToPeriod.Close;

  VBBaseDM.GetData(62, TSDM.cdsPeriod, TSDM.cdsPeriod.Name, ONE_SPACE,
    'C:\Data\Xml\Period.xml', TSDM.cdsPeriod.UpdateOptions.Generatorname,
    TSDM.cdsPeriod.UpdateOptions.UpdateTableName);

  TSDM.cdsToPeriod.Data := TSDM.cdsPeriod.Data;
  TSDM.cdsReleaseToPeriod.Data := TSDM.cdsPeriod.Data;

  if cbxAllPeriods.Checked then
  begin
    TSDM.cdsPeriod.First;
    TSDM.cdsToPeriod.Last;

    lucFromPeriod.EditValue := TSDM.cdsPeriod.FieldByName('THE_PERIOD').Asinteger;
    lucToPeriod.EditValue := TSDM.cdsToPeriod.FieldByName('THE_PERIOD').Asinteger;
  end
  else
  begin
    if not TSDM.cdsPeriod.Locate('THE_PERIOD', FFromPeriod, []) then
      TSDM.cdsPeriod.First;

    if not TSDM.cdsToPeriod.Locate('THE_PERIOD', FToPeriod, []) then
      TSDM.cdsToPeriod.Last;
  end;

  lucFromPeriod.EditValue := FFromPeriod;
  lucToPeriod.EditValue := FToPeriod;
end;

procedure TCarryForwardFrm.GetTimesheetData;
var
  WhereClause, OrderByClause, FileName, DateClause, BillableClause: string;
//  ActivityClause, BillableClause, WorkTypeClause, FileName: string;
begin
  if lucFromPeriod.EditValue > lucToPeriod.EditValue then
  begin
    if Self.Showing then
      lucFromPeriod.SetFocus;

    TSDM.cdsReleaseCFwd.Close;

    raise ESelectionException.Create('From period cannot be later than To perod.');
  end;

  WhereClause := ' WHERE T.CARRY_FORWARD = 1 ';
  BillableClause := '';

  case lucBillable.ItemIndex of
    0: BillableClause := ' AND T.BILLABLE = 1';
    1: BillableClause := ' AND T.BILLABLE = 0';
  end;

  if cbxAllPeriods.Checked then
    DateClause := ''
  else
    DateClause := 'AND T.THE_PERIOD >= ' + IntToStr(TSDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger) +
      ' AND T.THE_PERIOD <= ' + IntToStr(TSDM.cdsToPeriod.FieldByName('THE_PERIOD').AsInteger);

  OrderByClause := ' ORDER BY T.THE_PERIOD, T.CUSTOMER_NAME';
  FileName := 'Carry Forward Items';
  WhereClause := WhereClause + DateClause + BillableClause + OrderByClause;

  VBBaseDM.GetData(45, TSDM.cdsReleaseCFwd, TSDM.cdsReleaseCFwd.Name, WhereClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsReleaseCFwd.UpdateOptions.Generatorname,
    TSDM.cdsReleaseCFwd.UpdateOptions.UpdateTableName);

//  ReportDM.Report := ReportDM.rptTimesheetDetail;

end;

procedure TCarryForwardFrm.lucBillablePropertiesChange(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  if not FShowingForm then
  begin
    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIMESHEET_RELEASE_CFWD_MANAGER, True);
    try
      RegKey.WriteInteger('Billable Status Index', lucBillable.ItemIndex);
      RegKey.CloseKey;
    finally
      Regkey.Free;
    end;
  end;
end;

procedure TCarryForwardFrm.lucBillablePropertiesInitPopup(Sender: TObject);
begin
  inherited;
  if not TcxLookupComboBox(Sender).DroppedDown then
    TcxLookupComboBox(Sender).Properties.UseMouseWheel := False;
end;

procedure TCarryForwardFrm.lucFromPeriodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if not TcxComboBox(Sender).DroppedDown then
    Abort;
end;

procedure TCarryForwardFrm.lucFromPeriodPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  DoMyMouseWheel(TcxLookupComboBox(Sender), False)
end;

procedure TCarryForwardFrm.lucFromPeriodPropertiesEditValueChanged(Sender: TObject);
//var
//  RegKey: TRegistry;
begin
  inherited;
  if not FShowingForm then
  begin
    if not TcxLookupComboBox(Sender).DroppedDown then
      Abort;

//    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
//    RegKey.RootKey := HKEY_CURRENT_USER;
//    RegKey.OpenKey(KEY_TIMESHEET_RELEASE_CFWD_MANAGER, True);
//
//    try
//      if SameText(TcxLookupComboBox(Sender).Name, 'lucFromPeriod') then
//        RegKey.WriteInteger('From Period', lucFromPeriod.EditValue)
//
//      else if SameText(TcxLookupComboBox(Sender).Name, 'lucToPeriod') then
//        RegKey.WriteInteger('To Period', lucToPeriod.EditValue)
//
//      else if SameText(TcxLookupComboBox(Sender).Name, 'lucReleaseToPeriod') then
//        RegKey.WriteInteger('Release To Period', lucReleaseToPeriod.EditValue)
//
//      else if SameText(TcxLookupComboBox(Sender).Name, 'lucBillable') then
//        RegKey.WriteInteger('Billable Status Index', lucBillable.ItemIndex);
//
//      lucBillable.ItemIndex := RegKey.ReadInteger('Billable Status Index');
//      FFromPeriod := RegKey.ReadInteger('From Period');
//      FToPeriod := RegKey.ReadInteger('To Period');
//      FReleaseToPeriod := RegKey.ReadInteger('Release To Period');
//
//      RegKey.CloseKey;
//    finally
//      RegKey.Free;
//    end;

    actGetTimesheetData.Execute;
  end;
end;

procedure TCarryForwardFrm.lucFromPeriodPropertiesInitPopup(Sender: TObject);
begin
  inherited;
  if cbxAllPeriods.Checked then
    Abort;

  if TcxLookupComboBox(Sender).DroppedDown then
    DoMyMouseWheel(TcxLookupComboBox(Sender), True);
end;

procedure TCarryForwardFrm.lucFromPeriodPropertiesPopup(Sender: TObject);
begin
  inherited;
  if TcxLookupComboBox(Sender).DroppedDown then
    DoMyMouseWheel(TcxLookupComboBox(Sender), True)
  else
    DoMyMouseWheel(TcxLookupComboBox(Sender), False)
end;

procedure TCarryForwardFrm.lucReleaseToPeriodPropertiesInitPopup(Sender: TObject);
begin
  inherited;
  if cbxReleaseToCurrentPeriod.Checked then
    Abort;
end;

procedure TCarryForwardFrm.viewTimesheetCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
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

procedure TCarryForwardFrm.viewTimesheetStylesGetGroupStyle(
  Sender: TcxGridTableView; ARecord: TcxCustomGridRecord; ALevel: Integer; var AStyle: TcxStyle);
begin
  inherited;
  if ARecord is TcxGridGroupRow then
    if ARecord.Expanded then
      AStyle := styGroupFormat;
end;

end.

