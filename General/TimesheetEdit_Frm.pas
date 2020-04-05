unit TimesheetEdit_Frm;

{
ReadOnly Colour

Light Pink: $E6E6FF
Light yellow: $00B6EDFA
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Controls, Vcl.Dialogs, Data.DB, System.Actions, Vcl.ActnList, Vcl.Menus,
  System.DateUtils, Vcl.ComCtrls,

  BaseLayout_Frm, VBBase_DM, CommonValues,

  FireDAC.Comp.Client,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxCheckBox, dxLayoutcxEditAdapters,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControlAdapters,
  cxButtons, cxMemo, cxCurrencyEdit, dxFormattedLabel,
  dxCore, cxDateUtils, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid;

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
    lucActivityDate: TcxDBDateEdit;
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
    edtRate: TcxDBCurrencyEdit;
    edtStdrate: TcxDBCurrencyEdit;
    litBillable: TdxLayoutItem;
    litTimeSpent: TdxLayoutItem;
    litHours: TdxLayoutItem;
    litStdRate: TdxLayoutItem;
    litRate: TdxLayoutItem;
    litRateUnit: TdxLayoutItem;
    litItemValue: TdxLayoutItem;
    grpActivityType: TdxLayoutGroup;
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
    spc3: TdxLayoutEmptySpaceItem;
    edtDayName: TcxTextEdit;
    edtHours: TcxCurrencyEdit;
    edtitemValue: TcxCurrencyEdit;
    litLegend: TdxLayoutItem;
    actStdActivity: TAction;
    litAdWork: TdxLayoutItem;
    grpCarryForward: TdxLayoutGroup;
    litDateReleasedCfwd: TdxLayoutItem;
    litReleasedToPeriod: TdxLayoutItem;
    lucDateReleasedCfwd: TcxDBDateEdit;
    edtReleaseToPeriod: TcxDBCurrencyEdit;
    spc2: TdxLayoutEmptySpaceItem;
    spc5: TdxLayoutEmptySpaceItem;
    grpValues: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure lucActivityDatePropertiesEditValueChanged(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtTimeSpentPropertiesChange(Sender: TObject);
    procedure edtTimeSpentPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cbxBillablePropertiesEditValueChanged(Sender: TObject);
    procedure lucPriceListItemPropertiesEditValueChanged(Sender: TObject);
    procedure edtRatePropertiesChange(Sender: TObject);
    procedure edtRatePropertiesEditValueChanged(Sender: TObject);
    procedure lucRateUnitPropertiesEditValueChanged(Sender: TObject);
    procedure edtTimeSpentPropertiesEditValueChanged(Sender: TObject);
    procedure styReadOnlyStyleChanged(Sender: TObject);
    procedure doStdActivity(Sender: TObject);
    procedure btnStdActivityClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    FClosingForm: Boolean;
//    FMyDataSet: TFDMemTable;
//    FMyDataSource: TDataSource;
    { Private declarations }
//    procedure RecalcValues;
  public
    { Public declarations }
//    property MyDataSet: TFDMemTable read FMyDataSet write FMyDataSet;
//    property MyDataSource: TDataSource read FMyDataSource write FMyDataSource;
  end;

var
  TimesheetEditFrm: TTimesheetEditFrm;

implementation

{$R *.dfm}

uses
  TS_DM,
  RUtils,
  StdActivity_Frm,
  Report_DM;

procedure TTimesheetEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  // Width = 800;  Height = 405.
  Self.Width := 830;
  Self.Height := 670;
  Caption := 'Timesheet Data';
  FClosingForm := False;
end;

procedure TTimesheetEditFrm.FormShow(Sender: TObject);
begin
  inherited;
  try
    cbxAproved.DataBinding.DataSource := VBBaseDM.MyDataSource;
    cbxCarryForward.DataBinding.DataSource := VBBaseDM.MyDataSource;
    cbxAddWork.DataBinding.DataSource := VBBaseDM.MyDataSource;
//  edtDayName.DataBinding.DataSource := VBBaseDM.MyDataSource;
    cbxBillable.DataBinding.DataSource := VBBaseDM.MyDataSource;
    lucActivityDate.DataBinding.DataSource := VBBaseDM.MyDataSource;
    memActivity.DataBinding.DataSource := VBBaseDM.MyDataSource;
    edtTimeSpent.DataBinding.DataSource := VBBaseDM.MyDataSource;
//  edtHours.DataBinding.DataSource := VBBaseDM.MyDataSource;
    edtRate.DataBinding.DataSource := VBBaseDM.MyDataSource;
    edtStdrate.DataBinding.DataSource := VBBaseDM.MyDataSource;
    lucCustomer.Properties.ListSource := TSDM.dtsCustomerLookup;
    lucCustomer.DataBinding.DataSource := VBBaseDM.MyDataSource;
    lucPriceListItem.Properties.ListSource := TSDM.dtsPriceList;
    lucPriceListItem.DataBinding.DataSource := VBBaseDM.MyDataSource;
    lucActivityType.Properties.ListSource := TSDM.dtsActivityType;
    lucActivityType.DataBinding.DataSource := VBBaseDM.MyDataSource;
    lucRateUnit.Properties.ListSource := TSDM.dtsRateUnit;
    lucRateUnit.DataBinding.DataSource := VBBaseDM.MyDataSource;
    lucdateReleasedCfwd.DataBinding.DataSource := VBBaseDM.MyDataSource;
    edtReleaseToPeriod.DataBinding.DataSource := VBBaseDM.MyDataSource;
    TcxLookupComboBoxProperties(lucDateReleasedCfwd.Properties).Buttons.Items[0].Visible := False;
    cbxCarryForward.Properties.ReadOnly := True; // TSDM.cdsTimesheet.FieldByName('CARRY_FORWARD').AsInteger = 1;
    edtitemValue.Value := TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat;

    lucCustomer.Properties.IncrementalFiltering := TSDM.TimesheetOption.IncrementalLookupFitlering;
    lucCustomer.Properties.IncrementalFilteringOptions := [];

    if TSDM.TimesheetOption.HighlightLookupSearchMatch then
      lucCustomer.Properties.IncrementalFilteringOptions := [ifoHighlightSearchText];

    lucPriceListItem.Properties.IncrementalFiltering := TSDM.TimesheetOption.IncrementalLookupFitlering;
    lucPriceListItem.Properties.IncrementalFilteringOptions := [];

    if TSDM.TimesheetOption.HighlightLookupSearchMatch then
      lucPriceListItem.Properties.IncrementalFilteringOptions := [ifoHighlightSearchText];

    lucRateUnit.Properties.IncrementalFiltering := TSDM.TimesheetOption.IncrementalLookupFitlering;
    lucRateUnit.Properties.IncrementalFilteringOptions := [];

    if TSDM.TimesheetOption.HighlightLookupSearchMatch then
      lucRateUnit.Properties.IncrementalFilteringOptions := [ifoHighlightSearchText];

    lucActivityDate.Properties.MinDate := StrToDate('01/01/2019');
    lucActivityDate.Properties.MaxDate := Date;
    lucActivityDatePropertiesEditValueChanged(nil);

    if VarIsNull(lucCustomer.EditValue) then
      lucCustomer.SetFocus
    else if VarIsnull(lucPriceListItem.EditValue) then
      lucPriceListItem.SetFocus
    else
      lucActivityType.SetFocus;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TTimesheetEditFrm.btnCancelClick(Sender: TObject);
begin
  inherited;
  FClosingForm := True;
  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
    VBBaseDM.MyDataSet.Cancel;

  Self.ModalResult := mrCancel;
end;

procedure TTimesheetEditFrm.btnOKClick(Sender: TObject);
var
  NextID: Integer;
begin
  inherited;
  if VarIsNull(lucActivityDate.EditValue) or SameText(Trim(lucActivityDate.Text), '') then
  begin
    lucActivityDate.SetFocus;
    raise EValidateException.Create('Activity date must have a value.');
  end;

  if VarIsNull(lucCustomer.EditValue) then
  begin
    lucCustomer.SetFocus;
    raise EValidateException.Create('Customer must have a value.');
  end;

  if VarIsNull(lucPriceListItem.EditValue) then
  begin
    lucPriceListItem.SetFocus;
    raise EValidateException.Create('Price item must have a value.');
  end;

  if VarIsNull(lucActivityType.EditValue) then
  begin
    lucActivityType.SetFocus;
    raise EValidateException.Create('Activity type must have a value.');
  end;

  if VarIsNull(memActivity.EditValue) or SameText(Trim(memActivity.Text), '') then
  begin
    memActivity.SetFocus;
    raise EValidateException.Create('Activity must have a value.');
  end;

  if VarIsNull(edtTimeSpent.EditValue) or (edtTimeSpent.Value <= 0) then
  begin
    edtTimeSpent.SetFocus;
    raise EValidateException.Create('Time spent must have a value. Please enter a value greater than 0 with a maximum of ' +
      FormatFloat('#,##0', edtTimeSpent.Properties.MaxValue));
  end;

  if VarIsNull(edtRate.EditValue) or (edtRate.Value <= 0) then
  begin
    edtRate.SetFocus;
    raise EValidateException.Create('Rate spent must have a value. Please enter a value greater than 0.');
  end;

  if VarIsNull(lucRateUnit.EditValue) then
  begin
    lucRateUnit.SetFocus;
    raise EValidateException.Create('Rate unit spent must have a value.');
  end;

  if VBBaseDM.DBAction = acInsert then
  begin
    NextID := VBBaseDM.GetNextID(VBBaseDM.MyDataSet.UpdateOptions.GeneratorName);
    VBBaseDM.MyDataSet.FieldByName('ID').AsInteger := NextID;
  end;

  VBBaseDM.MyDataSet.Post;
  VBBaseDM.PostData(VBBaseDM.MyDataSet);

  if not (VBBaseDM.MyDataSet.State in [dsEdit, dsInsert]) then
    VBBaseDM.MyDataSet.Edit;

  VBBaseDM.MyDataSet.FieldByName('TIME_HOURS').AsFloat := edtHours.Value;
  VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := edtitemValue.Value;
  VBBaseDM.MyDataSet.FieldByName('DAY_NAME').AsString := edtDayName.Text;
  VBBaseDM.MyDataSet.FieldByName('DAY_ORDER').Asinteger := DayOfTheWeek(VBBaseDM.MyDataSet.FieldByName('ACTIVITY_DATE').AsDateTime);
  VBBaseDM.MyDataSet.Post;
  VBBaseDM.MyDataSet.CommitUpdates;
  Self.ModalResult := mrOK;
end;

procedure TTimesheetEditFrm.btnStdActivityClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    if StdActivityFrm = nil then
      StdActivityFrm := TStdActivityFrm.Create(nil);
    if StdActivityFrm.ShowModal = mrOK then
    begin
//      if not (TSDM.cdsTimesheet.State in [dsEdit, dsInsert]) then
      if not (TSDM.cdsTimesheet.State in dsEditModes) then
        TSDM.cdsTimesheet.Edit;

      TSDM.cdsTimesheet.FieldByName('ACTIVITY').AsString :=
        TSDM.cdsStdActivity.FieldByName('NAME').AsString + ' ' +
        StdActivityFrm.edtAppendText.Text;
    end;
    StdActivityFrm.Close;
    FreeAndNil(StdActivityFrm);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TTimesheetEditFrm.cbxBillablePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  RecalcValues;
//  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//    begin
//      case VarAstype(lucRateUnit.EditValue, varInteger) of
//        1: edtitemValue.Value := edtTimeSpent.Value * edtRate.Value / 60;
//      else
//        edtitemValue.Value := edtTimeSpent.Value * edtRate.Value;
//      end;
//    end
//    else
//      edtitemValue.Value := 0;
//  end;

//  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//    begin
//      case VarAstype(lucRateUnit.EditValue, varInteger) of
//        1: VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := edtTimeSpent.Value * edtRate.Value / 60;
//      else
//        VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := {edtTimeSpent.Value * }edtRate.Value;
//      end;
//    end
//    else
//      VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := 0;
//  end;

  edtitemValue.Value := 0;

  if not VarIsNull(lucRateUnit.EditValue) then
  begin
    if cbxBillable.Checked then
    begin
      case VarAstype(lucRateUnit.EditValue, varInteger) of
        1: edtitemValue.Value := edtTimeSpent.Value * edtRate.Value / 60;
      else
        edtitemValue.Value := {edtTimeSpent.Value * }edtRate.Value;
      end;
    end;
  end;
end;

procedure TTimesheetEditFrm.lucPriceListItemPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
  begin
//    edtRate.Properties.OnChange := nil;
    try
//      edtRate.EditValue := TSDM.cdsPriceList.FieldByName('RATE').AsFloat;
//      edtStdRate.EditValue := TSDM.cdsPriceList.FieldByName('RATE').AsFloat;
//
//      if cbxBillable.Checked then
//        edtitemValue.EditValue := edtTimeSpent.Value * edtRate.Value
//      else
//        edtitemValue.EditValue := 0;

      VBBaseDM.MyDataSet.FieldByName('ACTUAL_RATE').AsFloat := TSDM.cdsPriceList.FieldByName('RATE').AsFloat;
      VBBaseDM.MyDataSet.FieldByName('STD_RATE').AsFloat := TSDM.cdsPriceList.FieldByName('RATE').AsFloat;
      if cbxBillable.Checked then
        VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := edtTimeSpent.Value * edtRate.Value
      else
        VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := 0;
//    RecalcValues;
//    cbxBillablePropertiesEditValueChanged(nil);
    finally
//      edtRate.Properties.OnChange := edtRatePropertiesChange;
    end;
  end;
end;

procedure TTimesheetEditFrm.lucRateUnitPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if not FClosingForm then
  begin
    if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
    begin
      if cbxBillable.Checked then
      begin
        case VarAstype(lucRateUnit.EditValue, varInteger) of
          1: VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := edtTimeSpent.Value * edtRate.Value / 60;
        else
          VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := {edtTimeSpent.Value * }edtRate.Value;
        end;
      end
      else
        VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := 0;
    end;
  end;
end;

procedure TTimesheetEditFrm.styReadOnlyStyleChanged(Sender: TObject);
begin
  inherited;

end;

//procedure TTimesheetEditFrm.RecalcValues;
//begin
//  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//      VBBaseDM.MyDataSet.FieldByName('TIME_SPENT').AsFloat / 60;
//
//    if cbxBillable.Checked then
//    begin
//      case VarAstype(lucRateUnit.EditValue, varInteger) of
//        1: VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//          VBBaseDM.MyDataSet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value / 60;
//      else
//        VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//          VBBaseDM.MyDataSet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value;
//
//        VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//          VBBaseDM.MyDataSet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value;
//      end
//    end
//    else
//      edtitemValue.Value := 0;
//  end;

//  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    edtHours.Value := edtTimeSpent.Value / 60;
//
//    if cbxBillable.Checked then
//    begin
//      case VarAstype(lucRateUnit.EditValue, varInteger) of
//        1: edtitemValue.Value := edtTimeSpent.Value * edtRate.Value / 60;
//      else
//        edtitemValue.Value := edtTimeSpent.Value * edtRate.Value;
//
//        edtitemValue.Value := edtTimeSpent.Value * edtRate.Value;
//      end
//    end
//    else
//      edtitemValue.Value := 0;
//  end;
//end;

procedure TTimesheetEditFrm.doStdActivity(Sender: TObject);
begin
  inherited;
//
end;

procedure TTimesheetEditFrm.lucActivityDatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if VarIsNull(lucActivityDate.EditValue) then
    Exit;

  edtDayName.Text := DayMonthName(lucActivityDate.EditValue, ntDay, nfShort);

//  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
//    VBBaseDM.MyDataSet.FieldByName('DAY_NAME').AsString :=
//      DayMonthName(lucActivityDate.EditValue, ntDay, nfShort);
end;

procedure TTimesheetEditFrm.edtRatePropertiesChange(Sender: TObject);
begin
  inherited;
////  RecalcValues;
//  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//      edtitemValue.Value := edtTimeSpent.Value * edtRate.Value
//    else
//      edtitemValue.Value := 0;
//  end;
//
////  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
////  begin
////    if cbxBillable.Checked then
////      VBBaseDM.MyDataSet. FieldByName('ITEM_VALUE').AsFloat   := edtTimeSpent.Value * edtRate.Value
////    else
////      VBBaseDM.MyDataSet. FieldByName('ITEM_VALUE').AsFloat  := 0;
////  end;
end;

procedure TTimesheetEditFrm.edtRatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  RecalcValues;
//  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//      edtitemValue.Value := edtTimeSpent.Value * edtRate.Value
//    else
//      edtitemValue.Value := 0;
//  end;

//  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//      VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//        VBBaseDM.MyDataSet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value
//    else
//      VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := 0;
//  end;

  if not FClosingForm then
  begin
    if cbxBillable.Checked then
    begin
      if VBBaseDM.MyDataSet.FieldByName('RATE_UNIT_ID').AsInteger = 1 then

        edtitemValue.Value :=
          VBBaseDM.MyDataSet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value / 60
      else
        edtitemValue.Value :=
          VBBaseDM.MyDataSet.FieldByName('ACTUAL_RATE').AsFloat;
    end
    else
      edtitemValue.Value := 0;
  end;
end;

procedure TTimesheetEditFrm.edtTimeSpentPropertiesChange(Sender: TObject);
begin
  inherited;
////  RecalcValues;
//  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    edtHours.Value := edtTimeSpent.Value / 60;
//
//    if cbxBillable.Checked then
//      edtitemValue.Value := edtTimeSpent.Value * edtRate.Value
//    else
//      edtitemValue.Value := 0;
//  end;
//

//  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    VBBaseDM.MyDataSet.FieldByName('TIME_HOURS').AsFloat :=
//      VBBaseDM.MyDataSet.FieldByName('TIME_SPENT').AsFloat / 60;
//
//    if cbxBillable.Checked then
//      VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//        VBBaseDM.MyDataSet.FieldByName('TIME_SPENT').AsFloat * VBBaseDM.MyDataSet.FieldByName('ACTUAL_RATE').AsFloat
//    else
//      VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := 0;
//  end;
end;

procedure TTimesheetEditFrm.edtTimeSpentPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if not FClosingForm then
  begin
    edtHours.Value := edtTimeSpent.Value / 60;

    if cbxBillable.Checked then
      edtitemValue.Value := edtTimeSpent.Value * edtRate.Value
    else
      edtitemValue.Value := 0;

//  if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    VBBaseDM.MyDataSet.FieldByName('TIME_HOURS').AsFloat :=
//      VBBaseDM.MyDataSet.FieldByName('TIME_SPENT').AsFloat / 60;
//
//    if cbxBillable.Checked then
//      VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//        VBBaseDM.MyDataSet.FieldByName('TIME_SPENT').AsFloat *
//        VBBaseDM.MyDataSet.FieldByName('ACTUAL_RATE').AsFloat
//    else
//      edtitemValue.Value := 0;
//  end;
  end;
end;

procedure TTimesheetEditFrm.edtTimeSpentPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  ErrorText := 'Invalid value for time spent. Please enter a value greater than 0 with a maximum of ' +
    FormatFloat('#,##0', edtTimeSpent.Properties.MaxValue);
end;

end.

