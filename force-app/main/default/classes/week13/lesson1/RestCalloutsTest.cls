@isTest
public with sharing class RestCalloutsTest {
    @isTest
    private static void getAnimalsTest(){
        //1. Set the mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        //2. Test the Mock
        HttpResponse response = RestCallout.getAnimal();
        //3. Run Asserts
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }

    @isTest
    private static void getEmployeesTest(){
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        HttpResponse response = RestCallout.getEmployees();

        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
        System.assertEquals('{"error":0,"msg":"data found","data":[{"id":1,"username":"ebahringer","name":"Braulio Luettgen","email":"kaela.turner@example.net","gender":"Female","designation":"Mean Stack Developer","phone_number":"781.322.7616","complete_address":"298 Edythe Harbors Suite 697 Lake Mathiasburgh, MN 28564-6386"},{"id":2,"username":"moore.samanta","name":"Christian Kessler","email":"summer.koepp@example.com","gender":"Male","designation":"Freelancer","phone_number":"509-549-9565","complete_address":"8947 Howell MountainsSouth Kavon, VT 89670-8443"}]}', response.getBody());


    }

    @isTest
    private static void postEmployeeTest(){
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        HttpResponse response = RestCallout.postEmployee();

        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }

    @isTest
    private static void deleteEmployeeTest(){
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        test.startTest();
        HttpResponse response = RestCallout.deleteEmployee();
        test.stopTest();

        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('{"error":0,"msg":"data deleted successfully","data":[]}', response.getBody());
        
    }
}