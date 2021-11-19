public with sharing class TriggerHelper {
    public static void CaseTriggerHelp(List<Case> conts) {
      for(Case c : conts){
        if(c.ContactId == null){
          c.addError('Must include a contact');
        }
      }

    }
    public static void LeadTriggerHelp(List<Lead> lead){
      EmailTemplate et = [SELECT Id from EmailTemplate WHERE name=:'Lead:New Lead'];

      List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();

      for(Lead lea : lead){
        if(lea.Email != null){
          Messaging.SingleEmailMessage singleMessage = new Messaging.SingleEmailMessage();

          singleMessage.setTargetObjectId(lea.Id);

          singleMessage.setTemplateId(et.Id);

          singleMessage.setSaveAsActivity(false);

          singleMessage.setTreatTargetObjectAsRecipient(true);
          
          emails.add(singleMessage);
        }
      }
      Messaging.sendEmail(emails);

      
    }
}
