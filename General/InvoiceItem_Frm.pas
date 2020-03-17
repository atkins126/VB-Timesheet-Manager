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
  cxCalendar, dxLayoutControlAdapters, cxCurrencyEdit;

type
  TInvoiceItemFrm = class(TBaseLayoutFrm)
    dteInvoiceDate: TcxDateEdit;
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
  Height := 180;
  dteInvoiceDate.EditValue := TSDM.DefaultInvoiceDate;
  dteInvoiceDate.Properties.MinDate := TSDM.DefaultInvoiceDate;
  dteInvoiceDate.Properties.MaxDate := Date;
end;

procedure TInvoiceItemFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  if VarIsNull(edtInvoicNo.EditValue) then
    raise EValidateException.Create('Invalid invoice number.');

  if edtInvoicNo.Value <= 1 then
    raise EValidateException.Create('Invalid invoice number.');

  if VarIsNull(dteInvoiceDate.EditValue) then
    raise EValidateException.Create('Invalid invoice date.');

  Self.ModalResult := mrOK;
end;

procedure TInvoiceItemFrm.btnSetDefaultDateClick(Sender: TObject);
begin
  inherited;
  dteInvoiceDate.EditValue := TSDM.GetDefaulttInvoiceDate;
  TSDM.DefaultInvoiceDate := dteInvoiceDate.Date;
end;

procedure TInvoiceItemFrm.dteInvoiceDatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  TSDM.DefaultInvoiceDate := dteInvoiceDate.Date;
end;

end.

