unit InvoiceItem_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseLayout_Frm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxMemo, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCurrencyEdit;

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

procedure TInvoiceItemFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Invoice Date';
  Width := 250;
  Height := 180;
  dteInvoiceDate.EditValue := TSDM.DefaultInvoiceDate;
end;

end.

