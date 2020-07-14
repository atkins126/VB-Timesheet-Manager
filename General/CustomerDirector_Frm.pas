unit CustomerDirector_Frm;

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
  cxHint, cxCheckBox, dxLayoutcxEditAdapters, cxContainer, cxLabel,
  cxInplaceContainer, cxVGrid, cxDBVGrid;

type
  TCustomerDirectorFrm = class(TBaseLayoutFrm)
    barManager: TdxBarManager;
    grdDirector: TcxGrid;
    viewDirector: TcxGridDBBandedTableView;
    lvlDiretor: TcxGridLevel;
    barToolbar: TdxBar;
    docToolbar: TdxBarDockControl;
    grpToolbar: TdxLayoutGroup;
    litToolbar: TdxLayoutItem;
    btnCloes: TdxBarLargeButton;
    actClose: TAction;
    edtID: TcxGridDBBandedColumn;
    edtCustomerID: TcxGridDBBandedColumn;
    edtSalutationID: TcxGridDBBandedColumn;
    edtSalutation: TcxGridDBBandedColumn;
    edtFirstName: TcxGridDBBandedColumn;
    edtLastName: TcxGridDBBandedColumn;
    edtMiddleName: TcxGridDBBandedColumn;
    edtTaxNo: TcxGridDBBandedColumn;
    edtMobileNo: TcxGridDBBandedColumn;
    edtEmailAddress: TcxGridDBBandedColumn;
    grdVDirector: TcxDBVerticalGrid;
    edtVSalutation: TcxDBEditorRow;
    edtVMiddleName: TcxDBEditorRow;
    edtVTaxNo: TcxDBEditorRow;
    edtVMobileNo: TcxDBEditorRow;
    edtVEmailAddress: TcxDBEditorRow;
    grpGrid: TdxLayoutGroup;
    litGrid: TdxLayoutItem;
    litVGrid: TdxLayoutItem;
    popEmail: TPopupMenu;
    mnuEmail: TMenuItem;
    actEmail: TAction;
    mnuClose: TMenuItem;
    dxBarLargeButton1: TdxBarLargeButton;
    actHide: TAction;
    btnHide: TdxBarLargeButton;
    repScreenTip: TdxScreenTipRepository;
    tipClose: TdxScreenTip;
    tipEmail: TdxScreenTip;
    tipHide: TdxScreenTip;
    styHintController: TcxHintStyleController;
    procedure DoCloseForm(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DoSendEmail(Sender: TObject);
    procedure viewDirectorFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure DoHideForm(Sender: TObject);
  private
    { Private declarations }
    FItemValue: string;

    procedure HandleCaption(var MyMsg: TMessage); message WM_DOWNLOAD_CAPTION;
  public
    { Public declarations }
  end;

var
  CustomerDirectorFrm: TCustomerDirectorFrm;

implementation

{$R *.dfm}

uses
  TS_DM,
  EmailPerson_Frm;

procedure TCustomerDirectorFrm.FormCreate(Sender: TObject);
begin
  //  inherited;
  layMain.Align := alClient;
  layMain.LookAndFeel := lafCustomSkin;
  Self.Height := 330;
  Self.Width := 680;
  Self.Top := 350;
  Self.Left := Screen.Width - Self.Width - 150;
  viewDirector.DataController.DataSource := TSDM.dtsViewDirector;
  grdVDirector.DataController.DataSource := TSDM.dtsViewDirector;
end;

procedure TCustomerDirectorFrm.FormShow(Sender: TObject);
begin
  grdDirector.SetFocus;
  viewDirector.Focused := True;
  if viewDirector.DataController.RecordCount > 0 then
begin
  viewDirector.DataController.FocusedRecordIndex := 0;
  viewDirector.Controller.FocusedRecord.Selected := True;
  viewDirector.Controller.FocusedItem := edtFirstName;
  viewDirector.Controller.MakeFocusedItemVisible;
end;

  if viewDirector.Controller.FocusedRecord <> nil then
    FItemValue := viewDirector.Controller.FocusedRecord.Values[edtEmailAddress.Index];

  actEmail.Enabled := (not VarIsNull(edtEmailAddress.EditValue))
    and (Length(Trim(edtEmailAddress.EditValue)) > 0)
    and (viewDirector.DataController.RecordCount > 0);
end;

procedure TCustomerDirectorFrm.DoHideForm(Sender: TObject);
begin
  Self.Hide;
end;

procedure TCustomerDirectorFrm.DoCloseForm(Sender: TObject);
begin
  Self.Close;
end;

procedure TCustomerDirectorFrm.DoSendEmail(Sender: TObject);
begin
  if EmailPersonFrm = nil then
    EmailPersonFrm := TEmailPersonFrm.Create(nil);

  EmailPersonFrm.lstRecipient.Clear;
  EmailPersonFrm.lstRecipient.Items.Add(FItemValue);
  EmailPersonFrm.lstRecipient.Items.Add('cvgiesen@gmail.com');
  EmailPersonFrm.lstRecipient.Items.Add('gieseng@xt.co.za');

  Self.Hide;
  try
    EmailPersonFrm.ShowModal;
  finally
    EmailPersonFrm.Close;
    FreeAndNil(EmailPersonFrm);
    Self.Show;
  end;
end;

procedure TCustomerDirectorFrm.HandleCaption(var MyMsg: TMessage);
begin
  try
    Caption := 'Directors for: ' + PChar(MyMsg.WParam);
    viewDirector.Bands[0].Caption := {'Diretors for: ' + }PChar(MyMsg.WParam);

    mnuEmail.Caption := 'Send email to: ' + edtFirstName.EditValue + ' ' + edtLastName.EditValue;
    Update;
  finally
    MyMsg.Result := 1;
  end;
end;

procedure TCustomerDirectorFrm.viewDirectorFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if AFocusedRecord <> nil then
  begin
    actEmail.Enabled := not VarIsNull(edtEmailAddress.EditValue);

    if not VarIsNull(edtEmailAddress.EditValue) then
    begin
      FItemValue :=   edtEmailAddress.EditValue;
//      FItemValue := AFocusedRecord.Values[edtEmailAddress.Index];
      actEmail.Enabled := Length(Trim(FItemValue)) > 0;
    end;

    //    actEmail.Enabled := (not VarIsNull(edtEmailAddress.EditValue))
    //      and (Length(Trim(edtEmailAddress.EditValue)) > 0)
    //      and (viewDirector.DataController.RecordCount > 0);
  end;
end;

end.

