unit DirectorDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,

  BaseLayout_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxScreenTip, dxCustomHint, cxHint, cxImageList,
  dxLayoutLookAndFeels, cxClasses, cxStyles, dxLayoutContainer, cxDBLabel,
  cxButtons, cxLabel, dxLayoutControl, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCurrencyEdit;

type
  TDirectorDetailFrm = class(TBaseLayoutFrm)
    edtFirstName: TcxTextEdit;
    lucSalutation: TcxLookupComboBox;
    edtMobileNo: TcxTextEdit;
    edtLastName: TcxTextEdit;
    edtOtherName: TcxTextEdit;
    edtTaxNo: TcxTextEdit;
    edtEmailAddress: TcxTextEdit;
    grpName: TdxLayoutGroup;
    grpSalutation: TdxLayoutGroup;
    grpMobileNo: TdxLayoutGroup;
    litFirstName: TdxLayoutItem;
    litLastName: TdxLayoutItem;
    litSalutation: TdxLayoutItem;
    litTaxNo: TdxLayoutItem;
    litMobileNo: TdxLayoutItem;
    litEmailAddress: TdxLayoutItem;
    litOtherName: TdxLayoutItem;
    spc1: TdxLayoutEmptySpaceItem;
    imgNav16: TcxImageList;
    litIDNumber: TdxLayoutItem;
    edtIDNumber: TcxTextEdit;
    grpButtons: TdxLayoutGroup;
    sep1: TdxLayoutSeparatorItem;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    litOK: TdxLayoutItem;
    litCancel: TdxLayoutItem;
    lblHeaderTitle: TcxLabel;
    litHeaderTitle: TdxLayoutItem;
    styHeaderFont: TcxEditStyleController;
    litLegend: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure lucCompanyGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
  private
    { Private declarations }
    procedure Validate;
    procedure CmDrawBorder(var Msg: TMessage); message CM_DRAWBORDER;
    procedure ValueChanged(Sender: TObject);
  public
    { Public declarations }
  end;

var
  DirectorDetailFrm: TDirectorDetailFrm;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  TS_DM,
  Lookup_DM,
  RUtils;

procedure TDirectorDetailFrm.btnOKClick(Sender: TObject);
begin
  Validate;
end;

procedure TDirectorDetailFrm.CmDrawBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TDirectorDetailFrm.FormCreate(Sender: TObject);
begin
//  Width := 555;
//  Height := 480;
  Self.Height := 290;
  Self.Width := 540;
  TSDM.ClearFieldValues;
  lucSalutation.Properties.ListSource := LookupDM.dtsSalutation;
  styHeaderFont.Style.Font.Color := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  styHeaderFont.Style.TextColor := cxLookAndFeels.RootLookAndFeel.SkinPainter.DefaultContentTextColor;

  edtFirstName.Text := '';
  edtLastName.Text := '';
  lucSalutation.EditValue := 0;
  edtOtherName.Text := '';
  edtTaxNo.Text := '';
  edtMobileNo.Text := '';
  edtEmailAddress.Text := '';

  if VBBaseDM.DBAction = acEdit then
  begin
    edtFirstName.Text := TSDM.cdsDirector.FieldByName('FIRST_NAME').AsString;
    edtLastName.Text := TSDM.cdsDirector.FieldByName('LAST_NAME').AsString;
    lucSalutation.EditValue := TSDM.cdsDirector.FieldByName('SALUTATION_ID').AsInteger;
    edtOtherName.Text := TSDM.cdsDirector.FieldByName('OTHER_NAME').AsString;
    edtTaxNo.Text := TSDM.cdsDirector.FieldByName('TAX_NO').AsString;
    edtMobileNo.Text := TSDM.cdsDirector.FieldByName('MOBILE_PHONE').AsString;
    edtEmailAddress.Text := TSDM.cdsDirector.FieldByName('EMAIL_ADDRESS').AsString;
  end;

  edtFirstName.Properties.OnChange := ValueChanged;
  edtLastName.Properties.OnChange := ValueChanged;
  lucSalutation.Properties.OnChange := ValueChanged;
  edtOtherName.Properties.OnChange := ValueChanged;
  edtTaxNo.Properties.OnChange := ValueChanged;
  edtMobileNo.Properties.OnChange := ValueChanged;
  edtEmailAddress.Properties.OnChange := ValueChanged;
end;

procedure TDirectorDetailFrm.lucCompanyGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
//  TSDM.CompanyName := AText;
end;

procedure TDirectorDetailFrm.Validate;
begin
  if SameText(TrimAll(edtFirstName.Text), '') then
    raise EValidateException.Create('First name must have a value');

  if SameText(TrimAll(edtLastName.Text), '') then
    raise EValidateException.Create('Last name must have a value');

  TSDM.FieldValue.SalutationID := lucSalutation.EditValue;
  TSDM.FieldValue.FirstName := edtFirstName.Text;
  TSDM.FieldValue.LastName := edtLastName.Text;
  TSDM.FieldValue.OtherName := edtOtherName.Text;
  TSDM.FieldValue.TaxNo := edtTaxNo.Text;
  TSDM.FieldValue.MobileNo := edtMobileNo.Text;
  TSDM.FieldValue.EmailAddress := edtEmailAddress.Text;

  ModalResult := mrOK;
end;

procedure TDirectorDetailFrm.ValueChanged(Sender: TObject);
begin
  if not VBBaseDM.MadeChanges then
    VBBaseDM.MadeChanges := True;

  btnOK.Enabled := VBBaseDM.MadeChanges;
end;

end.


