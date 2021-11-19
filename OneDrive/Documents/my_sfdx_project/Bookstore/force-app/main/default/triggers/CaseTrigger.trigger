trigger CaseTrigger on Case (before insert, before update) {
  if(Trigger.isBefore){
    if(Trigger.isInsert){
      TriggerHelper.CaseTriggerHelp(Trigger.new);
    }
    if(Trigger.isUpdate){
      TriggerHelper.CaseTriggerHelp(Trigger.old);
    }
      
  }

}