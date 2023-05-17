//AccountsBatch
AccountsBatch ab = new AccountsBatch();
Database.executeBatch(ab);

//AccountsBatch13
AccountsBatch13 ab = new AccountsBatch13();
Database.executeBatch(ab, 10);


//AccountsQueueable
list<account> listA = [select id, name from account limit 50];
AccountsQueueable aq = new AccountsQueueable(listA);//will this work?
//we can do enqueueJob only for the classes which IMPLEMENTS queueable.
id qId = system.enqueueJob(aq);

//We can executeBatch only the classes which Implements batchable
//ID batchId = Database.executeBatch(aq, 21);