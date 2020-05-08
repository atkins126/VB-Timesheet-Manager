unit Lookup_DM;

interface

uses
  System.SysUtils, System.Classes, VBBase_DM, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.SqlExpr,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.DApt, FireDAC.Stan.StorageBin;

type
  TLookupDM = class(TVBBaseDM)
    VbdevConnection: TFDConnection;
    dtsCustomer: TDataSource;
    dtsContactDetailCo: TDataSource;
    cdsContactDetailPerson: TFDMemTable;
    dtsContactDetailPerson: TDataSource;
    cdsContactPerson: TFDMemTable;
    dtsContactPerson: TDataSource;
    cdsCustomer: TFDMemTable;
    cdsContactDetailCo: TFDMemTable;
    View_customerView: TFDQuery;
    View_customerViewID: TIntegerField;
    View_customerViewCUSTOMER_TYPE_ID: TIntegerField;
    View_customerViewYEAR_END_MONTH_ID: TIntegerField;
    View_customerViewTAX_OFFICE_ID: TIntegerField;
    View_customerViewAR_MONTH_ID: TIntegerField;
    View_customerViewVAT_MONTH_ID: TIntegerField;
    View_customerViewVAT_COUNTRY_ID: TIntegerField;
    View_customerViewVAT_OFFICE_ID: TIntegerField;
    View_customerViewSTATUS_ID: TIntegerField;
    View_customerViewCUSTOMER_TYPE: TStringField;
    View_customerViewNAME: TStringField;
    View_customerViewFIRST_NAME: TStringField;
    View_customerViewLAST_NAME: TStringField;
    View_customerViewINITIALS: TStringField;
    View_customerViewTRADING_AS: TStringField;
    View_customerViewBILL_TO: TStringField;
    View_customerViewCO_NO: TStringField;
    View_customerViewTAX_NO: TStringField;
    View_customerViewVAT_NO: TStringField;
    View_customerViewVAT_CUSTOMS_CODE: TStringField;
    View_customerViewPAYE_NO: TStringField;
    View_customerViewUIF_NO: TStringField;
    View_customerViewSDL_NO: TStringField;
    View_customerViewWC_NO: TStringField;
    View_customerViewAR_COMPLETION_DATE: TSQLTimeStampField;
    View_customerViewPASTEL_ACC_CODE: TStringField;
    View_customerViewVB_TAX_ACC_CODE: TStringField;
    View_customerViewIS_PROV_TAX_PAYER: TIntegerField;
    View_customerViewHAS_LIVING_WILL: TIntegerField;
    View_customerViewIS_ORGAN_DONOR: TIntegerField;
    View_customerViewDATE_CREATED: TSQLTimeStampField;
    View_customerViewDATE_MODIFIED: TSQLTimeStampField;
    View_customerViewIS_ACTIVE: TIntegerField;
    View_customerViewEFILING: TStringField;
    View_customerViewEF_USER_NAME: TStringField;
    View_customerViewEF_PASSWORD: TStringField;
    View_customerViewYEAR_END_MONTH: TStringField;
    View_customerViewTAX_OFFICE: TStringField;
    View_customerViewVAT_MONTH: TStringField;
    View_customerViewVAT_COUNTRY: TStringField;
    View_customerViewVAT_OFFICE: TStringField;
    View_customerViewAR_MONTH: TStringField;
    View_customerViewCUSTOMER_STATUS: TStringField;
    View_customerViewIS_ACTIVE_STR: TStringField;
    View_customerViewIS_PROV_TAX_PAYER_STR: TStringField;
    View_customerViewHAS_LIVING_WILL_STR: TStringField;
    View_customerViewIS_ORGAN_DONOR_STR: TStringField;
    cdsCustomerID: TIntegerField;
    cdsCustomerCUSTOMER_TYPE_ID: TIntegerField;
    cdsCustomerYEAR_END_MONTH_ID: TIntegerField;
    cdsCustomerTAX_OFFICE_ID: TIntegerField;
    cdsCustomerAR_MONTH_ID: TIntegerField;
    cdsCustomerVAT_MONTH_ID: TIntegerField;
    cdsCustomerVAT_COUNTRY_ID: TIntegerField;
    cdsCustomerVAT_OFFICE_ID: TIntegerField;
    cdsCustomerSTATUS_ID: TIntegerField;
    cdsCustomerCUSTOMER_TYPE: TStringField;
    cdsCustomerNAME: TStringField;
    cdsCustomerFIRST_NAME: TStringField;
    cdsCustomerLAST_NAME: TStringField;
    cdsCustomerINITIALS: TStringField;
    cdsCustomerTRADING_AS: TStringField;
    cdsCustomerBILL_TO: TStringField;
    cdsCustomerCO_NO: TStringField;
    cdsCustomerTAX_NO: TStringField;
    cdsCustomerVAT_NO: TStringField;
    cdsCustomerVAT_CUSTOMS_CODE: TStringField;
    cdsCustomerPAYE_NO: TStringField;
    cdsCustomerUIF_NO: TStringField;
    cdsCustomerSDL_NO: TStringField;
    cdsCustomerWC_NO: TStringField;
    cdsCustomerAR_COMPLETION_DATE: TSQLTimeStampField;
    cdsCustomerPASTEL_ACC_CODE: TStringField;
    cdsCustomerVB_TAX_ACC_CODE: TStringField;
    cdsCustomerIS_PROV_TAX_PAYER: TIntegerField;
    cdsCustomerHAS_LIVING_WILL: TIntegerField;
    cdsCustomerIS_ORGAN_DONOR: TIntegerField;
    cdsCustomerDATE_CREATED: TSQLTimeStampField;
    cdsCustomerDATE_MODIFIED: TSQLTimeStampField;
    cdsCustomerIS_ACTIVE: TIntegerField;
    cdsCustomerEFILING: TStringField;
    cdsCustomerEF_USER_NAME: TStringField;
    cdsCustomerEF_PASSWORD: TStringField;
    cdsCustomerYEAR_END_MONTH: TStringField;
    cdsCustomerTAX_OFFICE: TStringField;
    cdsCustomerVAT_MONTH: TStringField;
    cdsCustomerVAT_COUNTRY: TStringField;
    cdsCustomerVAT_OFFICE: TStringField;
    cdsCustomerAR_MONTH: TStringField;
    cdsCustomerCUSTOMER_STATUS: TStringField;
    cdsCustomerIS_ACTIVE_STR: TStringField;
    cdsCustomerIS_PROV_TAX_PAYER_STR: TStringField;
    cdsCustomerHAS_LIVING_WILL_STR: TStringField;
    cdsCustomerIS_ORGAN_DONOR_STR: TStringField;
    View_contact_personView: TFDQuery;
    View_contact_detail_coView: TFDQuery;
    View_contact_detail_personView: TFDQuery;
    View_contact_personViewID: TIntegerField;
    View_contact_personViewCUSTOMER_ID: TIntegerField;
    View_contact_personViewSALUTATION_ID: TIntegerField;
    View_contact_personViewJOB_FUNCTION_ID: TIntegerField;
    View_contact_personViewFIRST_NAME: TStringField;
    View_contact_personViewLAST_NAME: TStringField;
    View_contact_personViewINITIALS: TStringField;
    View_contact_personViewOTHER_NAME: TStringField;
    View_contact_personViewDOB: TSQLTimeStampField;
    View_contact_personViewID_NUMBER: TStringField;
    View_contact_personViewPASSPORT_NUMBER: TStringField;
    View_contact_personViewIS_PRIMARY_CONTACT: TIntegerField;
    View_contact_personViewSALUTATION: TStringField;
    View_contact_personViewJOB_FUNCTION: TStringField;
    cdsContactPersonID: TIntegerField;
    cdsContactPersonCUSTOMER_ID: TIntegerField;
    cdsContactPersonSALUTATION_ID: TIntegerField;
    cdsContactPersonJOB_FUNCTION_ID: TIntegerField;
    cdsContactPersonFIRST_NAME: TStringField;
    cdsContactPersonLAST_NAME: TStringField;
    cdsContactPersonINITIALS: TStringField;
    cdsContactPersonOTHER_NAME: TStringField;
    cdsContactPersonDOB: TSQLTimeStampField;
    cdsContactPersonID_NUMBER: TStringField;
    cdsContactPersonPASSPORT_NUMBER: TStringField;
    cdsContactPersonIS_PRIMARY_CONTACT: TIntegerField;
    cdsContactPersonSALUTATION: TStringField;
    cdsContactPersonJOB_FUNCTION: TStringField;
    View_contact_detail_personViewID: TIntegerField;
    View_contact_detail_personViewCONTACT_TYPE_ID: TIntegerField;
    View_contact_detail_personViewCUSTOMER_ID: TIntegerField;
    View_contact_detail_personViewCONTACT_PERSON_ID: TIntegerField;
    View_contact_detail_personViewVALUE: TStringField;
    View_contact_detail_personViewCOMMENT: TStringField;
    View_contact_detail_personViewCONTACT_TYPE: TStringField;
    cdsContactDetailPersonID: TIntegerField;
    cdsContactDetailPersonCONTACT_TYPE_ID: TIntegerField;
    cdsContactDetailPersonCUSTOMER_ID: TIntegerField;
    cdsContactDetailPersonCONTACT_PERSON_ID: TIntegerField;
    cdsContactDetailPersonVALUE: TStringField;
    cdsContactDetailPersonCOMMENT: TStringField;
    cdsContactDetailPersonCONTACT_TYPE: TStringField;
    View_contact_detail_coViewCONTACT_DETAIL_CO_ID: TIntegerField;
    View_contact_detail_coViewCONTACT_TYPE_ID: TIntegerField;
    View_contact_detail_coViewCUSTOMER_ID: TIntegerField;
    View_contact_detail_coViewCONTACT_TYPE: TStringField;
    View_contact_detail_coViewVALUE: TStringField;
    cdsContactDetailCoCONTACT_DETAIL_CO_ID: TIntegerField;
    cdsContactDetailCoCONTACT_TYPE_ID: TIntegerField;
    cdsContactDetailCoCUSTOMER_ID: TIntegerField;
    cdsContactDetailCoCONTACT_TYPE: TStringField;
    cdsContactDetailCoVALUE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LookupDM: TLookupDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
