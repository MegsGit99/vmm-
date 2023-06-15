public class EventManager {
    // Create an Event
    public static Id createEvent() {
        Event__c event1 = new Event__c();
        event1.Name = 'Welcome to Multiverse';
        event1.Event_Description__c  = 'An introduction to Multiverse';
        event1.Event_Start_Time__c  = Datetime.newInstance(Date.today(), Time.newInstance(17, 0, 0, 0));
        event1.Event_End_Time__c  = Datetime.newInstance(Date.today(), Time.newInstance(18, 30, 0, 0));
        
        try {
            insert event1;
            System.debug('New Event record created with ID: ' + event1.Id);
        } catch (DmlException e) {
            System.debug('Error creating new Event record: ' + e.getMessage());
        }
        
        return event1.Id;
    }
    public static Id createEvent2() {
        Event__c event2 = new Event__c();
        event2.Name = 'Procurex National ';
        event2.Event_Description__c  = 'Alan Heron, Director of Procurement & Marcus Hulme, Director of Places Impact will speak on the role of procurement in supporting communities';
        event2.Event_Start_Time__c  = Datetime.newInstance(Date.today(), Time.newInstance(15, 0, 0, 0));
        event2.Event_End_Time__c  = Datetime.newInstance(Date.today(), Time.newInstance(16, 00, 0, 0));
        
        try {
            insert event2;
            System.debug('New Event record created with ID: ' + event2.Id);
        } catch (DmlException e) {
            System.debug('Error creating new Event record: ' + e.getMessage());
        }
        
        return event2.Id;
    }
    public static Id createEvent3() {
        Event__c event3 = new Event__c();
        event3.Name = 'ULI Europe Conference ';
        event3.Event_Description__c  =  'ULI Europe Conference offers attendees unparalleled opportunities to engage content, speakers, and connect one-on-one with real estate industry leaders ';
        event3.Event_Start_Time__c  = Datetime.newInstance(Date.today(), Time.newInstance(12, 0, 0, 0));
        event3.Event_End_Time__c  = Datetime.newInstance(Date.today(), Time.newInstance(14, 45, 0, 0));
        
        try {
            insert event3;
            System.debug('New Event record created with ID: ' + event3.Id);
        } catch (DmlException e) {
            System.debug('Error creating new Event record: ' + e.getMessage());
        }
        
        return event3.Id;
    }
        public static Id createEvent4() {
        Event__c event4 = new Event__c();
        event4.Name = 'Housing Scotland Annual Conference 2023  ';
        event4.Event_Description__c  =  'The SFHA is the representative organisation for Scotlands Housing Association sector ';
        event4.Event_Start_Time__c  = Datetime.newInstance(Date.today(), Time.newInstance(17, 0, 0, 0));
        event4.Event_End_Time__c  = Datetime.newInstance(Date.today(), Time.newInstance(18, 50, 0, 0));
   
        try {
            insert event4;
            System.debug('New Event record created with ID: ' + event4.Id);
        } catch (DmlException e) {
            System.debug('Error creating new Event record: ' + e.getMessage());
        }
        
        return event4.Id;
    }
        public static Id createEvent5() {
        Event__c event5 = new Event__c();
        event5.Name = 'Footprint Brighton 2021 ';
        event5.Event_Description__c  =  'FOOTPRINT+ is the new annual event for the UK property world to meet and learn how to deliver its net-zero carbon targets, with a conference full of the companies and organisations who are making it happen ';
        event5.Event_Start_Time__c  = Datetime.newInstance(Date.today(), Time.newInstance(14, 30, 0, 0));
        event5.Event_End_Time__c  = Datetime.newInstance(Date.today(), Time.newInstance(15, 30, 0, 0));
        
        try {
            insert event5;
            System.debug('New Event record created with ID: ' + event5.Id);
        } catch (DmlException e) {
            System.debug('Error creating new Event record: ' + e.getMessage());
        }
        
        return event5.Id;
    }
}