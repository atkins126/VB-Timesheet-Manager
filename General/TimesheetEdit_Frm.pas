unit TimesheetEdit_Frm;

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
  dxCore, cxDateUtils, Report_DM;

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
    FMyDataSet: TFDMemTable;
    FMyDataSource: TDataSource;
    { Private declarations }
//    procedure RecalcValues;
  public
    { Public declarations }
    property MyDataSet: TFDMemTable read FMyDataSet write FMyDataSet;
    property MyDataSource: TDataSource read FMyDataSource write FMyDataSource;
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
end;

procedure TTimesheetEditFrm.FormShow(Sender: TObject);
begin
  inherited;
  try
    cbxAproved.DataBinding.DataSource := MyDataSource;
    cbxCarryForward.DataBinding.DataSource := MyDataSource;
    cbxAddWork.DataBinding.DataSource := MyDataSource;
//  edtDayName.DataBinding.DataSource := MyDataSource;
    cbxBillable.DataBinding.DataSource := MyDataSource;
    dteActivityDate.DataBinding.DataSource := MyDataSource;
    memActivity.DataBinding.DataSource := MyDataSource;
    edtTimeSpent.DataBinding.DataSource := MyDataSource;
//  edtHours.DataBinding.DataSource := MyDataSource;
    edtRate.DataBinding.DataSource := MyDataSource;
    edtStdrate.DataBinding.DataSource := MyDataSource;
    lucCustomer.Properties.ListSource := TSDM.dtsCustomerLookup;
    lucCustomer.DataBinding.DataSource := MyDataSource;
    lucPriceListItem.Properties.ListSource := TSDM.dtsPriceList;
    lucPriceListItem.DataBinding.DataSource := MyDataSource;
    lucActivityType.Properties.ListSource := TSDM.dtsActivityType;
    lucActivityType.DataBinding.DataSource := MyDataSource;
    lucRateUnit.Properties.ListSource := TSDM.dtsRateUnit;
    lucRateUnit.DataBinding.DataSource := MyDataSource;
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

  if VBBaseDM.DBAction = acInsert then
  begin
    NextID := VBBaseDM.GetNextID(MyDataSet.UpdateOptions.GeneratorName);
    MyDataSet.FieldByName('ID').AsInteger := NextID;
  end;

  MyDataSet.Post;
  TSDM.PostData(MyDataSet);

  if not (MyDataSet.State in [dsEdit, dsInsert]) then
    MyDataSet.Edit;

  MyDataSet.FieldByName('TIME_HOURS').AsFloat := edtHours.Value;
  MyDataSet.FieldByName('ITEM_VALUE').AsFloat := edtitemValue.Value;
  MyDataSet.FieldByName('DAY_NAME').AsString := edtDayName.Text;
  MyDataSet.FieldByName('DAY_ORDER').Asinteger := DayOfTheWeek(MyDataSet.FieldByName('ACTIVITY_DATE').AsDateTime);
  MyDataSet.Post;
  Self.ModalResult := mrOK;
end;

procedure TTimesheetEditFrm.cbxBillablePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  RecalcValues;
//  if MyDataSet.State in [dsEdit, dsInsert] then
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

//  if MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//    begin
//      case VarAstype(lucRateUnit.EditValue, varInteger) of
//        1: MyDataSet.FieldByName('ITEM_VALUE').AsFloat := edtTimeSpent.Value * edtRate.Value / 60;
//      else
//        MyDataSet.FieldByName('ITEM_VALUE').AsFloat := {edtTimeSpent.Value * }edtRate.Value;
//      end;
//    end
//    else
//      MyDataSet.FieldByName('ITEM_VALUE').AsFloat := 0;
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
  if MyDataSet.State in [dsEdit, dsInsert] then
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

      MyDataSet.FieldByName('ACTUAL_RATE').AsFloat := TSDM.cdsPriceList.FieldByName('RATE').AsFloat;
      MyDataSet.FieldByName('STD_RATE').AsFloat := TSDM.cdsPriceList.FieldByName('RATE').AsFloat;
      if cbxBillable.Checked then
        MyDataSet.FieldByName('ITEM_VALUE').AsFloat := edtTimeSpent.Value * edtRate.Value
      else
        MyDataSet.FieldByName('ITEM_VALUE').AsFloat := 0;
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
  if MyDataSet.State in [dsEdit, dsInsert] then
  begin
    if cbxBillable.Checked then
    begin
      case VarAstype(lucRateUnit.EditValue, varInteger) of
        1: MyDataSet.FieldByName('ITEM_VALUE').AsFloat := edtTimeSpent.Value * edtRate.Value / 60;
      else
        MyDataSet.FieldByName('ITEM_VALUE').AsFloat := {edtTimeSpent.Value * }edtRate.Value;
      end;
    end
    else
      MyDataSet.FieldByName('ITEM_VALUE').AsFloat := 0;
  end;
