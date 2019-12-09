unit TimesheetEdit_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Controls, Vcl.Dialogs, Data.DB, System.Actions, Vcl.ActnList, Vcl.Menus,
  System.DateUtils,

  BaseLayout_Frm, CommonValues,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxCheckBox, dxLayoutcxEditAdapters,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControlAdapters,
  cxButtons, cxMemo, cxCurrencyEdit, dxFormattedLabel, VBBase_DM, Vcl.ComCtrls,
  dxCore, cxDateUtils;

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
    edtRate: TcxDBCurrencyEdit;
    edtStdrate: TcxDBCurrencyEdit;
    litBillable: TdxLayoutItem;
    litTimeSpent: TdxLayoutItem;
    litHours: TdxLayoutItem;
    litAddWork: TdxLayoutItem;
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
    procedure FormCreate(Sender: TObject);
    procedure dteActivityDatePropertiesEditValueChanged(Sender: TObject);
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
  private
    { Private declarations }
//    procedure RecalcValues;
  public
    { Public declarations }
  end;

var
  TimesheetEditFrm: TTimesheetEditFrm;

implementation

{$R *.dfm}

uses
  TS_DM,
  RUtils;

procedure TTimesheetEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  // Width = 800;  Height = 405.
  Self.Width := 800;
  Self.Height := 555;
  Caption := 'Timesheet Data';
  cbxAproved.DataBinding.DataSource := TSDM.dtsTimesheet;
  cbxCarryForward.DataBinding.DataSource := TSDM.dtsTimesheet;
  cbxAddWork.DataBinding.DataSource := TSDM.dtsTimesheet;
//  edtDayName.DataBinding.DataSource := TSDM.dtsTimesheet;
  cbxBillable.DataBinding.DataSource := TSDM.dtsTimesheet;
  dteActivityDate.DataBinding.DataSource := TSDM.dtsTimesheet;
  memActivity.DataBinding.DataSource := TSDM.dtsTimesheet;
  edtTimeSpent.DataBinding.DataSource := TSDM.dtsTimesheet;
//  edtHours.DataBinding.DataSource := TSDM.dtsTimesheet;
  edtRate.DataBinding.DataSource := TSDM.dtsTimesheet;
  edtStdrate.DataBinding.DataSource := TSDM.dtsTimesheet;
  lucCustomer.Properties.ListSource := TSDM.dtsCustomerLookup;
  lucCustomer.DataBinding.DataSource := TSDM.dtsTimesheet;
  lucPriceListItem.Properties.ListSource := TSDM.dtsPriceList;
  lucPriceListItem.DataBinding.DataSource := TSDM.dtsTimesheet;
  lucActivityType.Properties.ListSource := TSDM.dtsActivityType;
  lucActivityType.DataBinding.DataSource := TSDM.dtsTimesheet;
  lucRateUnit.DataBinding.DataSource := TSDM.dtsTimesheet;
  lucRateUnit.Properties.ListSource := TSDM.dtsRateUnit;
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

  dteActivityDate.Properties.MinDate := StrToDate('01/01/2019');
  dteActivityDate.Properties.MaxDate := Date;
  dteActivityDatePropertiesEditValueChanged(nil);
  Screen.Cursor := crDefault;
end;

procedure TTimesheetEditFrm.FormShow(Sender: TObject);
begin
  inherited;
  if VarIsNull(lucCustomer.EditValue) then
    lucCustomer.SetFocus
  else if VarIsnull(lucPriceListItem.EditValue) then
    lucPriceListItem.SetFocus
  else
    lucActivityType.SetFocus;
end;

procedure TTimesheetEditFrm.btnOKClick(Sender: TObject);
var
  NextID: Integer;
begin
  inherited;
  if VarIsNull(dteActivityDate.EditValue) or SameText(Trim(dteActivityDate.Text), '') then
  begin
    dteActivityDate.SetFocus;
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

  NextID := VBBaseDM.GetNextID(TSDM.cdsTimesheet.UpdateOptions.GeneratorName);
  TSDM.cdsTimesheet.FieldByName('ID').AsInteger := NextID;
  TSDM.cdsTimesheet.Post;
  TSDM.PostData(TSDM.cdsTimesheet);

  if not (TSDM.cdsTimesheet.State in [dsEdit, dsInsert]) then
    TSDM.cdsTimesheet.Edit;

  TSDM.cdsTimesheet.FieldByName('TIME_HOURS').AsFloat := edtHours.Value;
  TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := edtitemValue.Value;
  TSDM.cdsTimesheet.FieldByName('DAY_NAME').AsString := edtDayName.Text;
  TSDM.cdsTimesheet.FieldByName('DAY_ORDER').Asinteger := DayOfTheWeek(TSDM.cdsTimesheet.FieldByName('ACTIVITY_DATE').AsDateTime);
  TSDM.cdsTimesheet.Post;

  Self.ModalResult := mrOK;
end;

procedure TTimesheetEditFrm.cbxBillablePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  RecalcValues;
//  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
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

//  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//    begin
//      case VarAstype(lucRateUnit.EditValue, varInteger) of
//        1: TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := edtTimeSpent.Value * edtRate.Value / 60;
//      else
//        TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := {edtTimeSpent.Value * }edtRate.Value;
//      end;
//    end
//    else
//      TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := 0;
//  end;

  if cbxBillable.Checked then
  begin
    case VarAstype(lucRateUnit.EditValue, varInteger) of
      1: edtitemValue.Value := edtTimeSpent.Value * edtRate.Value / 60;
    else
      edtitemValue.Value := {edtTimeSpent.Value * }edtRate.Value;
    end;
  end
  else
    edtitemValue.Value := 0;
