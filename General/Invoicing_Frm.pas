unit Invoicing_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.Controls, Vcl.Dialogs,

  BaseLayout_Frm, VBBase_Dm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxCurrencyEdit, cxTextEdit, cxCalendar, cxMemo, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, dxBar, cxContainer,
  dxBarExtItems, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxScreenTip, dxCustomHint, cxHint, Vcl.Menus;

type
  TInvoicingFrm = class(TBaseLayoutFrm)
    grdTimesheetInvoicing: TcxGrid;
    viewTimesheetInvoicing: TcxGridDBBandedTableView;
    edtTID: TcxGridDBBandedColumn;
    edtTThePeriod: TcxGridDBBandedColumn;
    edtTLoginName: TcxGridDBBandedColumn;
    edtTActivityDate: TcxGridDBBandedColumn;
    edtTActivtyType: TcxGridDBBandedColumn;
    edtTAActivty: TcxGridDBBandedColumn;
    edtTPriceItem: TcxGridDBBandedColumn;
    edtTTimeSpent: TcxGridDBBandedColumn;
    edtTHours: TcxGridDBBandedColumn;
    edtTRate: TcxGridDBBandedColumn;
    edtTStdRate: TcxGridDBBandedColumn;
    edtTItemValue: TcxGridDBBandedColumn;
    edtTBillable: TcxGridDBBandedColumn;
    edtTBillableStr: TcxGridDBBandedColumn;
    edtTInvoiceNo: TcxGridDBBandedColumn;
    edtTInvDate: TcxGridDBBandedColumn;
    edtTCreditNoteNo: TcxGridDBBandedColumn;
    edtTLocked: TcxGridDBBandedColumn;
    edtTLockedStr: TcxGridDBBandedColumn;
    edtTAddWork: TcxGridDBBandedColumn;
    edtTAddWorkStr: TcxGridDBBandedColumn;
    lvlTimesheetInvoicing: TcxGridLevel;
    litToolbar: TdxLayoutItem;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    btnClose: TdxBarLargeButton;
    btnInvoice: TdxBarLargeButton;
    actClose: TAction;
    actInvoice: TAction;
    lucPeriod: TcxLookupComboBox;
    cntPeriod: TdxBarControlContainerItem;
    lblSpace01: TdxBarStatic;
    lblPeriod: TdxBarStatic;
    litGrid: TdxLayoutItem;
    docToolbar: TdxBarDockControl;
    repScreenTip: TdxScreenTipRepository;
    tipClose: TdxScreenTip;
    tipPreview: TdxScreenTip;
    tipPrint: TdxScreenTip;
    tipPDF: TdxScreenTip;
    tipExcel: TdxScreenTip;
    tipRefresh: TdxScreenTip;
    tipInvoice: TdxScreenTip;
    styHintController: TcxHintStyleController;
    grdCustomer: TcxGrid;
    viewCustomer: TcxGridDBBandedTableView;
    lvlCustomer: TcxGridLevel;
    litCustomerGrid: TdxLayoutItem;
    edtCID: TcxGridDBBandedColumn;
    edtCCustomerTypeID: TcxGridDBBandedColumn;
    edtCstatusID: TcxGridDBBandedColumn;
    edtCCGID: TcxGridDBBandedColumn;
    edtCName: TcxGridDBBandedColumn;
    edtCType: TcxGridDBBandedColumn;
    edtCStatus: TcxGridDBBandedColumn;
    cbxIsActive: TcxGridDBBandedColumn;
    edtCGroupLinkName: TcxGridDBBandedColumn;
    popInvoice: TPopupMenu;
    Invoice1: TMenuItem;
    Close1: TMenuItem;
    procedure DoCloseForm(Sender: TObject);
    procedure DoInvoice(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure viewCustomerCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
    procedure GetTimesheeCustomer;
    procedure GetTimesheetData;
  public
    { Public declarations }
  end;

var
  InvoicingFrm: TInvoicingFrm;

implementation

{$R *.dfm}

uses
  TS_DM, InvoiceItem_Frm, RUtils;

procedure TInvoicingFrm.DoInvoice(Sender: TObject);
var
  DC: TcxDBDataController;
  C: TcxCustomGridTableController;
  I, RecIndex: Integer;
  IDList, SQLCommand: string;
  Response: TStringList;
begin
  C := viewTimesheetInvoicing.Controller;

  if C.SelectedRecordCount = 0 then
    raise ESelectionException.Create('No timesheet items selected. Please select at least one item.');

  if InvoiceItemFrm = nil then
    InvoiceItemFrm := TInvoiceItemFrm.Create(nil);

  try
    if InvoiceItemFrm.ShowModal = mrOK then
    begin
      InvoiceItemFrm.Close;
      FreeAndNil(InvoiceItemFrm);

      Response := RUtils.CreateStringList(PIPE, DOUBLE_QUOTE);
      DC := viewTimesheetInvoicing.DataController;
      SQLCommand := '';
      IDList := '';

      for I := 0 to C.SelectedRecordCount - 1 do
      begin
        RecIndex := C.SelectedRecords[I].RecordIndex;
        //      DC.FocusedRecordIndex := RecIndex;

        IDList := IDList + VarToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtTID.Index]);
        if I < C.SelectedRecordCount - 1 then
          IDList := IDList + ',';
      end;

      SQLCommand :=
        'UPDATE TIMESHEET SET ' +
        ' INVOICE_ID = ' + TSDM.InvoiceNo.ToString + ',' +
        ' INVOICE_DATE = ' + AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', TSDM.DefaultInvoiceDate), '''') + ' ' +
        'WHERE ' +
        ' ID IN (' + IDList + ')';

      Response.DelimitedText := VBBaseDM.ExecuteSQLCommand(SQLCommand);
      if SameText(Response.Values['RESPONSE'], 'ERROR') then
        raise EServerError.Create('One or more errors occurred when posting data to the database with message;' + CRLF + CRLF +
          Response.Values['ERROR_MESSAGE']);

      C.DeleteSelection;
    end;
  finally
    Response.Free;

    if Assigned(InvoiceItemFrm) then
    begin
      InvoiceItemFrm.Close;
      FreeAndNil(InvoiceItemFrm);
    end;
  end;
end;

procedure TInvoicingFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TInvoicingFrm.FormCreate(Sender: TObject);
begin
  Caption := 'Customer Invoicing';
  layMain.Align := alClient;
  layMain.LookAndFeel := lafCustomSkin;
  viewCustomer.DataController.DataSource := TSDM.dtsTSCustomer;
  viewTimesheetInvoicing.DataController.DataSource := TSDM.dtsTSInvoicing;
  GetTimesheeCustomer;
  GetTimesheetData;
end;

procedure TInvoicingFrm.FormShow(Sender: TObject);
begin
  Screen.Cursor := crDefault;
end;

procedure TInvoicingFrm.DoCloseForm(Sender: TObject);
begin
  Self.ModalResult := mrOK;
end;

procedure TInvoicingFrm.GetTimesheeCustomer;
var
  WhereClause, OrderByClause, FileName: string;
begin
  FileName := 'Timesheet Customer';
  OrderByClause := 'ORDER BY C."NAME"';

  VBBaseDM.GetData(41, TSDM.cdsTSCustomer, TSDM.cdsTSCustomer.Name, OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsTSCustomer.UpdateOptions.Generatorname,
    TSDM.cdsTSCustomer.UpdateOptions.UpdateTableName);
end;

procedure TInvoicingFrm.GetTimesheetData;
var
  WhereClause, OrderByClause, FileName: string;
  // ActivityClause, BillableClause, WorkTypeClause, FileName: string;
begin
  //  WhereClause :=
  //    ' WHERE T.THE_PERIOD = ' + IntToStr(VarAsType(lucPeriod.EditValue, varInteger)) +
  //    ' AND (T.INVOICE_ID <= 0 ' +
  //    ' OR T.INVOICE_DATE IS NULL) ' +
  //    ' AND T.APPROVED = 1 ' +
  //    ' AND T.CARRY_FORWARD = 0 ' +
  //    ' AND T.BILLABLE = 1';

  WhereClause :=
    ' AND ' +
    ' (T.INVOICE_ID <= 0 ' +
    ' OR T.INVOICE_DATE IS NULL) ' +
    ' AND T.APPROVED = 1 ' +
    ' AND T.CARRY_FORWARD = 0 ' +
    ' AND T.BILLABLE = 1';

  OrderByClause := ' ORDER BY T.CUSTOMER_NAME, T.ACTIVITY_DATE';
  FileName := 'Timesheet for Invoicing';
  WhereClause := WhereClause + OrderByClause;

  VBBaseDM.GetData(45, TSDM.cdsTSInvoicing, TSDM.cdsTSInvoicing.Name, WhereClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsTSInvoicing.UpdateOptions.Generatorname,
    TSDM.cdsTSInvoicing.UpdateOptions.UpdateTableName);
end;

procedure TInvoicingFrm.viewCustomerCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
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

end.

