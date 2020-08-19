unit DirectorOfCompany_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList,
  Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList,

  BaseLayout_Frm, VBBase_Dm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid,
  cxCurrencyEdit, cxTextEdit, dxBar, dxScreenTip, dxCustomHint, cxHint;

type
  TDirectorOfCompanyFrm = class(TBaseLayoutFrm)
    grdDirector: TcxGrid;
    lvlDirector: TcxGridLevel;
    viewDirector: TcxGridDBBandedTableView;
    edtID: TcxGridDBBandedColumn;
    edtCcustomerID: TcxGridDBBandedColumn;
    edtSalutationID: TcxGridDBBandedColumn;
    edtFirstName: TcxGridDBBandedColumn;
    edtLastName: TcxGridDBBandedColumn;
    edtMiddleName: TcxGridDBBandedColumn;
    edtTaxNo: TcxGridDBBandedColumn;
    edtMobileNo: TcxGridDBBandedColumn;
    edtEmailAddress: TcxGridDBBandedColumn;
    edtIDNo: TcxGridDBBandedColumn;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    litToolbar: TdxLayoutItem;
    litDrectorGrid: TdxLayoutItem;
    litCustomerGrid: TdxLayoutItem;
    docToolbar: TdxBarDockControl;
    btnClose: TdxBarLargeButton;
    actClose: TAction;
    grdCompany: TcxGrid;
    viewCompany: TcxGridDBBandedTableView;
    lvlCompany: TcxGridLevel;
    edtDID: TcxGridDBBandedColumn;
    edtDDirectorID: TcxGridDBBandedColumn;
    edtDCustomerID: TcxGridDBBandedColumn;
    edtDCompany: TcxGridDBBandedColumn;
    styGridBand: TcxStyle;
    grpCompany: TdxLayoutGroup;
    litCompanyToolbar: TdxLayoutItem;
    docCompanyToolbar: TdxBarDockControl;
    barCompanyToolbar: TdxBar;
    btnAddCompany: TdxBarLargeButton;
    btnRemovCompany: TdxBarLargeButton;
    actAddCompany: TAction;
    actRemoveCompany: TAction;
    btnAddDirector: TdxBarLargeButton;
    btnRemoveDirector: TdxBarLargeButton;
    actAddDirector: TAction;
    actRemoveDirector: TAction;
    actRefresh: TAction;
    btnRefresh: TdxBarLargeButton;
    repScreenTip: TdxScreenTipRepository;
    tipClose: TdxScreenTip;
    styHintController: TcxHintStyleController;
    tipRefresh: TdxScreenTip;
    tipAddDirector: TdxScreenTip;
    tipRemoveDirector: TdxScreenTip;
    AddCompany: TdxScreenTip;
    tipRemoveCompany: TdxScreenTip;
    actEditDirector: TAction;
    actEditCompany: TAction;
    btnEditDirector: TdxBarLargeButton;
    btnEditCompany: TdxBarLargeButton;
    tipEditDirector: TdxScreenTip;
    tipEditCompany: TdxScreenTip;
    btnSynchroniseDirector: TdxBarLargeButton;
    tipSynchroniseDirector: TdxScreenTip;
    actSnchroniseDirector: TAction;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure viewDirectorCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure DoAddCompany(Sender: TObject);
    procedure DoRemoveCompany(Sender: TObject);
    procedure DoAddDirector(Sender: TObject);
    procedure DoRemoveDirector(Sender: TObject);
    procedure DoRefreshData(Sender: TObject);
    procedure viewDirectorFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure viewCompanyFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure DoSynchroniseDirector(Sender: TObject);
  private
    { Private declarations }
    procedure GetDirector;
    procedure GetCustomerDirectorLink;
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
  public
    { Public declarations }
  end;

var
  DirectorOfCompanyFrm: TDirectorOfCompanyFrm;

implementation

{$R *.dfm}

uses
  TS_DM,
  DirectorDetail_Frm;

procedure TDirectorOfCompanyFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TDirectorOfCompanyFrm.FormCreate(Sender: TObject);
begin
  Caption := 'Director Listing';
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  styGridBand.Font.Color := RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  styGridBand.TextColor := RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  viewDirector.DataController.DataSource := TSDM.dtsDirector;
  viewCompany.DataController.DataSource := TSDM.dtsDirectorOfCompany;
  GetDirector;
  GetCustomerDirectorLink;
end;

procedure TDirectorOfCompanyFrm.FormShow(Sender: TObject);
begin
  Screen.Cursor := crDefault;
