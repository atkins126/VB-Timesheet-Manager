unit TimesheetDetailReport_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, System.Win.Registry,

  frxClass,

  BaseLayout_Frm, VBCommonValues, Base_DM, CommonFunction,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, dxBar, dxBarExtItems,
  dxLayoutcxEditAdapters, dxPrnDev, dxPrnDlg, cxCheckBox, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxCurrencyEdit, cxMemo,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid;

type
  TReportArray = array of string;
  TReportDescriptionArray = array of string;
  TExportGridArray = array of TcxGrid;

  TTimesheetDetailReportFrm = class(TBaseLayoutFrm)
    lucDateType: TcxComboBox;
    lucBillable: TcxComboBox;
    lucWorkType: TcxComboBox;
    dteToDate: TcxDateEdit;
    lucPeriod: TcxLookupComboBox;
    actCloseForm: TAction;
    actGetData: TAction;
    actPreview: TAction;
    actPrint: TAction;
    actExcel: TAction;
    actPDF: TAction;
    litToolbar: TdxLayoutItem;
    docToolbar: TdxBarDockControl;
    barManager: TdxBarManager;
    barToolbar: TdxBar;
    btnClose: TdxBarLargeButton;
    btnGetData: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnPDF: TdxBarLargeButton;
    btnPreview: TdxBarLargeButton;
    btnPrint: TdxBarLargeButton;
    litDateType: TdxLayoutItem;
    litBillable: TdxLayoutItem;
    litWorkType: TdxLayoutItem;
    litPeriod: TdxLayoutItem;
    litFromDate: TdxLayoutItem;
    litToDate: TdxLayoutItem;
    grpAll: TdxLayoutGroup;
    grpDateType: TdxLayoutGroup;
    grpSubOptions: TdxLayoutGroup;
    grpData: TdxLayoutGroup;
    grp1: TdxLayoutGroup;
    grp2: TdxLayoutGroup;
    grp3: TdxLayoutGroup;
    grp4: TdxLayoutGroup;
    dteFromDate: TcxDateEdit;
    dlgPrint: TdxPrintDialog;
    dlgFileSave: TSaveDialog;
    grpOther1: TdxLayoutGroup;
    grpOther2: TdxLayoutGroup;
    cbxOepnDocument: TcxCheckBox;
    cbxRemoveZeroBillableValues: TcxCheckBox;
    litOpenDoc: TdxLayoutItem;
    litRemoveZeroBillable: TdxLayoutItem;
    litUser: TdxLayoutItem;
    grdTimesheet: TcxGrid;
    viewTimesheet: TcxGridDBBandedTableView;
    edtTSID: TcxGridDBBandedColumn;
    edtTSCID: TcxGridDBBandedColumn;
    edtTSPID: TcxGridDBBandedColumn;
    lucSystemUser: TcxGridDBBandedColumn;
    edtTSPeriod: TcxGridDBBandedColumn;
    lucTSActivityDate: TcxGridDBBandedColumn;
    lucPriceList: TcxGridDBBandedColumn;
    lucRateUnit: TcxGridDBBandedColumn;
    lucActivityType: TcxGridDBBandedColumn;
    edtTSActivity: TcxGridDBBandedColumn;
    edtTSTimeMins: TcxGridDBBandedColumn;
    edtTSTimeHours: TcxGridDBBandedColumn;
    edtTSRate: TcxGridDBBandedColumn;
    edtTSStdRate: TcxGridDBBandedColumn;
    edtTSItemValue: TcxGridDBBandedColumn;
    edtTSInvID: TcxGridDBBandedColumn;
    edtTSCreditnoteID: TcxGridDBBandedColumn;
    cbxTSLocked: TcxGridDBBandedColumn;
    edtTSModified: TcxGridDBBandedColumn;
    cbxTSBillable: TcxGridDBBandedColumn;
    edtTSInvoiceDate: TcxGridDBBandedColumn;
    cbxTSCarryForward: TcxGridDBBandedColumn;
    cbxTSApproved: TcxGridDBBandedColumn;
    cbxTSAddWork: TcxGridDBBandedColumn;
    edtTSCGrpID: TcxGridDBBandedColumn;
    lvlTimesheet: TcxGridLevel;
    grdCarryForwardDetail: TcxGrid;
    viewCarryForwardDetail: TcxGridDBBandedTableView;
    edtCFID: TcxGridDBBandedColumn;
    edtCFCustomerID: TcxGridDBBandedColumn;
    edtCFPIID: TcxGridDBBandedColumn;
    lucCFSystemuser: TcxGridDBBandedColumn;
    edtCFPeriod: TcxGridDBBandedColumn;
    lucCFActivityDate: TcxGridDBBandedColumn;
    lucCFPriceList: TcxGridDBBandedColumn;
    lucCFRateUnit: TcxGridDBBandedColumn;
    lucCFActivityType: TcxGridDBBandedColumn;
    edtCFActivity: TcxGridDBBandedColumn;
    edtCFTimeMins: TcxGridDBBandedColumn;
    edtCFTimeHours: TcxGridDBBandedColumn;
    edtCFRate: TcxGridDBBandedColumn;
    edtCFStdRate: TcxGridDBBandedColumn;
    edtCFItemValue: TcxGridDBBandedColumn;
    edtCFInvID: TcxGridDBBandedColumn;
    edtCFCreditnoteID: TcxGridDBBandedColumn;
    cbxCFLocked: TcxGridDBBandedColumn;
    lucCFModified: TcxGridDBBandedColumn;
    cbxCFBillable: TcxGridDBBandedColumn;
    edtCFInvoiceDate: TcxGridDBBandedColumn;
    cbxCFCarryForward: TcxGridDBBandedColumn;
    cbxCFApproved: TcxGridDBBandedColumn;
    cbxCFAddWork: TcxGridDBBandedColumn;
    edtCFCGID: TcxGridDBBandedColumn;
    lvlCarryForwardDetail: TcxGridLevel;
    grdSystemUser: TcxGrid;
    viewSystemUser: TcxGridDBBandedTableView;
    edtUID: TcxGridDBBandedColumn;
    edtUFirstname: TcxGridDBBandedColumn;
    edtULastName: TcxGridDBBandedColumn;
    lvlSystemUser: TcxGridLevel;
    litDetailByCustomer: TdxLayoutItem;
    grdCustomerListing: TcxGrid;
    viewCustomerListing: TcxGridDBBandedTableView;
    edtCID: TcxGridDBBandedColumn;
    edtCCTID: TcxGridDBBandedColumn;
    edtCStatusID: TcxGridDBBandedColumn;
    edtCCustomerName: TcxGridDBBandedColumn;
    edtCCustomerType: TcxGridDBBandedColumn;
    edtCCustomerStatus: TcxGridDBBandedColumn;
    edtCIsActive: TcxGridDBBandedColumn;
    edtCCGrpID: TcxGridDBBandedColumn;
    edtCCustID: TcxGridDBBandedColumn;
    edtCCustGrpLinkName: TcxGridDBBandedColumn;
    lvlCustomerListing: TcxGridLevel;
    litDetailByActivity: TdxLayoutItem;
    grdActivityType: TcxGrid;
    viewActivityType: TcxGridDBBandedTableView;
    edtAID: TcxGridDBBandedColumn;
    edtAName: TcxGridDBBandedColumn;
    lvlActivityType: TcxGridLevel;
    lucReportType: TdxBarCombo;
    procedure FormCreate(Sender: TObject);
    procedure DoCloseForm(Sender: TObject);
    procedure DoGetData(Sender: TObject);
    procedure DoPreview(Sender: TObject);
    procedure DoPrint(Sender: TObject);
    procedure DoExcel(Sender: TObject);
    procedure DoPDF(Sender: TObject);
    procedure GetPeriods;
    procedure GetSystemUser;
    procedure GetCustomer;
    procedure GetActivityType;
    procedure CloseDataSets;
    procedure GetTimesheetDetail;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lucDateTypePropertiesEditValueChanged(Sender: TObject);
    procedure HideTabs;
    procedure lucReportTypeChange(Sender: TObject);
  private
    { Private declarations }
    FGridIndex: Integer;
    FGridArray: TExportGridArray;
    FReportArray: TReportArray;
    FReportDescriptionArray: TReportDescriptionArray;

    property ReportArray: TReportArray read FReportArray write FReportArray;
    property ReportDescriptionArray: TReportDescriptionArray read FReportDescriptionArray write FReportDescriptionArray;
