public static void createDefaultTickdt(list<salesforce_project__c> spTriggerNew) {
        try {
            List<Salesforce_Ticket__c> newTickets = new List<Salesforce_Ticket__c>();
            for (Salesforce_Project__c eachSP : spTriggerNew) {
                //create new ticket here
                Salesforce_Ticket__c st = new Salesforce_Ticket__c();
                st.Subject__c = 'Default ST';
                st.Salesforce_Project__c = eachSP.id;
                st.Requested_by_date__c = date.today();
                newTickets.add(st);
            }
            if (!newTickets.isEmpty()) {
                insert newTickets;
            }
        } catch (Exception ex) {
            for (Salesforce_Project__c eachSP : spTriggerNew) {
                eachSP.addError('ERROR in creating default ticket. Please contact your administrator, not developer');
            }
        }
   }