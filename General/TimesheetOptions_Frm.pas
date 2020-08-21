unit TimesheetOptions_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls,
  System.Win.Registry,

  BaseLayout_Frm, CommonFunctions, VBCommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, cxCheckBox, cxLabel,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxGroupBox, cxRadioGroup,
  cxButtons, dxLayoutControlAdapters, dxScreenTip, dxCustomHint, cxHint, cxMemo;

type
  THintArray = array of string;

  TTimesheetOptionsFrm = class(TBaseLayoutFrm)
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
    styHighlight: TcxEditStyleController;
    litOptioinDescription: TdxLayoutItem;
    memDescription: TcxMemo;
    styReadOnly: TcxEditStyleController;
    grpMiscellaneousOptions: TdxLayoutGroup;
    litSetDefaultBillable: TdxLayoutItem;
    cbxBillable: TcxCheckBox;
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
    procedure cbxUseDefaultCustomerMouseEnter(Sender: TObject);
    procedure cbxUseDefaultCustomerMouseLeave(Sender: TObject);
  private
    { Private declarations }
    FMadeChanges: Boolean;
    FShowingForm: Boolean;
    FOptionsTabindex: Integer;
    FHintArray: THintArray;

    procedure SetControlValues;
    procedure GetDefaultTimesheetValues;
//    procedure ReadTSDetailReportRegValues;
//    procedure ReadReleaseCFwdRegValues;
    procedure PopulateHintArray;
    procedure DoOnMouseEnter(Sender: TObject);
    procedure DoOnMouseLeave(Sender: TObject);
  public
    { Public declarations }
    property OptionsTabindex: Integer read FOptionsTabindex write FOptionsTabindex;
  end;

var
  TimesheetOptionsFrm: TTimesheetOptionsFrm;

implementation

{$R *.dfm}

uses
  TS_DM,
  CommonValues;

procedure TTimesheetOptionsFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
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

procedure TTimesheetOptionsFrm.FormCreate(Sender: TObject);
begin
  // Width = 800;  Height = 490
  Self.Width := 800;
  Self.Height := 600;
  Caption := 'Timesheet Default Options';
  layMain.LayoutLookAndFeel := lafCustomSkin;
  layMain.Align := alClient;
  lucCustomer.Properties.ListSource := TSDM.dtsCustomerLookupPref;
  lucPriceItem.Properties.ListSource := TSDM.dtsPriceListPref;
  lucRateUnit.Properties.ListSource := TSDM.dtsRateUnitPref;
  grpTimesheetOptionsTab.ItemIndex := 0;
  FShowingForm := True;
  PopulateHintArray;

  lucCustomer.OnMouseEnter := DoOnMouseEnter;
  lucCustomer.OnMouseLeave := DoOnMouseLeave;
  lucPriceItem.OnMouseEnter := DoOnMouseEnter;
  lucPriceItem.OnMouseLeave := DoOnMouseLeave;
  edtDefaultRate.OnMouseEnter := DoOnMouseEnter;
  edtDefaultRate.OnMouseLeave := DoOnMouseLeave;
  lucRateUnit.OnMouseEnter := DoOnMouseEnter;
  lucRateUnit.OnMouseLeave := DoOnMouseLeave;
  cbxBillable.OnMouseEnter := DoOnMouseEnter;
  cbxBillable.OnMouseLeave := DoOnMouseLeave;

  styHighlight.Style.Font.Color := RootLookAndFeel.SkinPainter.DefaultSelectionColor;
  styHighlight.Style.TextColor := RootLookAndFeel.SkinPainter.DefaultSelectionColor;
  styReadOnly.Style.Color := RootLookAndFeel.SkinPainter.DefaultContentColor;
  Screen.Cursor := crDefault;
end;

procedure TTimesheetOptionsFrm.FormShow(Sender: TObject);
begin
  SetControlValues;
  GetDefaultTimesheetValues;
