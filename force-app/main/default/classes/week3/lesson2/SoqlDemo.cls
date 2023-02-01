public class SoqlDemo {
     public static void accountSOQL_1() {
          list<account> listAccount = [SELECT id, name FROM account];
          system.debug('list of accounts ' + listAccount);
     }

     public static void accountSOQL_11(){
      account acc = [SELECT id, name, Phone 
                    FROM account 
                    ORDER BY createddate DESC 
                    LIMIT 1];
      system.debug('account record ' + acc);
     }

     public static void accountSOQL_2(){
          account acc = [SELECT id, name, Phone, AccountNumber, Website FROM account ORDER BY createddate DESC LIMIT 1];
          system.debug('latest created account record ' + acc);
          //print phone, name, and accountnumber
          string aName = acc.Name;
          string aPhone = acc.Phone;
          system.debug('account name ' + aName + ' account phone ' + aPhone + ', account number is ' + acc.AccountNumber);
          system.debug('account website ' + acc.Website);//will this work?
     }
  
     public static void accountSOQL_3() {
      list<account> listAccount = [SELECT id, phone, name, accountnumber FROM account ORDER BY createddate DESC];
      //for each loop on the list.
          for (account eachAcc  : listAccount) {
              system.debug('---each acc start---');
              system.debug('each acc: ' + eachAcc);
              string accName = eachAcc.Name;
              string accPhone = eachAcc.Phone;
              system.debug('accName ' + accName + ' phone ' + accPhone + ' accountnumber is ' + eachAcc.AccountNumber);
              system.debug('---each acc end---');
          }
     }
  
     public static void account_soqlFilter() {
      string accountName = 'GenePoint';
      list<account> listacc = [SELECT name, phone FROM account WHERE name = 'GenePoint'];
      list<account> listacc1 = [SELECT name, phone FROM account WHERE name LIKE '%t'];
      list<account> listacc2 = [SELECT name, phone FROM account WHERE name =: accountName];

      system.debug('filter: ' + listacc  );
      system.debug('filter1: ' + listacc1  );
      system.debug('filter2: ' + listacc2 );

     }
     
  }