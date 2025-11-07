@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Refernce cds view for item table'
//@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_PUR_ITEM
  as select from ZI_PUR_ITEM
  association to parent ZR_PUR_HEADER as _HEADER on $projection.Ebeln = _HEADER.Ebeln
{
  key Ebeln,
  key Ebelp,
      Txz01,
      Matnr,
      Bukrs,
      Werks,
      Meins,
      Menge,
      Peinh,
      Waers,
      Netpr,
      Eeind,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      Locallastchanged,
      _HEADER
}
