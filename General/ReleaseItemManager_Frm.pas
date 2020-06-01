unit ReleaseItemManager_Frm;

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
  TReleaseItemManagerFrm = class(TBaseLayoutFrm)
    grdTimesheetRelease: TcxGrid;
    viewTimesheetRelease: TcxGridDBBandedTableView;
    edtRID: TcxGridDBBandedColumn;
    edtRTFirstName: TcxGridDBBandedColumn;
    edtRTLastName: TcxGridDBBandedColumn;
    edtRTThePeriod: TcxGridDBBandedColumn;
    edtRTPeriodName: TcxGridDBBandedColumn;
    edtRLoginName: TcxGridDBBandedColumn;
    edtRActivityDate: TcxGridDBBandedColumn;
    edtRCustomerType: TcxGridDBBandedColumn;
    edtRCustomerName: TcxGridDBBandedColumn;
    edtRActivtyType: TcxGridDBBandedColumn;
    edtRAActivty: TcxGridDBBandedColumn;
    edtRPriceItem: TcxGridDBBandedColumn;
    edtRTimeSpent: TcxGridDBBandedColumn;
    edtRHours: TcxGridDBBandedColumn;
    edtRRate: TcxGridDBBandedColumn;
    edtRStdRate: TcxGridDBBandedColumn;
    edtRAbbreviation: TcxGridDBBandedColumn;
    edtRItemValue: TcxGridDBBandedColumn;
    edtRCFwdValue: TcxGridDBBandedColumn;
    edtRBillable: TcxGridDBBandedColumn;
    edtRBillableStr: TcxGridDBBandedColumn;
    edtRInvoiceNo: TcxGridDBBandedColumn;
    edtRInvDate: TcxGridDBBandedColumn;
    edtRCreditNoteNo: TcxGridDBBandedColumn;
    edtRLocked: TcxGridDBBandedColumn;
    edtRLockedStr: TcxGridDBBandedColumn;
    edtRCFwd: TcxGridDBBandedColumn;
    edtRCFwdStr: TcxGridDBBandedColumn;
    edtRAddWork: TcxGridDBBandedColumn;
    edtRAddWorkStr: TcxGridDBBandedColumn;
    lvlTimesheetRelease: TcxGridLevel;
    docToolbar: TdxBarDockControl;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    btnClose: TdxBarLargeButton;
    btnToScreen: TdxBarLargeButton;
    btnRelease: TdxBarLargeButton;
    btnOptions: TdxBarLargeButton;
    cntPeriod: TdxBarControlContainerItem;
    cntReleasePeriod: TdxBarControlContainerItem;
    lblPeriod: TdxBarStatic;
    lblReleasePeriod: TdxBarStatic;
    lblSpace01: TdxBarStatic;
    cntPersistentSelection: TdxBarControlContainerItem;
    lblSpace02: TdxBarStatic;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FShowingForm: Boolean;
  public
    { Public declarations }
  end;

var
  ReleaseItemManagerFrm: TReleaseItemManagerFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  TS_DM,
  RUtils,
  Report_DM,
  TimesheetOptions_Frm;
//  Progress_Frm;

procedure TReleaseItemManagerFrm.FormCreate(Sender: TObject);
var
  RegKey: TRegistry;
begin
  Caption := 'Carry forward manager';
  FShowingForm := True;
//  FItemsRelease := False;
  viewTimesheet.DataController.DataSource := TSDM.dtsRelease;
  lucPeriod.Properties.ListSource := TSDM.dtsPeriod;
  lucReleasePeriod.Properties.ListSource := TSDM.dtsReleaseToPeriod;
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  DoMyMouseWheel(lucPeriod, False);
  cbxPersistentSelection.EditValue := TSDM.TimesheetOption.PersitentRecordSelection;

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

end.
