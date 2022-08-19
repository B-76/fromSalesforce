public class ContactTriggerHelper {
 public static void aggregateNumOfContactsOnAccount(List<Contact> contactList){
        List<Contact> accList = [SELECT AccountId FROM Contact WHERE Contact.Active__c = true];
        Map<Id,Integer> accMap = new Map<Id,Integer>();
        for(Contact con : accList){
            Integer numOfCon = accMap.get(con.AccountId);
            if(numOfCon==null){
                accMap.put(con.AccountId,1); 
            }else{
                accMap.put(con.AccountId,numOfCon+1);
            } 
        }
     List<Account> newAccountList =[SELECT id FROM Account WHERE id IN: accMap.keySet()];
     for(Account acc:newAccountList){
         acc.Num_of_Active_Contacts__c=accMap.get(acc.id);
         }
     update newAccountList;
        }        
    }