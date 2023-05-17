public class AccountsBatch implements Database.Batchable<SObject>{
    //start method -> SOQL QUERY -> ACCOUNT -> 50k
    public Database.QueryLocator start(Database.BatchableContext bc){
        system.debug('inside start method.');
        Database.QueryLocator acc = database.getQueryLocator([select id, name, active__c, Description from account]);
        return acc;
    }

    public void execute(Database.BatchableContext bc, list<account> scope){
        system.debug('inside execute method');
        //update account records
        list<account> updateAccount = new list<account>();
        for (account eachAcc : scope) {
            if (eachacc.Active__c != 'No') {
                eachAcc.Description += '...Updated via batch';
                updateAccount.add(eachAcc);
            }
        }
        if (!updateAccount.isempty()) {
            update updateAccount;
        }
    }
    //finish method
    public void finish(Database.BatchableContext bc){
        system.debug('finished with all records.');
    }
}