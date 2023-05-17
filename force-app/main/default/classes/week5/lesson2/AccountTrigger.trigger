trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('--- trigger start ----');
    if (Trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
       
    }

}