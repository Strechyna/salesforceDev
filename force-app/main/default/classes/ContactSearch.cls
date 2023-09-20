public class ContactSearch {
    public static Contact[] searchForContacts(String name, String postalCode) {
        return [SELECT Name FROM Contact WHERE LastName = :name AND MailingPostalCode = :postalCode];
    }
}