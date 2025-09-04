public class Foo {
    public Account foo(String newName, String tempID) {
    		Account acc = new Account(newName,tempID);
    		Database.update(acc,AccessLevel);
    		update as user acc;
    		return acc;
    	}
}