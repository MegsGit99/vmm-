@isTest
public class TestVerifyDate {
    @isTest
    static void CheckDates_Testcase1(){
        //Check if date2 is within 30 days of day1
        Date returnResult = VerifyDate.CheckDates(Date.valueOf('2022-03-13'), Date.valueOf('2022-03-20'));
        System.assertEquals( Date.valueOf('2022-03-20'), returnResult);
    }
   @isTest
    static void CheckDates_Testcase2(){
        //Check if date2 is Not within 30 days of day1
        Date returnResult = VerifyDate.CheckDates(Date.valueOf('2022-03-13'), Date.valueOf('2022-01-14'));
        System.assertEquals( Date.valueOf('2022-03-31'), returnResult);
    }
}