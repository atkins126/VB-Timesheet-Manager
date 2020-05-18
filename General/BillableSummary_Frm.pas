unit BillableSummary_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.StrUtils,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus,
  Data.DB, Vcl.StdCtrls, System.IOUtils, WinApi.ShellApi, System.Win.Registry,

  BaseLayout_Frm, VBCommonValues, CommonValues,

  FireDAC.Comp.Client,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxBar, dxBarExtItems, cxContainer, cxEdit,
  cxDBLookupComboBox, cxDropDownEdit, cxCheckBox, cxBarEditItem, cxButtons,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxCustomData, cxData,
  cxFilter, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxDBData, cxCurrencyEdit, cxCalendar, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView,
  cxGrid, dxPrnDev, dxPrnDlg, cxGridExportLink, dxLayoutcxEditAdapters,
  dxScreenTip, dxCustomHint, cxHint, cxLabel, cxImage;

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
    lucPeriod: TcxBarEditItem;
    litBillableSummary: TdxLayoutItem;
    litTimesheet: TdxLayoutItem;
    litCarryForward: TdxLayoutItem;
    grdBillableSummary: TcxGrid;
    viewBillableSummary: TcxGridDBBandedTableView;
    edtBCustomerID: TcxGridDBBandedColumn;
    edtBPeriod: TcxGridDBBandedColumn;
    edtBName: TcxGridDBBandedColumn;
    edtBHours: TcxGridDBBandedColumn;
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
    grdTimesheetDetails: TcxGrid;
    viewTimesheetDetails: TcxGridDBBandedTableView;
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
    lvlTimesheetDetails: TcxGridLevel;
    dlgPrint: TdxPrintDialog;
    dlgFileSave: TSaveDialog;
    grdBillCfwdExcel: TcxGrid;
    viewBillCfwdExcel: TcxGridDBBandedTableView;
    edtBillCfwdX: TcxGridDBBandedColumn;
    edtBCIDX: TcxGridDBBandedColumn;
    edtBCFirstNameX: TcxGridDBBandedColumn;
    edtBCLastNameX: TcxGridDBBandedColumn;
    edtBCThePeriodX: TcxGridDBBandedColumn;
    edtBCLoginNameX: TcxGridDBBandedColumn;
    edtBCActivityDateX: TcxGridDBBandedColumn;
    edtBCCustomerTypeX: TcxGridDBBandedColumn;
    edtBCCustomerNameX: TcxGridDBBandedColumn;
    edtBCActivtyTypeX: TcxGridDBBandedColumn;
    edtBCAActivtyX: TcxGridDBBandedColumn;
    edtBCPriceItemX: TcxGridDBBandedColumn;
    edtBCTimeSpentX: TcxGridDBBandedColumn;
    edtBCHoursX: TcxGridDBBandedColumn;
    edtBCRateX: TcxGridDBBandedColumn;
    edtBCStdRateX: TcxGridDBBandedColumn;
    edtBCItemValueX: TcxGridDBBandedColumn;
    edtBCCFwdValueX: TcxGridDBBandedColumn;
    edtBCWeekEndingX: TcxGridDBBandedColumn;
    edtBCBillableX: TcxGridDBBandedColumn;
    edtBCBillableStrX: TcxGridDBBandedColumn;
    edtBCInvoiceNoX: TcxGridDBBandedColumn;
    edtBCInvDateX: TcxGridDBBandedColumn;
    edtBCCreditNoteNoX: TcxGridDBBandedColumn;
    edtBCLockedX: TcxGridDBBandedColumn;
    edtBCLockedStrX: TcxGridDBBandedColumn;
    edtBCCFwdX: TcxGridDBBandedColumn;
    edtBCCFwdStrX: TcxGridDBBandedColumn;
    edtBCAddWorkX: TcxGridDBBandedColumn;
    edtBCAddWorkStrX: TcxGridDBBandedColumn;
    lvlBillCfwdExcel: TcxGridLevel;
    edtCFCFwdValue: TcxGridDBBandedColumn;
    edtTSCarryForwardValue: TcxGridDBBandedColumn;
    popTimesheet: TPopupMenu;
    actTimesheet: TActionList;
    actEditItem: TAction;
    EditItem1: TMenuItem;
    N1: TMenuItem;
    Preview1: TMenuItem;
    GetData1: TMenuItem;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    PDF1: TMenuItem;
    grpOptions: TdxLayoutGroup;
    litRemoveZeroValueItems: TdxLayoutItem;
    litIncludeReleaseditems: TdxLayoutItem;
    cbxRemoveZeroBillableItems: TcxCheckBox;
    cbxIncludeReleasedItems: TcxCheckBox;
    repScreenTip: TdxScreenTipRepository;
    tipExit: TdxScreenTip;
    tipGetData: TdxScreenTip;
    tipPreview: TdxScreenTip;
    tipPrint: TdxScreenTip;
    tipPDF: TdxScreenTip;
    tipExcel: TdxScreenTip;
    tipRemoveZeroValueItems: TdxScreenTip;
    tipInclude: TdxScreenTip;
    styHintController: TcxHintStyleController;
    edtDateCarriedForward: TcxGridDBBandedColumn;
    edtDateCFwdReleased: TcxGridDBBandedColumn;
    edtReleaseCFwdToPeriod: TcxGridDBBandedColumn;
    tipFetchPreviousPeriodData: TdxScreenTip;
    litFetchPreviousPeriodData: TdxLayoutItem;
    cbxFetchPreviousPeriodData: TcxCheckBox;
    litReleasedItemColour: TdxLayoutItem;
    grpTimesheet: TdxLayoutGroup;
    grpLegend: TdxLayoutGroup;
    litReleasedItemDescription: TdxLayoutItem;
    imgCFwdItemColour: TcxImage;
    lblCFwdItemColour: TcxLabel;
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
    procedure lucPeriodPropertiesEditValueChanged(Sender: TObject);
    procedure DoEditItem(Sender: TObject);
    procedure cbxRemoveZeroBillableItemsPropertiesEditValueChanged(Sender: TObject);
    procedure cbxIncludeReleasedItemsPropertiesEditValueChanged(Sender: TObject);
    procedure viewTimesheetDetailsDblClick(Sender: TObject);

    procedure viewBillableSummaryFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);

    procedure viewBillableSummaryCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);

    procedure viewBillableSummaryCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure edtBHoursGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure viewTimesheetDetailsCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cbxFetchPreviousPeriodDataPropertiesEditValueChanged(
      Sender: TObject);
  private
    { Private declarations }
    FShowingForm: Boolean;
    GroupItemIndex: Integer;
    FPeriod: Integer;

    procedure OpenTables;
    procedure GetSystemUser;
    procedure GetActivityType;
    procedure GetPriceList;
    procedure GetRateUnit;
    procedure CloseDataSets;
    procedure EditTimesheet(ItemIndex: integer);
  protected
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
  public
    { Public declarations }

  end;

