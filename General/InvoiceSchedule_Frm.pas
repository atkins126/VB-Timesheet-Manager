unit InvoiceSchedule_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  BaseLayout_Frm, VBBase_Dm, CommonValues,

  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  dxLayoutControl, dxBar, dxScreenTip, dxCustomHint, cxHint, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxCurrencyEdit, cxCalendar, cxTextEdit,
  cxCheckBox, cxContainer, dxBarExtItems, cxMaskEdit, cxDropDownEdit;

type
  TInvoiceScheduleFrm = class(TBaseLayoutFrm)
    docToolbar: TdxBarDockControl;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    btnClose: TdxBarLargeButton;
    actClose: TAction;
    repScreenTip: TdxScreenTipRepository;
    tipClose: TdxScreenTip;
    tipExpandAll: TdxScreenTip;
    tipCollapseAll: TdxScreenTip;
    styHintController: TcxHintStyleController;
    grdInvoiceList: TcxGrid;
    viewInvoiceList: TcxGridDBBandedTableView;
    lvlInvoiceList: TcxGridLevel;
    litInvoiceList: TdxLayoutItem;
    litToolbar: TdxLayoutItem;
    edtInvID: TcxGridDBBandedColumn;
    edtCustomerID: TcxGridDBBandedColumn;
    edtCustomerTypeID: TcxGridDBBandedColumn;
    edtStatusID: TcxGridDBBandedColumn;
    edtInvoiceDate: TcxGridDBBandedColumn;
    edtCustomerName: TcxGridDBBandedColumn;
    cntFindMode: TdxBarControlContainerItem;
    lucFindMode: TcxComboBox;
    lblFindMode: TdxBarStatic;
    actExpandAll: TAction;
    actCollapseAll: TAction;
    btnExpandAll: TdxBarLargeButton;
    btnCollapseAll: TdxBarLargeButton;
    styCollapsed: TcxStyle;
    edtPriceListItem: TcxGridDBBandedColumn;
    edtActivity: TcxGridDBBandedColumn;
    edtItemValue: TcxGridDBBandedColumn;
    edtActivityType: TcxGridDBBandedColumn;
    procedure DoCloseForm(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure viewInvoiceListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure lucFindModePropertiesChange(Sender: TObject);
    procedure DoExpandCollapse(Sender: TObject);
    procedure edtInvIDGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure viewInvoiceListStylesGetGroupStyle(Sender: TcxGridTableView;
      ARecord: TcxCustomGridRecord; ALevel: Integer; var AStyle: TcxStyle);
    procedure viewInvoiceListStylesGetFooterSummaryStyle(
      AView: TcxGridTableView; ARow: TcxCustomGridRow; AColumn: TcxGridColumn;
      AFooterGroupLevel: Integer; ASummaryItem: TcxDataSummaryItem;
      var AStyle: TcxStyle);
  private
    { Private declarations }
    procedure GetInvoiceList;
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
  public
    { Public declarations }
  end;

var
  InvoiceScheduleFrm: TInvoiceScheduleFrm;

implementation

{$R *.dfm}

uses
  TS_DM,
  RUtils;

procedure TInvoiceScheduleFrm.DoExpandCollapse(Sender: TObject);
begin
  case TAction(Sender).Tag of
    0: viewInvoiceList.ViewData.Expand(True);
    1: viewInvoiceList.ViewData.Collapse(True);
  end;
end;

procedure TInvoiceScheduleFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TInvoiceScheduleFrm.edtInvIDGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if (Sender = edtCustomerName) then
    AText := ''

  else if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := Sender.GridView.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    Sender.GridView.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := 'Inv no:' + ' ' + VarToStr(ARecord.Values[edtInvID.Index])
      + ' (' + VarToStr(Sender.GridView.DataController.DisplayTexts[Integer(AList.Items[0]), edtCustomerName.Index])
    //                         + '  (ID:' + VarToStr(Sender.GridView.DataController.DisplayTexts[Integer(AList.Items[0]), cxGrid1DBTableView1ID.Index])
    + ')';
    AList.Free
  end;
end;

procedure TInvoiceScheduleFrm.FormCreate(Sender: TObject);
begin
  Caption := 'Invoice List';
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  viewInvoiceList.DataController.DataSource := TSDM.dtsInvoiceList;
  viewInvoiceList.OptionsView.GroupByBox := False;
  GetInvoiceList;
  //  viewInvoiceList.ViewData.Expand(True);
  TcxDateEditProperties(edtInvoiceDate.Properties).Buttons.Items[0].Visible := False;

  case lucFindMode.ItemIndex of
    0: viewInvoiceList.FindPanel.Behavior := fcbDefault;
    1: viewInvoiceList.FindPanel.Behavior := fcbSearch;
  end;
end;

procedure TInvoiceScheduleFrm.DoCloseForm(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure TInvoiceScheduleFrm.GetInvoiceList;
var
  OrderByClause, FileName: string;
begin
  OrderByClause := ' ORDER BY T.INVOICE_ID, T.INVOICE_DATE';
  FileName := 'Invoice Shcedule';

  VBBaseDM.GetData(87, TSDM.cdsInvoiceList, TSDM.cdsInvoiceList.Name, OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsInvoiceList.UpdateOptions.Generatorname,
    TSDM.cdsInvoiceList.UpdateOptions.UpdateTableName);
end;

procedure TInvoiceScheduleFrm.lucFindModePropertiesChange(Sender: TObject);
begin
  case lucFindMode.ItemIndex of
    0: viewInvoiceList.FindPanel.Behavior := fcbDefault;
    1: viewInvoiceList.FindPanel.Behavior := fcbSearch;
  end;
end;

procedure TInvoiceScheduleFrm.viewInvoiceListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord = nil then
    Exit;

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

procedure TInvoiceScheduleFrm.viewInvoiceListStylesGetFooterSummaryStyle(
  AView: TcxGridTableView; ARow: TcxCustomGridRow; AColumn: TcxGridColumn;
  AFooterGroupLevel: Integer; ASummaryItem: TcxDataSummaryItem; var AStyle: TcxStyle);
begin
  AStyle := styCollapsed;
end;

procedure TInvoiceScheduleFrm.viewInvoiceListStylesGetGroupStyle(
  Sender: TcxGridTableView; ARecord: TcxCustomGridRecord; ALevel: Integer; var AStyle: TcxStyle);
begin
  if ARecord = nil then
    Exit;

  if ARecord.Expanded then
    AStyle := styCollapsed;
end;

end.

