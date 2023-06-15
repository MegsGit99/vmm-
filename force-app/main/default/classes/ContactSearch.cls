public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName, String postalCode) {
        List<Contact> matchingContacts = new List<Contact>();
        
        String query = 'SELECT Id, Name FROM Contact WHERE LastName = :lastName AND MailingPostalCode = :postalCode';
        
        for (Contact c : Database.query(query)) {
            matchingContacts.add(c);
        }
        
        return matchingContacts;
    }
}