var
  BillableSummaryFrm: TBillableSummaryFrm;

const
  TABLE_COUNT = 8;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  RUtils,
  Report_DM,
  Progress_Frm,
  CommonFunctions,
  TS_DM,
  TimesheetEdit_Frm,
  Main_Frm;

procedure TBillableSummaryFrm.FormCreate(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  Caption := 'Billable Summary Report';
  FShowingForm := True;
  TcxLookupComboBoxProperties(lucPeriod.Properties).ListSource := ReportDM.dtsPeriod;

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
  viewBillCfwdExcel.DataController.DataSource := ReportDM.dtsBillCFwdExcel;
  viewTimesheetDetails.DataController.DataSource := ReportDM.dtsTimesheetDetail;
  viewCarryForwardDetail.DataController.DataSource := ReportDM.dtsTimesheetCF;
  grpData.ItemIndex := 0;

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  try
    RegKey.OpenKey(KEY_TIMESHEET_BILLABLE_SUMMARY_REPORT, True);

    if not RegKey.ValueExists('Include Released Items') then
      RegKey.WriteBool('Include Released Items', True);

    if not RegKey.ValueExists('Remove Zero Billable Values') then
      RegKey.WriteBool('Remove Zero Billable Values', True);

    if not RegKey.ValueExists('Fetch Previous Period When Launching') then
      RegKey.WriteBool('Fetch Previous Period When Launching', True);

    cbxRemoveZeroBillableItems.Checked := RegKey.ReadBool('Remove Zero Billable Values');
    cbxIncludeReleasedItems.Checked := RegKey.ReadBool('Include Released Items');
    cbxFetchPreviousPeriodData.Checked := RegKey.ReadBool('Fetch Previous Period When Launching');

    RegKey.CloseKey;
    OpenTables;

  finally
    lucPeriodPropertiesEditValueChanged(lucPeriod.Properties);
    RegKey.Free;
  end;
end;

procedure TBillableSummaryFrm.FormShow(Sender: TObject);
begin
  inherited;
//  GetBillableSummary;
//  GetBillableTimesheet;
  FShowingForm := False;
  WindowState := wsMaximized;
  Screen.Cursor := crDefault;
end;

procedure TBillableSummaryFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
  CloseDataSets;
  Self.ModalResult := mrOK;
end;

procedure TBillableSummaryFrm.DoEditItem(Sender: TObject);
var
  TSID: Integer;
begin
  inherited;
  Screen.Cursor := crHourglass;

  try
    case GroupItemIndex of
      0: // Timesheet details
        begin
          VBBaseDM.MyDataSet := ReportDM.cdsTimesheetDetail;
          VBBaseDM.MyDataSource := ReportDM.dtsTimesheetDetail;
        end;

      1: // Carry Forward details
        begin
          VBBaseDM.MyDataSet := ReportDM.cdsTimesheetCF;
          VBBaseDM.MyDataSource := ReportDM.dtsTimesheetCF;
        end;
    end;

    VBBaseDM.MyDataSet.Edit;

    if TimesheetEditFrm = nil then
      TimesheetEditFrm := TTimesheetEditFrm.Create(nil);

    TimesheetEditFrm.CanEdit := VBBaseDM.MyDataSet.FieldByName('LOCKED').AsInteger = 0;

    if TimesheetEditFrm.ShowModal = mrCancel then
    begin
      if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
        VBBaseDM.MyDataSet.Cancel;
    end
    else
    begin
//      case TcxGridDBBandedTableView(Sender).Tag of
//        0: // Timesheet details
//          begin
            // Get the ID of the current recored that was modified

      // We need to update the Timesheet record if it is in the current
      // Timesheet dataset.
      if (VBBaseDM.MyDataSet.Active) and not (VBBaseDM.MyDataSet.IsEmpty) then
      begin
        // Get the ID of the currently selected/focused Timesheet
        // record.
        TSID := VBBaseDM.MyDataSet.FieldByName('ID').AsInteger;

        // If we find the modified billable summary record in the
        // current Timesheet dataset then update its values.
        begin
          if not (VBBaseDM.MyDataSet.State in [dsEdit, dsInsert]) then
            VBBaseDM.MyDataSet.Edit;

          // Copy the modified recored to the corresponding Timesheet datset record.
          VBBaseDM.MyDataSet.CopyRecord(VBBaseDM.MyDataSet);
          VBBaseDM.MyDataSet.Post;
          VBBaseDM.PostData(VBBaseDM.MyDataSet);
//          actRefresh.Execute;

          // Relocated the original Timesheet selected/focused record.
          VBBaseDM.MyDataSet.Locate('ID', TSID, []);
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

procedure TBillableSummaryFrm.DoExcel(Sender: TObject);
var
  {DestFolder, }FolderPath, ExportFileName: string;
  FileSaved: Boolean;
//  RepFileName: string;
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

    viewBillableSummary.ViewData.Expand(True);
    viewBillableSummary.DataController.EndUpdate;
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
  RepFileName := TSDM.ShellResource.ReportFolder + 'BillableSummaryByCustomer.fr3';

  if not TFile.Exists(RepFileName) then
    raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

  ReportDM.Report.LoadFromFile(RepFileName);

  DC := viewBillableSummary.DataController;
  DC.BeginUpdate;
  try
    ReportDM.frxPDFExport.FileName := dlgFileSave.FileName;
    if ReportDM.Report.PrepareReport(True) then
      ReportDM.Report.Export(ReportDM.frxPDFExport);
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
  ReportDM.cdsBillableSummary.IndexName := 'idxBillableCustomer';
  ReportDM.Report := ReportDM.rptBillableSummaryByCustomer;
  RepFileName := TSDM.ShellResource.ReportFolder + 'BillableSummaryByCustomer.fr3';

  try
    if not TFile.Exists(RepFileName) then
      raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

    ReportDM.Report.LoadFromFile({TSDM.ShellResource.ReportFolder + }RepFileName);

    viewBillableSummary.DataController.BeginUpdate;
    if ReportDM.Report.PrepareReport then
      if TAction(Sender).Tag = 0 then
        ReportDM.Report.ShowPreparedReport
      else
      begin
        if dlgPrint.Execute then
        begin
          ReportDM.Report.PrintOptions.Copies :=
            dlgPrint.DialogData.Copies;

//              ReportDM.Report.PrintOptions.Printer.
//                dxPrintDevice.PrinterIndex;

          ReportDM.Report.Print;
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

procedure TBillableSummaryFrm.GetBillableSummary;
var
  Response: TStringList;
//  FromPeriod, Period: Integer;
  WhereClause, OrderByClause, FileName: string;
  AComboBox: TcxComboBox;
//  SamePeriod: Boolean;
const
//  SQL_PERIOD = 'SELECT THE_PERIOD FROM SourcePeriod WHERE THE_PERIOD >= %d AND THE_PERIOD <= %d';
  SQL_PERIOD = 'SELECT THE_PERIOD FROM SourcePeriod WHERE THE_PERIOD = %d';
  SQL_DELETE_SUMMARY_DATA = 'DELETE FROM BILLABLE_SUMMARY WHERE USER_ID = %d';
begin
  inherited;
  ReportDM.Report := ReportDM.rptBillableSummaryByCustomer;
  ReportDM.locSQL.Active := True;
  Response := RUtils.CreateStringList(PIPE, DOUBLE_QUOTE);
  try
    if not ReportDM.conSQLLite.Connected then
      ReportDM.conSQLLite.Connected := True;

    ReportDM.qryPeriod.Close;
    ReportDM.cdsPeriod.Prior;
//    FromPeriod := ReportDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger;
    ReportDM.qryPeriod.Open(Format(SQL_PERIOD, [FPeriod]));
//    ReportDM.qryPeriod.First;

    // Delete all billable summary table items for this user
    Response.DelimitedText := VBBaseDM.ExecuteSQLCommand(Format(SQL_DELETE_SUMMARY_DATA, [VBBaseDM.UserData.UserID]));
    if SameText(Response.Values['RESPONSE'], 'ERROR') then
      raise EServerError.Create('One or more errors occurred when executing an SQL command with error message:' + CRLF + CRLF +
        Response.Values['ERROR_MESSAGE']);

    // Generate billable data for each selected period
//    while not ReportDM.qryPeriod.EOF do
//    begin
//    Period := ReportDM.qryPeriod.FieldByName('THE_PERIOD').AsInteger;
    Response.DelimitedText := VBBaseDM.ExecuteStoredProcedure('SP_GEN_BILLABLE_SUMMARY_TABLE', VBBaseDM.UserData.UserID.ToString + ',' + FPeriod.ToString);

    if SameText(Response.Values['RESPONSE'], 'ERROR') then
      raise EServerError.Create('One or more errors occurred when generating the billable summary data with error message:' + CRLF + CRLF +
        Response.Values['ERROR_MESSAGE']);

//      ReportDM.qryPeriod.Next;
//    end;

    // Suppress customers that have no transaactions for billable summary report
    if cbxRemoveZeroBillableItems.EditValue then
    begin
      Response.DelimitedText := VBBaseDM.ExecuteStoredProcedure('SP_DELETE_ZERO_BILLABLE_VALUES', VBBaseDM.UserData.UserID.ToString);

      if SameText(Response.Values['RESPONSE'], 'ERROR') then
        raise EServerError.Create('One or more errors occurred when attempting to remove zero billable values with error message:' + CRLF + CRLF +
          Response.Values['ERROR_MESSAGE']);
    end;

    FileName := 'Billable Summary by Customer';
    OrderByClause := ' ORDER BY B."NAME"';

//    VBBaseDM.GetData(61, ReportDM.cdsBillableSummary, ReportDM.cdsBillableSummary.Name,
//      'B.USER_ID = ' + VBBaseDM.UserData.UserID.ToString + ';' + OrderByClause,
//      'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsBillableSummary.UpdateOptions.Generatorname,
//      ReportDM.cdsBillableSummary.UpdateOptions.UpdateTableName);

    viewBillableSummary.ViewData.Collapse(True);
//    SamePeriod := lucPeriod.EditValue = lucToPeriod.EditValue;
//    edtBName.Visible := SamePeriod;
//    edtBPeriod.Visible := not SamePeriod;
//    viewBillableSummary.OptionsView.GroupByBox := not SamePeriod;

//    if SamePeriod then
//      edtBName.GroupIndex := -1
//    else
//      edtBName.GroupIndex := 0;

    WhereClause :=
      ' WHERE ' + 'B.USER_ID = ' + VBBaseDM.UserData.UserID.ToString + OrderByClause;

    VBBaseDM.GetData(61, ReportDM.cdsBillableSummary, ReportDM.cdsBillableSummary.Name,
      WhereClause,
      'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsBillableSummary.UpdateOptions.Generatorname,
      ReportDM.cdsBillableSummary.UpdateOptions.UpdateTableName);

//    VBBaseDM.GetData(61, ReportDM.cdsBillableSummary, ReportDM.cdsBillableSummary.Name,
//      'B.USER_ID = ' + VBBaseDM.UserData.UserID.ToString + ';' + OrderByClause,
//      'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsBillableSummary.UpdateOptions.Generatorname,
//      ReportDM.cdsBillableSummary.UpdateOptions.UpdateTableName);
  finally
    Response.Free;
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
      'WHERE T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ' +
      ' AND (T.THE_PERIOD <= ' + FPeriod.ToString +
      ' OR T.RELEASE_CFWD_TO_PERIOD = ' + FPeriod.ToString + ') ' +
      ' AND T.CARRY_FORWARD = 1 ';

//    WhereClause :=
//      'WHERE T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ' +
//      ' AND (T.THE_PERIOD <= ' + VarAsType(ReportDM.cdsBillableSummary.FieldByName('THE_PERIOD').AsInteger, varString) +
//      ' OR T.RELEASE_CFWD_TO_PERIOD = ' + VarAsType(ReportDM.cdsBillableSummary.FieldByName('THE_PERIOD').AsInteger, varString) + ') ' +
//      ' AND T.CARRY_FORWARD = 1 ';

//        ' AND (T.THE_PERIOD =' + FTimesheetPeriod.ToString +
//        ' OR T.RELEASE_CFWD_TO_PERIOD = ' + FTimesheetPeriod.ToString + ') '

    OrderByClause := ' ORDER BY T.ACTIVITY_DATE';
    FileName := 'C:\Data\Xml\Carry Forward Summary.xml';
    WhereClause := WhereClause + OrderByClause;

//    VBBaseDM.GetData(45, ReportDM.cdsTimesheetDetail, ReportDM.cdsTimesheetDetail.Name, WhereClause + ';' + OrderByClause + ';' + GroupByClause,
//      FileName, ReportDM.cdsTimesheetDetail.UpdateOptions.Generatorname,
//      ReportDM.cdsTimesheetDetail.UpdateOptions.UpdateTableName);

    VBBaseDM.GetData(45, ReportDM.cdsTimesheetDetail, ReportDM.cdsTimesheetDetail.Name, WhereClause,
      FileName, ReportDM.cdsTimesheetDetail.UpdateOptions.Generatorname,
      ReportDM.cdsTimesheetDetail.UpdateOptions.UpdateTableName);

    ReportDM.cdsTimesheetCF.Close;

    if ReportDM.cdsTimesheetDetail.Active then
      ReportDM.cdsTimesheetCF.Data := ReportDM.cdsTimesheetDetail.Data;

//    WhereClause :=
//      'WHERE T.THE_PERIOD >= ' + VarAsType(lucPeriod.EditValue, varString) +
//      ' AND  T.THE_PERIOD <= ' + VarAsType(lucToPeriod.EditValue, varString) +
//      ' AND T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ';

    if cbxIncludeReleasedItems.Checked then
      WhereClause :=
        'WHERE T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) +
        ' AND (T.THE_PERIOD = ' + FPeriod.ToString +
        ' OR T.RELEASE_CFWD_TO_PERIOD = ' + FPeriod.ToString + ') ' +
        ' AND T.CARRY_FORWARD = 0 '
    else
      WhereClause :=
        'WHERE T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ' +
        ' AND T.THE_PERIOD = ' + FPeriod.ToString +
        ' AND T.CARRY_FORWARD = 0 ';

//    if cbxIncludeReleasedItems.Checked then
//      WhereClause :=
//        'WHERE (T.THE_PERIOD = ' + VarAsType(ReportDM.cdsBillableSummary.FieldByName('THE_PERIOD').AsInteger, varString) +
//        ' OR T.RELEASE_CFWD_TO_PERIOD = ' + VarAsType(ReportDM.cdsBillableSummary.FieldByName('THE_PERIOD').AsInteger, varString) + ') ' +
//        ' AND T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ' +
//        ' AND T.CARRY_FORWARD = 0 '
//    else
//      WhereClause :=
//        'WHERE T.THE_PERIOD = ' + VarAsType(ReportDM.cdsBillableSummary.FieldByName('THE_PERIOD').AsInteger, varString) +
//        ' AND T.CUSTOMER_ID = ' + IntToStr(ReportDM.cdsBillableSummary.FieldByName('CUSTOMER_ID').AsInteger) + ' ' +
//        ' AND T.CARRY_FORWARD = 0 ';

    FileName := 'C:\Data\Xml\Timesheet Details.xml';
    WhereClause := WhereClause + OrderByClause;

    VBBaseDM.GetData(45, ReportDM.cdsTimesheetDetail, ReportDM.cdsTimesheetDetail.Name, WhereClause,
      FileName, ReportDM.cdsTimesheetDetail.UpdateOptions.Generatorname,
      ReportDM.cdsTimesheetDetail.UpdateOptions.UpdateTableName);

//    VBBaseDM.GetData(45, ReportDM.cdsTimesheetDetail, ReportDM.cdsTimesheetDetail.Name, WhereClause + ';' + OrderByClause + ';' + GroupByClause,
//      FileName, ReportDM.cdsTimesheetDetail.UpdateOptions.Generatorname,
//      ReportDM.cdsTimesheetDetail.UpdateOptions.UpdateTableName);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TBillableSummaryFrm.GetPeriods;
begin
  ReportDM.cdsToPeriod.Close;

  VBBaseDM.GetData(62, ReportDM.cdsPeriod, ReportDM.cdsPeriod.Name, ONE_SPACE,
    'C:\Data\Xml\Period.xml', ReportDM.cdsPeriod.UpdateOptions.Generatorname,
    ReportDM.cdsPeriod.UpdateOptions.UpdateTableName);

  FPeriod := GetCurrentPeriod(Date);

  if not ReportDM.cdsPeriod.Locate('THE_PERIOD', FPeriod, []) then
    ReportDM.cdsPeriod.Last;

  if cbxFetchPreviousPeriodData.Checked then
  begin
    ReportDM.cdsPeriod.Prior;
    FPeriod := ReportDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger;
  end;

  lucPeriod.EditValue := FPeriod;
//  lucPeriodPropertiesEditValueChanged(TcxLookupComboBox(lucPeriod));
end;

procedure TBillableSummaryFrm.GetPriceList;
begin
  ReportDM.cdsPriceList2.Close;

  VBBaseDM.GetData(42, ReportDM.cdsPriceList1, ReportDM.cdsPriceList1.Name, ONE_SPACE,
    'C:\Data\Xml\Price list.xml', ReportDM.cdsPriceList1.UpdateOptions.Generatorname,
    ReportDM.cdsPriceList1.UpdateOptions.UpdateTableName);

  ReportDM.cdsPriceList2.Data := ReportDM.cdsPriceList1.Data;
end;

procedure TBillableSummaryFrm.GetRateUnit;
begin
  ReportDM.cdsRateUnit2.Close;

  VBBaseDM.GetData(38, ReportDM.cdsRateUnit1, ReportDM.cdsRateUnit1.Name, ONE_SPACE,
    'C:\Data\Xml\Rate unit.xml', ReportDM.cdsRateUnit1.UpdateOptions.Generatorname,
    ReportDM.cdsRateUnit1.UpdateOptions.UpdateTableName);

  ReportDM.cdsRateUnit2.Data := ReportDM.cdsRateUnit1.Data;
end;

procedure TBillableSummaryFrm.GetSystemUser;
begin
  ReportDM.cdsSystemUser2.Close;

  VBBaseDM.GetData(24, ReportDM.cdsSystemUser1, ReportDM.cdsSystemUser1.Name, ONE_SPACE,
    'C:\Data\Xml\System User.xml', ReportDM.cdsSystemUser1.UpdateOptions.Generatorname,
    ReportDM.cdsSystemUser1.UpdateOptions.UpdateTableName);

  ReportDM.cdsSystemUser2.Data := ReportDM.cdsSystemUser1.Data;
end;

procedure TBillableSummaryFrm.lucPeriodPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  FPeriod := ReportDM.qryPeriod.FieldByName('THE_PERIOD').AsInteger;
end;

procedure TBillableSummaryFrm.GetActivityType;
begin
  ReportDM.cdsActivityType2.Close;

  VBBaseDM.GetData(39, ReportDM.cdsActivityType1, ReportDM.cdsActivityType1.Name, ONE_SPACE,
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
//  ProgressFrm.lblAppTitle.Caption := 'Getting Data...';
  SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('Getting Data...')), 0);
  ProgressFrm.Update;
  ProgressFrm.Show;
  ProgressFrm.Update;
  I := 1;

  try
    DownloadCaption := 'Opening period table';
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);
    GetPeriods;

    Inc(I);
    DownloadCaption := 'Opening system user table';
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);
    GetSystemUser;

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening activity type table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);
    GetActivityType;

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening customer table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);
    GetPriceList;

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening rate unit table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);
    GetRateUnit;
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=100' + '|CAPTION=All_tables_opened')), 0);
//    Progress := 0;
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('All tables opened')), 0);
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Generating billable summary data (can take several seconds).';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);
    GetBillableSummary;
    FShowingForm := False;

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening timesheeet details for selected customer';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar(DownloadCaption)), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);
    GetBillableTimesheet;

    Progress := 100;
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('All tables opened')), 0);
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_PROGRESS, DWORD(PChar(FloatToStr(Progress))), 0);

  finally
    ProgressFrm.Close;
    FreeAndNil(ProgressFrm);
    Screen.Cursor := crDefault;
  end;

