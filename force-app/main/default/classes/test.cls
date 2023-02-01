public with sharing class test {
    
    public static void qry(){


      List<Salesforce_Ticket__c> sticketList= [SELECT id, name, subject__c, salesforce_project__r.project_name__c, salesforce_project__r.status__c FROM salesforce_ticket__c];


    
     List<Account>   accList=  [SELECT id, name, 
                                (SELECT lastname FROM contacts) 
                                FROM account];
      
      
      

    }
}