//    property NodeIndex: Integer read FNodeIndex write FNodeIndex;
    property GridArray: TExportGridArray read FGridArray write FGridArray;
    property GridIndex: Integer read FGridIndex write FGridIndex;
  public
    { Public declarations }
  end;

var
  TimesheetDetailReportFrm: TTimesheetDetailReportFrm;

const
  ARRAY_COUNT = 4;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  TS_DM,
  RUtils,
  Report_DM,
//  Lookup_DM,
  Progress_Frm;

procedure TTimesheetDetailReportFrm.FormCreate(Sender: TObject);
var
  I: Integer;
  Progress: Extended;
  RegKey: TRegistry;
  DownloadCaption: string;
begin
  inherited;
  Width := 930;
  Height := 800;
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  TcxDateEditProperties(lucTSActivityDate.Properties).MinDate := StrToDate('01/01/2019');
  TcxDateEditProperties(lucTSActivityDate.Properties).MaxDate := Date;

  RegKey := TRegistry.Create(KEY_ALL_ACCESS or KEY_WRITE or KEY_WOW64_64KEY);
  RegKey.RootKey := HKEY_CURRENT_USER;
  RegKey.OpenKey(KEY_VB_APPS, True);

  if not RegKey.ValueExists('Maximize Report Form') then
    RegKey.WriteBool('Maximize Report Form', True);

  if ReportDM = nil then
    ReportDM := TReportDM.Create(nil);

