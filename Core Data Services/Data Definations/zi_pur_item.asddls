@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchasing Document Item cds view(FOR MANAGE SCNARIO)'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_PUR_ITEM
  as select from zpur_item_t
{

  key ebeln            as Ebeln,
  key ebelp            as Ebelp,
      txz01            as Txz01,
      matnr            as Matnr,
      bukrs            as Bukrs,
      werks            as Werks,
      meins            as Meins,
      @Semantics.quantity.unitOfMeasure : 'meins'
      menge            as Menge,
      peinh            as Peinh,
      waers            as Waers,
      @Semantics.amount.currencyCode : 'waers'
      netpr            as Netpr,
      eeind            as Eeind,
      createdby        as Createdby,
      createdat        as Createdat,
      lastchangedby    as Lastchangedby,
      lastchangedat    as Lastchangedat,
      locallastchanged as Locallastchanged
}
