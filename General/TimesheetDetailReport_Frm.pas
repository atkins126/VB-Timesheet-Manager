unit TimesheetDetailReport_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, System.Win.Registry, System.IOUtils,
  Vcl.ComCtrls, Data.DB, WinApi.ShellApi,

  frxClass,

  BaseLayout_Frm, VBCommonValues, Base_DM, CommonFunction,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxCore, cxDateUtils,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, dxBar, dxBarExtItems, dxLayoutcxEditAdapters, dxPrnDev,
  dxPrnDlg, cxCheckBox, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxCurrencyEdit, cxMemo,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxBarEditItem,
  cxGridExportLink;

type
  TReportFileName = array of string;

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
    lucReportType: TcxBarEditItem;
    grdTimesheetBillable: TcxGrid;
    viewTimesheetBillable: TcxGridDBBandedTableView;
    edtTID: TcxGridDBBandedColumn;
    edtTFirstName: TcxGridDBBandedColumn;
    edtTLastName: TcxGridDBBandedColumn;
    edtTThePeriod: TcxGridDBBandedColumn;
    edtTLoginName: TcxGridDBBandedColumn;
    edtTActivityDate: TcxGridDBBandedColumn;
    edtTCustomerType: TcxGridDBBandedColumn;
    edtTCustomerName: TcxGridDBBandedColumn;
    edtTActivtyType: TcxGridDBBandedColumn;
    edtTAActivty: TcxGridDBBandedColumn;
    edtTPriceItem: TcxGridDBBandedColumn;
    edtTTimeSpent: TcxGridDBBandedColumn;
    edtTHours: TcxGridDBBandedColumn;
    edtTRate: TcxGridDBBandedColumn;
    edtTStdRate: TcxGridDBBandedColumn;
    edtTItemValue: TcxGridDBBandedColumn;
    edtTTotalCFwd: TcxGridDBBandedColumn;
    edtTWeekEnding: TcxGridDBBandedColumn;
    edtTBillable: TcxGridDBBandedColumn;
    edtTBillableStr: TcxGridDBBandedColumn;
    edtTInvoiceNo: TcxGridDBBandedColumn;
    edtTInvDate: TcxGridDBBandedColumn;
    edtTCreditNoteNo: TcxGridDBBandedColumn;
    edtTLocked: TcxGridDBBandedColumn;
    edtTLockedStr: TcxGridDBBandedColumn;
    edtTCFwd: TcxGridDBBandedColumn;
    edtTCFwdStr: TcxGridDBBandedColumn;
    edtTAddWork: TcxGridDBBandedColumn;
    edtTAddWorkStr: TcxGridDBBandedColumn;
    lvlTimesheetBillable: TcxGridLevel;
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
    procedure lucReportTypePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FGridIndex: Integer;
    FReportFileName: TReportFileName;

    property ReportFileName: TReportFileName read FReportFileName write FReportFileName;
//    property NodeIndex: Integer read FNodeIndex write FNodeIndex;
    property GridIndex: Integer read FGridIndex write FGridIndex;
  public
    { Public declarations }
  end;

var
  TimesheetDetailReportFrm: TTimesheetDetailReportFrm;

const
  ARRAY_COUNT = 4;
  REPORT_COUNT = 3;

implementation

{$R *.dfm}

uses
  VBBase_DM,
  TS_DM,
  RUtils,
  Report_DM,
//  Lookup_DM,
  Progress_Frm, CommonValues;

procedure TTimesheetDetailReportFrm.FormCreate(Sender: TObject);
var
  I: Integer;
  Progress: Extended;
  RegKey: TRegistry;
  DownloadCaption: string;
  AComboBox: TcxComboBox;
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
  SetLength(FReportFileName, REPORT_COUNT);

  FReportFileName[0] := 'TimesheetUser.fr3';
  FReportFileName[1] := 'TimesheetCustomer.fr3';
  FReportFileName[2] := 'TimesheetActivityType.fr3';

  lucPeriod.Properties.ListSource := ReportDM.dtsPeriodListing;
  viewSystemUser.DataController.DataSource := ReportDM.dtsSystemUser;
  viewCustomerListing.DataController.DataSource := ReportDM.dtsTSCustomer;
  viewActivityType.DataController.DataSource := ReportDM.dtsActivityType;
  viewTimesheetBillable.DataController.DataSource := ReportDM.dtsTSBillable;
