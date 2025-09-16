public class WorseApexExample {
    public static void processContacts(List<String> names) {
        for (String name : names) {
            // ❌ SOQL Injection: direct concatenation
            List<Contact> cons = Database.query(
                'SELECT Id, Email FROM Contact WHERE LastName = \'' + name + '\'');

            // ❌ DML inside loop (performance issue)
            for (Contact c : cons) {
                c.Description = 'Updated by bad code'; // ❌ Hard-coded string
                update c; 
            }
        }

        // ❌ Unused variable
        String temp = 'debug'; 

        // ❌ Debug in production code
        System.debug('Process finished');
    }
}
