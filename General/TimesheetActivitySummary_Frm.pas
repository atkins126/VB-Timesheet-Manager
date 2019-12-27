unit TimesheetActivitySummary_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.StrUtils,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus,
  Data.DB, Vcl.StdCtrls, System.IOUtils, WinApi.ShellApi,

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
  TTimesheetActivitySummaryFrm = class(TBaseLayoutFrm)
    docToolbar: TdxBarDockControl;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    btnClose: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnPDF: TdxBarLargeButton;
    btnPreview: TdxBarLargeButton;
    btnPrint: TdxBarLargeButton;
    lucFromPeriod: TcxBarEditItem;
    cbxRemoveZeroValues: TcxBarEditItem;
    dlgPrint: TdxPrintDialog;
    dlgFileSave: TSaveDialog;
    grdSummaryByActivity: TcxGrid;
    viewSummaryByActivity: TcxGridDBBandedTableView;
    edtSAPeriod: TcxGridDBBandedColumn;
    edtSAATypeID: TcxGridDBBandedColumn;
    edtSAActivityType: TcxGridDBBandedColumn;
    edtSAAmandaMins: TcxGridDBBandedColumn;
    edtSAAmandaHours: TcxGridDBBandedColumn;
    edtSAAmandaValue: TcxGridDBBandedColumn;
    edtSAChanelMins: TcxGridDBBandedColumn;
    edtSAChanelHours: TcxGridDBBandedColumn;
    edtSAChanelVlaue: TcxGridDBBandedColumn;
    edtSAChristaMins: TcxGridDBBandedColumn;
    edtSAChristaHours: TcxGridDBBandedColumn;
    edtSAChristaValue: TcxGridDBBandedColumn;
    edtSAAlbertusMins: TcxGridDBBandedColumn;
    edtSAAlbertusHours: TcxGridDBBandedColumn;
    edtSAAlbetusValue: TcxGridDBBandedColumn;
    lvlSummaryByActivity: TcxGridLevel;
    litGrid: TdxLayoutItem;
    litToolbar: TdxLayoutItem;
    actClose: TAction;
    actPreview: TAction;
    actPrint: TAction;
    actGetData: TAction;
    actExcel: TAction;
    actPDF: TAction;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure DoPrint(Sender: TObject);
    procedure DoGetData(Sender: TObject);
    procedure DoExcel(Sender: TObject);
    procedure DoPDF(Sender: TObject);
    procedure lucFromPeriodPropertiesEditValueChanged(Sender: TObject);
    procedure viewSummaryByActivityCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    procedure GetPeriods;
  protected
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
  public
    { Public declarations }
  end;

var
  TimesheetActivitySummaryFrm: TTimesheetActivitySummaryFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  RUtils,
  Report_DM,
  Progress_Frm,
  CommonFunction,
  CommonValues,
  TS_DM;

procedure TTimesheetActivitySummaryFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Timesheet Summary by Activity';
  TcxLookupComboBoxProperties(lucFromPeriod.Properties).ListSource := ReportDM.dtsPeriod;
  lucFromPeriod.EditValue := VBBaseDM.CurrentPeriod;
  GetPeriods;
  actGetData.Execute;
end;

procedure TTimesheetActivitySummaryFrm.GetPeriods;
begin
  VBBaseDM.GetData(62, ReportDM.cdsPeriod, ReportDM.cdsPeriod.Name, '',
    'C:\Data\Xml\Period.xml', ReportDM.cdsPeriod.UpdateOptions.Generatorname,
    ReportDM.cdsPeriod.UpdateOptions.UpdateTableName);

  if not ReportDM.cdsPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
    ReportDM.cdsPeriod.Last;
end;

