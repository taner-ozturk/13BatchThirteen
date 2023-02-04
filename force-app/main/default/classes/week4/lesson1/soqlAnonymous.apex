SoqlDemo.parentToChild_SOQL2();
SoqlDemo.parentToChild_SOQL1();
SoqlDemo.childToParent_SOQL1();

SoqlDemo.account_soqlFilter('GenePoint');
SoqlDemo.account_soqlFilter('salesfrce');
SoqlDemo.account_soqlFilter();
SoqlDemo.accountSOQL_3();
SoqlDemo.accountSOQL_2();
SoqlDemo.accountSOQL_11();
SoqlDemo.accountSOQL_1();


select id, name, subject__c, salesforce_project__r.project_name__c, salesforce_project__r.status__c from salesforce_ticket__c
select id, name, (select lastname from contacts) from account
select name, project_name__c,(select subject__c, priority__c, status__c from salesforce_tickets__r) from salesforce_project__c
select name, type, (select name, amount from Opportunities where stagename = 'Closed Won') from account where type = 'customer - direct'
select id, name, project_name__c,(select subject__c, priority__c from salesforce_tickets__r) from salesforce_project__c

select count(mailingcity) from contact
select count(name), leadsource from lead group by leadsource
select sum(amount),count(id), stagename from opportunity group by stagename
select count(id), name from account group by name having count(id) > 1



git config --global user.email "email@email.com"
git config --global user.name "fname lname"

git init
