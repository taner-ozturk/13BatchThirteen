trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('--- trigger start ----');
    if (Trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        //call VIP update method.
        AccountTriggerHandler.updateVIPForAllContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    } 
 }