end;

procedure TBillableSummaryFrm.cbxRemoveZeroBillableItemsPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  if not FShowingForm then
  begin
    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    try
      RegKey.OpenKey(KEY_TIMESHEET_BILLABLE_SUMMARY_REPORT, True);
      RegKey.WriteBool('Remove Zero Billable Values', True);

      RegKey.CloseKey;
//      lucToPeriod.Properties.ReadOnly := cbxSamePeriod.EditValue;
//      TcxLookupComboBoxProperties(lucToPeriod.Properties).Buttons[0].Visible :=
//        not cbxSamePeriod.EditValue;
//
//      TcxLookupComboBoxProperties(lucToPeriod.Properties).ImmediateDropDownWhenKeyPressed :=
//        not cbxSamePeriod.EditValue;
    finally
      RegKey.Free;
    end;
  end;
end;

procedure TBillableSummaryFrm.cbxFetchPreviousPeriodDataPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  if not FShowingForm then
  begin
    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    try
      RegKey.OpenKey(KEY_TIMESHEET_BILLABLE_SUMMARY_REPORT, True);
      RegKey.WriteBool('Fetch Previous Period When Launching', cbxFetchPreviousPeriodData.Checked);

      RegKey.CloseKey;
    finally
      RegKey.Free;
    end;
  end;
