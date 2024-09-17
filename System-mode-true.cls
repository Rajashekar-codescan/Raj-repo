public class RelatedObjectClass{
    public void foo(){
      Map<Id,SH_Region_c> shRegionMap = new Map<Id,SH_Region___c>();
      shRegionMap = new Map<Id, SH_Region__c>([
      select id,name, (select id,name from SH_Sub_Regions__r) from SH_Region__c where id in :regionIdSet WITH SYSTEM_MODE ]);
     }
} 