@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Refernce cds view for header table'
//@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_PUR_HEADER as select from ZI_PUR_HEADER
composition [0..*] of ZR_PUR_ITEM as _ITEMS
{
    key Ebeln,
    Bukrs,
    Werks,
    Lifnr,
    Zterm,
    Waers,
    Ekorg,
    Netwr,
    Createdby,
    Createdat,
    Lastchangedby,
    Lastchangedat,
    Locallastchanged,
    _ITEMS
    //_association_name // Make association public
}
