@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchasing Document Header cds view(FOR MAGAGED)'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}


define view entity ZI_PUR_HEADER
  as select from zpur_header_t
{
  key ebeln            as Ebeln,
      bukrs            as Bukrs,
      werks            as Werks,
      lifnr            as Lifnr,
      zterm            as Zterm,
      waers            as Waers,
      ekorg            as Ekorg,
      @Semantics.amount.currencyCode : 'waers'
      netwr            as Netwr,
      createdby        as Createdby,
      createdat        as Createdat,
      lastchangedby    as Lastchangedby,
      lastchangedat    as Lastchangedat,
      locallastchanged as Locallastchanged


}