//  viewSummaryByActivity.DataController.DataSource := ReportDM.dtsTSSummaryByActivity;
  viewTimesheet.DataController.DataSource := ReportDM.dtsTimesheet;
  viewCarryForwardDetail.DataController.DataSource := ReportDM.dtsCarryForwardDetail;

  TcxLookupComboBoxProperties(lucSystemUser.Properties).ListSource := ReportDM.dtsSystemUser;
  TcxLookupComboBoxProperties(lucCFSystemuser.Properties).ListSource := ReportDM.dtsSystemUser;

  TcxLookupComboBoxProperties(lucPriceList.Properties).ListSource := ReportDM.dtsPriceListView;
  TcxLookupComboBoxProperties(lucCFPriceList.Properties).ListSource := ReportDM.dtsPriceListView;

  TcxLookupComboBoxProperties(lucRateUnit.Properties).ListSource := ReportDM.dtsRateUnit;
  TcxLookupComboBoxProperties(lucCFRateUnit.Properties).ListSource := ReportDM.dtsRateUnit;

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
    lucReportType.SetFocus;
    AComboBox := TcxBarEditItemControl(lucReportType.Links[0].Control).Edit as TcxComboBox;
    AComboBox.ItemIndex := 0;
//    lucReportType.EditValue := 0;
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
    lucBillable.ItemIndex := 2;
    lucWorkType.ItemIndex := 2;
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
  AComboBox: TcxComboBox;
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

  lucReportType.SetFocus;
  AComboBox := TcxBarEditItemControl(lucReportType.Links[0].Control).Edit as TcxComboBox;

//  case lucReportType.EditValue of
  case AComboBox.ItemIndex of
    0:
      begin
        FileName := 'Timesheet Detail by User';
        ReportDM.FReport := ReportDM.rptTimesheetByUser;
        DC := viewSystemUser.DataController;
        C := viewSystemUser.Controller;

        case lucDateType.ItemIndex of
          0: DateClause := 'WHERE T.THE_PERIOD = ' + IntToStr(ReportDM.cdsPeriodListing.FieldByName('THE_PERIOD').AsInteger);

          1: DateClause := 'WHERE T.ACTIVITY_DATE >= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', dteFromDate.Date), '''') +
            ' AND T.ACTIVITY_DATE <= ' + AnsiQuotedStr(FormatDateTime('yyyy-mm-dd', dteToDate.Date), '''');
        end;

        if C.SelectedRecordCount <> DC.RecordCount then
        begin
          UserClause := ' AND T.USER_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            UserClause := UserClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtUID.Index]);
            if I < C.SelectedRecordCount - 1 then
              UserClause := UserClause + ',';
          end;
          UserClause := UserClause + ')';
        end;

        OrderByClause := 'ORDER BY T.LOGIN_NAME, T.THE_PERIOD, T.ACTIVITY_DATE';
        WhereClause := DateClause + UserClause + BillableClause + WorkTypeClause + ' ';
      end;

    1:
      begin
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
          CustomerClause := ' AND T.CUSTOMER_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            CustomerClause := CustomerClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtCID.Index]);
            if I < C.SelectedRecordCount - 1 then
              CustomerClause := CustomerClause + ',';
          end;
          CustomerClause := CustomerClause + ')';
        end;

        OrderByClause := 'ORDER BY T.CUSTOMER_NAME, T.THE_PERIOD, T.LOGIN_NAME, T.ACTIVITY_DATE';
        WhereClause := DateClause + CustomerClause + BillableClause + WorkTypeClause + ' ';
      end;

    2:
      begin
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
          ActivityClause := ' AND T.ACTIVITY_TYPE_ID IN (';
          for I := 0 to C.SelectedRecordCount - 1 do
          begin
            ActivityClause := ActivityClause + IntToStr(DC.Values[C.SelectedRecords[I].RecordIndex, edtAID.Index]);
            if I < C.SelectedRecordCount - 1 then
              ActivityClause := ActivityClause + ',';
          end;
          ActivityClause := ActivityClause + ')';
        end;

        OrderByClause := 'ORDER BY T.ACTIVITY_TYPE, T.THE_PERIOD, T.LOGIN_NAME, T.ACTIVITY_DATE';
        WhereClause := DateClause + ActivityClause + BillableClause + WorkTypeClause + ' ';
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

