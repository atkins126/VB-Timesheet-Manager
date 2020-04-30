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
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxLabel;

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
    litEditStatus: TdxLayoutItem;
    lblEditStatus: TcxLabel;
    styEditStatus: TcxEditStyleController;
    spc4: TdxLayoutEmptySpaceItem;
    edtItemValue: TcxDBCurrencyEdit;
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
    procedure doStdActivity(Sender: TObject);
    procedure btnStdActivityClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    FClosingForm: Boolean;
    FCanEdit: Boolean;
//    FMyDataSet: TFDMemTable;
//    FMyDataSource: TDataSource;
    { Private declarations }
//    procedure RecalcValues;
    procedure SetReadOnlystatus(CanEdit: Boolean);
  public
    { Public declarations }
    property CanEdit: Boolean read FCanEdit write FCanEdit;
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
  edtTimeSpent.Properties.OnEditValueChanged := nil;
  edtRate.Properties.OnEditValueChanged := nil;
  lucRateUnit.Properties.OnEditValueChanged := nil;

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
    edtItemValue.DataBinding.DataSource := VBBaseDM.MyDataSource;
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
//    edtitemValue.Value := TSDM.cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat;

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

    SetReadOnlyStatus(FCanEdit);
  finally
    edtTimeSpent.Properties.OnEditValueChanged := edtTimeSpentPropertiesEditValueChanged;
    edtRate.Properties.OnEditValueChanged := edtRatePropertiesEditValueChanged;
    lucRateUnit.Properties.OnEditValueChanged := lucRateUnitPropertiesEditValueChanged;
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
  SQLStatement: string;
  Response: TStringList;
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

  SQLStatement := 'UPDATE TIMESHEET SET ' +
    ' USER_ID = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('USER_ID').AsInteger, varString) + ',' +
    ' CUSTOMER_ID = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('CUSTOMER_ID').AsInteger, varString) + ',' +
    ' PRICE_LIST_ITEM_ID = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('PRICE_LIST_ITEM_ID').AsInteger, varString) + ',' +
    ' RATE_UNIT_ID = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('RATE_UNIT_ID').AsInteger, varString) + ',' +
    ' ACTIVITY_TYPE_ID = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('ACTIVITY_TYPE_ID').AsInteger, varString) + ',' +
    ' CUSTOMER_GROUP_ID = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('CUSTOMER_GROUP_ID').AsInteger, varString) + ',' +
    ' ACTIVITY_DATE = ' + AnsiQuotedStr(FormatDateTime('yyyy-MM-dd', VBBaseDM.MyDataSet.FieldByName('ACTIVITY_DATE').AsDateTime), '''') + ',' +
    ' ACTIVITY = ' + AnsiQuotedStr(VBBaseDM.MyDataSet.FieldByName('ACTIVITY').AsString, '''') + ',' +
    ' TIME_SPENT = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('TIME_SPENT').AsFloat, varString) + ',' +
    ' ACTUAL_RATE = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('ACTUAL_RATE').AsFloat, varString) + ',' +
    ' STD_RATE = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('STD_RATE').AsFloat, varString) + ',' +
    ' BILLABLE = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('BILLABLE').AsInteger, varString) + ',' +
    ' APPROVED = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('APPROVED').AsInteger, varString) + ',' +
    ' IS_ADDITIONAL_WORK = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('IS_ADDITIONAL_WORK').AsInteger, varString) +
    ' WHERE ID = ' + VarAsType(VBBaseDM.MyDataSet.FieldByName('ID').AsInteger, varString);

  Response := RUtils.CreateStringList(PIPE, SINGLE_QUOTE);

  try
    Response.DelimitedText := VBBaseDM.ExecuteSQLCommand(SQLStatement);
    if SameText(Response.Values['RESPONSE'], 'ERROR') then
      raise EServerError.Create('One or more errors occurred when executing an SQL command with error message:' + CRLF + CRLF +
        Response.Values['ERROR_MESSAGE']);
  finally
    Response.Free;
  end;

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
//    if VBBaseDM.MyDataSet.State in [dsEdit, dsInsert] then
//    begin
    if cbxBillable.Checked then
    begin
      if not VarIsNull(lucRateUnit.EditValue) then
        if lucRateUnit.EditValue = 1 then
          VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := edtTimeSpent.Value * edtRate.Value / 60
        else
          VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := {edtTimeSpent.Value * }edtRate.Value;
    end
    else
      VBBaseDM.MyDataSet.FieldByName('ITEM_VALUE').AsFloat := 0;
  end
//  end;
end;

procedure TTimesheetEditFrm.SetReadOnlystatus(CanEdit: Boolean);
begin
  btnOK.Enabled := CanEdit;
  litEditStatus.Visible := not CanEdit;
  btnStdActivity.Enabled := CanEdit;

  if not CanEdit then
  begin
    lucActivityDate.Properties.ReadOnly := not CanEdit;
    cbxAproved.Properties.ReadOnly := not CanEdit;
    cbxBillable.Properties.ReadOnly := not CanEdit;
    cbxAddWork.Properties.ReadOnly := not CanEdit;
    lucCustomer.Properties.ReadOnly := not CanEdit;
    lucPriceListItem.Properties.ReadOnly := not CanEdit;
    lucActivityType.Properties.ReadOnly := not CanEdit;
    memActivity.Properties.ReadOnly := not CanEdit;
    edtTimeSpent.Properties.ReadOnly := not CanEdit;
    edtRate.Properties.ReadOnly := not CanEdit;
    lucRateUnit.Properties.ReadOnly := not CanEdit;
    cbxCarryForward.Properties.ReadOnly := not CanEdit;

    lucActivityDate.Style.StyleController := styReadOnly;

    cbxAproved.Style.StyleController := styReadOnly;
    cbxBillable.Style.StyleController := styReadOnly;
    cbxAddWork.Style.StyleController := styReadOnly;
    lucCustomer.Style.StyleController := styReadOnly;
    lucPriceListItem.Style.StyleController := styReadOnly;
    lucActivityType.Style.StyleController := styReadOnly;
    memActivity.Style.StyleController := styReadOnly;
    edtTimeSpent.Style.StyleController := styReadOnly;
    edtRate.Style.StyleController := styReadOnly;
    lucRateUnit.Style.StyleController := styReadOnly;
    cbxCarryForward.Style.StyleController := styReadOnly;
  end;
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
        edtitemValue.Value := VBBaseDM.MyDataSet.FieldByName('ACTUAL_RATE').AsFloat;
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
    if cbxBillable.Checked then
    begin
      if VBBaseDM.MyDataSet.FieldByName('RATE_UNIT_ID').AsInteger = 1 then
        edtitemValue.Value :=
          VBBaseDM.MyDataSet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value / 60
      else
        edtitemValue.Value := VBBaseDM.MyDataSet.FieldByName('ACTUAL_RATE').AsFloat;
    end
    else
      edtitemValue.Value := 0;
  end;

//  if not FClosingForm then
//  begin
//    edtHours.Value := edtTimeSpent.Value / 60;
//
//    if cbxBillable.Checked then
//    begin
//      case lucRateUnit.EditValue of
//        1: edtitemValue.Value := edtTimeSpent.Value * edtRate.Value / 60;
//      else
//        edtitemValue.Value := edtRate.Value;
//      end;
////    case cdsTimesheet.FieldByName('RATE_UNIT_ID').AsInteger of
////      1: cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
////        cdsTimesheet.FieldByName('ACTUAL_RATE').AsFloat *
////          cdsTimesheet.FieldByName('TIME_HOURS').AsFloat;
////
////      2: cdsTimesheet.FieldByName('ITEM_VALUE').AsFloat :=
////        cdsTimesheet.FieldByName('ACTUAL_RATE').AsFloat;
////      edtitemValue.Value := edtTimeSpent.Value * edtRate.Value
//    end
//    else
//
//      edtitemValue.Value := 0;

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

procedure TTimesheetEditFrm.edtTimeSpentPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  ErrorText := 'Invalid value for time spent. Please enter a value greater than 0 with a maximum of ' +
    FormatFloat('#,##0', edtTimeSpent.Properties.MaxValue);
end;

end.

