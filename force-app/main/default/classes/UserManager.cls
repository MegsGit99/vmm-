public class UserManager {
    public static Id createUser(String firstName, String lastName, String email, String username) {
        User__c  User = new User__c ();
        User.First_Name__c = 'Mouhamed';
        User.Last_Name__c = 'Gueye';
        string FName = User.First_Name__c.substring(0, 1).toLowerCase();
        string LName = User.Last_Name__c.substring(0).toLowercase();
        User.Email__c = FName + LName + '@gmail.com';
        User.Username__c = FName + LName + '@gmail.com';

        
        
       
        Database.SaveResult sr = Database.insert(User, false);
        if (sr.isSuccess()) {
            System.debug('New user record created with ID: ' + sr.getId());
            return sr.getId();
        } else {
            for (Database.Error err : sr.getErrors()) {
                System.debug('Error creating new user record: ' + err.getStatusCode() + ': ' + err.getMessage());
            }
            return null;
        }
    }
    public static Id createUser2(String firstName, String lastName, String email, String username) {
        User__c User2 = new User__c();
        User2.First_Name__c = 'John';
        User2.Last_Name__c = 'Doe';
        string FName2 = User2.First_Name__c.substring(0, 1).toLowerCase();
        string LName2 = User2.Last_Name__c.substring(0).toLowercase();
        User2.Email__c = FName2 + LName2 + '@gmail.com';
        User2.Username__c = User2.Email__c;
        
               
        Database.SaveResult sr2 = Database.insert(User2, false);
        if (sr2.isSuccess()) {
            System.debug('New user record created with ID: ' + sr2.getId());
            return sr2.getId();
        } else {
            for (Database.Error err : sr2.getErrors()) {
                System.debug('Error creating new user record: ' + err.getStatusCode() + ': ' + err.getMessage());
            }
            return null;
        }
    }
	public static Id createUser3(String firstName, String lastName, String email, String username) {
        User__c User3 = new User__c();
        User3.First_Name__c = 'Emily';
        User3.Last_Name__c = 'Johnson';
        string FName3 = User3.First_Name__c.substring(0, 1).toLowerCase();
        string LName3 = User3.Last_Name__c.substring(0).toLowercase();
        User3.Email__c = FName3 + LName3 + '@gmail.com';
        User3.Username__c = User3.Email__c;
        
               
        Database.SaveResult sr3 = Database.insert(User3, false);
        if (sr3.isSuccess()) {
            System.debug('New user record created with ID: ' + sr3.getId());
            return sr3.getId();
        } else {
            for (Database.Error err : sr3.getErrors()) {
                System.debug('Error creating new user record: ' + err.getStatusCode() + ': ' + err.getMessage());
            }
            return null;
        }
    }
	public static Id createUser4(String firstName, String lastName, String email, String username) {
        User__c User4 = new User__c();
        User4.First_Name__c = 'Olivia';
        User4.Last_Name__c = 'Davis';
        string FName4 = User4.First_Name__c.substring(0, 1).toLowerCase();
        string LName4 = User4.Last_Name__c.substring(0).toLowercase();
        User4.Email__c = FName4 + LName4 + '@gmail.com';
        User4.Username__c = User4.Email__c;
        
               
        Database.SaveResult sr4 = Database.insert(User4, false);
        if (sr4.isSuccess()) {
            System.debug('New user record created with ID: ' + sr4.getId());
            return sr4.getId();
        } else {
            for (Database.Error err : sr4.getErrors()) {
                System.debug('Error creating new user record: ' + err.getStatusCode() + ': ' + err.getMessage());
            }
            return null;
        }
    }
	public static Id createUser5(String firstName, String lastName, String email, String username) {
        User__c User5 = new User__c();
        User5.First_Name__c = 'Daniel';
        User5.Last_Name__c = 'Smith';
        string FName5 = User5.First_Name__c.substring(0, 1).toLowerCase();
        string LName5 = User5.Last_Name__c.substring(0).toLowercase();
        User5.Email__c = FName5 + LName5 + '@gmail.com';
        User5.Username__c = User5.Email__c;
        
               
        Database.SaveResult sr5 = Database.insert(User5, false);
        if (sr5.isSuccess()) {
            System.debug('New user record created with ID: ' + sr5.getId());
            return sr5.getId();
        } else {
            for (Database.Error err : sr5.getErrors()) {
                System.debug('Error creating new user record: ' + err.getStatusCode() + ': ' + err.getMessage());
            }
            return null;
        }
    }
	public static void createUser6(String firstName, String lastName, String email, String username) {
    User__c User6 = new User__c();
    User6.First_Name__c = firstName;
    User6.Last_Name__c = lastName;
    string FName6 = firstName.substring(0, 1).toLowerCase();
    string LName6 = lastName.substring(0, User6.Last_Name__c.length()).toLowerCase();
    User6.Email__c = FName6 + LName6 + '@gmail.com';
    User6.Username__c = username;
    
    Database.SaveResult sr6 = Database.insert(User6, false);
    if (sr6.isSuccess()) {
        System.debug('New user record created with ID: ' + sr6.getId());
    } else {
        for (Database.Error err : sr6.getErrors()) {
            System.debug('Error creating new user record: ' + err.getStatusCode() + ': ' + err.getMessage());
        }
    }
    
    List<User__c> usersToInsert = new List<User__c>();
    usersToInsert.add(new User__c(First_Name__c = firstName, Last_Name__c = lastName, Email__c = email, Username__c = username));
    // add more users to the list here
    usersToInsert.add(new User__c(First_Name__c = 'Daniel', Last_Name__c = 'Smith', Email__c = 'daniel.smith@gmail.com', Username__c = 'daniel.smith'));
    usersToInsert.add(new User__c(First_Name__c = 'Emily', Last_Name__c = 'Johnson', Email__c = 'emily.johnson@gmail.com', Username__c = 'emily.johnson'));
    usersToInsert.add(new User__c(First_Name__c = 'Nicholas', Last_Name__c = 'Brown', Email__c = 'nicholas.brown@gmail.com', Username__c = 'nicholas.brown'));
    usersToInsert.add(new User__c(First_Name__c = 'Sophie', Last_Name__c = 'Davis', Email__c = 'sophie.davis@gmail.com', Username__c = 'sophie.davis'));
    usersToInsert.add(new User__c(First_Name__c = 'Samuel', Last_Name__c = 'Wilson', Email__c = 'samuel.wilson@gmail.com', Username__c = 'samuel.wilson'));
    usersToInsert.add(new User__c(First_Name__c = 'Grace', Last_Name__c = 'Moore', Email__c = 'grace.moore@gmail.com', Username__c = 'grace.moore'));
    usersToInsert.add(new User__c(First_Name__c = 'Jacob', Last_Name__c = 'Taylor', Email__c = 'jacob.taylor@gmail.com', Username__c = 'jacob.taylor'));
    usersToInsert.add(new User__c(First_Name__c = 'Ava', Last_Name__c = 'Anderson', Email__c = 'ava.anderson@gmail.com', Username__c = 'ava.anderson'));
    usersToInsert.add(new User__c(First_Name__c = 'William', Last_Name__c = 'Martin', Email__c = 'william.martin@gmail.com', Username__c = 'william.martin'));
    usersToInsert.add(new User__c(First_Name__c = 'Isabella', Last_Name__c = 'Clark', Email__c = 'isabella.clark@gmail.com', Username__c = 'isabella.clark'));

    
    List<Database.SaveResult> results = Database.insert(usersToInsert, false);
    for (Database.SaveResult sr : results) {
        if (sr.isSuccess()) {
            System.debug('New user record created with ID: ' + sr.getId());
        } else {
            for (Database.Error err : sr.getErrors()) {
                System.debug('Error creating new user record: ' + err.getStatusCode() + ': ' + err.getMessage());
            }
        }
    }
}
}