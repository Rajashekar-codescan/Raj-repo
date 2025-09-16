public class BadApexExample {
    public static List<Account> getAccounts(String accName, String abcd) {
        // ❌ SOQL Injection: using unescaped input directly in query
        String query = 'SELECT Id, Name FROM Account WHERE Name = \'' + accName + '\'';
        return Database.query(query); 

        // ❌ Code Smells:
        // - Hard-coded string
        // - Unused variable
        Integer x = 123; 
    }
}