//  cbxAlwaysMaximize.Checked := RegKey.ReadBool('Maximize Report Form');
//  PopulateReportSelectionList;
  SetLength(FReportArray, ARRAY_COUNT);
  SetLength(FReportDescriptionArray, ARRAY_COUNT);
  SetLength(FGridArray, ARRAY_COUNT);
  FReportArray[0] := 'Detail by User';
  FReportArray[1] := 'Detail by Customer';
  FReportArray[2] := 'Detail by Activity';
  FReportArray[3] := 'Summary by Activity';
//  FReportArray[4] := 'Billable Summary';

  FReportDescriptionArray[0] := 'Timesheet details grouped by user';
  FReportDescriptionArray[1] := 'Timesheet details grouped by customer';
  FReportDescriptionArray[2] := 'Timesheet details grouped by activity';
  FReportDescriptionArray[3] := 'Get billable summary grouped by activity';
//  FReportDescriptionArray[4] := 'Get billable summary data for the selected period(s)';

//  FGridArray[0] := grdTimesheetBillable;
//  FGridArray[1] := grdTimesheetBillable;
//  FGridArray[2] := grdTimesheetBillable;
//  FGridArray[3] := grdSummaryByActivity;
//  FGridArray[4] := grdBillableSummary;

  lucPeriod.Properties.ListSource := ReportDM.dtsPeriodListing;
  viewSystemUser.DataController.DataSource := ReportDM.dtsSystemUser;
  viewCustomerListing.DataController.DataSource := ReportDM.dtsTSCustomer;
  viewActivityType.DataController.DataSource := ReportDM.dtsActivityType;