procedure TTimesheetDetailReportFrm.lucReportTypePropertiesEditValueChanged(Sender: TObject);
var
  AComboBox: TcxComboBox;
begin
  inherited;
  HideTabs;
  lucReportType.SetFocus;
  AComboBox := TcxBarEditItemControl(lucReportType.Links[0].Control).Edit as TcxComboBox;
  grpData.Items[AComboBox.ItemIndex].Visible := True;
//  grpData.Items[lucReportType.EditValue].Visible := True;
end;

procedure TTimesheetDetailReportFrm.DoExcel(Sender: TObject);
var
  DestFolder, FolderPath, ExportFileName: string;
  FileSaved: Boolean;
  RepFileName: string;
//  ProgressDialog: TExcelExportProgressFrm;
begin
  inherited;
  FolderPath := EXCEL_DOCS;
//  FolderPath := MainFrm.FShellResource.RootFolder + '\' + FSHIFT_FOLDER + 'Export\';
  TDirectory.CreateDirectory(FolderPath);
  dlgFileSave.DefaultExt := 'xlsx';
  dlgFileSave.InitialDir := FolderPath;
  dlgFileSave.FileName := '*.xlsx';
  FileSaved := dlgFileSave.Execute;

  if not FileSaved then
    Exit;

//  if dlgFileSave.Execute then
  if TFile.Exists(dlgFileSave.FileName) then
  begin
    Beep;
    if DisplayMsg(Application.Title,
      'File Overwrite',
      'The file ' + dlgFileSave.FileName + ' already exists.' + CRLF +
      'Do you want to overwrite this file?',
      mtConfirmation,
      [mbYes, mbNo]
      ) = mrNo then
      Exit;
  end;

  edtTLoginName.GroupIndex := -1;
  edtTCustomerName.GroupIndex := -1;
  edtTActivtyType.GroupIndex := -1;
  edtTLoginName.Visible := False;
  edtTCustomerName.Visible := False;
  edtTActivtyType.Visible := False;

  GetTimesheetDetail;
//  RepFileName := TSDM.ShellResource.ReportFolder + FReportFileName[grpData.ItemIndex];
//
//  if not TFile.Exists(RepFileName) then
//    raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');
//
//  ReportDM.FReport.LoadFromFile(TSDM.ShellResource.ReportFolder + FReportFileName[grpData.ItemIndex]);

  case grpData.ItemIndex of
    0:
      begin
        edtTCustomerName.Visible := True;
        edtTLoginName.GroupIndex := 0;
      end;
    1:
      begin
        edtTLoginName.Visible := True;
        edtTActivtyType.Visible := True;
        edtTCustomerName.GroupIndex := 0;
      end;
    2:
      begin
        edtTLoginName.Visible := True;
        edtTCustomerName.Visible := True;
        edtTActivtyType.GroupIndex := 0;
      end;
  end;

  viewTimesheetBillable.OptionsView.BandHeaders := False;

  try
    ExportFileName := dlgFileSave.FileName;
    ExportGridToXLSX(
      ExportFileName, // Filename to export
      grdTimesheetBillable, // Grid whose data must be exported
      True, // Expand groups
      True, // Save all records (Selected and un-selected ones)
      True, // Use native format
      'xlsx');

    if cbxOepnDocument.Checked then
      ShellExecute(0, 'open', PChar('Excel.exe'), PChar('"' + ExportFileName + '"'), nil, SW_SHOWNORMAL)
  finally
    viewTimesheetBillable.OptionsView.BandHeaders := True;
  end;
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
var
  FileSaved: Boolean;
  DC: TcxCustomDataController;
  RepFileName: string;
begin
  inherited;
  ReportDM.frxPDFExport.ShowDialog := False;
  ReportDM.frxPDFExport.Background := True;
  ReportDM.frxPDFExport.OpenAfterExport := cbxOepnDocument.Checked;
  ReportDM.frxPDFExport.OverwritePrompt := True;
  ReportDM.frxPDFExport.ShowProgress := True;
