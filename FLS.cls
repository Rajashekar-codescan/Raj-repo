public with sharing class Permitclass1 {

    public static List<List<Account>> getContacts(String searchTerm) {
              list<list<Contact>>  Result;
                       if(Schema.sObjectType.Contact.isAccessible()){
                         Result = [FIND :emailAddress in EMAIL FIELDS RETURNING
                                                 Contact(Id,Name,AccountId,Account.Name,Email,OwnerId,Owner.Name,LastmodifiedDate
                                                 where RecordTypeId in: contactRecordTypes), Apple( Id, Name)];
                             return Result;
                       }
                       return Result;
        }
}
