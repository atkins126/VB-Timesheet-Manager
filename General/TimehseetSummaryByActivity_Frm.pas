unit TimehseetSummaryByActivity_Frm;

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
  TTimehseetSummaryByActivityFrm = class(TBaseLayoutFrm)
    docToolbar: TdxBarDockControl;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    btnClose: TdxBarLargeButton;
    btnGetData: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnPDF: TdxBarLargeButton;
    btnPreview: TdxBarLargeButton;
    btnPrint: TdxBarLargeButton;
    lucFromPeriod: TcxBarEditItem;
    lucToPeriod: TcxBarEditItem;
    lucGroupBy: TcxBarEditItem;
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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimehseetSummaryByActivityFrm: TTimehseetSummaryByActivityFrm;

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

procedure TTimehseetSummaryByActivityFrm.FormCreate(Sender: TObject);
begin
  inherited;
Caption :=  'Timesheet Summary by Activity';
end;

end.

