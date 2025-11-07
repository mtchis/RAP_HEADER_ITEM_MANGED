@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for header data'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_PUR_HEADER
  provider contract transactional_query
  as projection on ZR_PUR_HEADER

{
  key Ebeln,
      Bukrs,
      Werks,
      Lifnr,
      Zterm,
      Waers,
      Ekorg,
      @Semantics.amount.currencyCode : 'waers'
      Netwr,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      Locallastchanged,
      /* Associations */
      _ITEMS : redirected to composition child ZC_PUR_ITEM
}
