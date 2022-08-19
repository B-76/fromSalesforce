trigger ContactTrigger on Contact (After insert) {
    
    ContactTriggerHelper.aggregateNumOfContactsOnAccount(Trigger.New);
    
    }