//  TfrxGroupHeader(ReportDM.rptBillableSummaryByCustomer.FindObject('bndCustomerHeader')).Visible := False;
//  TfrxMemoView(ReportDM.rptBillableSummaryByCustomer.FindObject('lblCustomerHeader')).Visible := False;
  dlgFileSave.DefaultExt := 'pdf';
  dlgFileSave.InitialDir := PDF_DOCS;
  dlgFileSave.FileName := '*.pdf';

  FileSaved := dlgFileSave.Execute;

  if not FileSaved then
    Exit;

  if TFile.Exists(dlgFileSave.FileName) then
  begin
    Beep;
    if DisplayMsg(Application.Title,
      'File Overwrite',
      'The file ' + ExtractFileName(dlgFileSave.FileName) + ' already exists. Do you want to overwrite this file?',
      mtConfirmation,
      [mbYes, mbNo]
      ) = mrNo then
      Exit;
  end;

  GetTimesheetDetail;
//  RepFileName := TSDM.ShellResource.ReportFolder + FReportFileName[grpData.ItemIndex];
//
//  if not TFile.Exists(RepFileName) then
//    raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');
//
//  ReportDM.FReport.LoadFromFile(TSDM.ShellResource.ReportFolder + FReportFileName[grpData.ItemIndex]);

  DC := viewTimesheetBillable.DataController;
  DC.BeginUpdate;
  try
    ReportDM.frxPDFExport.FileName := dlgFileSave.FileName;
    if ReportDM.FReport.PrepareReport(True) then
      ReportDM.FReport.Export(ReportDM.frxPDFExport);
  finally
    ReportDM.cdsTSBillable.First;
    DC.EndUpdate;
  end;
end;

procedure TTimesheetDetailReportFrm.DoPreview(Sender: TObject);
var
  RepFileName: string;
begin
  inherited;
  try
    Screen.Cursor := crHourglass;

    case lucDateType.ItemIndex of
      0:
        if lucPeriod.ItemIndex < 0 then
        begin
          lucPeriod.SetFocus;
          raise ESelectionException.Create('Invalid Period Selection. Please select a valid Period.');
        end;

      1:
        if VarIsNull(dteFromDate.EditValue) or VarIsNull(dteToDate.EditValue) then
        begin
          if VarIsNull(dteFromDate.EditValue) then
          begin
            if dteFromDate.CanFocus then
              dteFromDate.SetFocus;
          end

          else if VarIsNull(dteToDate.EditValue) then
          begin
            if dteToDate.CanFocus then
              dteToDate.SetFocus;
          end;
          raise ESelectionException.Create('From and To dates must have a value. Please select valid From and To dates.');
        end;
    end;

    case grpData.ItemIndex of
      0: if viewSystemUser.Controller.SelectedRecordCount = 0 then
          raise ESelectionException.Create('No User selected. Please select at least one User.');

      1: if viewCustomerListing.Controller.SelectedRecordCount = 0 then
          raise ESelectionException.Create('No Customer selected. Please select at least one Customer.');

      2: if viewActivityType.Controller.SelectedRecordCount = 0 then
          raise ESelectionException.Create('No Activity Type selected. Please select at least one Activity Type.');
    end;

    GetTimesheetDetail;
    RepFileName := TSDM.ShellResource.ReportFolder + FReportFileName[grpData.ItemIndex];

    if not TFile.Exists(RepFileName) then
      raise EFileNotFoundException.Create('Report file: ' + RepFileName + ' not found. Cannot load report.');

    ReportDM.FReport.LoadFromFile(TSDM.ShellResource.ReportFolder + FReportFileName[grpData.ItemIndex]);

    if ReportDM.FReport.PrepareReport then
      if TAction(Sender).Tag = 0 then
        ReportDM.FReport.ShowPreparedReport
      else
      begin
        if dlgPrint.Execute then
        begin
          ReportDM.FReport.PrintOptions.Copies :=
            dlgPrint.DialogData.Copies;

          ReportDM.FReport.Print;
        end;
      end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TTimesheetDetailReportFrm.DoPrint(Sender: TObject);
begin
  inherited;
//
end;

end.

