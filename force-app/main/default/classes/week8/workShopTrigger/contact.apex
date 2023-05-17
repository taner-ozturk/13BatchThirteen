Account acc1 = [SELECT id, adress__c FROM account WHERE adress__c = 'Aydın' LIMIT 1];
Account acc2 = [SELECT id, adress__c FROM account WHERE adress__c = 'Adana' LIMIT 1];


List<Contact> conList = new List<Contact>();

for (Integer i = 0; i < 200; i++) {
    Contact con = new Contact();
    con.LastName= 'Test'+i;
    con.AccountId = acc1.Id;
    if (i<50) {
        con.adress__c='Adana';
    } else if (i<151) {
        con.adress__c='Aydın';
    }
    conList.add(con);
}

for (Integer i = 0; i < 200; i++) {
    Contact con = new Contact();
    con.LastName= 'Test'+i;
    con.AccountId = acc2.Id;
    if (i<50) {
        con.adress__c='Adana';
    } else if (i<151) {
        con.adress__c='Aydın';
    }
    conList.add(con); 
}

insert conList;

List<Contact> conList = [SELECT id FROM Contact WHERE name LIKE :'%Test%'];
delete conList;