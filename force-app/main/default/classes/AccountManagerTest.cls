@isTest
private class AccountManagerTest {
    @isTest static void testAccountManager() {
         Id recordId = getTestAccountId();
        RestRequest request = new RestRequest();
        request.requestURI = 'https://https://playful-goat-24ngjy-dev-ed.lightning.force.com//services/apexrest/Accounts/'+recordId +'/contacts';
        request.httpMethod= 'GET';
        RestContext.request = request;
        Account acc = AccountManager.getAccount();
        System.assert(acc != null);
    }
    private static Id getTestAccountId(){
        Account acc = new Account(Name = 'TestAcc2');
        Insert acc;
        Contact con = new Contact(LastName = 'TestCont2', AccountId = acc.Id);
        insert con;
        return acc.Id;
    }
}