//  viewSummaryByActivity.DataController.DataSource := ReportDM.dtsTSSummaryByActivity;
  viewTimesheet.DataController.DataSource := ReportDM.dtsTimesheet;
  viewCarryForwardDetail.DataController.DataSource := ReportDM.dtsCarryForwardDetail;

  TcxLookupComboBoxProperties(lucSystemUser.Properties).ListSource := ReportDM.dtsSystemUser;
  TcxLookupComboBoxProperties(lucCFSystemuser.Properties).ListSource := ReportDM.dtsSystemUser;

  TcxLookupComboBoxProperties(lucPriceList.Properties).ListSource := ReportDM.dtsPriceListView;
  TcxLookupComboBoxProperties(lucCFPriceList.Properties).ListSource := ReportDM.dtsPriceListView;

  TcxLookupComboBoxProperties(lucRateUnit.Properties).ListSource := ReportDM.dtsRateuit;
  TcxLookupComboBoxProperties(lucCFRateUnit.Properties).ListSource := ReportDM.dtsRateuit;

  TcxLookupComboBoxProperties(lucActivityType.Properties).ListSource := ReportDM.dtsActivityType;
  TcxLookupComboBoxProperties(lucCFActivityType.Properties).ListSource := ReportDM.dtsActivityType;

  GetPeriods;
  if not ReportDM.cdsPeriodListing.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
    ReportDM.cdsPeriodListing.Last;

  lucPeriod.EditValue := ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').Asinteger;

//  if not ReportDM.cdsToPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
//    ReportDM.cdsToPeriod.Last;

//  lucSumByActivityPeriod.Properties.OnChange := nil;
//  try
//    if not ReportDM.cdsSumByActivityPeriod.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
//      ReportDM.cdsSumByActivityPeriod.Last;
//
//    lucSumByActivityPeriod.Text := ReportDM.cdsSumByActivityPeriod.FieldByName('THE_PERIOD').Value;
//  finally
//    lucSumByActivityPeriod.Properties.OnChange := lucSumByActivityPeriodPropertiesChange;
//  end;
//
////  TfrxGroupHeader(ReportDM.rptBillableSummaryByCustomer.FindObject('bndCustomerHeader')).Visible := False;
////  TfrxMemoView(ReportDM.rptBillableSummaryByCustomer.FindObject('lblCustomerHeader')).Visible := False;

  if ProgressFrm = nil then
    ProgressFrm := TProgressFrm.Create(nil);
  ProgressFrm.lblAppTitle.Caption := 'Getting Data...';
  ProgressFrm.Update;
  ProgressFrm.Show;
  ProgressFrm.Update;
  I := 1;

  try
    DownloadCaption := 'Opening_System_User_Table';
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    GetSystemUser;

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening_Customer_Table';
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    GetCustomer;

    Inc(I);
    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
    DownloadCaption := 'Opening_Activity_Type_Table';
    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
    GetActivityType;

    HideTabs;
    lucReportType.ItemIndex := 0;
    grpData.Items[0].Visible := True;

//    Inc(I);
//    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
//    DownloadCaption := 'Opening_Customer_Table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
//    GetPriceList;
//
//    Inc(I);
//    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
//    DownloadCaption := 'Opening_Rate_Unit_Table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
//    GetRateUnit;
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=100' + '|CAPTION=All_tables_opened')), 0);
//
//    Inc(I);
//    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
//    DownloadCaption := 'Opening_Customer_Group_Table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
//    GetRateUnit;
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=100' + '|CAPTION=All_tables_opened')), 0);
//
//    Inc(I);
//    Progress := StrToFloat(I.ToString) / StrToFloat(TABLE_COUNT.ToString) * 100;
//    DownloadCaption := 'Opening_Customer_Table';
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=' + FloatToStr(Progress) + '|CAPTION=' + DownloadCaption)), 0);
//    GetRateUnit;
//    SendMessage(ProgressFrm.Handle, WM_DOWNLOAD_CAPTION, DWORD(PChar('PROGRESS=100' + '|CAPTION=All_tables_opened')), 0);
    RegKey.CloseKey;
    lucDateType.ItemIndex := 0;
  finally
    FreeAndNil(RegKey);
    ProgressFrm.Close;
    FreeAndNil(ProgressFrm);
  end;
