unit TimesheetEdit_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseLayout_Frm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  dxLayoutControl, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxCheckBox, dxLayoutcxEditAdapters, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxMemo, cxCurrencyEdit;

type
  TTimesheetEditFrm = class(TBaseLayoutFrm)
    grpDate: TdxLayoutGroup;
    grpActivity: TdxLayoutGroup;
    grpPriceListItem: TdxLayoutGroup;
    grpTime: TdxLayoutGroup;
    grpRate: TdxLayoutGroup;
    cbxAproved: TcxDBCheckBox;
    cbxCarryForward: TcxDBCheckBox;
    cbxBillable: TcxDBCheckBox;
    cbxAddWork: TcxDBCheckBox;
    dteActivityDate: TcxDBDateEdit;
    litApproved: TdxLayoutItem;
    litCarryForward: TdxLayoutItem;
    litDate: TdxLayoutItem;
    litCustomer: TdxLayoutItem;
    litPriceListItem: TdxLayoutItem;
    litStdActivity: TdxLayoutItem;
    litActivityType: TdxLayoutItem;
    litActivity: TdxLayoutItem;
    lucCustomer: TcxDBLookupComboBox;
    lucPriceListItem: TcxDBLookupComboBox;
    lucActivityType: TcxDBLookupComboBox;
    btnStdActivity: TcxButton;
    memActivity: TcxDBMemo;
    edtTimeSpent: TcxDBCurrencyEdit;
    edtHours: TcxDBCurrencyEdit;
    edtRate: TcxDBCurrencyEdit;
    edtStdrate: TcxDBCurrencyEdit;
    edtitemValue: TcxDBCurrencyEdit;
    edtInvoiceNo: TcxDBCurrencyEdit;
    dteInvoiceDate: TcxDBDateEdit;
    litBillable: TdxLayoutItem;
    litTimeSpent: TdxLayoutItem;
    litHours: TdxLayoutItem;
    litAddWork: TdxLayoutItem;
    litStdRate: TdxLayoutItem;
    litRate: TdxLayoutItem;
    litRateUnit: TdxLayoutItem;
    litItemValue: TdxLayoutItem;
    litInvoiceNo: TdxLayoutItem;
    litInvoiceDate: TdxLayoutItem;
    grpActivityType: TdxLayoutGroup;
    grpInvoice: TdxLayoutGroup;
    grpControls: TdxLayoutGroup;
    sep1: TdxLayoutSeparatorItem;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    litOK: TdxLayoutItem;
    litCancel: TdxLayoutItem;
    grpGeneralInfo: TdxLayoutGroup;
    lucRateUnit: TcxDBLookupComboBox;
    spc1: TdxLayoutEmptySpaceItem;
    styReadOnly: TcxEditStyleController;
    litDayName: TdxLayoutItem;
    edtDayName: TcxDBTextEdit;
    spc2: TdxLayoutEmptySpaceItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimesheetEditFrm: TTimesheetEditFrm;

implementation

{$R *.dfm}

uses TS_DM;

procedure TTimesheetEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  // Width = 800;  Height = 405.
  Self.Width := 800;
  Self.Height := 580;
  Caption := 'Timesheet Data';
  cbxAproved.DataBinding.DataSource := TSDM.dtsTimesheet;
  cbxCarryForward.DataBinding.DataSource := TSDM.dtsTimesheet;
  cbxAddWork.DataBinding.DataSource := TSDM.dtsTimesheet;
  edtDayName.DataBinding.DataSource := TSDM.dtsTimesheet;
  cbxBillable.DataBinding.DataSource := TSDM.dtsTimesheet;
  dteActivityDate.DataBinding.DataSource := TSDM.dtsTimesheet;
  memActivity.DataBinding.DataSource := TSDM.dtsTimesheet;
  edtTimeSpent.DataBinding.DataSource := TSDM.dtsTimesheet;
  edtHours.DataBinding.DataSource := TSDM.dtsTimesheet;
  edtRate.DataBinding.DataSource := TSDM.dtsTimesheet;
  edtStdrate.DataBinding.DataSource := TSDM.dtsTimesheet;
  edtInvoiceNo.DataBinding.DataSource := TSDM.dtsTimesheet;
  edtitemValue.DataBinding.DataSource := TSDM.dtsTimesheet;
  edtInvoiceNo.DataBinding.DataSource := TSDM.dtsTimesheet;
  dteInvoiceDate.DataBinding.DataSource := TSDM.dtsTimesheet;
  lucCustomer.Properties.ListSource := TSDM.dtsCustomerLookup;
  lucCustomer.DataBinding.DataSource := TSDM.dtsTimesheet;
  lucPriceListItem.Properties.ListSource := TSDM.dtsPriceList;
  lucPriceListItem.DataBinding.DataSource := TSDM.dtsTimesheet;
  lucActivityType.Properties.ListSource := TSDM.dtsActivityType;
  lucActivityType.DataBinding.DataSource := TSDM.dtsTimesheet;
  lucRateUnit.DataBinding.DataSource := TSDM.dtsTimesheet;
  lucRateUnit.Properties.ListSource := TSDM.dtsRateUnit;
  // Hide drop down button of dteInvoiceDate control
  dteInvoiceDate.Properties.Buttons.Items[0].Visible := False;
end;

end.

