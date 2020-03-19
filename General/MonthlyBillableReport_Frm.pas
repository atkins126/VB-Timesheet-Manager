unit MonthlyBillableReport_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList,

  frxClass,

  BaseLayout_Frm, VBCommonValues, Base_DM, CommonFunctions, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxBar, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCurrencyEdit, dxPrnDev, dxPrnDlg;

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
    lucYear: TcxLookupComboBox;
    litYear: TdxLayoutItem;
    dlgFileSave: TSaveDialog;
    dlgPrint: TdxPrintDialog;
    procedure DoCloseForm(Sender: TObject);
    procedure DoPrint(Sender: TObject);
    procedure DoExcel(Sender: TObject);
    procedure DoPDF(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lucSelectByPropertiesChange(Sender: TObject);
    procedure lucYearPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FFromPeriod: Integer;
    FToPeriod: Integer;

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
//  TS_DM,
//  RUtils,
  Report_DM;
//  Progress_Frm;

procedure TMonthlyBillableReportFrm.FormCreate(Sender: TObject);
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
  lucYear.Properties.ListSource := ReportDM.dtsYear;
  viewMonthlyBilling.DataController.DataSource := ReportDM.dtsMonthlyBilling;
  lucSelectBy.ItemIndex := 0;

  GetPeriods;
  GetYears;

//  if not ReportDM.cdsPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
  ReportDM.cdsPeriod.First;
  lucFromPeriod.EditValue := ReportDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger;
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

procedure TMonthlyBillableReportFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
  MonthlyBillableReportFrm.Close;
end;

procedure TMonthlyBillableReportFrm.GetMonthlyBilling;
var
  WhereClause: string;
begin
  WhereClause := ' WHERE M.THE_PERIOD >= ' + FFromPeriod.ToString +
    ' AND M.THE_PERIOD <= ' + FToPeriod.ToString +
    ' ORDER BY M.THE_PERIOD';

  VBBaseDM.GetData(84, ReportDM.cdsMonthlyBilling, ReportDM.cdsMonthlyBilling.Name, WhereClause,
    'C:\Data\Xml\Monthly Billing.xml', ReportDM.cdsMonthlyBilling.UpdateOptions.Generatorname,
    ReportDM.cdsMonthlyBilling.UpdateOptions.UpdateTableName);

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

  lucYear.EditValue := ReportDM.cdsYear.FieldByName('THE_YEAR').AsInteger;
end;

procedure TMonthlyBillableReportFrm.DoExcel(Sender: TObject);
begin
  inherited;
//
end;

procedure TMonthlyBillableReportFrm.DoPDF(Sender: TObject);
begin
  inherited;
//
end;

procedure TMonthlyBillableReportFrm.DoPrint(Sender: TObject);
var
  RepFileName: string;
begin
  inherited;
  try
    Screen.Cursor := crHourglass;

//    case lucBillCfComparison.ItemIndex of
//      0:
//        begin
//          GetTimesheetDetail;
//          RepFileName := TSDM.ShellResource.ReportFolder + FReportFileName[grpData.ItemIndex];
//
//          if not TFile.Exists(RepFileName) then
//            raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');
//
//          ReportDM.FReport.LoadFromFile(TSDM.ShellResource.ReportFolder + FReportFileName[3]);
//        end;
//
//      1:
//        begin
//          GetBillCfwd;
//
//          case TAction(Sender).Tag of
//            0, 1: // Previewing or printing
//              begin
//                case lucReportType.ItemIndex of
//                  0: RepFileName := TSDM.ShellResource.ReportFolder + FReportFileName[3];
//                  1: RepFileName := TSDM.ShellResource.ReportFolder + FReportFileName[4];
//                end;
//
//                if not TFile.Exists(RepFileName) then
//                  raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');
//
//                ReportDM.FReport.LoadFromFile(TSDM.ShellResource.ReportFolder + FReportFileName[4]);
//              end;
//          end;
//        end;
//    end;

    case TAction(Sender).Tag of
      0, 1: // Previewing or printing
        begin
          if ReportDM.FReport.PrepareReport then
            if TAction(Sender).Tag = 0 then
              ReportDM.FReport.ShowPreparedReport
            else
            begin
              if dlgPrint.Execute then
              begin
                ReportDM.FReport.PrintOptions.Copies :=
                  dlgPrint.DialogData.Copies;

                ReportDM.FReport.Print;
              end;
            end;
        end;

      2: // Display data in grid
        begin
          GetMonthlyBilling;
        end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMonthlyBillableReportFrm.lucSelectByPropertiesChange(Sender: TObject);
begin
  inherited;
  grpPeriod.Visible := lucSelectBy.ItemIndex = 0;
  grpYear.Visible := not grpPeriod.Visible;
end;

procedure TMonthlyBillableReportFrm.lucYearPropertiesChange(Sender: TObject);
begin
  inherited;
  SetPeriod(True);
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

end.

