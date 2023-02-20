public with sharing class AccountUtils {
    public AccountUtils() {

    }

    public static List<Account> accountsByState(String billingState) {
        return [SELECT Id, Name FROM Account WHERE BillingAddress.BillingState = :billingState];
    }
}