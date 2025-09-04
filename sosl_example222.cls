public class f {
	public void justGiveMeFoo() {

	 	AggregateResult[] test = [SELECT Id FROM Opportunity];  //Bad: The resource is accessed without checking permissions.
	}
	
	public void giveMeFooSafely() {
		if (Opportunity.sObjectType.getDescribe().isAccessible()) {  //Good: Permissions are checked before any resources are accessed.
	 		return;
	 	}
	 	AggregateResult[] test = [SELECT Id FROM Opportunity]; 
	}

	public void giveMeFooSafelyWithEnforcedSecurity() {
	 	AggregateResult[] test = [SELECT Id FROM Opportunity WITH SECURITY_ENFORCED]; //Good: Permissions are checked using the WITH SECURITY_ENFORCED clause
	}

	public void giveMeFooSafelyWithUserModeSecurity() {
		AggregateResult[] test = [SELECT Id FROM Opportunity WITH USER_MODE]; //Best: Permissions are checked using the WITH USER_MODE clause
	}

} 