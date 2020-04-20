unit InvoiceItem_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls,

  BaseLayout_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  dxCore, cxDateUtils, cxMemo, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxButtons,
  cxCalendar, dxLayoutControlAdapters, cxCurrencyEdit, cxLabel;

type
  TInvoiceItemFrm = class(TBaseLayoutFrm)
    lucInvoiceDate: TcxDateEdit;
    litInvoiceDate: TdxLayoutItem;
    litDescription: TdxLayoutItem;
    memDescription: TcxMemo;
    grpButtons: TdxLayoutGroup;
    litOK: TdxLayoutItem;
    litCancel: TdxLayoutItem;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    edtInvoicNo: TcxCurrencyEdit;
    litInvoiceNo: TdxLayoutItem;
    litSetSessionDate: TdxLayoutItem;
    btnSetDefaultDate: TcxButton;
    memWarning: TcxMemo;
    litWarningLabel: TdxLayoutItem;
    litWarning: TdxLayoutItem;
    lblWarning: TcxLabel;
    styWarning: TcxEditStyleController;
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
  inherited;
  Caption := 'Invoice Date';
  Width := 250;
  Height := 300;
  lucInvoiceDate.EditValue := TSDM.DefaultInvoiceDate;
  lucInvoiceDate.Properties.MinDate := TSDM.DefaultInvoiceDate;
  lucInvoiceDate.Properties.MaxDate := Date;
end;

procedure TInvoiceItemFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  if VarIsNull(edtInvoicNo.EditValue) then
    raise EValidateException.Create('Invalid invoice number.');

  if edtInvoicNo.Value <= 1 then
    raise EValidateException.Create('Invalid invoice number.');

  if VarIsNull(lucInvoiceDate.EditValue) then
    raise EValidateException.Create('Invalid invoice date.');

  Self.ModalResult := mrOK;
end;

procedure TInvoiceItemFrm.btnSetDefaultDateClick(Sender: TObject);
begin
  inherited;
  lucInvoiceDate.EditValue := TSDM.GetDefaulttInvoiceDate;
  TSDM.DefaultInvoiceDate := lucInvoiceDate.Date;
end;

procedure TInvoiceItemFrm.dteInvoiceDatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  TSDM.DefaultInvoiceDate := lucInvoiceDate.Date;
end;

end.