//  cbxUseDefaultCustomerPropertiesEditValueChanged(nil);
//  cbxUseDefaultPriceItemPropertiesEditValueChanged(nil);

  FShowingForm := False;
  FMadeChanges := False;
  btnOK.Enabled := FMadeChanges;
  grpTimesheetOptionsTab.ItemIndex := FOptionsTabindex;
end;

procedure TTimesheetOptionsFrm.SetControlValues;
//var
//  RegKey: TRegistry;
begin
//  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
//  try
  TSDM.cdsCustomerLookupPref.Close;
  TSDM.cdsPriceListPref.Close;
  TSDM.cdsRatePUnitref.Close;
  TSDM.cdsCustomerLookupPref.Data := TSDM.cdsCustomerLookup.Data;
  TSDM.cdsPriceListPref.Data := TSDM.cdsPriceList.Data;
  TSDM.cdsRatePUnitref.Data := TSDM.cdsRateUnit;
//  finally
//    RegKey.Free
//  end;
end;

procedure TTimesheetOptionsFrm.btnCancelClick(Sender: TObject);
begin
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

procedure TTimesheetOptionsFrm.btnOKClick(Sender: TObject);
var
  RegKey: TRegistry;
begin
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
    RegKey.OpenKey(KEY_TIMESHEET, True);

    TSDM.TimesheetOption.UseDefaultCustomer := cbxUseDefaultCustomer.Checked;
    TSDM.TimesheetOption.UseDefaultPriceItem := cbxUseDefaultPriceItem.Checked;
    TSDM.TimesheetOption.UseDefaultRate := cbxUseDefaultRate.Checked;
    TSDM.TimesheetOption.UseTodaysDate := cbxUseTodaysDate.Checked;
    TSDM.TimesheetOption.UseDefaultBillable :=   cbxBillable.Checked;
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
    Regkey.WriteBool('Use Default Billable Value', TSDM.TimesheetOption.UseTodaysDate);
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

procedure TTimesheetOptionsFrm.cbxIncrementalFilteringPropertiesEditValueChanged(Sender: TObject);
begin
  cbxHighlightSearchMatch.Enabled := cbxIncrementalFiltering.Checked;
  if not cbxIncrementalFiltering.Checked then
    cbxHighlightSearchMatch.Checked := False;
end;

procedure TTimesheetOptionsFrm.cbxUseDefaultCustomerMouseEnter(Sender: TObject);
begin
  if Sender is TcxCheckBox then
    memDescription.Text := FHintArray[TcxCheckBox(Sender).Tag];
end;

procedure TTimesheetOptionsFrm.DoOnMouseEnter(Sender: TObject);
begin
  if Sender is TcxLookupComboBox then
    memDescription.Text := FHintArray[TcxLookupComboBox(Sender).Tag]
  else if Sender is TcxCurrencyEdit then
    memDescription.Text := FHintArray[TcxCurrencyEdit(Sender).Tag];
end;

procedure TTimesheetOptionsFrm.DoOnMouseLeave(Sender: TObject);
begin
  memDescription.Lines.Clear;
end;

procedure TTimesheetOptionsFrm.cbxUseDefaultCustomerMouseLeave(Sender: TObject);
begin
  memDescription.Lines.Clear;
end;

procedure TTimesheetOptionsFrm.cbxUseDefaultCustomerPropertiesChange(Sender: TObject);
begin
  FMadeChanges := True;
  btnOK.Enabled := FMadeChanges;
end;

procedure TTimesheetOptionsFrm.cbxUseDefaultCustomerPropertiesEditValueChanged(Sender: TObject);
begin
  lucCustomer.Properties.ReadOnly := not cbxUseDefaultCustomer.Checked;
  if not cbxUseDefaultCustomer.Checked then
    lucCustomer.EditValue := 0;

  if not FShowingForm then
    if lucCustomer.CanFocus and not lucCustomer.Properties.ReadOnly then
      lucCustomer.SetFocus;
end;

procedure TTimesheetOptionsFrm.cbxUseDefaultPriceItemPropertiesEditValueChanged(Sender: TObject);
begin
  lucPriceItem.Properties.ReadOnly := not cbxUseDefaultPriceItem.Checked;
