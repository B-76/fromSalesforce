trigger CreateLead on Lead (before insert) {
    for(Lead newLead : Trigger.new){
        if(newLead.LeadSource==null){
        newLead.LeadSource='Other';
    }
        
        
    }

}