unit MonthlyBillableReport_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, System.IOUtils, Data.DB,
  WinApi.ShellApi,

  frxClass,

  BaseLayout_Frm, VBCommonValues, Base_DM, CommonFunctions, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxBar, dxLayoutcxEditAdapters, cxCustomData,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGrid, dxPrnDev,
  cxGridDBBandedTableView, cxCurrencyEdit, dxPrnDlg, cxCheckBox, cxGridExportLink;

type
  TMonthlyBillableReportFrm = class(TBaseLayoutFrm)
    litToolbar: TdxLayoutItem;
    docToolbar: TdxBarDockControl;
    actCloseForm: TAction;
    actGetData: TAction;
    actPreview: TAction;
    actPrint: TAction;
    actExcel: TAction;
    actPDF: TAction;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    btnClose: TdxBarLargeButton;
    btnGetData: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnPDF: TdxBarLargeButton;
    btnPreview: TdxBarLargeButton;
    btnPrint: TdxBarLargeButton;
    lucFromPeriod: TcxLookupComboBox;
    grpGetOptions: TdxLayoutGroup;
    litFromPeriod: TdxLayoutItem;
    litToPeriod: TdxLayoutItem;
    lucToPeriod: TcxLookupComboBox;
    grdMonthlyBilling: TcxGrid;
    viewMonthlyBilling: TcxGridDBBandedTableView;
    lvlMonthlyBilling: TcxGridLevel;
    edtPeriod: TcxGridDBBandedColumn;
    edtBillable: TcxGridDBBandedColumn;
    edtCarryForward: TcxGridDBBandedColumn;
    edtBillableHours: TcxGridDBBandedColumn;
    edtMonth: TcxGridDBBandedColumn;
    edtYear: TcxGridDBBandedColumn;
    litGrid: TdxLayoutItem;
    lucSelectBy: TcxComboBox;
    litSelectBy: TdxLayoutItem;
    grpPeriod: TdxLayoutGroup;
    grpYear: TdxLayoutGroup;
    lucFromYear: TcxLookupComboBox;
    litYear: TdxLayoutItem;
    dlgFileSave: TSaveDialog;
    dlgPrint: TdxPrintDialog;
    litToYear: TdxLayoutItem;
    lucToYear: TcxLookupComboBox;
    cbxGetAll: TcxCheckBox;
    litGetAllData: TdxLayoutItem;
    procedure DoCloseForm(Sender: TObject);
    procedure DoPrint(Sender: TObject);
    procedure DoExcel(Sender: TObject);
    procedure DoPDF(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lucSelectByPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lucFromPeriodPropertiesChange(Sender: TObject);
    procedure viewMonthlyBillingCustomDrawGroupSummaryCell(Sender: TObject;
      ACanvas: TcxCanvas; ARow: TcxGridGroupRow; AColumn: TcxGridColumn;
      ASummaryItem: TcxDataSummaryItem;
      AViewInfo: TcxCustomGridViewCellViewInfo; var ADone: Boolean);
    procedure lucFromYearPropertiesChange(Sender: TObject);
    procedure cbxGetAllPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FFromPeriod: Integer;
    FToPeriod: Integer;
    FMadeChanges: Boolean;

    procedure GetPeriods;
    procedure GetYears;
    procedure SetPeriod(ByYear: Boolean);
    procedure GetMonthlyBilling;
  public
    { Public declarations }
  end;

var
  MonthlyBillableReportFrm: TMonthlyBillableReportFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  TS_DM,
  Report_DM;

procedure TMonthlyBillableReportFrm.FormCreate(Sender: TObject);
var
  FirstPeriod: Integer;
begin
  inherited;
  Caption := 'Monthly Billable Summary';
  Self.Width := 545;
  Self.Height := 600;
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;

  if ReportDM = nil then
    ReportDM := TReportDM.Create(nil);

  lucFromPeriod.Properties.ListSource := ReportDM.dtsPeriod;
  lucToPeriod.Properties.ListSource := ReportDM.dtsToPeriod;
  lucFromYear.Properties.ListSource := ReportDM.dtsYear;
  viewMonthlyBilling.DataController.DataSource := ReportDM.dtsMonthlyBilling;
  lucSelectBy.ItemIndex := 0;
  FMadeChanges := False;
  GetPeriods;
  GetYears;

//  if not ReportDM.cdsPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then

  FirstPeriod := VBBaseDM.CurrentYear * 100 + 1;

  if not ReportDM.cdsPeriod.Locate('THE_PERIOD', FirstPeriod, []) then
    ReportDM.cdsPeriod.First;

  lucFromPeriod.EditValue := ReportDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger;

  if not ReportDM.cdsToPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
    ReportDM.cdsToPeriod.Last;

  lucToPeriod.EditValue := ReportDM.cdsToPeriod.FieldByName('THE_PERIOD').AsInteger;
  SetPeriod(False);
  GetMonthlyBilling;
end;

procedure TMonthlyBillableReportFrm.FormShow(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crDefault;
end;

procedure TMonthlyBillableReportFrm.cbxGetAllPropertiesChange(Sender: TObject);
begin
  inherited;
  FMadeChanges := True;
end;

procedure TMonthlyBillableReportFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
  MonthlyBillableReportFrm.Close;
end;

procedure TMonthlyBillableReportFrm.GetMonthlyBilling;
var
  WhereClause: string;
begin
  if cbxGetAll.Checked then
    WhereClause :=
      ' ORDER BY M.THE_PERIOD'
  else
    WhereClause :=
      ' WHERE M.THE_PERIOD >= ' + FFromPeriod.ToString +
      ' AND M.THE_PERIOD <= ' + FToPeriod.ToString +
      ' ORDER BY M.THE_PERIOD';

  viewMonthlyBilling.DataController.BeginUpdate;

  try
    VBBaseDM.GetData(84, ReportDM.cdsMonthlyBilling, ReportDM.cdsMonthlyBilling.Name, WhereClause,
      'C:\Data\Xml\Monthly Billing.xml', ReportDM.cdsMonthlyBilling.UpdateOptions.Generatorname,
      ReportDM.cdsMonthlyBilling.UpdateOptions.UpdateTableName);
  finally
    viewMonthlyBilling.DataController.EndUpdate;
  end;

  viewMonthlyBilling.ViewData.Expand(True);
end;

procedure TMonthlyBillableReportFrm.GetPeriods;
begin
  ReportDM.cdsToPeriod.Close;

  VBBaseDM.GetData(62, ReportDM.cdsPeriod, ReportDM.cdsPeriod.Name, ONE_SPACE,
    'C:\Data\Xml\Period.xml', ReportDM.cdsPeriod.UpdateOptions.Generatorname,
    ReportDM.cdsPeriod.UpdateOptions.UpdateTableName);

  ReportDM.cdsToPeriod.Data := ReportDM.cdsPeriod.Data;
end;

procedure TMonthlyBillableReportFrm.GetYears;
begin
  VBBaseDM.GetData(85, ReportDM.cdsYear, ReportDM.cdsYear.Name, ONE_SPACE,
    'C:\Data\Xml\Year.xml', ReportDM.cdsYear.UpdateOptions.Generatorname,
    ReportDM.cdsYear.UpdateOptions.UpdateTableName);

  lucFromYear.EditValue := ReportDM.cdsYear.FieldByName('THE_YEAR').AsInteger;
end;

procedure TMonthlyBillableReportFrm.DoExcel(Sender: TObject);
var
  FolderPath, ExportFileName: string;
  FileSaved: Boolean;
//  RepFileName: string;
  CustomerID: Integer;
  ThePeriod: Integer;
begin
  inherited;
  if (ReportDM.cdsMonthlyBilling.IsEmpty) or (FMadeChanges) then
    GetMonthlyBilling;

  if ReportDM.cdsMonthlyBilling.IsEmpty then
    raise ENoDataException.Create('No monthly billing data found. Cannot export data.');

  FolderPath := EXCEL_DOCS;
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

  ThePeriod := ReportDM.cdsMonthlyBilling.FieldByName('THE_PERIOD').AsInteger;
  viewMonthlyBilling.ViewData.Expand(True);
  viewMonthlyBilling.DataController.BeginUpdate;
  grdMonthlyBilling.Visible := False;
  grdMonthlyBilling.Align := alNone;
  grdMonthlyBilling.Font.Name := 'Calibri';
  grdMonthlyBilling.Font.Size := 11;

  try
    ExportFileName := dlgFileSave.FileName;
    // Use this method to export formatted data
    ExportGridToXLSX(
      ExportFileName, // Filename to export
      grdMonthlyBilling, // Grid whose data must be exported
      True, // Expand groups
      True, // Save all records (Selected and un-selected ones)
      True, // Use native format
      'xlsx');

      // Use this method to export un-formatted data
      // Not very professional output.
//    ExportGridDataToXLSX(
//      ExportFileName, // Filename to export
//      grdMonthlyBilling, // Grid whose data must be exported
//      True, // Expand groups
//      True, // Save all records (Selected and un-selected ones)
//      True, // Use native format
//      'xlsx');

    ShellExecute(0, 'open', PChar('Excel.exe'), PChar('"' + ExportFileName + '"'), nil, SW_SHOWNORMAL)
  finally
    grdMonthlyBilling.Font.Name := 'Verdana';
    grdMonthlyBilling.Font.Size := 8;
    grdMonthlyBilling.Align := alClient;
    grdMonthlyBilling.Visible := True;

    if not ReportDM.cdsMonthlyBilling.Locate('THE_PERIOD', ThePeriod, []) then
      ReportDM.cdsMonthlyBilling.First;

    if lucFromPeriod.EditValue <> lucToPeriod.EditValue then
      viewMonthlyBilling.ViewData.Collapse(True);

    viewMonthlyBilling.DataController.EndUpdate;
  end;
end;

procedure TMonthlyBillableReportFrm.DoPDF(Sender: TObject);
var
  FileSaved: Boolean;
  RepFileName: string;
  DC: TcxCustomDataController;
  ThePeriod: Integer;
begin
  inherited;
  if (ReportDM.cdsMonthlyBilling.IsEmpty) or (FMadeChanges) then
    GetMonthlyBilling;

  if ReportDM.cdsMonthlyBilling.IsEmpty then
    raise ENoDataException.Create('No monthly billing data found. Cannot export data.');

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

  ThePeriod := ReportDM.cdsMonthlyBilling.FieldByName('THE_PEIROD').AsInteger;

  if not TFile.Exists(RepFileName) then
    raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

  ReportDM.Report.LoadFromFile(RepFileName);

  DC := viewMonthlyBilling.DataController;
  DC.BeginUpdate;
  try
    ReportDM.frxPDFExport.FileName := dlgFileSave.FileName;
    if ReportDM.Report.PrepareReport(True) then
      ReportDM.Report.Export(ReportDM.frxPDFExport);
  finally
    if not ReportDM.cdsMonthlyBilling.Locate('THE_PERIOD', ThePeriod, []) then
      ReportDM.cdsMonthlyBilling.First;
    DC.EndUpdate;
    FMadeChanges := False;
  end;
end;

procedure TMonthlyBillableReportFrm.DoPrint(Sender: TObject);
var
  RepFileName: string;
begin
  inherited;
  Screen.Cursor := crHourglass;

  if (ReportDM.cdsMonthlyBilling.IsEmpty) or (FMadeChanges) then
    GetMonthlyBilling;

  try
    case TAction(Sender).Tag of
      0, 1: // Previewing or printing
        begin
          ReportDM.Report := ReportDM.rptMonthlyBilling;
          RepFileName := TSDM.ShellResource.ReportFolder + ReportDM.ReportFileName[5];

          if not TFile.Exists(RepFileName) then
            raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

          ReportDM.Report.LoadFromFile(RepFileName);
          case lucSelectBy.ItemIndex of
            0:
              begin
                if lucFromPeriod.EditValue = lucToPeriod.EditValue then

                  TfrxMemoView(ReportDM.Report.FindObject('lblReportTypeName')).Text := 'Billing Summary for: ' +
                    VarToStr(lucFromPeriod.EditValue)
                else
                  TfrxMemoView(ReportDM.Report.FindObject('lblReportTypeName')).Text := 'Billing Summary for: ' +
                    VarToStr(lucFromPeriod.EditValue) + ' to ' + VarToStr(lucToPeriod.EditValue);
              end;

            1: TfrxMemoView(ReportDM.Report.FindObject('lblReportTypeName')).Text :=
              'Billing Summary for: ' + VarToStr(lucFromYear.EditValue);
          end;

          viewMonthlyBilling.DataController.BeginUpdate;
          if ReportDM.Report.PrepareReport then
            if TAction(Sender).Tag = 0 then
              ReportDM.Report.ShowPreparedReport
            else
            begin
              if dlgPrint.Execute then
              begin
                ReportDM.Report.PrintOptions.Copies :=
                  dlgPrint.DialogData.Copies;

                ReportDM.Report.Print;
              end;
            end;
        end;

//      2: // Display data in grid
//        begin
//          GetMonthlyBilling;
//        end;
    end;
  finally
    viewMonthlyBilling.DataController.EndUpdate;
    FMadeChanges := False;
    Screen.Cursor := crDefault;
  end;
end;

procedure TMonthlyBillableReportFrm.lucFromPeriodPropertiesChange(Sender: TObject);
begin
  inherited;
  SetPeriod(False);
  FMadeChanges := True;
end;

procedure TMonthlyBillableReportFrm.lucFromYearPropertiesChange(Sender: TObject);
begin
  inherited;
  SetPeriod(True);
  FMadeChanges := True;
end;

procedure TMonthlyBillableReportFrm.lucSelectByPropertiesChange(Sender: TObject);
begin
  inherited;
  grpPeriod.Visible := lucSelectBy.ItemIndex = 0;
  grpYear.Visible := not grpPeriod.Visible;
  SetPeriod(grpYear.Visible);
end;

procedure TMonthlyBillableReportFrm.SetPeriod(ByYear: Boolean);
begin
  if ByYear then
  begin
    FFromPeriod := ReportDM.cdsYear.FieldByName('THE_YEAR').AsInteger * 100 + 1;
    FToPeriod := ReportDM.cdsYear.FieldByName('THE_YEAR').AsInteger * 100 + 12;
  end
  else
  begin
    FFromPeriod := ReportDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger;
    FToPeriod := ReportDM.cdsToPeriod.FieldByName('THE_PERIOD').AsInteger;
  end;
end;

procedure TMonthlyBillableReportFrm.viewMonthlyBillingCustomDrawGroupSummaryCell(
  Sender: TObject; ACanvas: TcxCanvas; ARow: TcxGridGroupRow;
  AColumn: TcxGridColumn; ASummaryItem: TcxDataSummaryItem;
  AViewInfo: TcxCustomGridViewCellViewInfo; var ADone: Boolean);
begin
  inherited;
  ADone := ARow.Expanded;
end;

end.

