public with sharing class EmployeeHandler {
   public static void afterInsert(List< Employee__c> newEmployee) {
        for (Employee__c emp : newEmployee) {
            WeeklyAssignmentCallouts.postEmployeeInfo(emp.Id);
        }
   }
}