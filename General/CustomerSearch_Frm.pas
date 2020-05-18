unit CustomerSearch_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, Data.DB,

  BaseLayout_Frm,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter, cxData, cxEdit,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxCurrencyEdit, cxDBLookupComboBox, cxTextEdit, cxCheckBox, cxCalendar, cxGrid,
  cxVGrid, cxDBVGrid, cxInplaceContainer, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, dxBar, cxGridInplaceEditForm;

type
  TCustomerSearchFrm = class(TBaseLayoutFrm)
    grdCustomer: TcxGrid;
    viewCustomer: TcxGridDBBandedTableView;
    edtCustomerID: TcxGridDBBandedColumn;
    lucCustomerType: TcxGridDBBandedColumn;
    edtName: TcxGridDBBandedColumn;
    edtFirstName: TcxGridDBBandedColumn;
    edtlastName: TcxGridDBBandedColumn;
    edtTaxNo: TcxGridDBBandedColumn;
    lucStatus: TcxGridDBBandedColumn;
    cbxIsActive: TcxGridDBBandedColumn;
    lvlCustomer: TcxGridLevel;
    grdVCustomer: TcxDBVerticalGrid;
    grpGeneralInformation: TcxCategoryRow;
    edtVCustomerName: TcxDBEditorRow;
    lucVCustomerType: TcxDBEditorRow;
    edtVComapnyNo: TcxDBEditorRow;
    lucVStatus: TcxDBEditorRow;
    edtVTradingAs: TcxDBEditorRow;
    edtVBillTo: TcxDBEditorRow;
    cbxVActive: TcxDBEditorRow;
    grpTaxInformation: TcxCategoryRow;
    lucVYearEndmonth: TcxDBEditorRow;
    edtVTaxNo: TcxDBEditorRow;
    lucVTaxOffice: TcxDBEditorRow;
    lucVARMonth: TcxDBEditorRow;
    grpVATInformation: TcxCategoryRow;
    edtVVATNo: TcxDBEditorRow;
    lucVVATOffice: TcxDBEditorRow;
    lucVVATMonth: TcxDBEditorRow;
    lucVCountry: TcxDBEditorRow;
    edtVCustomsCode: TcxDBEditorRow;
    grpSARS: TcxCategoryRow;
    edtVPAYENo: TcxDBEditorRow;
    edtUIFNo: TcxDBEditorRow;
    edtVSDLNo: TcxDBEditorRow;
    edtVWCNo: TcxDBEditorRow;
    lucARCompletionDate: TcxDBEditorRow;
    edtVEFiling: TcxDBEditorRow;
    edtVEFUserName: TcxDBEditorRow;
    edtVEFPassword: TcxDBEditorRow;
    grpMiscellaneous: TcxCategoryRow;
    edtVPastelAccCode: TcxDBEditorRow;
    edtVVBTaxCode: TcxDBEditorRow;
    lucCreated: TcxDBEditorRow;
    lucModified: TcxDBEditorRow;
    grpPersonAttribute: TcxCategoryRow;
    cbxVProvTaxPayer: TcxDBEditorRow;
    cbxVLivingWill: TcxDBEditorRow;
    cbxOrganDonor: TcxDBEditorRow;
    docToolbar: TdxBarDockControl;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    litToolbar: TdxLayoutItem;
    btnClose: TdxBarLargeButton;
    btnEmail: TdxBarLargeButton;
    actClose: TAction;
    actEmail: TAction;
    grdContactDetailCo: TcxGrid;
    viewContactDetailCo: TcxGridDBBandedTableView;
    edtCDID: TcxGridDBBandedColumn;
    lucCDContactTypeID: TcxGridDBBandedColumn;
    edtCDCusotmerID: TcxGridDBBandedColumn;
    edtCDContactPersonID: TcxGridDBBandedColumn;
    edtCDValue: TcxGridDBBandedColumn;
    viewContactDetailCoRootGroup: TcxGridInplaceEditFormGroup;
    lvlContactDetailCo: TcxGridLevel;
    grdContactPerson: TcxGrid;
    viewContactPerson: TcxGridDBBandedTableView;
    edtCPID: TcxGridDBBandedColumn;
    edtCCustomerID: TcxGridDBBandedColumn;
    cbxCPPrimaryContact: TcxGridDBBandedColumn;
    lucCPSalutation: TcxGridDBBandedColumn;
    edtCPFirstName: TcxGridDBBandedColumn;
    edtCPLastName: TcxGridDBBandedColumn;
    edtCPInitials: TcxGridDBBandedColumn;
    edtCPOtherName: TcxGridDBBandedColumn;
    lucCPDOB: TcxGridDBBandedColumn;
    edtCPIDNo: TcxGridDBBandedColumn;
    edtCPPassportNo: TcxGridDBBandedColumn;
    lucCPJobFunction: TcxGridDBBandedColumn;
    lvlContactPerson: TcxGridLevel;
    grdCPContactDetail: TcxGrid;
    viewCPContactDetail: TcxGridDBBandedTableView;
    edtCPContactDetailID: TcxGridDBBandedColumn;
    edtCPContactDetailContactPersonID: TcxGridDBBandedColumn;
    edtCPContactDetailCustomerID: TcxGridDBBandedColumn;
    lucCPContactDetailTypeID: TcxGridDBBandedColumn;
    edtwCPContactDetailValue: TcxGridDBBandedColumn;
    lvlCPContactDetail: TcxGridLevel;
    lvlContactDetail: TcxGridLevel;
    viewContactDetail: TcxGridDBBandedTableView;
    grdTimesheet: TcxGrid;
    viewTimesheet: TcxGridDBBandedTableView;
    edtID: TcxGridDBBandedColumn;
    edtUserID: TcxGridDBBandedColumn;
    cbxApproved: TcxGridDBBandedColumn;
    cbxCarryForward: TcxGridDBBandedColumn;
    edtPeriod: TcxGridDBBandedColumn;
    edtPeriodName: TcxGridDBBandedColumn;
    edtDayname: TcxGridDBBandedColumn;
    edtActivityDate: TcxGridDBBandedColumn;
    lucCustomer: TcxGridDBBandedColumn;
    lucPriceItem: TcxGridDBBandedColumn;
    lucActivityType: TcxGridDBBandedColumn;
    memActivity: TcxGridDBBandedColumn;
    cbxBillable: TcxGridDBBandedColumn;
    edtTimeSpent: TcxGridDBBandedColumn;
    edtTimeHours: TcxGridDBBandedColumn;
    cbxAddWork: TcxGridDBBandedColumn;
    edtRate: TcxGridDBBandedColumn;
    edtStdRate: TcxGridDBBandedColumn;
    lucRateUnit: TcxGridDBBandedColumn;
    edtItemValue: TcxGridDBBandedColumn;
    edtInvoiceID: TcxGridDBBandedColumn;
    edtInvoiceDate: TcxGridDBBandedColumn;
    edtCreditNoteID: TcxGridDBBandedColumn;
    lucCustomerGroup: TcxGridDBBandedColumn;
    cbxLocked: TcxGridDBBandedColumn;
    dteModified: TcxGridDBBandedColumn;
    edtDayOrder: TcxGridDBBandedColumn;
    edtDateCarriedForward: TcxGridDBBandedColumn;
    edtDateCFwdReleased: TcxGridDBBandedColumn;
    edtReleaseCFwdToPeriod: TcxGridDBBandedColumn;
    lvlTimesheet: TcxGridLevel;
    procedure DoCloseForm(Sender: TObject);
    procedure DoEmailCustomer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomerSearchFrm: TCustomerSearchFrm;

implementation

{$R *.dfm}

uses
  TS_DM,
  Lookup_DM;

procedure TCustomerSearchFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TCustomerSearchFrm.DoEmailCustomer(Sender: TObject);
begin
  inherited;
//
end;

end.