end;

procedure TTimesheetDetailReportFrm.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(ReportDM) then
    FreeAndNil(ReportDM);
end;

procedure TTimesheetDetailReportFrm.FormShow(Sender: TObject);
begin
  inherited;
  if lucDateType.ItemIndex = 0 then
  begin
    if lucPeriod.CanFocus and Self.Showing then
      lucPeriod.SetFocus;
  end
  else
  begin
    if dteFromDate.CanFocus and Self.Showing then
      dteFromDate.SetFocus;
  end;

  Screen.Cursor := crDefault;
end;

procedure TTimesheetDetailReportFrm.CloseDataSets;
begin
//  ReportDM.cdsSumByActivityPeriod.Close;
  ReportDM.cdsActivityType.Close;
//  ReportDM.cdsBillableSummary.Close;
  ReportDM.cdsTSCustomer.Close;
//  ReportDM.cdsPeriod.Close;
//  ReportDM.cdsToPeriod.Close;
  ReportDM.cdsPeriodListing.Close;
  ReportDM.cdsPriceListView.Close;
  ReportDM.cdsRateUnit.Close;
//  ReportDM.cdsTSSummaryByActivity.Close;
  ReportDM.cdsSystemUser.Close;
//  ReportDM.cdsTSBillable.Close;
end;

procedure TTimesheetDetailReportFrm.GetActivityType;
begin
  ReportDM.cdsActivityType.Close;

  VBBaseDM.GetData(39, ReportDM.cdsActivityType, ReportDM.cdsActivityType.Name, '',
    'C:\Data\Xml\Activity Type.xml', ReportDM.cdsActivityType.UpdateOptions.Generatorname,
    ReportDM.cdsActivityType.UpdateOptions.UpdateTableName);
end;

procedure TTimesheetDetailReportFrm.GetCustomer;
begin
  ReportDM.cdsTSCustomer.Close;

  VBBaseDM.GetData(41, ReportDM.cdsTSCustomer, ReportDM.cdsTSCustomer.Name, '',
    'C:\Data\Xml\Customer Listing.xml', ReportDM.cdsTSCustomer.UpdateOptions.Generatorname,
    ReportDM.cdsTSCustomer.UpdateOptions.UpdateTableName);
end;

procedure TTimesheetDetailReportFrm.GetPeriods;
begin
  ReportDM.cdsPeriodListing.Close;

  VBBaseDM.GetData(62, ReportDM.cdsPeriodListing, ReportDM.cdsPeriodListing.Name, '',
    'C:\Data\Xml\Period.xml', ReportDM.cdsPeriodListing.UpdateOptions.Generatorname,
    ReportDM.cdsPeriodListing.UpdateOptions.UpdateTableName);

  if not ReportDM.cdsPeriodListing.Locate('THE_PERIOD', VBBaseDM.CurrentPeriod, []) then
    ReportDM.cdsPeriodListing.First;
end;

procedure TTimesheetDetailReportFrm.GetSystemUser;
begin
  ReportDM.cdsSystemUser.Close;

  VBBaseDM.GetData(24, ReportDM.cdsSystemUser, ReportDM.cdsSystemUser.Name, '',
    'C:\Data\Xml\System User.xml', ReportDM.cdsSystemUser.UpdateOptions.Generatorname,
    ReportDM.cdsSystemUser.UpdateOptions.UpdateTableName);
end;

