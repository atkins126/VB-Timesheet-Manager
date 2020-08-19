unit CustomerContactDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, Data.DB, Vcl.Menus,

  VBBase_DM, BaseLayout_Frm, VBCommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter, cxData, cxDBData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxCurrencyEdit, cxDBLookupComboBox, cxTextEdit, dxBar, cxGridLevel, cxGrid,
  cxGridInplaceEditForm, cxGridCustomTableView, cxGridTableView, dxCustomHint,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, dxScreenTip,
  cxHint, cxCheckBox, dxLayoutcxEditAdapters, cxContainer, cxLabel, cxCalendar,
  cxVGrid, cxDBVGrid, cxInplaceContainer;

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
    popEmail: TPopupMenu;
    mnuEmail: TMenuItem;
    mnuClose: TMenuItem;
    btnHide: TdxBarLargeButton;
    actHide: TAction;
    Hide1: TMenuItem;
    tipHide: TdxScreenTip;
    grpContactDetails: TdxLayoutGroup;
    grpDirectOfCompany: TdxLayoutGroup;
    grdDirector: TcxGrid;
    viewDirector: TcxGridDBBandedTableView;
    edtID: TcxGridDBBandedColumn;
    edtCustomerID: TcxGridDBBandedColumn;
    edtSalutationID: TcxGridDBBandedColumn;
    edtSalutation: TcxGridDBBandedColumn;
    edtCFirstname: TcxGridDBBandedColumn;
    edtCLastName: TcxGridDBBandedColumn;
    edtMiddleName: TcxGridDBBandedColumn;
    edtTaxNo: TcxGridDBBandedColumn;
    edtMobileNo: TcxGridDBBandedColumn;
    edtEmailAddress: TcxGridDBBandedColumn;
    lvlDiretor: TcxGridLevel;
    grdVDirector: TcxDBVerticalGrid;
    edtVSalutation: TcxDBEditorRow;
    edtVMiddleName: TcxDBEditorRow;
    edtVTaxNo: TcxDBEditorRow;
    edtVMobileNo: TcxDBEditorRow;
    edtVEmailAddress: TcxDBEditorRow;
    litDirectorGrid: TdxLayoutItem;
    litDirectorGridV: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure viewContactDetailCoFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure DoEmail(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure viewContactDetailCoDblClick(Sender: TObject);
    procedure DoHideForm(Sender: TObject);
  private
    { Private declarations }
    FItemValue: string;

    procedure HandleCaption(var MyMsg: TMessage); message WM_DOWNLOAD_CAPTION;
    procedure HandleContactType(var MyMsg: TMessage); message WM_CONTACT_TYPE;
  public
    { Public declarations }
  end;

var
  CustomerContactDetailFrm: TCustomerContactDetailFrm;

implementation

{$R *.dfm}

uses
  TS_DM,
  EmailPerson_Frm;

procedure TCustomerContactDetailFrm.DoCloseForm(Sender: TObject);
begin
  Self.Close;
end;

procedure TCustomerContactDetailFrm.FormCreate(Sender: TObject);
begin
  layMain.Align := alClient;
  layMain.LookAndFeel := lafCustomSkin;
  Self.Height := 300;
  Self.Width := 420;
  Self.Top := 50;
  Self.Left := Screen.Width - Self.Width - 100;
  viewContactDetailCo.DataController.DataSource := TSDM.dtsContactDetailCo;
  viewDirector.DataController.DataSource := TSDM.dtsViewDirector;
  grdVDirector.DataController.DataSource := TSDM.dtsViewDirector;

  if viewContactDetailCo.Controller.FocusedRecord <> nil then
    FItemValue := viewContactDetailCo.Controller.FocusedRecord.Values[edtCDValue.Index];

  actEmail.Enabled := (edtContactTypeID.EditValue = 3)
    and (viewContactDetailCo.DataController.RecordCount > 0);
end;

procedure TCustomerContactDetailFrm.FormShow(Sender: TObject);
begin
  grdContactDetailCo.SetFocus;
  viewContactDetailCo.Focused := True;
  if viewContactDetailCo.DataController.RecordCount > 0 then
  begin
    viewContactDetailCo.DataController.FocusedRecordIndex := 0;
    viewContactDetailCo.Controller.FocusedRecord.Selected := True;
    viewContactDetailCo.Controller.FocusedItem := lucCDContactTypeID;
    viewContactDetailCo.Controller.MakeFocusedItemVisible;
  end;

  if viewContactDetailCo.Controller.FocusedRecord <> nil then
    FItemValue := viewContactDetailCo.Controller.FocusedRecord.Values[edtCDValue.Index];

  actEmail.Enabled := (edtContactTypeID.EditValue = 3)
    and (viewContactDetailCo.DataController.RecordCount > 0);
  //  VBBaseDM.GetData(54, TSDM.cdsContactDetailCo, TSDM.cdsContactDetailCo.Name, ' ORDER BY O.CUSTOMER_ID',
  //    'C:\Data\Xml\View Contact Detail Co.xml', TSDM.cdsContactDetailCo.UpdateOptions.Generatorname,
  //    TSDM.cdsContactDetailCo.UpdateOptions.UpdateTableName);
end;

procedure TCustomerContactDetailFrm.DoEmail(Sender: TObject);
begin
  if EmailPersonFrm = nil then
    EmailPersonFrm := TEmailPersonFrm.Create(nil);

  EmailPersonFrm.lstRecipient.Clear;
  EmailPersonFrm.lstRecipient.Items.Add(FItemValue);
  //  EmailPersonFrm.lstRecipient.Items.Add('cvgiesen@gmail.com');
  //  EmailPersonFrm.lstRecipient.Items.Add('gieseng@xt.co.za');

  Self.Hide;
  try
    EmailPersonFrm.ShowModal;
  finally
    EmailPersonFrm.Close;
    FreeAndNil(EmailPersonFrm);
    Self.Show;
  end;
end;

procedure TCustomerContactDetailFrm.DoHideForm(Sender: TObject);
begin
  Self.Hide;
end;

procedure TCustomerContactDetailFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //  Action := caFree;
  //  CustomerContactDetailFrm := nil;
end;

procedure TCustomerContactDetailFrm.viewContactDetailCoDblClick(Sender: TObject);
begin
  actEmail.Execute;
end;

procedure TCustomerContactDetailFrm.viewContactDetailCoFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if AFocusedRecord <> nil then
  begin
    FItemValue := AFocusedRecord.Values[edtCDValue.Index];
    actEmail.Enabled := (edtContactTypeID.EditValue = 3)
      and (viewContactDetailCo.DataController.RecordCount > 0);
  end;
end;

procedure TCustomerContactDetailFrm.HandleCaption(var MyMsg: TMessage);
begin
  try
    Caption := 'Contact details for: ' + PChar(MyMsg.WParam);
    viewContactDetailCo.Bands[0].Caption := {'Contact details for: ' + }PChar(MyMsg.WParam);

    edtPrimaryContact.Text :=
      TSDM.cdsContactDetailCo.FieldByName('FIRST_NAME').AsString + ' ' +
      TSDM.cdsContactDetailCo.FieldByName('LAST_NAME').AsString;

    //    actEmail.Caption := 'Email';
    mnuEmail.Caption := 'Send email to: ' + edtPrimaryContact.Text;
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

