unit ExportPDFToTiff_Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseLayout_Frm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  System.Actions, Vcl.ActnList, cxClasses, cxStyles, dxLayoutContainer,
  dxLayoutControl;

type
  TExportPDFToTiffFrm = class(TBaseLayoutFrm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExportPDFToTiffFrm: TExportPDFToTiffFrm;

implementation

{$R *.dfm}

end.
