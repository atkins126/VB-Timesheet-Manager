unit TimesheetPrefrrences_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls,
  System.Win.Registry,

  BaseLayout_Frm, CommonFunction,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, cxCheckBox,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxGroupBox, cxRadioGroup,
  cxButtons, dxLayoutControlAdapters, VBCommonValues, dxScreenTip, dxCustomHint,
  cxHint;

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
    grpPriceItemOptions: TdxLayoutGroup;
    radPriceItemOption: TcxRadioGroup;
    grpOtherOptions: TdxLayoutGroup;
    litUseTodaysDate: TdxLayoutItem;
    litSaveGridLayout: TdxLayoutItem;
    cbxSaveGridLayout: TcxCheckBox;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    litCancel: TdxLayoutItem;
    litOK: TdxLayoutItem;
    spc1: TdxLayoutEmptySpaceItem;
    btnGetDefaultRate: TcxButton;
    actGetDefaultRate: TAction;
    repScreenTip: TdxScreenTipRepository;
    tipGetDefaultRate: TdxScreenTip;
    styHintController: TcxHintStyleController;
    litGetDefaultRate: TdxLayoutItem;
    lucRateUnit: TcxLookupComboBox;
    cbxIncrementalFiltering: TcxCheckBox;
    cbxHighlightSearchMatch: TcxCheckBox;
    litIncrementalFiltering: TdxLayoutItem;
    litHighlightSearchMatch: TdxLayoutItem;
    spc2: TdxLayoutEmptySpaceItem;
    grpHighlightSearchMatch: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure lucPriceItemPropertiesEditValueChanged(Sender: TObject);
    procedure cbxUseDefaultRatePropertiesEditValueChanged(Sender: TObject);
    procedure cbxUseDefaultCustomerPropertiesEditValueChanged(Sender: TObject);
    procedure cbxUseDefaultPriceItemPropertiesEditValueChanged(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure DoGetDefaultRate(Sender: TObject);
    procedure cbxIncrementalFilteringPropertiesEditValueChanged(Sender: TObject);
    procedure cbxUseDefaultCustomerPropertiesChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    FMadeChanges: Boolean;
    FShowingForm: Boolean;

    property MadeChanges: Boolean read FMadeChanges write FMadeChanges;
    property ShowingForm: Boolean read FShowingForm write FShowingForm;
    procedure SetControlValues;
  public
    { Public declarations }
  end;

var
  TimesheetPrefrrencesFrm: TTimesheetPrefrrencesFrm;

implementation

{$R *.dfm}

uses
  TS_DM,
  CommonValues;

procedure TTimesheetPrefrrencesFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
//  CanClose := not FMadeChanges;
//  if not CanClose then
//    if
//      DisplayMsg(
//      Application.Title,
//      'Changes Made',
//      'Changes have been made to timesheet preferences.' + CRLF + CRLF +
//      'Are you sure you want to cancel these chnges?',
//      mtConfirmation,
//      [mbYes, mbNo]
//      ) = mrYes then
//    begin
//      FMadeChanges := False;
//      CanClose := True;
//    end;
end;

procedure TTimesheetPrefrrencesFrm.FormCreate(Sender: TObject);
begin
  inherited;
  // Width = 800;  Height = 490
  Self.Width := 800;
  Self.Height := 530;
  Caption := 'Timesheet Default Options';
  layMain.LayoutLookAndFeel := lafCustomSkin;
  layMain.Align := alClient;
  lucCustomer.Properties.ListSource := TSDM.dtsCustomerLookupPref;
  lucPriceItem.Properties.ListSource := TSDM.dtsPriceListPref;
  lucRateUnit.Properties.ListSource := TSDM.dtsRateUnitPref;
  FShowingForm := True;
  Screen.Cursor := crDefault;
end;

procedure TTimesheetPrefrrencesFrm.FormShow(Sender: TObject);
begin
  inherited;
  SetControlValues;
  FShowingForm := False;
  FMadeChanges := False;
  btnOK.Enabled := FMadeChanges;
end;

procedure TTimesheetPrefrrencesFrm.SetControlValues;
var
  RegKey: TRegistry;
begin
  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    TSDM.cdsCustomerLookupPref.Close;
    TSDM.cdsPriceListPref.Close;
    TSDM.cdsRatePUnitref.Close;
    TSDM.cdsCustomerLookupPref.Data := TSDM.cdsCustomerLookup.Data;
    TSDM.cdsPriceListPref.Data := TSDM.cdsPriceList.Data;
    TSDM.cdsRatePUnitref.Data := TSDM.cdsRateUnit;
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);
    cbxUseDefaultCustomer.Checked := TSDM.TimesheetOption.UseDefaultCustomer;
    cbxUseDefaultPriceItem.Checked := TSDM.TimesheetOption.UseDefaultPriceItem;
    cbxUseDefaultRate.Checked := TSDM.TimesheetOption.UseDefaultRate;
    cbxUseTodaysDate.Checked := TSDM.TimesheetOption.UseTodaysDate;
    cbxSaveGridLayout.Checked := TSDM.TimesheetOption.SaveGridLayout;
    lucCustomer.EditValue := TSDM.TimesheetOption.DefaultCustomerID;
    lucPriceItem.EditValue := TSDM.TimesheetOption.DefaultPriceItemID;
    edtDefaultRate.EditValue := TSDM.TimesheetOption.DefaultRate;
    lucRateUnit.EditValue := TSDM.TimesheetOption.RateUnitID;
    radPriceItemOption.ItemIndex := TSDM.TimesheetOption.PriceListItemActionIndex;
    cbxIncrementalFiltering.Checked := TSDM.TimesheetOption.IncrementalLookupFitlering;
    cbxHighlightSearchMatch.Checked := TSDM.TimesheetOption.HighlightLookupSearchMatch;
    cbxHighlightSearchMatch.Enabled := cbxIncrementalFiltering.Checked;

    cbxUseDefaultCustomerPropertiesEditValueChanged(nil);
    cbxUseDefaultPriceItemPropertiesEditValueChanged(nil);
  finally
    RegKey.Free
  end;
