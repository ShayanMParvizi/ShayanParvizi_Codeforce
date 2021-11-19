trigger LeadTrigger on Lead (after insert) {
  if(Trigger.isAfter){
    if(Trigger.isInsert){
      TriggerHelper.LeadTriggerHelp(Trigger.new);
    }
  }

}