end;

procedure TDirectorOfCompanyFrm.DoAddCompany(Sender: TObject);
begin
//
end;

procedure TDirectorOfCompanyFrm.DoAddDirector(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  case TAction(Sender).Tag of
    0: VBBaseDM.DBAction := acInsert;
    1: VBBaseDM.DBAction := acEdit;
  end;

  try
    if DirectorDetailFrm = nil then
      DirectorDetailFrm := TDirectorDetailFrm.Create(nil);

    if DirectorDetailFrm.ShowModal = mrCancel then
      Exit;

    case VBBaseDM.DBAction of
      acInsert: TSDM.cdsDirector.Insert;
      acEdit: TSDM.cdsDirector.Edit;
    end;

    TSDM.cdsDirector.FieldByName('FIRST_NAME').AsString := TSDM.FieldValue.FirstName;
    TSDM.cdsDirector.FieldByName('LAST_NAME').AsString := TSDM.FieldValue.LastName;
    TSDM.cdsDirector.FieldByName('OTHER_NAME').AsString := TSDM.FieldValue.OtherName;
    TSDM.cdsDirector.FieldByName('EMAIL_ADDRESS').AsString := TSDM.FieldValue.EmailAddress;
    TSDM.cdsDirector.FieldByName('SALUTATION_ID').AsInteger := TSDM.FieldValue.SalutationID;
    TSDM.cdsDirector.FieldByName('TAX_NO').AsString := TSDM.FieldValue.TaxNo;
    TSDM.cdsDirector.FieldByName('MOBILE_PHONE').AsString := TSDM.FieldValue.MobileNo;
    TSDM.cdsDirector.Post;

//        TSDM.ValueArray[0] := 'First Name:' + TAB + TSDM.FFieldValue.FirstName;
//        TSDM.ValueArray[1] := 'Last Name:' + TAB + TSDM.FFieldValue.LastName;
////        TSDM.ValueArray[2] := 'Salutation:' + TAB + TSDM.FFieldValue.Salutation;
//        ErrorValues := Format(ERROR_VALUES, [
//          TSDM.ValueArray[0] + CRLF +
//            TSDM.ValueArray[1]]);
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TDirectorOfCompanyFrm.DoCloseForm(Sender: TObject);
begin
  Self.ModalResult := mrOK;
end;

procedure TDirectorOfCompanyFrm.DoRefreshData(Sender: TObject);
begin
//
end;

procedure TDirectorOfCompanyFrm.DoRemoveCompany(Sender: TObject);
begin
//
end;

procedure TDirectorOfCompanyFrm.DoRemoveDirector(Sender: TObject);
begin
//
end;

procedure TDirectorOfCompanyFrm.DoSynchroniseDirector(Sender: TObject);
begin
//
end;

procedure TDirectorOfCompanyFrm.GetDirector;
var
  OrderByClause, FileName: string;
begin
  OrderByClause := ' ORDER BY D.FIRST_NAME, D.LAST_NAME';
  FileName := 'Director';

  VBBaseDM.GetData(16, TSDM.cdsDirector, TSDM.cdsDirector.Name, OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsDirector.UpdateOptions.Generatorname,
    TSDM.cdsInvoiceList.UpdateOptions.UpdateTableName);
end;

procedure TDirectorOfCompanyFrm.viewDirectorCustomDrawCell(
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

procedure TDirectorOfCompanyFrm.viewDirectorFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  tipRemoveDirector.Description.Text := 'Remove director: ' +
    TSDM.cdsDirector.FieldByName('FIRST_NAME').AsString + ' ' +
    TSDM.cdsDirector.FieldByName('LAST_NAME').AsString + ' from director listing';
end;

procedure TDirectorOfCompanyFrm.viewCompanyFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  tipRemoveCompany.Description.Text := 'Remove selected company: ' +
    TSDM.cdsDirectorOfCompany.FieldByName('COMPANY').AsString + ' from company listing';
end;

procedure TDirectorOfCompanyFrm.GetCustomerDirectorLink;
var
  OrderByClause, FileName: string;
begin
  OrderByClause := ' ORDER BY D.ID, D.COMPANY';
  FileName := 'Director of Company';

  VBBaseDM.GetData(88, TSDM.cdsDirectorOfCompany, TSDM.cdsDirectorOfCompany.Name, OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsDirectorOfCompany.UpdateOptions.Generatorname,
    TSDM.cdsInvoiceList.UpdateOptions.UpdateTableName);
end;

end.



