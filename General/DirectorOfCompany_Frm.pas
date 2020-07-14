unit DirectorOfCompany_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList,
  Vcl.Controls, Vcl.Dialogs, System.Actions, Vcl.ActnList,

  BaseLayout_Frm, VBBase_Dm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid,
  cxCurrencyEdit, cxTextEdit, dxBar;

type
  TDirectorOfCompanyFrm = class(TBaseLayoutFrm)
    grdDirector: TcxGrid;
    lvlDirector: TcxGridLevel;
    viewDirector: TcxGridDBBandedTableView;
    edtID: TcxGridDBBandedColumn;
    edtCcustomerID: TcxGridDBBandedColumn;
    edtSalutationID: TcxGridDBBandedColumn;
    edtFirstName: TcxGridDBBandedColumn;
    edtLastName: TcxGridDBBandedColumn;
    edtMiddleName: TcxGridDBBandedColumn;
    edtTaxNo: TcxGridDBBandedColumn;
    edtMobileNo: TcxGridDBBandedColumn;
    edtEmailAddress: TcxGridDBBandedColumn;
    edtIDNo: TcxGridDBBandedColumn;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    litToolbar: TdxLayoutItem;
    litDrectorGrid: TdxLayoutItem;
    litCustomerGrid: TdxLayoutItem;
    docToolbar: TdxBarDockControl;
    btnClose: TdxBarLargeButton;
    actClose: TAction;
    grdCustomer: TcxGrid;
    viewCustomer: TcxGridDBBandedTableView;
    lvlCustomer: TcxGridLevel;
    edtDID: TcxGridDBBandedColumn;
    edtDDirectorID: TcxGridDBBandedColumn;
    edtDCustomerID: TcxGridDBBandedColumn;
    edtDCompany: TcxGridDBBandedColumn;
    styGridBand: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure GetDirector;
    procedure GetCustomerDirectorLink;
  public
    { Public declarations }
  end;

var
  DirectorOfCompanyFrm: TDirectorOfCompanyFrm;

implementation

{$R *.dfm}

uses
  TS_DM,
  Main_Frm;

procedure TDirectorOfCompanyFrm.FormCreate(Sender: TObject);
begin
  Caption := 'Director Listing';
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  styGridBand.Font.Color := RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  styGridBand.TextColor := RootLookAndFeel.SkinPainter.DefaultContentTextColor;
  viewDirector.DataController.DataSource := TSDM.dtsDirector;
  viewCustomer.DataController.DataSource := TSDM.dtsDirectorOfCompany;
  GetDirector;
  GetCustomerDirectorLink;
end;

procedure TDirectorOfCompanyFrm.FormShow(Sender: TObject);
begin
  Screen.Cursor := crDefault;
end;

procedure TDirectorOfCompanyFrm.DoCloseForm(Sender: TObject);
begin
  Self.ModalResult := mrOK;
end;

procedure TDirectorOfCompanyFrm.GetDirector;
var
  OrderByClause, FileName: string;
begin
  OrderByClause := ' ORDER BY D.FIRST_NAME, D.LAST_NAME';
  FileName := 'Director';

  VBBaseDM.GetData(16, TSDM.cdsDirector, TSDM.cdsDirector.Name, OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsDirector.UpdateOptions.Generatorname,
    TSDM.cdsInvoiceList.UpdateOptions.UpdateTableName);
end;

procedure TDirectorOfCompanyFrm.GetCustomerDirectorLink;
var
  OrderByClause, FileName: string;
begin
  OrderByClause := ' ORDER BY D.ID, D.COMPANY';
  FileName := 'Director of Company';

  VBBaseDM.GetData(88, TSDM.cdsDirectorOfCompany, TSDM.cdsDirectorOfCompany.Name, OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', TSDM.cdsDirectorOfCompany.UpdateOptions.Generatorname,
    TSDM.cdsInvoiceList.UpdateOptions.UpdateTableName);
end;

end.