//  cbxUseDefaultRate.Enabled := cbxUseDefaultPriceItem.Checked;
//  lucRateUnit.Enabled := not cbxUseDefaultPriceItem.Checked;

  if not cbxUseDefaultPriceItem.Checked then
    lucPriceItem.EditValue := 0;

  if not FShowingForm then
    if lucPriceItem.CanFocus and not lucPriceItem.Properties.ReadOnly then
      lucPriceItem.SetFocus;
end;

procedure TTimesheetOptionsFrm.cbxUseDefaultRatePropertiesEditValueChanged(Sender: TObject);
begin
//  edtDefaultRate.Properties.ReadOnly := cbxUseDefaultRate.Checked;

  if cbxUseDefaultRate.Checked and lucPriceItem.EditValue > 0 then
  begin
    edtDefaultRate.Value := TSDM.cdsPriceListPref.FieldByName('RATE').AsFloat;
    lucRateUnit.EditValue := TSDM.cdsPriceListPref.FieldByName('RATE_UNIT_ID').AsInteger;
  end;
end;

procedure TTimesheetOptionsFrm.DoGetDefaultRate(Sender: TObject);
begin
  if lucPriceItem.EditValue <= 0 then
    raise EValidateException.Create('Please select a default price item from which to obtain the default rate.');

  edtDefaultRate.Value := TSDM.cdsPriceListPref.FieldByName('RATE').AsFloat;
  lucRateUnit.EditValue := TSDM.cdsPriceListPref.FieldByName('RATE_UNIT_ID').AsInteger;
end;

procedure TTimesheetOptionsFrm.lucPriceItemPropertiesEditValueChanged(Sender: TObject);
begin
  edtDefaultRate.Value := TSDM.cdsPriceListPref.FieldByName('RATE').AsFloat;
  lucRateUnit.EditValue := TSDM.cdsPriceListPref.FieldByName('RATE_UNIT_ID').AsInteger;
end;

procedure TTimesheetOptionsFrm.PopulateHintArray;
begin
  Setlength(FHintArray, 11);
  // General timesheet options
  FHintArray[0] := 'When capturing a new timesheet item use the default customer.' +
    ' If this option is un-checked you will need to select a customer whenever capturing a new timesheet item.';

  FHintArray[1] := 'The default customer to use whenever capturing a new timesheet item.';

  FHintArray[2] := 'When capturing a new timesheet item use the default price item.' +
    ' If this option is un-checked you will need to select a price item whenever capturing a new timesheet item.';

  FHintArray[3] := 'The default price item to use whenever capturing a new timesheet item.';

  FHintArray[4] := 'When capturing a new timesheet item use the default rate value.' +
    ' If this option is un-checked you will need to enter a rate value whenever capturing a new timesheet item.';

  FHintArray[5] := 'The default rate value to use whenever capturing a new timesheet item.';
  FHintArray[6] := 'The default rate unit to use whenever capturing a new timesheet item.';
  FHintArray[7] := 'Use the current datae whenever capturing a new timesheet item.';
  FHintArray[8] := 'When selecting an item from a lookup list, the list will filter out ' +
    'items that match the text what you are typing.';
  FHintArray[9] := 'When selecting an item from a lookup list, the matching item will be highlited. ';
  FHintArray[10] := 'Save the tiemsheet grid layout whenever you exit the timesheet manaager.';
  // Timesheet detail report options
