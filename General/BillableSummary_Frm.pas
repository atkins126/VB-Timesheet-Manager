unit BillableSummary_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.StrUtils,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus,
  Data.DB, Vcl.StdCtrls,

  BaseLayout_Frm, VBCommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxBar, dxBarExtItems, cxContainer, cxEdit,
  cxDBLookupComboBox, cxDropDownEdit, cxCheckBox, cxBarEditItem, cxButtons,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxCustomData, cxData,
  cxFilter, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxDBData, cxCurrencyEdit, cxCalendar, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView,
  cxGrid;

type
  TBillableSummaryFrm = class(TBaseLayoutFrm)
    grpToolbar: TdxLayoutGroup;
    grpData: TdxLayoutGroup;
    docToolbar: TdxBarDockControl;
    litToolbar: TdxLayoutItem;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    btnClose: TdxBarLargeButton;
    btnGetData: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnPDF: TdxBarLargeButton;
    btnPreview: TdxBarLargeButton;
    btnPrint: TdxBarLargeButton;
    actClose: TAction;
    actPreview: TAction;
    actPrint: TAction;
    actExcel: TAction;
    actPDF: TAction;
    lucFromPeriod: TcxBarEditItem;
    lucToPeriod: TcxBarEditItem;
    lucGroupBy: TcxBarEditItem;
    cbxRemoveZeroValues: TcxBarEditItem;
    litBillableSummary: TdxLayoutItem;
    litTimesheet: TdxLayoutItem;
    litCarryForward: TdxLayoutItem;
    grdBillableSummary: TcxGrid;
    viewBillable: TcxGridDBBandedTableView;
    edtBCustomerID: TcxGridDBBandedColumn;
    edtBPeriod: TcxGridDBBandedColumn;
    edtBName: TcxGridDBBandedColumn;
    edtBhours: TcxGridDBBandedColumn;
    edtBValue: TcxGridDBBandedColumn;
    edtBNonHours: TcxGridDBBandedColumn;
    edtBNonValue: TcxGridDBBandedColumn;
    edtBCarryForward: TcxGridDBBandedColumn;
    lvlBillable: TcxGridLevel;
    actGetData: TAction;
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
    grdTimesheet: TcxGrid;
    viewTimesheet: TcxGridDBBandedTableView;
    edtTSID: TcxGridDBBandedColumn;
    edtTSCID: TcxGridDBBandedColumn;
    edtTSPID: TcxGridDBBandedColumn;
    lucSystemUser: TcxGridDBBandedColumn;
    edtTSPeriod: TcxGridDBBandedColumn;
    lucTSActivityDate: TcxGridDBBandedColumn;
    lucPriceList: TcxGridDBBandedColumn;
    lucRateUnit: TcxGridDBBandedColumn;
    lucActivityType: TcxGridDBBandedColumn;
    edtTSActivity: TcxGridDBBandedColumn;
    edtTSTimeMins: TcxGridDBBandedColumn;
    edtTSTimeHours: TcxGridDBBandedColumn;
    edtTSRate: TcxGridDBBandedColumn;
    edtTSStdRate: TcxGridDBBandedColumn;
    edtTSItemValue: TcxGridDBBandedColumn;
    edtTSInvID: TcxGridDBBandedColumn;
    edtTSCreditnoteID: TcxGridDBBandedColumn;
    cbxTSLocked: TcxGridDBBandedColumn;
    edtTSModified: TcxGridDBBandedColumn;
    cbxTSBillable: TcxGridDBBandedColumn;
    edtTSInvoiceDate: TcxGridDBBandedColumn;
    cbxTSCarryForward: TcxGridDBBandedColumn;
    cbxTSApproved: TcxGridDBBandedColumn;
    cbxTSAddWork: TcxGridDBBandedColumn;
    edtTSCGrpID: TcxGridDBBandedColumn;
    lvlTimesheet: TcxGridLevel;
    procedure GetBillableSummary;
    procedure GetBillableTimesheet;
    procedure GetPeriods;

    procedure DoCloseForm(Sender: TObject);
    procedure DoGetData(Sender: TObject);
    procedure DoPrint(Sender: TObject);
    procedure DoExcel(Sender: TObject);
    procedure DoPDF(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure viewBillableFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure viewBillableCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure viewTimesheetDblClick(Sender: TObject);
    procedure viewBillableCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure OpenTables;
    procedure GetSystemUser;
    procedure GetActivityType;
    procedure GetPriceList;
    procedure GetRateUnit;
    procedure CloseDataSets;
  protected
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
  public
    { Public declarations }

  end;

var
  BillableSummaryFrm: TBillableSummaryFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  RUtils,
  Report_DM,
  Progress_Frm,
  CommonFunction,
  CommonValues,
  TS_DM,
  TimesheetEdit_Frm;

procedure TBillableSummaryFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
  CloseDataSets;
  Self.ModalResult := mrOK;
end;

procedure TBillableSummaryFrm.DoExcel(Sender: TObject);
begin
  inherited;
//
end;

procedure TBillableSummaryFrm.DoGetData(Sender: TObject);
begin
  inherited;
  GetBillableSummary;
end;

procedure TBillableSummaryFrm.DoPDF(Sender: TObject);
begin
  inherited;
//
end;

procedure TBillableSummaryFrm.DoPrint(Sender: TObject);
begin
  inherited;
//
end;

procedure TBillableSummaryFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TBillableSummaryFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Billable Summary Report';
  TcxLookupComboBoxProperties(lucFromPeriod.Properties).ListSource := ReportDM.dtsPeriod;
  TcxLookupComboBoxProperties(lucToPeriod.Properties).ListSource := ReportDM.dtsToPeriod;

  TcxLookupComboBoxProperties(lucSystemUser.Properties).ListSource := ReportDM.dtsSystemUser1;
  TcxLookupComboBoxProperties(lucCFSystemuser.Properties).ListSource := ReportDM.dtsSystemUser2;
  TcxLookupComboBoxProperties(lucPriceList.Properties).ListSource := ReportDM.dtsPriceList1;
  TcxLookupComboBoxProperties(lucCFPriceList.Properties).ListSource := ReportDM.dtsPriceList2;
  TcxLookupComboBoxProperties(lucRateUnit.Properties).ListSource := ReportDM.dtsRateUnit1;
  TcxLookupComboBoxProperties(lucCFRateUnit.Properties).ListSource := ReportDM.dtsRateUnit2;
  TcxLookupComboBoxProperties(lucActivityType.Properties).ListSource := ReportDM.dtsActivityType1;
  TcxLookupComboBoxProperties(lucCFActivityType.Properties).ListSource := ReportDM.dtsActivityType2;

  TcxLookupComboBoxProperties(lucSystemUser.Properties).Buttons.Items[0].Visible := False;
  TcxLookupComboBoxProperties(lucCFSystemuser.Properties).Buttons.Items[0].Visible := False;
  TcxLookupComboBoxProperties(lucPriceList.Properties).Buttons.Items[0].Visible := False;
  TcxLookupComboBoxProperties(lucCFPriceList.Properties).Buttons.Items[0].Visible := False;
  TcxLookupComboBoxProperties(lucRateUnit.Properties).Buttons.Items[0].Visible := False;
  TcxLookupComboBoxProperties(lucCFRateUnit.Properties).Buttons.Items[0].Visible := False;
  TcxLookupComboBoxProperties(lucActivityType.Properties).Buttons.Items[0].Visible := False;
  TcxLookupComboBoxProperties(lucCFActivityType.Properties).Buttons.Items[0].Visible := False;

  viewBillable.DataController.DataSource := ReportDM.dtsBillableSummary;
  viewTimesheet.DataController.DataSource := ReportDM.dtsTimesheetDetail;
  viewCarryForwardDetail.DataController.DataSource := ReportDM.dtsTimesheetCF;
  grpData.ItemIndex := 0;
  litTimesheet.CaptionOptions.Text := 'Timesheet Details (0 Items)';
  litCarryForward.CaptionOptions.Text := 'Carry Forwad Details (0 Items)';
  OpenTables;
//  GetPeriods;
  lucFromPeriod.EditValue := VBBaseDM.CurrentPeriod;
  lucToPeriod.EditValue := VBBaseDM.CurrentPeriod;
  lucGroupBy.EditValue := 'Period';
end;

procedure TBillableSummaryFrm.FormShow(Sender: TObject);
begin
  inherited;
  GetBillableSummary;
  Screen.Cursor := crDefault;
end;

procedure TBillableSummaryFrm.GetBillableSummary;
var
  SL: TStringList;
  FromPeriod, ToPeriod, I, Period: Integer;
  OrderByClause, FileName: string;
  AComboBox: TcxComboBox;
const
  SQL_PERIOD = 'SELECT THE_PERIOD FROM SourcePeriod WHERE THE_PERIOD >= %d AND THE_PERIOD <= %d';
  SQL_DELETE_SUMMARY_DATA = 'DELETE FROM BILLABLE_SUMMARY WHERE USER_ID = %d';
begin
  inherited;
//  case lucGroupBy.EditValue of
//    0: ReportDM.FReport := ReportDM.rptBillableSummaryByPeriod;
//    1: ReportDM.FReport := ReportDM.rptBillableSummaryByCustomer;
//  end;

  if lucGroupBy.EditValue = 'Period' then
    ReportDM.FReport := ReportDM.rptBillableSummaryByPeriod
  else if lucGroupBy.EditValue = 'Customer' then
    ReportDM.FReport := ReportDM.rptBillableSummaryByCustomer;

//  if (Length(Trim(lucFromPeriod.Text)) = 0)
//    or (Length(Trim(lucBillableToPeriod.Text)) = 0) then
//  begin
//    Beep;
//    DisplayMsg(Application.Title,
//      'Invalid Selection',
//      'Invalid periods selected. Please correct and try again.',
//      mtError,
//      [mbOK]
//      );
//    Exit;
//  end;

  if lucFromPeriod.EditValue > lucToPeriod.EditValue then
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
    if cbxRemoveZeroValues.EditValue then
      VBBaseDM.ExecuteStoredProcedure('SP_DELETE_ZERO_BILLABLE_VALUES', VBBaseDM.FUserData.UserID.ToString);

    lucGroupBy.SetFocus;
    AComboBox := TcxBarEditItemControl(lucGroupBy.Links[0].Control).Edit as TcxComboBox;

    case AComboBox.ItemIndex of
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
    if lucFromPeriod.EditValue = lucToPeriod.EditValue then
      viewBillable.ViewData.Expand(True);
  finally
    SL.Free;
  end;
end;

procedure TBillableSummaryFrm.GetBillableTimesheet;
var
//  DC: TcxGridDBDataController;
  WhereClause, OrderByClause, GroupByClause, FileName: string;
begin
  Screen.Cursor := crHourglass;
  try
    GroupByClause := ONE_SPACE;

    WhereClause :=
//      ' WHERE T.THE_PERIOD <= ' + VarAsType(lucToPeriod.EditValue, varString) +
//      ' AND T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ' +
    'WHERE T.THE_PERIOD <= ' + VarAsType(ReportDM.cdsBillableSummary.FieldByName('THE_PERIOD').AsInteger, varString) +
      ' AND T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ' +
      ' AND T.CARRY_FORWARD = 1 ';

    OrderByClause := 'ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE';

    VBBaseDM.GetData(45, ReportDM.cdsTimesheetDetail, ReportDM.cdsTimesheetDetail.Name, WhereClause + ';' + OrderByClause + ';' + GroupByClause,
      'C:\Data\Xml\Carry Forward Summary.xml', ReportDM.cdsTimesheetDetail.UpdateOptions.Generatorname,
      ReportDM.cdsTimesheetDetail.UpdateOptions.UpdateTableName);

    ReportDM.cdsTimesheetCF.Close;

    if ReportDM.cdsTimesheetDetail.Active then
      ReportDM.cdsTimesheetCF.Data := ReportDM.cdsTimesheetDetail.Data;

//    WhereClause :=
//      'WHERE T.THE_PERIOD >= ' + VarAsType(lucFromPeriod.EditValue, varString) +
//      ' AND  T.THE_PERIOD <= ' + VarAsType(lucToPeriod.EditValue, varString) +
//      ' AND T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ';

    WhereClause :=
      'WHERE T.THE_PERIOD = ' + VarAsType(ReportDM.cdsBillableSummary.FieldByName('THE_PERIOD').AsInteger, varString) +
//      ' AND  T.THE_PERIOD <= ' + VarAsType(lucToPeriod.EditValue, varString) +
    ' AND T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ';

    VBBaseDM.GetData(45, ReportDM.cdsTimesheetDetail, ReportDM.cdsTimesheetDetail.Name, WhereClause + ';' + OrderByClause + ';' + GroupByClause,
      'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsTimesheetDetail.UpdateOptions.Generatorname,
      ReportDM.cdsTimesheetDetail.UpdateOptions.UpdateTableName);

    if ReportDM.cdsTimesheetDetail.IsEmpty then
      litTimesheet.CaptionOptions.Text := 'Timesheet Details (0 Items)'
    else
      litTimesheet.CaptionOptions.Text := 'Timesheet Details (' + ReportDM.cdsTimesheetDetail.RecordCount.ToString + ' Items)';

    if ReportDM.cdsTimesheetCF.IsEmpty then
      litCarryForward.CaptionOptions.Text := 'Carry Forwad Details (0 Items)'
    else
      litCarryForward.CaptionOptions.Text := 'Timesheet Details (' + ReportDM.cdsTimesheetCF.RecordCount.ToString + ' Items)';
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TBillableSummaryFrm.GetPeriods;
begin
  ReportDM.cdsToPeriod.Close;

  VBBaseDM.GetData(62, ReportDM.cdsPeriod, ReportDM.cdsPeriod.Name, '',
    'C:\Data\Xml\Period.xml', ReportDM.cdsPeriod.UpdateOptions.Generatorname,
    ReportDM.cdsPeriod.UpdateOptions.UpdateTableName);

  ReportDM.cdsToPeriod.Data := ReportDM.cdsPeriod.Data;

  if not ReportDM.cdsPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
    ReportDM.cdsPeriod.Last;

  if not ReportDM.cdsToPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
    ReportDM.cdsToPeriod.Last;
end;

procedure TBillableSummaryFrm.GetPriceList;
begin
  ReportDM.cdsPriceList2.Close;

  VBBaseDM.GetData(42, ReportDM.cdsPriceList1, ReportDM.cdsPriceList1.Name, '',
    'C:\Data\Xml\Price list.xml', ReportDM.cdsPriceList1.UpdateOptions.Generatorname,
    ReportDM.cdsPriceList1.UpdateOptions.UpdateTableName);

  ReportDM.cdsPriceList2.Data := ReportDM.cdsPriceList1.Data;
end;

procedure TBillableSummaryFrm.GetRateUnit;
begin
  ReportDM.cdsRateUnit2.Close;

  VBBaseDM.GetData(38, ReportDM.cdsRateUnit1, ReportDM.cdsRateUnit1.Name, '',
    'C:\Data\Xml\Rate unit.xml', ReportDM.cdsRateUnit1.UpdateOptions.Generatorname,
    ReportDM.cdsRateUnit1.UpdateOptions.UpdateTableName);

  ReportDM.cdsRateUnit2.Data := ReportDM.cdsRateUnit1.Data;
end;

procedure TBillableSummaryFrm.GetSystemUser;
begin
  ReportDM.cdsSystemUser2.Close;

  VBBaseDM.GetData(24, ReportDM.cdsSystemUser1, ReportDM.cdsSystemUser1.Name, '',
    'C:\Data\Xml\System User.xml', ReportDM.cdsSystemUser1.UpdateOptions.Generatorname,
    ReportDM.cdsSystemUser1.UpdateOptions.UpdateTableName);

  ReportDM.cdsSystemUser2.Data := ReportDM.cdsSystemUser1.Data;
end;

procedure TBillableSummaryFrm.GetActivityType;
begin
  ReportDM.cdsActivityType2.Close;

  VBBaseDM.GetData(39, ReportDM.cdsActivityType1, ReportDM.cdsActivityType1.Name, '',
    'C:\Data\Xml\Activity Type.xml', ReportDM.cdsActivityType1.UpdateOptions.Generatorname,
    ReportDM.cdsActivityType1.UpdateOptions.UpdateTableName);

  ReportDM.cdsActivityType2.Data := ReportDM.cdsActivityType1.Data;
end;

procedure TBillableSummaryFrm.OpenTables;
var
  I: Integer;
  DownloadCaption: string;
  Progress: Extended;
begin
  if ProgressFrm = nil then
    ProgressFrm := TProgressFrm.Create(nil);
  ProgressFrm.lblAppTitle.Caption := 'Getting Data...';
  ProgressFrm.Update;
  ProgressFrm.Show;
  ProgressFrm.Update;
  I := 1;

  try
    DownloadCaption := 'Opening_Period_Table';
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    GetPeriods;

    Inc(I);
    DownloadCaption := 'Opening_System_User_Table';
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    GetSystemUser;

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
  finally
    ProgressFrm.Close;
    FreeAndNil(ProgressFrm);
    Screen.Cursor := crDefault;
  end;

end;

procedure TBillableSummaryFrm.CloseDataSets;
begin
  ReportDM.cdsToPeriod.Close;
  ReportDM.cdsPeriod.Close;
  ReportDM.cdsSystemUser1.Close;
  ReportDM.cdsSystemUser2.Close;
  ReportDM.cdsRateUnit1.Close;
  ReportDM.cdsRateUnit2.Close;
  ReportDM.cdsPriceList1.Close;
  ReportDM.cdsPriceList2.Close;
  ReportDM.cdsActivityType1.Close;
  ReportDM.cdsActivityType2.Close;
end;

procedure TBillableSummaryFrm.viewBillableCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

procedure TBillableSummaryFrm.viewBillableCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
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

procedure TBillableSummaryFrm.viewBillableFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if AFocusedRecord = nil then
    Exit;

  if not AFocusedRecord.IsData then
  begin
    ReportDM.cdsTimesheetDetail.Close;
    ReportDM.CDSCarryForwardDetail.Close;
    Exit;
  end;

  GetBillableTimesheet;
end;

procedure TBillableSummaryFrm.viewTimesheetDblClick(Sender: TObject);
var
  TSID, ID: Integer;
begin
  inherited;
  Screen.Cursor := crHourglass;

  try
    if TimesheetEditFrm = nil then
      TimesheetEditFrm := TTimesheetEditFrm.Create(nil);

    case TcxGridDBBandedTableView(Sender).Tag of
      0: // Timesheet details
        begin
          TimesheetEditFrm.MyDataSet := ReportDM.cdsTimesheetDetail;
          TimesheetEditFrm.MyDataSource := ReportDM.dtsTimesheetDetail;
        end;

      1: // Carry Forward details
        begin
          TimesheetEditFrm.MyDataSet := ReportDM.cdsTimesheetCF;
          TimesheetEditFrm.MyDataSource := ReportDM.dtsTimesheetCF;
        end;
    end;

    TimesheetEditFrm.MyDataSet.Edit;

    if TimesheetEditFrm.ShowModal = mrCancel then
    begin
      if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
        TSDM.cdsTimesheet.Cancel;
    end
    else
    begin
//      case TcxGridDBBandedTableView(Sender).Tag of
//        0: // Timesheet details
//          begin
            // Get the ID of the current recored that was modified
      ID := TimesheetEditFrm.MyDataSet.FieldByName('ID').AsInteger;

            // We need to update the Tiemsheet record if it is in the current
            // Timesheet dataset.
      if (TSDM.cdsTimesheet.Active) and not (TSDM.cdsTimesheet.IsEmpty) then
      begin
              // Get the ID of the currently selected/focused Timesheet
              // record.
        TSID := TSDM.cdsTimesheet.FieldByName('ID').AsInteger;

              // If we find the modified billable summary record in the
              // current Timesheet dataset then update its values.
        if TSDM.cdsTimesheet.Locate('ID', ID, []) then
        begin
          if not (TSDM.cdsTimesheet.State in [dsEdit, dsInsert]) then
            TSDM.cdsTimesheet.Edit;

                // Copy the modified recored to the corresponding Timesheet
                // datset record.
          TSDM.cdsTimesheet.CopyRecord(TimesheetEditFrm.MyDataSet);
          TSDM.cdsTimesheet.Post;
                // Relocated the original Timesheet selected/focused record.
          TSDM.cdsTimesheet.Locate('ID', TSID, []);
        end;
      end;
//          end;

//        1: // Carry forward details
//          begin
//
//          end;
//      end;
    end;

    TimesheetEditFrm.Close;
    FreeAndNil(TimesheetEditFrm);
  finally
    Screen.Cursor := crDefault;
  end;
end;

end.

