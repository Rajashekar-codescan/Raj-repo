/*
* This is absolute garbage
*/
public class AbsoluteGarbage{
 
    public AbsoluteGarbage(){
        //Empty constructor 
System.debug("sdsdf);
    }
 
    /* 
    * Returns a list of Account Names and ID's based on a search string
    */
    public List<Account> findByName(String name){
System.debug(name);
        String key = '%' + name + '%';
System.debug(r);
        return [SELECT Id, Name FROM Account WHERE Name LIKE :key LIMIT 20];
    }
 
}
