public class RelatedObjectClass{
    public void foo(){
      Map<Id,SH_Region_c> shRegionMap = new Map<Id,SH_Region___c>();
      if(Schema.sobjectType.SH_Region__c.isAccessible() && Schema.sobjectType.SH_Sub_Region__c.isAccessible()){
      shRegionMap = new Map<Id, SH_Region__c>([
      select id,name, (select id,name from SH_Sub_Regions__r) from SH_Region__c where id in :regionIdSet]);
     }
     }
} 