//  FHintArray[11] := 'Save the Date/Period value for future use.';
//  FHintArray[12] := 'Save the Date/Period type selection for future use.';
//  FHintArray[13] := 'Save the report grouping selection option.';
//  FHintArray[14] := 'Save the manner in which to fetch data.';
//  FHintArray[15] := 'Save current data sort order. The sort order is used when fetching, printing or exporting data.';
//  FHintArray[16] := 'Re-fetch data whenever changing the data sort order.';
//  FHintArray[17] := 'When this option is checked data will be grouped by the first item in the sort order list.' +
//    ' This applies to printing and exporting of data.';
//  FHintArray[18] := 'Save the billable status option setting for future use.';
//  FHintArray[19] := 'When fetching data for the billable summary report, exclude items that have a zero billable value.';
//  FHintArray[20] := 'Save the report type selection setting.';
//  FHintArray[21] := 'Save the work type selection setting.';
//  FHintArray[22] := 'Always attempt to open the saved document after exorting to Excel or PDF.';
//  FHintArray[23] := 'When exporting to Excel, export only records that are selected. If this option is un-cheked, all recoreds are exported.';
//  FHintArray[24] := 'When exporting to Excel, export the data formatted as seen in the grid. If this option is un-checked ' +
//    ' the data is exported as plain text/numeric raw data.';
end;

procedure TTimesheetOptionsFrm.GetDefaultTimesheetValues;
//var
//  RegKey: TRegistry;
begin
//  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
//  RegKey.RootKey := HKEY_CURRENT_USER;
//  RegKey.OpenKey(KEY_TIMESHEET, True);
//
//  try
    cbxUseDefaultCustomer.Checked := TSDM.TimesheetOption.UseDefaultCustomer;
    cbxUseDefaultPriceItem.Checked := TSDM.TimesheetOption.UseDefaultPriceItem;
    cbxUseDefaultRate.Checked := TSDM.TimesheetOption.UseDefaultRate;
    cbxUseTodaysDate.Checked := TSDM.TimesheetOption.UseTodaysDate;
    cbxBillable.Checked :=  TSDM.TimesheetOption.UseDefaultBillable;
    cbxSaveGridLayout.Checked := TSDM.TimesheetOption.SaveGridLayout;
    lucCustomer.EditValue := TSDM.TimesheetOption.DefaultCustomerID;
    lucPriceItem.EditValue := TSDM.TimesheetOption.DefaultPriceItemID;
    edtDefaultRate.EditValue := TSDM.TimesheetOption.DefaultRate;
    lucRateUnit.EditValue := TSDM.TimesheetOption.RateUnitID;
    radPriceItemOption.ItemIndex := TSDM.TimesheetOption.PriceListItemActionIndex;
    cbxIncrementalFiltering.Checked := TSDM.TimesheetOption.IncrementalLookupFitlering;
    cbxHighlightSearchMatch.Checked := TSDM.TimesheetOption.HighlightLookupSearchMatch;
    cbxHighlightSearchMatch.Enabled := cbxIncrementalFiltering.Checked;

//    RegKey.CloseKey;
//  finally
//    Regkey.Free;
//  end;
end;

//procedure TTimesheetOptionsFrm.ReadTSDetailReportRegValues;
//var
//  RegKey: TRegistry;
//begin
//  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
//  RegKey.RootKey := HKEY_CURRENT_USER;
//  RegKey.OpenKey(KEY_TIMESHEET_DETAIL_REPORT, True);
//
//  cbxRefreshData.Checked := RegKey.ReadBool('Refresh Data When Changing Sort Order');
//  cbxGroupedReport.Checked := RegKey.ReadBool('Group Timsheet Detail Report');
//  cbxOpenDocumentAfterExport.Checked := RegKey.ReadBool('Open Document After Export');
//  cbxRemoveZeroBillableItems.Checked := RegKey.ReadBool('Remove Zero Billable Values');
//  cbxSaveReportTypeSelection.Checked := RegKey.ReadBool('Save Report Type Selection');
//  cbxExportSelectedOnlyToExcel.Checked := RegKey.ReadBool('Export Selcted Timesheets Only');
//  cbxFormatExcelData.Checked := RegKey.ReadBool('Export Formatted Data To Excel');
//end;
//
//procedure TTimesheetOptionsFrm.ReadReleaseCFwdRegValues;
//var
//  RegKey: TRegistry;
//begin
//  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
//  RegKey.RootKey := HKEY_CURRENT_USER;
//  RegKey.OpenKey(KEY_TIMESHEET_DETAIL_REPORT, True);
//end;

end.


