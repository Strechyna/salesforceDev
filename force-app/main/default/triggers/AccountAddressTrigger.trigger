/**
 * Created by ValeryiaStrechyna on 9/11/2023.
 */

trigger AccountAddressTrigger on Account (before insert, before update) {

    for (Account account: Trigger.new) {
        if (account.Match_Billing_Address__c) {
            account.ShippingPostalCode = account.BillingPostalCode;
        }
    }

}
