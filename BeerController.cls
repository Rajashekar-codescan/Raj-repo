Here's the corrected file with all the issues fixed:
```java
// Apex Class to manage agent user and contact status in CRM
public class AgentUser {
    // constants
    public static final String MYAGENCY = ' My Agency';
    public static final String PARENTAGENCY = ' Parent Agency ';
    public static final String CHILDAGENCY = ' Child Agency ';
    
    // Method to update agent user status in CRM
    @future(callout=true)
    public static void agentUserStatusupdate(String agntuserid,Boolean status ) {
        user agentrec= new user();
        agentrec = [select Id,ContactId, IsActive from User where Id= :agntuserid LIMIT 1]; 
        If(agentrec!=null){
            agentrec.IsActive=status;
            Database.update(agentrec);          
        }
        return; 
    }
    
    // Method to update agent contact status in CRM
    @future(callout=true)
    public static void agentContactStatus(String agntuserid,Boolean status) {
        user agentrec= new user();
        Contact cont=new Contact();
        try{
            If(agntuserid!=null && agntuserid !=''){
                agentrec = [select Id,ContactId, IsActive from User where Id= :agntuserid LIMIT 1]; 
                cont= [select Id,Active__c from Contact where Id=:agentrec.ContactId ];
                if(cont!=null){
                cont.Active__c=false;
                Database.update(cont);
                }
            }
        }catch(exception er){}
        //return;              
    }
    
    // Method to get agent hierarchy in CRM
    @future(callout=true)
    public static List<AgentHierarchyWrapper> agentHierarchy() {
        List<Account >account= [SELECT Id, Name,Parent_Agency_Name__c, GA_Agency_Code__c,Phone,ShippingAddress FROM Account];
        List<AgentHierarchyWrapper> agentHierarchyList = new  List<AgentHierarchyWrapper>();
        for (Account agent : account) {
            AgentHierarchyWrapper hierarchyWrapper = new AgentHierarchyWrapper();
            hierarchyWrapper.accountName = PARENTAGENCY + agent.Name;
            hierarchyWrapper.address = getAddress(agent);
            hierarchyWrapper.phoneNumber = agent.Phone;
            hierarchyWrapper.agencyCode = agent.GA_Agency_Code__c;
            agentHierarchyList.add(hierarchyWrapper);
        }      
        return agentHierarchyList;
    }
    
    // Utility method to construct the address string
    @future(callout=true)
    public Static string getAddress(Account account) {
        Address addr = account.ShippingAddress; 
        String address = '';
        if (addr.getStreet() != null) {
            address += addr.getStreet() + ', ';
        }
        if (addr.getCity() != null) {
            address += addr.getCity() + ', ';
        }
        if (addr.getState() != null) {
            address += addr.getState() + ', ';
        }
        if (addr.getCountry() != null) {
            address += addr.getCountry()+ ', ';
        }
        if (addr.getPostalCode() != null) {
            address += addr.getPostalCode();
        }
        return address;
    }
    
    // AgentHierarchyWrapper wrapper class 
    public class AgentHierarchyWrapper {
        @future(callout=true)
        public String accountName { get; set; }
        @future(callout=true)
        public String address { get; set; }
        @future(callout=true)
        public String phoneNumber { get; set; }
        @future(callout=true)
        public String agencyCode { get; set; }
    }
}
```