@AbapCatalog.sqlViewName: 'ZSGULER_V_001'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS'
define view ZSGULER_4648_CDS_001 
  as select from ekko
  left outer join ekpo on ekpo.ebeln = ekko.ebeln
  left outer join mara on mara.matnr = ekpo.matnr 
  left outer join makt on makt.matnr = mara.matnr
                      and makt.spras =$session.system_language
  left outer join lfa1 on lfa1.lifnr = ekko.lifnr
{
    ekpo.ebeln ,
    ekpo.ebelp ,
    ekpo.matnr ,
    ekpo.werks ,
    ekpo.lgort ,
    makt.maktx ,
    lfa1.lifnr ,
    lfa1.name1 ,
    concat_with_space(lfa1.stras,lfa1.mcod3, 2) as Adress
    
}
