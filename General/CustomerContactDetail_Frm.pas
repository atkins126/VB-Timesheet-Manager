unit CustomerContactDetail_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.Dialogs, System.Actions, Vcl.ActnList, Data.DB,

  VBBase_DM, BaseLayout_Frm, VBCommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter, cxData, cxDBData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxCurrencyEdit, cxDBLookupComboBox, cxTextEdit, dxBar, cxGridLevel, cxGrid,
  cxGridInplaceEditForm, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, dxScreenTip,
  dxCustomHint, cxHint;

type
  TCustomerContactDetailFrm = class(TBaseLayoutFrm)
    grdContactDetailCo: TcxGrid;
    viewContactDetailCo: TcxGridDBBandedTableView;
    edtCDID: TcxGridDBBandedColumn;
    lucCDContactTypeID: TcxGridDBBandedColumn;
    edtCDCusotmerID: TcxGridDBBandedColumn;
    edtCDContactPersonID: TcxGridDBBandedColumn;
    edtCDValue: TcxGridDBBandedColumn;
    viewContactDetailCoRootGroup: TcxGridInplaceEditFormGroup;
    lvlContactDetailCo: TcxGridLevel;
    litToolbar: TdxLayoutItem;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    docToolbar: TdxBarDockControl;
    btnClose: TdxBarLargeButton;
    btnEmail: TdxBarLargeButton;
    litGrid: TdxLayoutItem;
    actClose: TAction;
    actEmail: TAction;
    repScreenTip: TdxScreenTipRepository;
    tipClose: TdxScreenTip;
    tipEmail: TdxScreenTip;
    styHintController: TcxHintStyleController;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure HandleCaption(var MyMsg: TMessage); message WM_DOWNLOAD_CAPTION;
  public
    { Public declarations }
  end;

var
  CustomerContactDetailFrm: TCustomerContactDetailFrm;

implementation

{$R *.dfm}

uses TS_DM;

procedure TCustomerContactDetailFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TCustomerContactDetailFrm.FormCreate(Sender: TObject);
begin
  inherited;
  layMain.Align := alClient;
  layMain.LookAndFeel := lafCustomSkin;
  Self.Height := 270;
  Self.Width := 420;
  viewContactDetailCo.DataController.DataSource := TSDM.dtsContactDetailCo;

//  VBBaseDM.GetData(54, TSDM.cdsContactDetailCo, TSDM.cdsContactDetailCo.Name, ' ORDER BY O.CUSTOMER_ID',
//    'C:\Data\Xml\View Contact Detail Co.xml', TSDM.cdsContactDetailCo.UpdateOptions.Generatorname,
//    TSDM.cdsContactDetailCo.UpdateOptions.UpdateTableName);
end;

procedure TCustomerContactDetailFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  CustomerContactDetailFrm := nil;
end;

procedure TCustomerContactDetailFrm.HandleCaption(var MyMsg: TMessage);
begin
  try
    viewContactDetailCo.Bands[0].Caption := 'Contact details for: ' +  PChar(MyMsg.WParam);
    Update;
  finally
    MyMsg.Result := 1;
  end;
end;

end.

