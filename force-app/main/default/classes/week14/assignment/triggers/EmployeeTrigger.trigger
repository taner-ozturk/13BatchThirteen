trigger EmployeeTrigger on Employee__c (after insert) {
    if (trigger.isAfter) {
        if (Trigger.isInsert) {
            EmployeeHandler.afterInsert(Trigger.new);
        }
    }
}