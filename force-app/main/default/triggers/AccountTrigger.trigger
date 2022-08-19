trigger AccountTrigger on Account (after insert) {
    List<Contact> ConList = new List<Contact>();
    for(Account acc: Trigger.new){
        if(acc.Industry == 'Banking'){
            
            Contact newCont = new Contact();
            newCont.LastName=acc.Name;
            newCont.Phone=acc.Phone;
            ConList.add(newCont);
            
            
            
            
        }
        
        
    }
insert ConList;
}