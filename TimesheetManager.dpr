program TimesheetManager;

uses
  Vcl.Forms,
  Vcl.Dialogs,
  System.Classes,
  Winapi.Windows,
  System.IOUtils,
  System.SysUtils,
  Vcl.Controls,
  System.Types,
  System.DateUtils,
  System.Win.Registry,
  Vcl.Graphics,
  Winapi.ShellApi,
  System.Variants,
  System.UITypes,
  ShlObj,
  Base_DM in '..\..\..\..\Lib\Base_DM.pas' {BaseDM: TDataModule},
  Base_Frm in '..\..\..\..\Lib\Base_Frm.pas' {BaseFrm},
  BaseLayout_Frm in '..\..\..\..\Lib\BaseLayout_Frm.pas' {BaseLayoutFrm},
  CommonFunction in '..\..\..\..\Lib\CommonFunction.pas',
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
  TimesheetPrefrrences_Frm in 'General\TimesheetPrefrrences_Frm.pas' {TimesheetPrefrrencesFrm},
  VBProxyClass in '..\Lib\VBProxyClass.pas',
  TimesheetDetailReport_Frm in 'General\TimesheetDetailReport_Frm.pas' {TimesheetDetailReportFrm},
  BillableSummary_Frm in 'General\BillableSummary_Frm.pas' {BillableSummaryFrm},
  Report_DM in 'Data Modules\Report_DM.pas' {ReportDM: TDataModule},
  TimesheetActivitySummary_Frm in 'General\TimesheetActivitySummary_Frm.pas' {TimesheetActivitySummaryFrm},
  InvoiceItem_Frm in 'General\InvoiceItem_Frm.pas' {InvoiceItemFrm},
  StdActivity_Frm in 'General\StdActivity_Frm.pas' {StdActivityFrm};

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
    Beep;
    TaskMessageDlg('Task Launch Error',
      Application.Title + ' can only run through VB Shell.' + CRLF +
      'Please launch RC Shell to access this task.',
      mtError,
      [mbOK], 0);

    Application.Terminate;
    Application.ShowMainForm := False;
  end
  else
{$ENDIF}
    if (AnsiCompareText(LaunchDrive, 'C:') <> 0) then
    begin
      Beep;
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

//begin
//  Application.Initialize;
//  Application.MainFormOnTaskbar := True;
//  Application.Title := 'Timesheet Manager';
//  Application.Run;
//end.

