@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CONSUMPTION VIEW for item data'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED

}
define view entity ZC_PUR_ITEM
  as projection on ZR_PUR_ITEM
{
  key Ebeln,
  key Ebelp,
      Txz01,
      Matnr,
      _HEADER.Bukrs,
      _HEADER.Werks,
      Meins,
      @Semantics.quantity.unitOfMeasure : 'meins'
      Menge,
      Peinh,

      Waers,
      @Semantics.amount.currencyCode : 'waers'
      Netpr,
      Eeind,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      Locallastchanged,
      _HEADER : redirected to parent ZC_PUR_HEADER
}
