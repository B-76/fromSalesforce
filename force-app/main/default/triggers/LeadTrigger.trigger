trigger LeadTrigger on Lead (before insert) {
    
   for(LeaD newLead: Trigger.new){
       if(newLead.LeadSource==Null)
        newLead.LeadSource= 'Other';
    }

}