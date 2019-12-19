unit BillableSummary_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.StrUtils,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus,
  Data.DB, Vcl.StdCtrls,

  BaseLayout_Frm,

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
  private
    { Private declarations }
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
  CommonValues, TS_DM;

procedure TBillableSummaryFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
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

procedure TBillableSummaryFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Billable Summary Report';
  TcxLookupComboBoxProperties(lucFromPeriod.Properties).ListSource := ReportDM.dtsPeriod;
  TcxLookupComboBoxProperties(lucToPeriod.Properties).ListSource := ReportDM.dtsToPeriod;
  viewBillable.DataController.DataSource := ReportDM.dtsBillableSummary;
  viewTimesheet.DataController.DataSource := ReportDM.dtsTimesheet;
  viewCarryForwardDetail.DataController.DataSource := ReportDM.dtsCarryForwardDetail;
  grpData.ItemIndex := 0;
  GetPeriods;
  lucFromPeriod.EditValue := VBBaseDM.CurrentPeriod;
  lucToPeriod.EditValue := VBBaseDM.CurrentPeriod;
  lucGroupBy.EditValue := 'Period';
end;

procedure TBillableSummaryFrm.FormShow(Sender: TObject);
begin
  inherited;
  GetBillableSummary;
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
//    if lucFromPeriod.EditValue = lucToPeriod.EditValue then
//      viewBillable.ViewData.Expand(True);
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
      'WHERE T.THE_PERIOD = ' + VarAsType(ReportDM.cdsBillableSummary. FieldByName('THE_PERIOD').AsInteger, varString) +
      ' AND T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ' +
      ' AND T.CARRY_FORWARD = 1 ';

    OrderByClause := 'ORDER BY T.THE_PERIOD, T.ACTIVITY_DATE';

    VBBaseDM.GetData(27, ReportDM.cdsTimesheet, ReportDM.cdsTimesheet.Name, WhereClause + ';' + OrderByClause + ';' + GroupByClause,
      'C:\Data\Xml\Carry Forward Summary.xml', ReportDM.cdsTimesheet.UpdateOptions.Generatorname,
      ReportDM.cdsTimesheet.UpdateOptions.UpdateTableName);

    ReportDM.cdsCarryForwardDetail.Close;

    if ReportDM.cdsTimesheet.Active then
      ReportDM.cdsCarryForwardDetail.Data := ReportDM.cdsTimesheet.Data;

//    WhereClause :=
//      'WHERE T.THE_PERIOD >= ' + VarAsType(lucFromPeriod.EditValue, varString) +
//      ' AND  T.THE_PERIOD <= ' + VarAsType(lucToPeriod.EditValue, varString) +
//      ' AND T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ';

    WhereClause :=
      'WHERE T.THE_PERIOD = ' + VarAsType(ReportDM.cdsBillableSummary. FieldByName('THE_PERIOD').AsInteger, varString) +
//      ' AND  T.THE_PERIOD <= ' + VarAsType(lucToPeriod.EditValue, varString) +
      ' AND T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ';

    VBBaseDM.GetData(27, ReportDM.cdsTimesheet, ReportDM.cdsTimesheet.Name, WhereClause + ';' + OrderByClause + ';' + GroupByClause,
      'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsTimesheet.UpdateOptions.Generatorname,
      ReportDM.cdsTimesheet.UpdateOptions.UpdateTableName);
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
    ReportDM.cdsTimesheet.Close;
    Exit;
  end;

  GetBillableTimesheet;
end;

end.