end;

procedure TTimesheetPrefrrencesFrm.btnCancelClick(Sender: TObject);
begin
  inherited;
  if FMadeChanges then
  begin
    if
      DisplayMsg(
      Application.Title,
      'Changes Made',
      'Changes have been made to timesheet preferences.' + CRLF + CRLF +
      'Are you sure you want to cancel these chnges?',
      mtConfirmation,
      [mbYes, mbNo]
      ) = mrYes then
    begin
      FMadeChanges := False;
      Self.ModalResult := mrCancel;
    end;
  end
  else
    Self.ModalResult := mrCancel;
end;

procedure TTimesheetPrefrrencesFrm.btnOKClick(Sender: TObject);
var
  RegKey: TRegistry;
begin
  inherited;
  if cbxUseDefaultCustomer.Checked and (VarIsNull(lucCustomer.EditValue)
    or (lucCustomer.EditValue = 0)) then
  begin
    lucCustomer.SetFocus;
    raise EValidateException.Create('Please select a default customer.');
  end;

  if cbxUseDefaultPriceItem.Checked and (VarIsNull(lucPriceItem.EditValue)
    or (lucPriceItem.EditValue = 0)) then
  begin
    lucPriceItem.SetFocus;
    raise EValidateException.Create('Please select a default price list item.');
  end;

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  try
    RegKey.RootKey := HKEY_CURRENT_USER;
    RegKey.OpenKey(KEY_TIME_SHEET, True);

    TSDM.TimesheetOption.UseDefaultCustomer := cbxUseDefaultCustomer.Checked;
    TSDM.TimesheetOption.UseDefaultPriceItem := cbxUseDefaultPriceItem.Checked;
    TSDM.TimesheetOption.UseDefaultRate := cbxUseDefaultRate.Checked;
    TSDM.TimesheetOption.UseTodaysDate := cbxUseTodaysDate.Checked;
    TSDM.TimesheetOption.SaveGridLayout := cbxSaveGridLayout.Checked;
    TSDM.TimesheetOption.DefaultCustomerID := lucCustomer.EditValue;
    TSDM.TimesheetOption.DefaultPriceItemID := lucPriceItem.EditValue;
    TSDM.TimesheetOption.DefaultRate := edtDefaultRate.EditValue;
    TSDM.TimesheetOption.RateUnitID := lucRateUnit.EditValue;
    TSDM.TimesheetOption.PriceListItemActionIndex := radPriceItemOption.ItemIndex;
    TSDM.TimesheetOption.IncrementalLookupFitlering := cbxIncrementalFiltering.Checked;
    TSDM.TimesheetOption.HighlightLookupSearchMatch := cbxHighlightSearchMatch.Checked;

    Regkey.WriteBool('Use Default Customer', TSDM.TimesheetOption.UseDefaultCustomer);
    Regkey.WriteBool('Use Default Price Item', TSDM.TimesheetOption.UseDefaultPriceItem);
    Regkey.WriteBool('Use Default Rate', TSDM.TimesheetOption.UseDefaultRate);
    Regkey.WriteBool('Auto Date on New Timesheet Line', TSDM.TimesheetOption.UseTodaysDate);
    Regkey.WriteBool('Save Grid Layout', TSDM.TimesheetOption.SaveGridLayout);
    Regkey.WriteInteger('Default Customer ID', TSDM.TimesheetOption.DefaultCustomerID);
    RegKey.WriteInteger('Default Price Item ID', TSDM.TimesheetOption.DefaultPriceItemID);
    RegKey.WriteFloat('Default Rate', TSDM.TimesheetOption.DefaultRate);
    RegKey.WriteInteger('Rate Unit ID', TSDM.TimesheetOption.RateUnitID);
    RegKey.WriteInteger('Pricelist Item Action Index', TSDM.TimesheetOption.PriceListItemActionIndex);
    Regkey.WriteBool('Incremental Lookup Fitlering', TSDM.TimesheetOption.IncrementalLookupFitlering);
    RegKey.WriteBool('Highlight Lookup Search Match', TSDM.TimesheetOption.HighlightLookupSearchMatch);
    Self.ModalResult := mrOK;
  finally
    RegKey.Free
  end;