end;

//procedure TTimesheetEditFrm.RecalcValues;
//begin
//  if MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//      MyDataSet.FieldByName('TIME_SPENT').AsFloat / 60;
//
//    if cbxBillable.Checked then
//    begin
//      case VarAstype(lucRateUnit.EditValue, varInteger) of
//        1: MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//          MyDataSet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value / 60;
//      else
//        MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//          MyDataSet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value;
//
//        MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//          MyDataSet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value;
//      end
//    end
//    else
//      edtitemValue.Value := 0;
//  end;

//  if MyDataSet.State in [dsEdit, dsInsert] then
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

//  if MyDataSet.State in [dsEdit, dsInsert] then
//    MyDataSet.FieldByName('DAY_NAME').AsString :=
//      DayMonthName(dteActivityDate.EditValue, ntDay, nfShort);
end;

procedure TTimesheetEditFrm.edtRatePropertiesChange(Sender: TObject);
begin
  inherited;
////  RecalcValues;
//  if MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//      edtitemValue.Value := edtTimeSpent.Value * edtRate.Value
//    else
//      edtitemValue.Value := 0;
//  end;
//
////  if MyDataSet.State in [dsEdit, dsInsert] then
////  begin
////    if cbxBillable.Checked then
////      MyDataSet. FieldByName('ITEM_VALUE').AsFloat   := edtTimeSpent.Value * edtRate.Value
////    else
////      MyDataSet. FieldByName('ITEM_VALUE').AsFloat  := 0;
////  end;
end;

procedure TTimesheetEditFrm.edtRatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  RecalcValues;
//  if MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//      edtitemValue.Value := edtTimeSpent.Value * edtRate.Value
//    else
//      edtitemValue.Value := 0;
//  end;

//  if MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    if cbxBillable.Checked then
//      MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//        MyDataSet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value
//    else
//      MyDataSet.FieldByName('ITEM_VALUE').AsFloat := 0;
//  end;

  if cbxBillable.Checked then
    edtitemValue.Value :=
      MyDataSet.FieldByName('TIME_SPENT').AsFloat * edtRate.Value
  else
    edtitemValue.Value := 0;
end;

procedure TTimesheetEditFrm.edtTimeSpentPropertiesChange(Sender: TObject);
begin
  inherited;
////  RecalcValues;
//  if MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    edtHours.Value := edtTimeSpent.Value / 60;
//
//    if cbxBillable.Checked then
//      edtitemValue.Value := edtTimeSpent.Value * edtRate.Value
//    else
//      edtitemValue.Value := 0;
//  end;
//

//  if MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    MyDataSet.FieldByName('TIME_HOURS').AsFloat :=
//      MyDataSet.FieldByName('TIME_SPENT').AsFloat / 60;
//
//    if cbxBillable.Checked then
//      MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//        MyDataSet.FieldByName('TIME_SPENT').AsFloat * MyDataSet.FieldByName('ACTUAL_RATE').AsFloat
//    else
//      MyDataSet.FieldByName('ITEM_VALUE').AsFloat := 0;
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

//  if MyDataSet.State in [dsEdit, dsInsert] then
//  begin
//    MyDataSet.FieldByName('TIME_HOURS').AsFloat :=
//      MyDataSet.FieldByName('TIME_SPENT').AsFloat / 60;
//
//    if cbxBillable.Checked then
//      MyDataSet.FieldByName('ITEM_VALUE').AsFloat :=
//        MyDataSet.FieldByName('TIME_SPENT').AsFloat *
//        MyDataSet.FieldByName('ACTUAL_RATE').AsFloat
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

