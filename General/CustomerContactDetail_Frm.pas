unit CustomerContactDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, Data.DB,

  VBBase_DM, BaseLayout_Frm, VBCommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter, cxData, cxDBData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxCurrencyEdit, cxDBLookupComboBox, cxTextEdit, dxBar, cxGridLevel, cxGrid,
  cxGridInplaceEditForm, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, dxScreenTip,
  dxCustomHint, cxHint, cxCheckBox, dxLayoutcxEditAdapters, cxContainer;

type
  TCustomerContactDetailFrm = class(TBaseLayoutFrm)
    grdContactDetailCo: TcxGrid;
    viewContactDetailCo: TcxGridDBBandedTableView;
    edtCDID: TcxGridDBBandedColumn;
    lucCDContactTypeID: TcxGridDBBandedColumn;
    edtCDCusotmerID: TcxGridDBBandedColumn;
    edtCDContactPersonID: TcxGridDBBandedColumn;
    edtCDValue: TcxGridDBBandedColumn;
    viewContactDetailCoRootGroup: TcxGridInplaceEditFormGroup;
    lvlContactDetailCo: TcxGridLevel;
    litToolbar: TdxLayoutItem;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    docToolbar: TdxBarDockControl;
    btnClose: TdxBarLargeButton;
    btnEmail: TdxBarLargeButton;
    litGrid: TdxLayoutItem;
    actClose: TAction;
    actEmail: TAction;
    repScreenTip: TdxScreenTipRepository;
    tipClose: TdxScreenTip;
    tipEmail: TdxScreenTip;
    styHintController: TcxHintStyleController;
    edtContactDetailCoID: TcxGridDBBandedColumn;
    edtContactTypeID: TcxGridDBBandedColumn;
    edtFirstName: TcxGridDBBandedColumn;
    edtLastName: TcxGridDBBandedColumn;
    cbxIsPrimaryContact: TcxGridDBBandedColumn;
    litPrimaryContact: TdxLayoutItem;
    edtPrimaryContact: TcxTextEdit;
    styReadOnly: TcxEditStyleController;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure viewContactDetailCoFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure DoEmail(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure HandleCaption(var MyMsg: TMessage); message WM_DOWNLOAD_CAPTION;
    procedure HandleContactType(var MyMsg: TMessage); message WM_CONTACT_TYPE;
  public
    { Public declarations }
  end;

var
  CustomerContactDetailFrm: TCustomerContactDetailFrm;

implementation

{$R *.dfm}

uses TS_DM;

procedure TCustomerContactDetailFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
  Self.Hide;
//  Self.Close;
end;

procedure TCustomerContactDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
  layMain.Align := alClient;
  layMain.LookAndFeel := lafCustomSkin;
  Self.Height := 300;
  Self.Width := 420;
  Self.Top := 50;
  Self.Left := Screen.Width - Self.Width - 100;
  viewContactDetailCo.DataController.DataSource := TSDM.dtsContactDetailCo;

//  VBBaseDM.GetData(54, TSDM.cdsContactDetailCo, TSDM.cdsContactDetailCo.Name, ' ORDER BY O.CUSTOMER_ID',
//    'C:\Data\Xml\View Contact Detail Co.xml', TSDM.cdsContactDetailCo.UpdateOptions.Generatorname,
//    TSDM.cdsContactDetailCo.UpdateOptions.UpdateTableName);
end;

procedure TCustomerContactDetailFrm.FormShow(Sender: TObject);
begin
  inherited;
  grdContactDetailCo.SetFocus;
  viewContactDetailCo.Focused := True;
  viewContactDetailCo.DataController.FocusedRecordIndex := 0;
  viewContactDetailCo.Controller.FocusedRecord.Selected := True;
  viewContactDetailCo.Controller.FocusedItem := lucCDContactTypeID;
  viewContactDetailCo.Controller.MakeFocusedItemVisible;
  actEmail.Enabled := (edtContactTypeID.EditValue = 3)
    and (viewContactDetailCo.DataController.RecordCount > 0);
end;

procedure TCustomerContactDetailFrm.DoEmail(Sender: TObject);
begin
  inherited;
//
end;

procedure TCustomerContactDetailFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//  Action := caFree;
//  CustomerContactDetailFrm := nil;
end;

procedure TCustomerContactDetailFrm.viewContactDetailCoFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if AFocusedRecord <> nil then
    actEmail.Enabled := (edtContactTypeID.EditValue = 3)
      and (viewContactDetailCo.DataController.RecordCount > 0);
end;

procedure TCustomerContactDetailFrm.HandleCaption(var MyMsg: TMessage);
begin
  try
    Caption := 'Contact details for: ' + PChar(MyMsg.WParam);
    viewContactDetailCo.Bands[0].Caption := 'Contact details for: ' + PChar(MyMsg.WParam);
    edtPrimaryContact.Text :=
      TSDM.cdsContactDetailCo.FieldByName('FIRST_NAME').AsString + ' ' +
      TSDM.cdsContactDetailCo.FieldByName('LAST_NAME').AsString;
    Update;
  finally
    MyMsg.Result := 1;
  end;
end;

procedure TCustomerContactDetailFrm.HandleContactType(var MyMsg: TMessage);
begin
  try
    actEmail.Enabled := (edtContactTypeID.EditValue = 3)
      and (viewContactDetailCo.DataController.RecordCount > 0);
  finally
    MyMsg.Result := 1;
  end;
end;

end.

