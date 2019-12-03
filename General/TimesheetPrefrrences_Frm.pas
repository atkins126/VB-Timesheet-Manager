unit TimesheetPrefrrences_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseLayout_Frm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  dxLayoutControl, cxContainer, cxEdit, cxCheckBox, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxGroupBox, cxRadioGroup, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxLayoutControlAdapters;

type
  TTimesheetPrefrrencesFrm = class(TBaseLayoutFrm)
    grpTimesheetOptionsTab: TdxLayoutGroup;
    grpControls: TdxLayoutGroup;
    litDefaultCustomer: TdxLayoutItem;
    litUseDefaultCustomer: TdxLayoutItem;
    grpTimesheetOptions: TdxLayoutGroup;
    grpPriceOptions: TdxLayoutGroup;
    grpRateOptions: TdxLayoutGroup;
    grpSubOptions: TdxLayoutGroup;
    sep1: TdxLayoutSeparatorItem;
    cbxUseDefaultCustomer: TcxCheckBox;
    cbxUseDefaultPriceItem: TcxCheckBox;
    cbxUseDefaultRate: TcxCheckBox;
    cbxUseTodaysDate: TcxCheckBox;
    litPriceItemSelectionOption: TdxLayoutItem;
    litUseDefaultPriceItem: TdxLayoutItem;
    litDefaultPriceitem: TdxLayoutItem;
    litUseDefaultRate: TdxLayoutItem;
    litDefaultRate: TdxLayoutItem;
    litRateUnit: TdxLayoutItem;
    lucCustomer: TcxLookupComboBox;
    lucPriceItem: TcxLookupComboBox;
    grpCustomerOptions: TdxLayoutGroup;
    edtDefaultRate: TcxCurrencyEdit;
    edtRateUnit: TcxTextEdit;
    grpPriceItemOptions: TdxLayoutGroup;
    radPriceItemOption: TcxRadioGroup;
    grpOtherOptions: TdxLayoutGroup;
    litUseTodaysDate: TdxLayoutItem;
    litSaveGridLayout: TdxLayoutItem;
    cbxSaveGridLayout: TcxCheckBox;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    litCancel: TdxLayoutItem;
    litOK: TdxLayoutItem;
    spc1: TdxLayoutEmptySpaceItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimesheetPrefrrencesFrm: TTimesheetPrefrrencesFrm;

implementation

{$R *.dfm}

procedure TTimesheetPrefrrencesFrm.FormCreate(Sender: TObject);
begin
  inherited;
  // Width = 800;  Height = 490
  Self.Width :=  800;
  Self.Height :=  490;
  Caption := 'Timesheet Default Options';
  layMain.LayoutLookAndFeel := lafCustomSkin;
  layMain.Align :=  alClient;
end;

end.