end;

procedure TTimesheetEditFrm.lucPriceListItemPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
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

      TSDM.cdsTimesheet.FieldByName('ACTUAL_RATE').AsFloat := TSDM.cdsPriceList.FieldByName('RATE').AsFloat;
      TSDM.cdsTimesheet.FieldByName('STD_RATE').AsFloat := TSDM.cdsPriceList.FieldByName('RATE').AsFloat;
      if cbxBillable.Checked then
        TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := edtTimeSpent.Value * edtRate.Value
      else
        TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := 0;
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
  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
  begin
    if cbxBillable.Checked then
    begin
      case VarAstype(lucRateUnit.EditValue, varInteger) of
        1: TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := edtTimeSpent.Value * edtRate.Value / 60;
      else
        TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := {edtTimeSpent.Value * }edtRate.Value;
      end;
    end
    else
      TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := 0;
  end;
end;

//procedure TTimesheetEditFrm.RecalcValues;
//begin
//  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
//  begin
//    TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
//      TSDM.cdsTimesheet.FieldByName('TIME_SPENT').AsFloat / 60;
//
//    if cbxBillable.Checked then
//    begin
//      case VarAstype(lucRateUnit.EditValue, varInteger) of
//        1: TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
//          TSDM.cdsTimesheet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value / 60;
//      else
//        TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
//          TSDM.cdsTimesheet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value;
//
//        TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
//          TSDM.cdsTimesheet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value;
//      end
//    end
//    else
//      edtitemValue.Value := 0;
//  end;

//  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
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

procedure TTimesheetEditFrm.dteActivityDatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if VarIsNull(dteActivityDate.EditValue) then
    Exit;

  edtDayName.Text := DayMonthName(dteActivityDate.EditValue, ntDay, nfShort);

//  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
//    TSDM.cdsTimesheet.FieldByName('DAY_NAME').AsString :=
//      DayMonthName(dteActivityDate.EditValue, ntDay, nfShort);
end;

procedure TTimesheetEditFrm.edtRatePropertiesChange(Sender: TObject);
begin
  inherited;
////  RecalcValues;
//  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//      edtitemValue.Value := edtTimeSpent.Value * edtRate.Value
//    else
//      edtitemValue.Value := 0;
//  end;
//
////  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
////  begin
////    if cbxBillable.Checked then
////      TSDM.cdsTimesheet. FieldByName('ITEM_VALUE').AsFloat   := edtTimeSpent.Value * edtRate.Value
////    else
////      TSDM.cdsTimesheet. FieldByName('ITEM_VALUE').AsFloat  := 0;
////  end;
end;

procedure TTimesheetEditFrm.edtRatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  RecalcValues;
//  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//      edtitemValue.Value := edtTimeSpent.Value * edtRate.Value
//    else
//      edtitemValue.Value := 0;
//  end;

//  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//      TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
//        TSDM.cdsTimesheet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value
//    else
//      TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := 0;
//  end;

  if cbxBillable.Checked then
    edtitemValue.Value :=
      TSDM.cdsTimesheet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value
  else
    edtitemValue.Value := 0;
end;

procedure TTimesheetEditFrm.edtTimeSpentPropertiesChange(Sender: TObject);
begin
  inherited;
////  RecalcValues;
//  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
//  begin
//    edtHours.Value := edtTimeSpent.Value / 60;
//
//    if cbxBillable.Checked then
//      edtitemValue.Value := edtTimeSpent.Value * edtRate.Value
//    else
//      edtitemValue.Value := 0;
//  end;
//

//  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
//  begin
//    TSDM.cdsTimesheet.FieldByName('TIME_HOURS').AsFloat :=
//      TSDM.cdsTimesheet.FieldByName('TIME_SPENT').AsFloat / 60;
//
//    if cbxBillable.Checked then
//      TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
//        TSDM.cdsTimesheet.FieldByName('TIME_SPENT').AsFloat * TSDM.cdsTimesheet.FieldByName('ACTUAL_RATE').AsFloat
//    else
//      TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat := 0;
//  end;
end;

procedure TTimesheetEditFrm.edtTimeSpentPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  edtHours.Value := edtTimeSpent.Value / 60;

  if cbxBillable.Checked then
    edtitemValue.Value := edtTimeSpent.Value * edtRate.Value
  else
    edtitemValue.Value := 0;

//  if TSDM.cdsTimesheet.State in [dsEdit, dsInsert] then
//  begin
//    TSDM.cdsTimesheet.FieldByName('TIME_HOURS').AsFloat :=
//      TSDM.cdsTimesheet.FieldByName('TIME_SPENT').AsFloat / 60;
//
//    if cbxBillable.Checked then
//      TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
//        TSDM.cdsTimesheet.FieldByName('TIME_SPENT').AsFloat *
//        TSDM.cdsTimesheet.FieldByName('ACTUAL_RATE').AsFloat
//    else
//      edtitemValue.Value := 0;
//  end;
end;

procedure TTimesheetEditFrm.edtTimeSpentPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  ErrorText := 'Invalid value for time spent. Please enter a value greater than 0 with a maximum of ' +
    FormatFloat('#,##0', edtTimeSpent.Properties.MaxValue);
end;

end.