procedure TTimesheetDetailReportFrm.GetTimesheetDetail;
var
  DC: TcxCustomDataController;
  C: TcxGridBandedTableController;
  I: Integer;
  WhereClause, OrderByClause, UserClause, DateClause, CustomerClause: string;
  ActivityClause, BillableClause, WorkTypeClause, FileName: string;
begin
  WhereClause := '';
  OrderByClause := '';
  UserClause := '';
  DateClause := '';
  CustomerClause := '';
  ActivityClause := '';
  BillableClause := '';
  WorkTypeClause := '';

  case lucBillable.ItemIndex of
    0: BillableClause := ' AND T.BILLABLE = 1';
    1: BillableClause := ' AND T.BILLABLE = 0';
  end;

  case lucWorkType.ItemIndex of
    0: WorkTypeClause := ' AND T.IS_ADDITIONAL_WORK = 0';
    1: WorkTypeClause := ' AND T.IS_ADDITIONAL_WORK = 1';
  end;

  case lucReportType.ItemIndex of
    0:
      begin
//        if viewSystemUser.Controller.SelectedRecordCount = 0 then
//        begin
//          DisplayMsg(Application.Title,
//            'Invalid Selection',
//            'No User selected. Please select at least one User.',
//            mtError,
//            [mbOK]
//            );
//          Exit;
//        end;

        FileName := 'Timesheet Detail by User';
        ReportDM.FReport := ReportDM.rptTimesheetByUser;
        DC := viewSystemUser.DataController;
        C := viewSystemUser.Controller;

        case lucDateType.ItemIndex of
          0:
            begin
//              if viewPeriodListing.Controller.SelectedRecordCount = 0 then
//              begin
//                DisplayMsg(Application.Title,
//                  'Invalid Period Selection',
//                  'No Period selected. Please select at least one Period.',
//                  mtError,
//                  [mbOK]
//                  );
//                Exit;
//              end;

              DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
            end;

          1:
            begin
//              if VarIsNull(dteFromDate.EditValue) or VarIsNull(dteToDate.EditValue) then
//              begin
//                DisplayMsg(Application.Title,
//                  'Invalid Date Selection',
//                  'From and To dates must have a value. Please select valid From and To dates.',
//                  mtError,
//                  [mbOK]
//                  );
//                Exit;
//              end;

              DateClause := 'WHERE T.ACTIVITY_DATE >= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', dteFromDate.Date), '''') +
                ' AND T.ACTIVITY_DATE <= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', dteToDate.Date), '''');
            end;
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          UserClause := ' AND USER_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            UserClause := UserClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtUID.Index]);
            if I < C.SelectedRecordCount - 1 then
              UserClause := UserClause + ',';
          end;
          UserClause := UserClause + ')';
        end;

        OrderByClause := 'ORDER BY T.LOGIN_NAME, T.THE_PERIOD, T.ACTIVITY_DATE';
        WhereClause := DateClause + UserClause + BillableClause + WorkTypeClause + CustomerClause + ' ';
      end;

    1:
      begin
        if viewCustomerListing.Controller.SelectedRecordCount = 0 then
//        begin
//          DisplayMsg(Application.Title,
//            'Invalid Selection',
//            'No customer selected. Please select at least one customer.',
//            mtError,
//            [mbOK]
//            );
//          Exit;
//        end;

          FileName := 'Timesheet Detail by Customer';
        ReportDM.FReport := ReportDM.rptTimesheetByCustomer;
        DC := viewCustomerListing.DataController;
        C := viewCustomerListing.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + FormatDateTime('yyyy-MM-dd', dteFromDate.Date) +
            ' AND T.ACTIVITY_DATE <= ' + FormatDateTime('yyyy-MM-dd', dteToDate.Date);
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          CustomerClause := ' AND CUSTOMER_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            CustomerClause := CustomerClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtCID.Index]);
            if I < C.SelectedRecordCount - 1 then
              CustomerClause := CustomerClause + ',';
          end;
          CustomerClause := CustomerClause + ')';
        end;

        OrderByClause := 'ORDER BY T.CUSTOMER_NAME, T.THE_PERIOD, T.LOGIN_NAME, T.ACTIVITY_DATE';
        WhereClause := DateClause + UserClause + BillableClause + WorkTypeClause + CustomerClause + ' ';
      end;

    2:
      begin
