Account acc = [SELECT Id, Name, OwnerId, CreatedBy.Name FROM Account WHERE Name = 'TestB13 Builder test--SI' LIMIT 1];

//Input variable'ların map'e eklenmesi
Map<String, Object> inputs = new Map<String, Object>();
inputs.put('AccountId', acc.Id);
inputs.put('AccountName', acc.Name);
inputs.put('AccountOwnerId', acc.OwnerId);
inputs.put('CreatedByName', acc.CreatedBy.Name);

//Flow'un çağırılması(Flow API Name: Account_Autolaunched_Flow)
Flow.Interview invokeflow = new Flow.Interview.X17_Account_Auto_Launch_Flow(inputs);
invokeflow.start();