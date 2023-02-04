DmlDemo.recordTypeExample();


DmlDemo.deleteLastRecords();
DmlDemo.bulkDmlRecord();
DmlDemo.dmlMultipleRecordUpdate_right2();
DmlDemo.dmlMultipleRecordUpdate_right1();
DmlDemo.dmlMultipleRecordInsert_right2();
DmlDemo.dmlMultipleRecordInsert_right1();
DmlDemo.dmlInsertDemo_wrong1();
DmlDemo.dmlInsertDemo_cstmObj2();
DmlDemo.dmlInsertDemo_stndObj();
DmlDemo.dmlInsertDemo_cstmObj();
DmlDemo.dmlupdateDemo_stndObj1();
DmlDemo.dmlUpdateDemo_stndObj3();
DmlDemo.dmlInsertDemo_stndObj2();





























select count(mailingcity) from contact
select count(name), leadsource from lead group by leadsource
select sum(amount),count(id), stagename from opportunity group by stagename
select count(id), name from account group by name having count(id) > 1