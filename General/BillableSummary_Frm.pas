unit BillableSummary_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.StrUtils,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus,
  Data.DB, Vcl.StdCtrls, System.IOUtils, WinApi.ShellApi, System.Win.Registry,

  BaseLayout_Frm, VBCommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxBar, dxBarExtItems, cxContainer, cxEdit,
  cxDBLookupComboBox, cxDropDownEdit, cxCheckBox, cxBarEditItem, cxButtons,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxCustomData, cxData,
  cxFilter, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxDBData, cxCurrencyEdit, cxCalendar, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView,
  cxGrid, dxPrnDev, dxPrnDlg, cxGridExportLink;

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
    viewBillableSummary: TcxGridDBBandedTableView;
    edtBCustomerID: TcxGridDBBandedColumn;
    edtBPeriod: TcxGridDBBandedColumn;
    edtBName: TcxGridDBBandedColumn;
    edtBhours: TcxGridDBBandedColumn;
    edtBValue: TcxGridDBBandedColumn;
    edtBNonHours: TcxGridDBBandedColumn;
    edtBNonValue: TcxGridDBBandedColumn;
    edtBCarryForward: TcxGridDBBandedColumn;
    lvlBillableSummary: TcxGridLevel;
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
    dlgPrint: TdxPrintDialog;
    dlgFileSave: TSaveDialog;
    cbxSamePeriod: TcxBarEditItem;
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
    procedure viewBillableSummaryFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure viewBillableSummaryCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
    procedure viewTimesheetDblClick(Sender: TObject);
    procedure viewBillableSummaryCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure lucGroupByKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lucGroupByPropertiesChange(Sender: TObject);
    procedure lucFromPeriodPropertiesEditValueChanged(Sender: TObject);
    procedure lucToPeriodPropertiesEditValueChanged(Sender: TObject);
    procedure cbxSamePeriodPropertiesEditValueChanged(Sender: TObject);
    procedure lucToPeriodPropertiesInitPopup(Sender: TObject);
  private
    { Private declarations }
    FShowingForm: Boolean;

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
var
  DestFolder, FolderPath, ExportFileName: string;
  FileSaved: Boolean;
  RepFileName: string;
  CustomerID: Integer;
//  ProgressDialog: TExcelExportProgressFrm;
begin
  inherited;
  FolderPath := EXCEL_DOCS;
//  FolderPath := MainFrm.FShellResource.RootFolder + '\' + FSHIFT_FOLDER + 'Export\';
  TDirectory.CreateDirectory(FolderPath);
  dlgFileSave.DefaultExt := 'xlsx';
  dlgFileSave.InitialDir := FolderPath;
  dlgFileSave.FileName := '*.xlsx';
  FileSaved := dlgFileSave.Execute;

  if not FileSaved then
    Exit;

  CustomerID := ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').Asinteger;

//  if dlgFileSave.Execute then
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

  viewBillableSummary.ViewData.Expand(True);
  viewBillableSummary.DataController.BeginUpdate;
//  edtBPeriod.Caption := 'Period';
//  edtBName.Caption := 'Customer';
  grdBillableSummary.Visible := False;
  grdBillableSummary.Align := alNone;
  grdBillableSummary.Font.Name := 'Calibri';
  grdBillableSummary.Font.Size := 11;

  try
    ExportFileName := dlgFileSave.FileName;
    // Use this method to export formatted data
    ExportGridToXLSX(
      ExportFileName, // Filename to export
      grdBillableSummary, // Grid whose data must be exported
      True, // Expand groups
      True, // Save all records (Selected and un-selected ones)
      True, // Use native format
      'xlsx');

      // Use this method to export un-formatted data
//    ExportGridDataToXLSX(
//      ExportFileName, // Filename to export
//      grdBillableSummary, // Grid whose data must be exported
//      True, // Expand groups
//      True, // Save all records (Selected and un-selected ones)
//      True, // Use native format
//      'xlsx');

