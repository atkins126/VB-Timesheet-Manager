unit InvoiceDate_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseLayout_Frm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxMemo, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TInvoiceDateFrm = class(TBaseLayoutFrm)
    dteInvoiceDate: TcxDateEdit;
    litInvoiceDate: TdxLayoutItem;
    litDescription: TdxLayoutItem;
    memDescription: TcxMemo;
    grpButtons: TdxLayoutGroup;
    litOK: TdxLayoutItem;
    litCancel: TdxLayoutItem;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvoiceDateFrm: TInvoiceDateFrm;

implementation

{$R *.dfm}

procedure TInvoiceDateFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Invoice Date';
  Width := 250;
  Height := 180;
  dteInvoiceDate.EditValue :=  Date;
end;

end.

