/**
 * Created by ValeryiaStrechyna on 9/15/2023.
 */

public with sharing class ContactController {

    @AuraEnabled(Cacheable=true)
    public static List<Contact> getContacts() {
        return [
                SELECT FirstName, LastName, Email
                FROM Contact
        ];
    }
}