//    if cbxOepnDocument.Checked then
    ShellExecute(0, 'open', PChar('Excel.exe'), PChar('"' + ExportFileName + '"'), nil, SW_SHOWNORMAL)
  finally
    grdBillableSummary.Font.Name := 'Verdana';
    grdBillableSummary.Font.Size := 8;
    grdBillableSummary.Align := alClient;
    grdBillableSummary.Visible := True;
    if not ReportDM.cdsBillableSummary.Locate('CUSTOMER_ID', CustomerID, []) then
      ReportDM.cdsBillableSummary.First;
    if lucFromPeriod.EditValue <> lucToPeriod.EditValue then
      viewBillableSummary.ViewData.Collapse(True);
    viewBillableSummary.DataController.EndUpdate;
//    edtBPeriod.Caption := '    Period';
//    edtBName.Caption := '    Customer';
  end;
end;

procedure TBillableSummaryFrm.DoPDF(Sender: TObject);
var
  FileSaved: Boolean;
  DC: TcxCustomDataController;
  RepFileName: string;
  AComboBox: TcxComboBox;
  CustomerID: Integer;
begin
  inherited;
  ReportDM.frxPDFExport.ShowDialog := False;
  ReportDM.frxPDFExport.Background := True;
  ReportDM.frxPDFExport.OpenAfterExport := True; // cbxOepnDocument.Checked;
  ReportDM.frxPDFExport.OverwritePrompt := True;
  ReportDM.frxPDFExport.ShowProgress := True;