end;

procedure TBillableSummaryFrm.cbxIncludeReleasedItemsPropertiesEditValueChanged(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  if not FShowingForm then
  begin
    RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
    RegKey.RootKey := HKEY_CURRENT_USER;
    try
      RegKey.OpenKey(KEY_TIMESHEET_BILLABLE_SUMMARY_REPORT, True);
      RegKey.WriteBool('Include Released Items', True);

      RegKey.CloseKey;
//      lucToPeriod.Properties.ReadOnly := cbxSamePeriod.EditValue;
//      TcxLookupComboBoxProperties(lucToPeriod.Properties).Buttons[0].Visible :=
//        not cbxSamePeriod.EditValue;
//
//      TcxLookupComboBoxProperties(lucToPeriod.Properties).ImmediateDropDownWhenKeyPressed :=
//        not cbxSamePeriod.EditValue;
    finally
      RegKey.Free;
    end;
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

  if AFocusedRecord.IsData then
  begin
    if not FShowingForm then
      GetBillableTimesheet;
  end
  else
  begin
    ReportDM.cdsTimesheetDetail.Close;
    ReportDM.cdsCarryForwardDetail.Close;
  end;
end;

procedure TBillableSummaryFrm.EditTimesheet(ItemIndex: integer);
var
  TSID: Integer;
begin
  inherited;
  Screen.Cursor := crHourglass;

  try
    case ItemIndex of
      0: // Timesheet details
        begin
          VBBaseDM.MyDataSet := ReportDM.cdsTimesheetDetail;
          VBBaseDM.MyDataSource := ReportDM.dtsTimesheetDetail;
        end;

      1: // Carry Forward details
        begin
          VBBaseDM.MyDataSet := ReportDM.cdsTimesheetCF;
          VBBaseDM.MyDataSource := ReportDM.dtsTimesheetCF;
        end;
    end;

    VBBaseDM.MyDataSet.Edit;

    if TimesheetEditFrm = nil then
      TimesheetEditFrm := TTimesheetEditFrm.Create(nil);

    if TimesheetEditFrm.ShowModal = mrCancel then
    begin
      if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
        VBBaseDM.MyDataSet.Cancel;
    end
    else
    begin
//      case TcxGridDBBandedTableView(Sender).Tag of
//        0: // Timesheet details
//          begin
            // Get the ID of the current recored that was modified

      // We need to update the Timesheet record if it is in the current
      // Timesheet dataset.
      if (VBBaseDM.MyDataSet.Active) and not (VBBaseDM.MyDataSet.IsEmpty) then
      begin
        // Get the ID of the currently selected/focused Timesheet
        // record.
        TSID := VBBaseDM.MyDataSet.FieldByName('ID').AsInteger;

        // If we find the modified billable summary record in the
        // current Timesheet dataset then update its values.
        begin
          if not (VBBaseDM.MyDataSet.State in [dsEdit, dsInsert]) then
            VBBaseDM.MyDataSet.Edit;

          // Copy the modified recored to the corresponding Timesheet datset record.
          VBBaseDM.MyDataSet.CopyRecord(VBBaseDM.MyDataSet);
          VBBaseDM.MyDataSet.Post;
          VBBaseDM.PostData(VBBaseDM.MyDataSet);
//          actRefresh.Execute;

          // Relocated the original Timesheet selected/focused record.
          VBBaseDM.MyDataSet.Locate('ID', TSID, []);
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

procedure TBillableSummaryFrm.edtBHoursGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
var
  FieldName: string;
begin
  inherited;
  if ARecord <> nil then
  begin
//    if (TcxCustomGridTableItem(Sender).Name = 'edtBHours')
//      or (TcxCustomGridTableItem(Sender).Name = 'edtBVlaue')
//      or (TcxCustomGridTableItem(Sender).Name = 'edtBNonHours')
//      or (TcxCustomGridTableItem(Sender).Name = 'edtedtBCarryForwardB') then
//    begin
//      FieldName := TcxGridDBBandedColumn(TcxCustomGridTableItem(Sender)).DataBinding.FieldName;
//
//      if TcxGridDBBandedColumn(TcxCustomGridTableItem(Sender)).DataBinding.Field.DataSet.FieldByName(FieldName).AsFloat = 0 then
//        AText := '';
//    end;

    if TcxCustomGridTableItem(Sender).Name = 'edtBHours' then
    begin
      if ARecord.Values[edtBHours.Index] = 0 then
        AText := '';
    end

    else if TcxCustomGridTableItem(Sender).Name = 'edtBValue' then
    begin
      if ARecord.Values[edtBValue.Index] = 0 then
        AText := '';
    end

    else if TcxCustomGridTableItem(Sender).Name = 'edtBNonHours' then
    begin
      if ARecord.Values[edtBNonHours.Index] = 0 then
        AText := '';
    end

    else if TcxCustomGridTableItem(Sender).Name = 'edtBCarryForward' then
    begin
      if ARecord.Values[edtBCarryForward.Index] = 0 then
        AText := '';
    end;
  end;
end;

procedure TBillableSummaryFrm.viewTimesheetDetailsCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord = nil then
    Exit;

  if AViewInfo.GridRecord.Values[edtReleaseCfwdToPeriod.Index] > 0 then
  begin
    if AViewInfo.Item <> nil then
//      if AViewInfo.Item <> cbxApproved then
//      begin
      ACanvas.Brush.Color := $00E4FFCA; //$9EFEB1; //$7EE4FE; // Color := $54DCFE; // $C1E0FF; //$D7E3FF; // $FFE1F0;
    ACanvas.Font.Color := RootLookAndFeel.SkinPainter.DefaultSelectionColor;
//      end;
  end;

  if AViewInfo.GridRecord.Focused then
  begin
    if AViewInfo.Item <> nil then
      if AViewInfo.Item.Focused then
      begin
        ACanvas.Brush.Color := $B6EDFA;
        ACanvas.Font.Color := RootLookAndFeel.SkinPainter.DefaultSelectionColor;
        PostMessage(Handle, CM_DRAWBORDER, Integer(ACanvas), Integer(AViewInfo));
      end;
  end;
end;

procedure TBillableSummaryFrm.viewTimesheetDetailsDblClick(Sender: TObject);
begin
  inherited;
  GroupItemIndex := grpData.ItemIndex;
  actEditItem.Execute;
//  EditTimesheet(grpData.ItemIndex);
end;

end.

