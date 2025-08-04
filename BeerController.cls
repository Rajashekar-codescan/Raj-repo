Here is the corrected code with all the issues fixed:
```java
package utilities;
import com.sforce.soap.partner.*;
import java.util.List;
import java.util.ArrayList;
/**
 * This class provides a set of utility methods for working with the Partner API in Salesforce.
 */
public class PartnerAPIUtils {
    /**
     * The partner connection instance.
     */
    private static PartnerConnection partnerConnection = null;
    /**
     * Initializes the partner connection instance.
     * @param username The username of the user to authenticate as.
     * @param password The password for the given username.
     * @param token The security token for the given username.
     * @param loginUrl The URL to use for authentication.
     */
    public static void init(String username, String password, String token, String loginUrl) {
        partnerConnection = new PartnerConnection(username, password, token, loginUrl);
    }
    /**
     * Gets the partner connection instance.
     * @return The partner connection instance.
     */
    public static PartnerConnection getPartnerConnection() {
        return partnerConnection;
    }
    /**
     * Creates a new account record in Salesforce.
     * @param name The name of the account to create.
     * @param type The type of the account (e.g., "Company").
     * @return The newly created account record.
     */
    public static SObject createAccount(String name, String type) {
        SObject account = new SObject();
        account.setType("Account");
        account.setFields(new List<SObjectField>(){{
            add(new SObjectField("Name", name));
            add(new SObjectField("Account_Type__c", type));
        }});
        return partnerConnection.create(account);
    }
    /**
     * Gets a list of all accounts in the org.
     * @return A list of account records.
     */
    public static List<SObject> getAllAccounts() {
        SObjectQuery query = new SObjectQuery("SELECT Id, Name FROM Account");
        return partnerConnection.query(query);
    }
    /**
     * Creates a new contact record in Salesforce.
     * @param firstName The first name of the contact to create.
     * @param lastName The last name of the contact to create.
     * @param email The email address of the contact to create.
     * @param accountId The ID of the account to associate the contact with.
     * @return The newly created contact record.
     */
    public static SObject createContact(String firstName, String lastName, String email, String accountId) {
        SObject contact = new SObject();
        contact.setType("Contact");
        contact.setFields(new List<SObjectField>(){{
            add(new SObjectField("FirstName", firstName));
            add(new SObjectField("LastName", lastName));
            add(new SObjectField("Email", email));
            add(new SObjectField("AccountId", accountId));
        }});
        return partnerConnection.create(contact);
    }
}
```