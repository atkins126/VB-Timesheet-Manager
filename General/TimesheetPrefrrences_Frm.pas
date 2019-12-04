unit TimesheetPrefrrences_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls,
  System.Win.Registry,

  BaseLayout_Frm,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, cxCheckBox,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxGroupBox, cxRadioGroup,
  cxButtons, dxLayoutControlAdapters, VBCommonValues;

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
    procedure lucPriceItemPropertiesEditValueChanged(Sender: TObject);
    procedure cbxUseDefaultRatePropertiesEditValueChanged(Sender: TObject);
    procedure cbxUseDefaultCustomerPropertiesEditValueChanged(Sender: TObject);
    procedure cbxUseDefaultPriceItemPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure ReadRegValues;
  public
    { Public declarations }
  end;

var
  TimesheetPrefrrencesFrm: TTimesheetPrefrrencesFrm;

implementation

{$R *.dfm}

uses TS_DM;

procedure TTimesheetPrefrrencesFrm.cbxUseDefaultCustomerPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  lucCustomer.Properties.ReadOnly := not cbxUseDefaultCustomer.Checked;
end;

procedure TTimesheetPrefrrencesFrm.cbxUseDefaultPriceItemPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  lucPriceItem.Properties.ReadOnly := not cbxUseDefaultPriceItem.Checked;
end;

procedure TTimesheetPrefrrencesFrm.cbxUseDefaultRatePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  edtDefaultRate.Properties.ReadOnly := cbxUseDefaultRate.Checked;

  if cbxUseDefaultRate.Checked then
  begin
    edtDefaultRate.Value := TSDM.cdsPriceListPref.FieldByName('RATE').AsFloat;
    edtRateUnit.Text := TSDM.cdsPriceListPref.FieldByName('RATE_UNIT').AsString;
  end;
end;

procedure TTimesheetPrefrrencesFrm.FormCreate(Sender: TObject);
begin
  inherited;
  // Width = 800;  Height = 490
  Self.Width := 800;
  Self.Height := 470;
  Caption := 'Timesheet Default Options';
  layMain.LayoutLookAndFeel := lafCustomSkin;
  layMain.Align := alClient;
  lucCustomer.Properties.ListSource := TSDM.dtsCustomerLookupPref;
  lucPriceItem.Properties.ListSource := TSDM.dtsPriceListPref;
  ReadRegValues;
  Screen.Cursor := crDefault;
end;

procedure TTimesheetPrefrrencesFrm.lucPriceItemPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  edtDefaultRate.Value := TSDM.cdsPriceListPref.FieldByName('RATE').AsFloat;
  edtRateUnit.Text := TSDM.cdsPriceListPref.FieldByName('RATE_UNIT').AsString;
end;

procedure TTimesheetPrefrrencesFrm.ReadRegValues;
var
  RegKey: TRegistry;
begin
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    TSDM.cdsCustomerLookupPref.Close;
    TSDM.cdsPriceListPref.Close;
    TSDM.cdsCustomerLookupPref.Data := TSDM.cdsCustomerLookup.Data;
    TSDM.cdsPriceListPref.Data := TSDM.cdsPriceList.Data;
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);
    cbxUseDefaultCustomer.Checked := Regkey.ReadBool('Use Default Customer');
    cbxUseDefaultPriceItem.Checked := Regkey.ReadBool('Use Default Price Item');
    cbxUseDefaultRate.Checked := Regkey.ReadBool('Use Default Rate');
    cbxUseTodaysDate.Checked := Regkey.ReadBool('Auto Date on New Timesheet Line');
    cbxSaveGridLayout.Checked := Regkey.ReadBool('Save Grid Layout');
    lucCustomer.EditValue := Regkey.ReadInteger('Default Customer ID');
    lucPriceItem.EditValue := RegKey.ReadInteger('Default Price Item Type ID');
    radPriceItemOption.ItemIndex := RegKey.ReadInteger('Pricelist Item Action Index');
  finally
    RegKey.Free
  end;
end;

end.

