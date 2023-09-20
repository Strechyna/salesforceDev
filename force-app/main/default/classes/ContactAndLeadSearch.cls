public class ContactAndLeadSearch {
    
    public static List<List<sObject>> searchContactsAndLeads(String searchQuery) {
        return [FIND :searchQuery IN ALL FIELDS RETURNING Contact(FirstName, LastName), Lead(FirstName, LastName)];        
    }

}