//  TfrxGroupHeader(ReportDM.rptBillableSummaryByCustomer.FindObject('bndCustomerHeader')).Visible := False;
//  TfrxMemoView(ReportDM.rptBillableSummaryByCustomer.FindObject('lblCustomerHeader')).Visible := False;
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
      'The file ''' + dlgFileSave.FileName + ''' already exists. Do you want to overwrite this file?',
      mtConfirmation,
      [mbYes, mbNo]
      ) = mrNo then
      Exit;
  end;

//  GetTimesheetDetail;

  CustomerID := ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger;

  lucGroupBy.SetFocus;
  AComboBox := TcxBarEditItemControl(lucGroupBy.Links[0].Control).Edit as TcxComboBox;
  case AComboBox.ItemIndex of
    0: RepFileName := TSDM.ShellResource.ReportFolder + 'BillableSummaryByPeriod.fr3';
    1: RepFileName := TSDM.ShellResource.ReportFolder + 'BillableSummaryByCustomer.fr3';
  end;

  if not TFile.Exists(RepFileName) then
    raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

  ReportDM.FReport.LoadFromFile(RepFileName);

  DC := viewBillableSummary.DataController;
  DC.BeginUpdate;
  try
    ReportDM.frxPDFExport.FileName := dlgFileSave.FileName;
    if ReportDM.FReport.PrepareReport(True) then
      ReportDM.FReport.Export(ReportDM.frxPDFExport);
  finally
    if not ReportDM.cdsBillableSummary.Locate('CUSTOMER_ID', CustomerID, []) then
      ReportDM.cdsBillableSummary.First;
    DC.EndUpdate;
  end;
end;

procedure TBillableSummaryFrm.DoGetData(Sender: TObject);
begin
  inherited;
  GetBillableSummary;
end;

procedure TBillableSummaryFrm.DoPrint(Sender: TObject);
var
  AComboBox: TcxComboBox;
  RepFileName: string;
  CustomerID: Integer;
begin
  inherited;
  CustomerID := ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger;
  lucGroupBy.SetFocus;
  AComboBox := TcxBarEditItemControl(lucGroupBy.Links[0].Control).Edit as TcxComboBox;

  case AComboBox.ItemIndex of
    0:
      begin
        if lucFromPeriod.EditValue <> lucToPeriod.EditValue then
          edtBPeriod.GroupIndex := 0;
        ReportDM.cdsBillableSummary.IndexName := 'idxBillablePeriod';
        ReportDM.FReport := ReportDM.rptBillableSummaryByPeriod;
        RepFileName := TSDM.ShellResource.ReportFolder + 'BillableSummaryByPeriod.fr3';
      end;
    1:
      begin
        if lucFromPeriod.EditValue <> lucToPeriod.EditValue then
          edtBName.GroupIndex := 0;
        ReportDM.cdsBillableSummary.IndexName := 'idxBillableCustomer';
        ReportDM.FReport := ReportDM.rptBillableSummaryByCustomer;
        RepFileName := TSDM.ShellResource.ReportFolder + 'BillableSummaryByCustomer.fr3';
      end;
  end;

  try
    if not TFile.Exists(RepFileName) then
      raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

    ReportDM.FReport.LoadFromFile({TSDM.ShellResource.ReportFolder + }RepFileName);

    viewBillableSummary.DataController.BeginUpdate;
    if ReportDM.FReport.PrepareReport then
      if TAction(Sender).Tag = 0 then
        ReportDM.FReport.ShowPreparedReport
      else
      begin
        if dlgPrint.Execute then
        begin
          ReportDM.FReport.PrintOptions.Copies :=
            dlgPrint.DialogData.Copies;

//              ReportDM.FReport.PrintOptions.Printer.
//                dxPrintDevice.PrinterIndex;

          ReportDM.FReport.Print;
        end;
      end;
  finally
    if not ReportDM.cdsBillableSummary.Locate('CUSTOMER_ID', CustomerID, []) then
      ReportDM.cdsBillableSummary.First;
//    viewBillableSummary.ViewData.Collapse(True);
    viewBillableSummary.DataController.EndUpdate;
  end;
end;

procedure TBillableSummaryFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TBillableSummaryFrm.FormCreate(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  Caption := 'Billable Summary Report';
  FShowingForm := True;
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

  viewBillableSummary.DataController.DataSource := ReportDM.dtsBillableSummary;
  viewTimesheet.DataController.DataSource := ReportDM.dtsTimesheetDetail;
  viewCarryForwardDetail.DataController.DataSource := ReportDM.dtsTimesheetCF;
  grpData.ItemIndex := 0;
  litTimesheet.CaptionOptions.Text := 'Timesheet Details (0 Items)';
  litCarryForward.CaptionOptions.Text := 'Carry Forwad Details (0 Items)';
  OpenTables;
//  GetPeriods;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  try
    RegKey.OpenKey(KEY_TIME_SHEET, True);

    if not RegKey.ValueExists('To Period same as From Period') then
      RegKey.WriteBool('To Period same as From Period', True);

    cbxSamePeriod.EditValue := RegKey.ReadBool('To Period same as From Period');
    cbxSamePeriodPropertiesEditValueChanged(cbxSamePeriod.Properties);
    RegKey.CloseKey;

    lucFromPeriod.EditValue := VBBaseDM.CurrentPeriod;
    lucToPeriod.EditValue := VBBaseDM.CurrentPeriod;
    lucToPeriod.Properties.ReadOnly := cbxSamePeriod.EditValue;
    lucFromPeriodPropertiesEditValueChanged(lucFromPeriod.Properties);
    lucGroupBy.EditValue := 'Period';
  finally
    RegKey.Free;
  end;
end;

procedure TBillableSummaryFrm.FormShow(Sender: TObject);
begin
  inherited;
  GetBillableSummary;
  FShowingForm := False;
  GetBillableTimesheet;
  Screen.Cursor := crDefault;
end;

procedure TBillableSummaryFrm.GetBillableSummary;
var
  SL: TStringList;
  FromPeriod, ToPeriod, I, Period: Integer;
  OrderByClause, FileName: string;
  AComboBox: TcxComboBox;
  SamePeriod: Boolean;
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

//    VBBaseDM.GetData(61, ReportDM.cdsBillableSummary, ReportDM.cdsBillableSummary.Name,
//      'B.USER_ID = ' + VBBaseDM.FUserData.UserID.ToString + ';' + OrderByClause,
//      'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsBillableSummary.UpdateOptions.Generatorname,
//      ReportDM.cdsBillableSummary.UpdateOptions.UpdateTableName);

    viewBillableSummary.ViewData.Collapse(True);
    SamePeriod := lucFromPeriod.EditValue = lucToPeriod.EditValue;
    edtBName.Visible := SamePeriod;
    edtBPeriod.Visible := not SamePeriod;
    viewBillableSummary.OptionsView.GroupByBox := not SamePeriod;

    if SamePeriod then
      edtBName.GroupIndex := -1
    else
      edtBName.GroupIndex := 0;
//      viewBillable.ViewData.Expand(True);
    VBBaseDM.GetData(61, ReportDM.cdsBillableSummary, ReportDM.cdsBillableSummary.Name,
      'B.USER_ID = ' + VBBaseDM.FUserData.UserID.ToString + ';' + OrderByClause,
      'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsBillableSummary.UpdateOptions.Generatorname,
      ReportDM.cdsBillableSummary.UpdateOptions.UpdateTableName);
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

procedure TBillableSummaryFrm.lucFromPeriodPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  lucGroupBy.Properties.ReadOnly := lucFromPeriod.EditValue = lucToPeriod.EditValue;
  if cbxSamePeriod.EditValue then
    lucToPeriod.EditValue := lucFromPeriod.EditValue;

  if lucFromPeriod.EditValue > lucToPeriod.EditValue then
    raise EValidateException.Create('To Period must be later than From Period.');
end;

procedure TBillableSummaryFrm.lucToPeriodPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  lucGroupBy.Properties.ReadOnly := lucFromPeriod.EditValue = lucToPeriod.EditValue;

  if lucFromPeriod.EditValue > lucToPeriod.EditValue then
    raise EValidateException.Create('To Period must be later than From Period.');
end;

procedure TBillableSummaryFrm.lucToPeriodPropertiesInitPopup(Sender: TObject);
begin
  inherited;
  TcxLookupComboBox(Sender).DroppedDown := not TcxLookupComboBox(Sender).Properties.ReadOnly
end;

procedure TBillableSummaryFrm.lucGroupByKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if not TcxComboBox(Sender).DroppedDown then
    Exit;
end;

procedure TBillableSummaryFrm.lucGroupByPropertiesChange(Sender: TObject);
var
  AComboBox: TcxComboBox;
begin
  inherited;
  viewBillableSummary.OnCustomDrawCell := nil;
  edtBPeriod.GroupIndex := -1;
  edtBName.GroupIndex := -1;

  lucGroupBy.SetFocus;
  AComboBox := TcxBarEditItemControl(lucGroupBy.Links[0].Control).Edit as TcxComboBox;
  case AComboBox.ItemIndex of
    0:
      begin
        edtBPeriod.GroupIndex := 0;
        ReportDM.cdsBillableSummary.IndexName := 'idxBillablePeriod';
        ReportDM.FReport := ReportDM.rptBillableSummaryByPeriod;
      end;
    1:
      begin
        edtBName.GroupIndex := 0;
        ReportDM.cdsBillableSummary.IndexName := 'idxBillableCustomer';
        ReportDM.FReport := ReportDM.rptBillableSummaryByCustomer;
      end;
  end;
  try
    edtBPeriod.Visible := edtBPeriod.GroupIndex = -1;
    edtBName.Visible := not edtBPeriod.Visible;
  finally
    viewBillableSummary.OnCustomDrawCell := viewBillableSummaryCustomDrawCell;
  end;
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

procedure TBillableSummaryFrm.cbxSamePeriodPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  try
    RegKey.OpenKey(KEY_TIME_SHEET, True);
    RegKey.WriteBool('To Period same as From Period', cbxSamePeriod.EditValue);
    RegKey.CloseKey;
    lucToPeriod.Properties.ReadOnly := cbxSamePeriod.EditValue;
    TcxLookupComboBoxProperties(lucToPeriod.Properties).Buttons[0].Visible :=
      not cbxSamePeriod.EditValue;

    TcxLookupComboBoxProperties(lucToPeriod.Properties).ImmediateDropDownWhenKeyPressed :=
      not cbxSamePeriod.EditValue;
  finally
    RegKey.Free;
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

procedure TBillableSummaryFrm.viewBillableSummaryCustomDrawCell(
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

procedure TBillableSummaryFrm.viewBillableSummaryCustomDrawGroupCell(
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

procedure TBillableSummaryFrm.viewBillableSummaryFocusedRecordChanged(
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
//    Exit;
  end
  else if not FShowingForm then
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

