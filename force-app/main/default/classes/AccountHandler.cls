public class AccountHandler {
    public static void insertAccount(Integer numAccounts) {
        List<Account> addAccounts = new List<Account>();
        Integer n = 1;
        while (n <= numAccounts) {
            Account newAccount = new Account(Name = 'Acme Inc N' + n, AccountNumber = 'A000n' + n);
            addAccounts.add(newAccount);
            n++;
        }
        insert addAccounts;
    }
}