end;

procedure TTimesheetPrefrrencesFrm.cbxIncrementalFilteringPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  cbxHighlightSearchMatch.Enabled := cbxIncrementalFiltering.Checked;
  if not cbxIncrementalFiltering.Checked then
    cbxHighlightSearchMatch.Checked := False;
end;

procedure TTimesheetPrefrrencesFrm.cbxUseDefaultCustomerPropertiesChange(Sender: TObject);
begin
  inherited;
  FMadeChanges := True;
  btnOK.Enabled := FMadeChanges;
end;

procedure TTimesheetPrefrrencesFrm.cbxUseDefaultCustomerPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  lucCustomer.Properties.ReadOnly := not cbxUseDefaultCustomer.Checked;
  if not cbxUseDefaultCustomer.Checked then
    lucCustomer.EditValue := 0;

  if not FShowingForm then
    if lucCustomer.CanFocus and not lucCustomer.Properties.ReadOnly then
      lucCustomer.SetFocus;
end;

procedure TTimesheetPrefrrencesFrm.cbxUseDefaultPriceItemPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  lucPriceItem.Properties.ReadOnly := not cbxUseDefaultPriceItem.Checked;
//  cbxUseDefaultRate.Enabled := cbxUseDefaultPriceItem.Checked;
//  lucRateUnit.Enabled := not cbxUseDefaultPriceItem.Checked;

  if not cbxUseDefaultPriceItem.Checked then
    lucPriceItem.EditValue := 0;

  if not FShowingForm then
    if lucPriceItem.CanFocus and not lucPriceItem.Properties.ReadOnly then
      lucPriceItem.SetFocus;
end;

procedure TTimesheetPrefrrencesFrm.cbxUseDefaultRatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  edtDefaultRate.Properties.ReadOnly := cbxUseDefaultRate.Checked;

  if cbxUseDefaultRate.Checked and lucPriceItem.EditValue > 0 then
  begin
    edtDefaultRate.Value := TSDM.cdsPriceListPref.FieldByName('RATE').AsFloat;
    lucRateUnit.EditValue := TSDM.cdsPriceListPref.FieldByName('RATE_UNIT_ID').AsInteger;
  end;
end;

procedure TTimesheetPrefrrencesFrm.DoGetDefaultRate(Sender: TObject);
begin
  inherited;
  if lucPriceItem.EditValue <= 0 then
    raise EValidateException.Create('Please select a default price item from which to obtain the default rate.');

  edtDefaultRate.Value := TSDM.cdsPriceListPref.FieldByName('RATE').AsFloat;
  lucRateUnit.EditValue := TSDM.cdsPriceListPref.FieldByName('RATE_UNIT_ID').AsInteger;
end;

procedure TTimesheetPrefrrencesFrm.lucPriceItemPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  edtDefaultRate.Value := TSDM.cdsPriceListPref.FieldByName('RATE').AsFloat;
  lucRateUnit.EditValue := TSDM.cdsPriceListPref.FieldByName('RATE_UNIT_ID').AsInteger;
end;

end.

