trigger ContactTrigger on Contact (before insert) {

    if(trigger.isBefore) {
        if(trigger.isInsert){
            ContactTriggerHandler.hasSameAdressCheck(trigger.new);
        }
    }

}