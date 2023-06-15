@isTest
public class TestDataFactory {
    public static String createAccountWithContacts(Integer numOfCons){
        Account acc = new Account(Name = 'Test Account');
        insert acc;
        List<Contact> cons = new List<Contact>();
        for(Integer i = 0; i<numOfCons; i++){
            Contact con = new Contact(AccountId = acc.Id, 
                                      FirstName = 'Test', 
                                      LastName = 'Contact ' + i);
            cons.add(con);
        }
        insert cons;
        return acc.Id;
    }
}