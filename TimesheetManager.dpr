program TimesheetManager;

uses
  Vcl.Forms,
  System.SysUtils,
  Vcl.Dialogs,
  Winapi.Windows,
  System.UITypes,
  Base_DM in '..\..\..\..\Lib\Base_DM.pas' {BaseDM: TDataModule},
  Base_Frm in '..\..\..\..\Lib\Base_Frm.pas' {BaseFrm},
  BaseLayout_Frm in '..\..\..\..\Lib\BaseLayout_Frm.pas' {BaseLayoutFrm},
  CommonFunctions in '..\..\..\..\Lib\CommonFunctions.pas',
  CommonMethods in '..\..\..\..\Lib\CommonMethods.pas',
  CommonValues in '..\..\..\..\Lib\CommonValues.pas',
  MsgDialog_Frm in '..\..\..\..\Lib\MsgDialog_Frm.pas' {msgDialogFrm},
  Progress_Frm in '..\..\..\..\Lib\Progress_Frm.pas' {ProgressFrm},
  RUtils in '..\..\..\..\Lib\RUtils.pas',
  VBBase_DM in '..\..\Lib\VBBase_DM.pas' {VBBaseDM: TDataModule},
  Main_Frm in 'General\Main_Frm.pas' {MainFrm},
  TS_DM in 'Data Modules\TS_DM.pas' {TSDM: TDataModule},
  VBCommonValues in '..\..\Lib\VBCommonValues.pas',
  TimesheetEdit_Frm in 'General\TimesheetEdit_Frm.pas' {TimesheetEditFrm},
  TimesheetOptions_Frm in 'General\TimesheetOptions_Frm.pas' {TimesheetOptionsFrm},
  TimesheetDetailReport_Frm in 'General\TimesheetDetailReport_Frm.pas' {TimesheetDetailReportFrm},
  BillableSummary_Frm in 'General\BillableSummary_Frm.pas' {BillableSummaryFrm},
  Report_DM in 'Data Modules\Report_DM.pas' {ReportDM: TDataModule},
  TimesheetActivitySummary_Frm in 'General\TimesheetActivitySummary_Frm.pas' {TimesheetActivitySummaryFrm},
  InvoiceItem_Frm in 'General\InvoiceItem_Frm.pas' {InvoiceItemFrm},
  StdActivity_Frm in 'General\StdActivity_Frm.pas' {StdActivityFrm},
  MonthlyBillableReport_Frm in 'General\MonthlyBillableReport_Frm.pas' {MonthlyBillableReportFrm},
  CarryForwardManager_Frm in 'General\CarryForwardManager_Frm.pas' {CarryForwardManagerFrm},
  CustomerSearch_Frm in 'General\CustomerSearch_Frm.pas' {CustomerSearchFrm},
  Lookup_DM in 'Data Modules\Lookup_DM.pas' {LookupDM: TDataModule},
  CustomerContactDetail_Frm in 'General\CustomerContactDetail_Frm.pas' {CustomerContactDetailFrm},
  SendEmail in '..\..\..\..\Lib\Classes\SendEmail.pas',
  EmailPerson_Frm in '..\..\..\..\Lib\EmailPerson_Frm.pas' {EmailPersonFrm},
  RecipientInput_Frm in '..\..\..\..\Lib\RecipientInput_Frm.pas' {RecipientInputFrm},
  CustomerDirector_Frm in 'General\CustomerDirector_Frm.pas' {CustomerDirectorFrm},
  Invoicing_Frm in 'General\Invoicing_Frm.pas' {InvoicingFrm},
  InvoiceSchedule_Frm in 'General\InvoiceSchedule_Frm.pas' {InvoiceScheduleFrm},
  ExportPDFToTiff_Frm in 'General\ExportPDFToTiff_Frm.pas' {ExportPDFToTiffFrm},
  ExportPDFToPng_Frm in 'General\ExportPDFToPng_Frm.pas' {ExportPDFToPngFrm},
  PDFViewer_Frm in '..\..\..\..\Lib\PDFViewer_Frm.pas' {PDFViewerFrm},
  VBProxyClasses in '..\Lib\VBProxyClasses.pas' {VBProxyClasses},
  DirectorOfCompany_Frm in 'General\DirectorOfCompany_Frm.pas' {DirectorOfCompanyFrm},
  Shareholder_Frm in 'General\Shareholder_Frm.pas' {ShareholderFrm},
  NewDirectorOfCompany_Frm in '..\Master Table Manager\General\NewDirectorOfCompany_Frm.pas' {NewDirectorOfCompanyFrm},
  DirectorDetail_Frm in 'General\DirectorDetail_Frm.pas' {DirectorDetailFrm};

{$R *.res}

var
  SwitchPrefix: TSysCharSet;
  LaunchDrive: string;

const
  APP_NAME = 'TimesheetManager.exe';

begin
{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
  Application.Title := 'Timesheet Manager';
  LaunchDrive := ExtractFileDrive(Application.ExeName);
  SwitchPrefix := ['/'];
{$IFDEF RELEASE}
  if not FindCmdLineSwitch('VB_SHELL', SwitchPrefix, True) then
  begin
    System.SysUtils.Beep;
    TaskMessageDlg('Task Launch Error',
      Application.Title + ' can only run through VB Shell.' + CRLF +
      'Please launch RC Shell to access this task.',
      mtError,
      [mbOK], 0);

    Application.Terminate;
    Application.ShowMainForm := False;
  end
  else
{$ENDIF}if (AnsiCompareText(LaunchDrive, 'C:') <> 0) then
    begin
      System.SysUtils.Beep;
      TaskMessageDlg('Applicaton Launch Error',
        'You cannot run ' + Application.Title + ' from drive ' + LaunchDrive, mtError,
        [mbOK], 0);
      Application.Terminate;
      Application.ShowMainForm := False;
    end
    else
    begin
      Application.Initialize;
      Application.MainFormOnTaskbar := True;
      Application.CreateForm(TMainFrm, MainFrm);
      Application.Run;
    end;
end.

