unit ReleaseCFwd_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.Actions, Vcl.ActnList, Vcl.Controls,
  Vcl.Dialogs, System.ImageList, Vcl.ImgList, Data.DB,

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
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TReleaseCFwdFrm = class(TBaseLayoutFrm)
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
    actToScreen: TAction;
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
    procedure FormCreate(Sender: TObject);
    procedure cbxAllPeriodsPropertiesChange(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure DoGetTimesheetData(Sender: TObject);
    procedure viewTimesheetCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure edtTThePeriodGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cbxReleaseToCurrentPeriodPropertiesChange(Sender: TObject);
    procedure lucFromPeriodPropertiesInitPopup(Sender: TObject);
    procedure lucReleaseToPeriodPropertiesInitPopup(Sender: TObject);
    procedure btnExpandAllClick(Sender: TObject);
    procedure btnCollapseAllClick(Sender: TObject);
    procedure viewTimesheetStylesGetGroupStyle(Sender: TcxGridTableView;
      ARecord: TcxCustomGridRecord; ALevel: Integer; var AStyle: TcxStyle);
  private
    { Private declarations }
    procedure GetPeriods;
    procedure GetTimesheetData;
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
  public
    { Public declarations }
  end;

var
  ReleaseCFwdFrm: TReleaseCFwdFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  TS_DM,
//  RUtils,
  Report_DM;
//  Progress_Frm;

procedure TReleaseCFwdFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TReleaseCFwdFrm.edtTThePeriodGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if ARecord is TcxGridGroupRow then
    AText := TcxGridGroupRow(ARecord).Value;
end;

procedure TReleaseCFwdFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Carry forward release manager';
  viewTimesheet.DataController.DataSource := TSDM.dtsReleaseCFwd;
  lucFromPeriod.Properties.ListSource := TSDM.dtsPeriod;
  lucToPeriod.Properties.ListSource := TSDM.dtsToPeriod;
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  cbxAllPeriods.Checked := True;
  cbxReleaseToCurrentPeriod.Checked := True;

  if ReportDM = nil then
    ReportDM := TReportDM.Create(nil);

  GetPeriods;
  actToScreen.Execute;
end;

procedure TReleaseCFwdFrm.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
  Screen.Cursor := crDefault;
end;

procedure TReleaseCFwdFrm.cbxReleaseToCurrentPeriodPropertiesChange(Sender: TObject);
begin
  inherited;
  lucReleaseToPeriod.Properties.ReadOnly := cbxReleaseToCurrentPeriod.Checked;
  TcxCustomEditProperties(lucReleaseToPeriod.Properties).Buttons.Items[0].Visible :=
    not cbxReleaseToCurrentPeriod.Checked;

  if cbxReleaseToCurrentPeriod.Checked then
    lucReleaseToPeriod.Style.StyleController := styReadOnly
  else
    lucReleaseToPeriod.Style.StyleController := nil;
end;

procedure TReleaseCFwdFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOK;
end;

procedure TReleaseCFwdFrm.btnExpandAllClick(Sender: TObject);
begin
  inherited;
  viewTimesheet.ViewData.Expand(True);
end;

procedure TReleaseCFwdFrm.btnCollapseAllClick(Sender: TObject);
begin
  inherited;
  viewTimesheet.ViewData.Collapse(True);
end;

procedure TReleaseCFwdFrm.cbxAllPeriodsPropertiesChange(Sender: TObject);
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

procedure TReleaseCFwdFrm.DoGetTimesheetData(Sender: TObject);
begin
  inherited;
  GetTimesheetData;
  viewTimesheet.ViewData.Expand(True);
end;

procedure TReleaseCFwdFrm.GetPeriods;
begin
  TSDM.cdsToPeriod.Close;
  TSDM.cdsReleaseToPeriod.Close;

  VBBaseDM.GetData(62, TSDM.cdsPeriod, TSDM.cdsPeriod.Name, ONE_SPACE,
    'C:\Data\Xml\Period.xml', TSDM.cdsPeriod.UpdateOptions.Generatorname,
    TSDM.cdsPeriod.UpdateOptions.UpdateTableName);

  TSDM.cdsToPeriod.Data := TSDM.cdsPeriod.Data;
  TSDM.cdsReleaseToPeriod.Data := TSDM.cdsPeriod.Data;

//  if not TSDM.cdsPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
  TSDM.cdsPeriod.First;

//  if not TSDM.cdsToPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
  TSDM.cdsToPeriod.First;
  TSDM.cdsReleaseToPeriod.First;

  lucFromPeriod.EditValue := TSDM.cdsPeriod.FieldByName('THE_PERIOD').Asinteger;
  lucToPeriod.EditValue := TSDM.cdsToPeriod.FieldByName('THE_PERIOD').Asinteger;
  lucReleaseToPeriod.EditValue := VBBaseDM.CurrentPeriod;
end;

procedure TReleaseCFwdFrm.GetTimesheetData;
var
  WhereClause, OrderByClause, FileName, DateClause: string;
//  ActivityClause, BillableClause, WorkTypeClause, FileName: string;
begin
  WhereClause := ' WHERE T.CARRY_FORWARD = 1 ';
  if cbxAllPeriods.Checked then
    DateClause := ''
  else
    DateClause := 'AND T.THE_PERIOD >= ' + IntToStr(TSDM.cdsPeriod.FieldByName('THE_PERIOD').AsInteger) +
      ' AND T.THE_PEIROD <= ' + IntToStr(TSDM.cdstOPeriod.FieldByName('THE_PERIOD').AsInteger);

  OrderByClause := ' ORDER BY T.THE_PERIOD, T.CUSTOMER_NAME';
  FileName := 'Carry Forward Items';
  WhereClause := WhereClause + DateClause + OrderByClause;

  VBBaseDM.GetData(45, TSDM.cdsReleaseCFwd, TSDM.cdsReleaseCFwd.Name, WhereClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsReleaseCFwd.UpdateOptions.Generatorname,
    TSDM.cdsReleaseCFwd.UpdateOptions.UpdateTableName);

//  ReportDM.Report := ReportDM.rptTimesheetDetail;

end;

procedure TReleaseCFwdFrm.lucFromPeriodPropertiesInitPopup(Sender: TObject);
begin
  inherited;
  if cbxAllPeriods.Checked then
    Abort;
end;

procedure TReleaseCFwdFrm.lucReleaseToPeriodPropertiesInitPopup(Sender: TObject);
begin
  inherited;
  if cbxReleaseToCurrentPeriod.Checked then
    Abort;
end;

procedure TReleaseCFwdFrm.viewTimesheetCustomDrawCell(
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

procedure TReleaseCFwdFrm.viewTimesheetStylesGetGroupStyle(
  Sender: TcxGridTableView; ARecord: TcxCustomGridRecord; ALevel: Integer;  var AStyle: TcxStyle);
begin
  inherited;
  if ARecord is TcxGridGroupRow then
    AStyle :=  styGroupFormat;
end;

end.

