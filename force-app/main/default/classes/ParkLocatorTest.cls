@isTest
private class ParkLocatorTest {
    @istest
    static void testCallout(){
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String country = 'USA';
        string[] result = ParkLocator.country(country);
        System.assertEquals(new List<String>{'Glacier National Park','Grand Canyon','Yellowstone'},
                           ParkLocator.country(country));
    }
}