//        if viewActivityType.Controller.SelectedRecordCount = 0 then
//        begin
//          DisplayMsg(Application.Title,
//            'Invalid Selection',
//            'No activity type selected. Please select at least one activity type.',
//            mtError,
//            [mbOK]
//            );
//          Exit;
//        end;

        FileName := 'Timesheet Detail by Activity';
        ReportDM.FReport := ReportDM.rptTimesheetByActivity;
        DC := viewActivityType.DataController;
        C := viewActivityType.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);
          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + FormatDateTime('yyyy-MM-dd', dteFromDate.Date) +
            ' AND T.ACTIVITY_DATE <= ' + FormatDateTime('yyyy-MM-dd', dteToDate.Date);
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          ActivityClause := ' AND ACTIVITY_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            ActivityClause := ActivityClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtAID.Index]);
            if I < C.SelectedRecordCount - 1 then
              ActivityClause := ActivityClause + ',';
          end;
          ActivityClause := ActivityClause + ')';
        end;

        OrderByClause := 'ORDER BY T.ACTIVITY_TYPE, T.THE_PERIOD, T.LOGIN_NAME, T.ACTIVITY_DATE';
        WhereClause := DateClause + UserClause + BillableClause + WorkTypeClause + CustomerClause + ' ';
      end;
  end;
  VBBaseDM.GetData(45, ReportDM.cdsTSBillable, ReportDM.cdsTSBillable.Name, WhereClause + ';' + OrderByClause,
    'C:\Data\Xml\' + FileName + '.xml', ReportDM.cdsTSBillable.UpdateOptions.Generatorname,
    ReportDM.cdsTSBillable.UpdateOptions.UpdateTableName);
end;

procedure TTimesheetDetailReportFrm.HideTabs;
var
  I: Integer;
begin
  for I := 0 to 2 do
    grpData.Items[I].Visible := False;
end;

procedure TTimesheetDetailReportFrm.lucDateTypePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  lucPeriod.Enabled := lucDateType.ItemIndex = 0;
  dteFromDate.Enabled := not lucPeriod.Enabled;
  dteToDate.Enabled := not lucPeriod.Enabled;

  if lucDateType.ItemIndex = 0 then
  begin
    if lucPeriod.CanFocus and Self.Showing then
      lucPeriod.SetFocus;
  end
  else
  begin
    if dteFromDate.CanFocus and Self.Showing then
      dteFromDate.SetFocus;
  end;
end;

procedure TTimesheetDetailReportFrm.lucReportTypeChange(Sender: TObject);
begin
  inherited;
  HideTabs;
  grpData.Items[lucReportType.ItemIndex].Visible := True;
//  case lucReportType.ItemIndex of
//    0:
//  end;
end;

procedure TTimesheetDetailReportFrm.DoExcel(Sender: TObject);
begin
  inherited;
//
end;

procedure TTimesheetDetailReportFrm.DoCloseForm(Sender: TObject);
begin
  inherited;
  CloseDataSets;
  Self.ModalResult := mrOK;
end;

procedure TTimesheetDetailReportFrm.DoGetData(Sender: TObject);
begin
  inherited;
//
end;

procedure TTimesheetDetailReportFrm.DoPDF(Sender: TObject);
begin
  inherited;
//
end;

procedure TTimesheetDetailReportFrm.DoPreview(Sender: TObject);
begin
  inherited;
//
end;

procedure TTimesheetDetailReportFrm.DoPrint(Sender: TObject);
begin
  inherited;
//
end;

end.