procedure TTimesheetActivitySummaryFrm.lucFromPeriodPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    actGetData.Execute;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TTimesheetActivitySummaryFrm.viewSummaryByActivityCustomDrawCell(
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

procedure TTimesheetActivitySummaryFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOK;
end;

procedure TTimesheetActivitySummaryFrm.DoPDF(Sender: TObject);
var
  FileSaved: Boolean;
//  DC: TcxCustomDataController;
  ActivityTypeID: Integer;
  RepFileName: string;
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
      'The file ' + ExtractFileName(dlgFileSave.FileName) + ' already exists. Do you want to overwrite this file?',
      mtConfirmation,
      [mbYes, mbNo]
      ) = mrNo then
      Exit;
  end;

  ReportDM.FReport := ReportDM.rptTSSummaryByActivity;
  viewSummaryByActivity.DataController.BeginUpdate;

  RepFileName := TSDM.ShellResource.ReportFolder + 'TSSummaryByActivity.fr3';

  if not TFile.Exists(RepFileName) then
    raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

  ActivityTypeID := ReportDM.cdsTSSummaryByActivity.FieldByName('ACTIVITY_TYPE_ID').AsInteger;
  ReportDM.FReport := ReportDM.rptTSSummaryByActivity;

  try
    ReportDM.frxPDFExport.FileName := dlgFileSave.FileName;
    if ReportDM.FReport.PrepareReport(True) then
      ReportDM.FReport.Export(ReportDM.frxPDFExport);
  finally
    if not ReportDM.cdsTSSummaryByActivity.Locate('ACTIVITY_TYPE_ID', ActivityTypeID, []) then
      ReportDM.cdsTSSummaryByActivity.First;
    viewSummaryByActivity.DataController.EndUpdate;
  end;
end;

procedure TTimesheetActivitySummaryFrm.DoPrint(Sender: TObject);
var
  RepFileName: string;
  ActivityTypeID: Integer;
begin
  inherited;
  RepFileName := TSDM.ShellResource.ReportFolder + 'TSSummaryByActivity.fr3';

  if not TFile.Exists(RepFileName) then
    raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

  ActivityTypeID := ReportDM.cdsTSSummaryByActivity.FieldByName('ACTIVITY_TYPE_ID').AsInteger;
  ReportDM.FReport := ReportDM.rptTSSummaryByActivity;
  viewSummaryByActivity.DataController.BeginUpdate;

  try
    ReportDM.FReport.LoadFromFile(RepFileName);

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
    if not ReportDM.cdsTSSummaryByActivity.Locate('ACTIVITY_TYPE_ID', ActivityTypeID, []) then
      ReportDM.cdsTSSummaryByActivity.First;

//    viewSummaryByActivity.ViewData.Collapse(True);
    viewSummaryByActivity.DataController.EndUpdate;
  end;
end;

procedure TTimesheetActivitySummaryFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TTimesheetActivitySummaryFrm.DoExcel(Sender: TObject);
var
  DestFolder, FolderPath, ExportFileName: string;
  FileSaved: Boolean;
//  ProgressDialog: TExcelExportProgressFrm;
begin
  inherited;
  //FolderPath := RUtils.GetMyDocumentsFolder(VBBaseDM.FShellResource.RootFolder) + EXCEL_DOCS;
  FolderPath := EXCEL_DOCS;
//  FolderPath := MainFrm.FShellResource.RootFolder + '\' + FSHIFT_FOLDER + 'Export\';
  TDirectory.CreateDirectory(FolderPath);
  dlgFileSave.DefaultExt := 'xlsx';
  dlgFileSave.InitialDir := FolderPath;
  dlgFileSave.FileName := '*.xlsx';
  FileSaved := dlgFileSave.Execute;

  if not FileSaved then
    Exit;
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

  try
    ExportFileName := dlgFileSave.FileName;
    ExportGridToXLSX(
      ExportFileName, // Filename to export
      grdSummaryByActivity, // Grid whose data must be exported
      True, // Expand groups
      True, // Save all records (Selected and un-selected ones)
      True, // Use native format
      'xlsx');

//    if cbxOepnDocument.Checked then
    ShellExecute(0, 'open', PChar('Excel.exe'), PChar('"' + ExportFileName + '"'), nil, SW_SHOWNORMAL)
  finally
    grdSummaryByActivity.Font.Name := 'Verdana';
    grdSummaryByActivity.Font.Size := 8;
    grdSummaryByActivity.Align := alClient;
    grdSummaryByActivity.Visible := True;
    ReportDM.cdsTSSummaryByActivity.First;
    viewSummaryByActivity.ViewData.Collapse(True);
    viewSummaryByActivity.DataController.EndUpdate;
  end;
end;

procedure TTimesheetActivitySummaryFrm.DoGetData(Sender: TObject);
begin
  inherited;
  VBBaseDM.GetData(46, ReportDM.cdsTSSummaryByActivity, ReportDM.cdsTSSummaryByActivity.Name, 'T.THE_PERIOD = ' +
    IntToStr(lucFromPeriod.EditValue),
    'C:\Data\Xml\Summary By Activity.xml', ReportDM.cdsTSSummaryByActivity.UpdateOptions.Generatorname,
    ReportDM.cdsTSSummaryByActivity.UpdateOptions.UpdateTableName);
end;

end.

