unit InvoiceItem_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls,

  BaseLayout_Frm, VBBase_DM, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  dxCore, cxDateUtils, cxMemo, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxButtons,
  cxCalendar, dxLayoutControlAdapters, cxCurrencyEdit, cxLabel, cxSpinEdit;

type
  TInvoiceItemFrm = class(TBaseLayoutFrm)
    lucInvoiceDate: TcxDateEdit;
    litInvoiceDate: TdxLayoutItem;
    grpButtons: TdxLayoutGroup;
    litOK: TdxLayoutItem;
    litCancel: TdxLayoutItem;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    litInvoiceNo: TdxLayoutItem;
    litSetSessionDate: TdxLayoutItem;
    btnSetDefaultDate: TcxButton;
    styWarning: TcxEditStyleController;
    spnInvoiceNo: TcxSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure dteInvoiceDatePropertiesEditValueChanged(Sender: TObject);
    procedure btnSetDefaultDateClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvoiceItemFrm: TInvoiceItemFrm;

implementation

{$R *.dfm}

uses
  TS_DM;

procedure TInvoiceItemFrm.FormCreate(Sender: TObject);
begin
  Caption := 'Invoice Date';
  Width := 250;
  Height := 165;
  //  Height := 320;
  lucInvoiceDate.EditValue := TSDM.DefaultInvoiceDate;
  //  lucInvoiceDate.Properties.MinDate := TSDM.DefaultInvoiceDate;
  //  lucInvoiceDate.Properties.MaxDate := Date;
end;

procedure TInvoiceItemFrm.btnOKClick(Sender: TObject);
var
  SQLRequest, FieldValue: string;
begin
  if VarIsNull(spnInvoiceNo.EditValue) then
    raise EValidateException.Create('Invalid invoice number.');

  if spnInvoiceNo.Value <= 1 then
    raise EValidateException.Create('Invoice number must be greter than zero.');

  if VarIsNull(lucInvoiceDate.EditValue) then
    raise EValidateException.Create('Invalid invoice date.');

  TSDM.InvoiceNo := spnInvoiceNo.Value;
  TSDM.DefaultInvoiceDate := lucInvoiceDate.Date;

  //  TFieldType = (ftUnknown, ftString, ftSmallint, ftInteger, ftWord, // 0..4
  //    ftBoolean, ftFloat, ftCurrency, ftBCD, ftDate, ftTime, ftDateTime, // 5..11
  //    ftBytes, ftVarBytes, ftAutoInc, ftBlob, ftMemo, ftGraphic, ftFmtMemo, // 12..18
  //    ftParadoxOle, ftDBaseOle, ftTypedBinary, ftCursor, ftFixedChar, ftWideString, // 19..24
  //    ftLargeint, ftADT, ftArray, ftReference, ftDataSet, ftOraBlob, ftOraClob, // 25..31
  //    ftVariant, ftInterface, ftIDispatch, ftGuid, ftTimeStamp, ftFMTBcd, // 32..37
  //    ftFixedWideChar, ftWideMemo, ftOraTimeStamp, ftOraInterval, // 38..41
  //    ftLongWord, ftShortint, ftByte, ftExtended, ftConnection, ftParams, ftStream, //42..48
  //    ftTimeStampOffset, ftObject, ftSingle); //49..51

  SQLRequest :=
    'SELECT DISTINCT' +
    ' INVOICE_ID AS FIELD_VALUE ' +
    'FROM' +
    ' TIMESHEET ' +
    'WHERE' +
    ' CUSTOMER_ID <> ' + IntToStr(TSDM.cdsTSCustomer.FieldByName('ID').AsInteger) +
    ' AND INVOICE_ID = ' + VarAsType(spnInvoiceNo.Value, varString);

  FieldValue := VBBaseDM.GetFieldValue(SQLRequest, 1);

  if StrToInt(FieldValue) > 0 then
    raise EValidateException.Create('Invoice number: ' +
      VarAsType(spnInvoiceNo.Value, varString) +
      ' has alredy been assigned to another customer. Please enter a valid invoice number.');

  Self.ModalResult := mrOK;
end;

procedure TInvoiceItemFrm.btnSetDefaultDateClick(Sender: TObject);
begin
  lucInvoiceDate.EditValue := TSDM.GetDefaulttInvoiceDate;
  TSDM.DefaultInvoiceDate := lucInvoiceDate.Date;
end;

procedure TInvoiceItemFrm.dteInvoiceDatePropertiesEditValueChanged(Sender: TObject);
begin
  //  TSDM.DefaultInvoiceDate := lucInvoiceDate.Date;
end;

end.

