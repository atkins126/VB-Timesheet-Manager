unit StdActivity_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Forms,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList,

  BaseLayout_Frm, VBBase_DM, CommonValues, Data.DB, CommonFunctions,

  FireDAC.Comp.Client,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxImageList, dxLayoutLookAndFeels, cxClasses, cxStyles,
  dxLayoutContainer, dxLayoutControl, cxCustomData, cxFilter, cxData, cxEdit,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxCurrencyEdit,
  cxTextEdit, dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer,
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TStdActivityFrm = class(TBaseLayoutFrm)
    grdStdActivity: TcxGrid;
    viewStdActivity: TcxGridDBBandedTableView;
    stdStdActivity: TcxGridLevel;
    edtID: TcxGridDBBandedColumn;
    edtName: TcxGridDBBandedColumn;
    edtAppendText: TcxTextEdit;
    litGrid: TdxLayoutItem;
    litAppendText: TdxLayoutItem;
    grpButtons: TdxLayoutGroup;
    litOK: TdxLayoutItem;
    litCancel: TdxLayoutItem;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure viewStdActivityCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure DrawCellBorder(var Msg: TMessage); message CM_DRAWBORDER;
  public
    { Public declarations }
  end;

var
  StdActivityFrm: TStdActivityFrm;

implementation

{$R *.dfm}

uses TS_DM;

procedure TStdActivityFrm.btnOKClick(Sender: TObject);
begin
  inherited;
  if viewStdActivity.Controller.SelectedRecordCount = 0 then
    raise ESelectionException.Create('No standard activity selected.');

  if Length(Trim(edtAppendText.Text)) = 0 then
  begin
    Beep;
    if
      DisplayMsg(
      Application.Title,
      'Append Text',
      'No text entered to append. Is this correct?',
      mtConfirmation,
      [mbYes, mbNo]
      ) = mrNo then
      Exit;
  end;

  ModalResult := mrOK;
end;

procedure TStdActivityFrm.DrawCellBorder(var Msg: TMessage);
begin
  if (TObject(Msg.WParam) is TcxCanvas)
    and (TObject(Msg.LParam) is TcxGridTableDataCellViewInfo) then
    TcxCanvas(Msg.WParam).DrawComplexFrame(TcxGridTableDataCellViewInfo(Msg.LParam).ClientBounds, clRed, clRed, cxBordersAll, 1);
end;

procedure TStdActivityFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Standard Activiy';
  Width := 660;
  Height := 490; //530;
  layMain.Align := alClient;
  layMain.LayoutLookAndFeel := lafCustomSkin;
  edtAppendText.Clear;
  viewStdActivity.DataController.DataSource := TSDM.dtsStdActivity;

  VBBaseDM.GetData(52, TSDM.cdsStdActivity, TSDM.cdsStdActivity.Name, ONE_SPACE,
    'C:\Data\Xml\Standard Activity.xml', TSDM.cdsStdActivity.UpdateOptions.Generatorname,
    TSDM.cdsStdActivity.UpdateOptions.UpdateTableName);
end;

procedure TStdActivityFrm.FormShow(Sender: TObject);
begin
  inherited;
  grdStdActivity.SetFocus;
  viewStdActivity.Focused := True;
  if not TSDM.cdsStdActivity.IsEmpty then
  begin
    viewStdActivity.DataController.FocusedRecordIndex := 0;
    viewStdActivity.Controller.FocusedRecord.Selected := True;
    viewStdActivity.Controller.MakeFocusedItemVisible;
  end;

  Screen.Cursor := crDefault;
end;

procedure TStdActivityFrm.viewStdActivityCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord = nil then
    Exit;

  if AViewInfo.GridRecord.Focused then
  // This renders the background and font colours of the focused record
  begin
    if AViewInfo.Item <> nil then
      if AViewInfo.Item.Focused then
      begin
      // This renders the background and border colour of the focused cell
        ACanvas.Brush.Color := $B6EDFA;
        ACanvas.Font.Color := RootLookAndFeel.SkinPainter.DefaultSelectionColor;
        PostMessage(Handle, CM_DRAWBORDER, Integer(ACanvas), Integer(AViewInfo));
      end;
  end;
end;

end.

