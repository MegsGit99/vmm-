public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String name) {
        String searchQuery = 'FIND \'' + name + '*\' IN ALL FIELDS RETURNING Contact(Id, Name), Lead(Id, Name)';
        List<List<sObject>> searchResults = Search.query(searchQuery);
        return searchResults;
    }


}