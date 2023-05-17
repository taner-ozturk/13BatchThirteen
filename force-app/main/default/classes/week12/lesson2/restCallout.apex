RestCallout.getAnimal();
RestCallout.getEmployees();
RestCallout.postEmployee();
RestCallout.deleteEmployee();



list<Employee__c> emp = [SELECT name FROM Employee__c];

delete emp;


