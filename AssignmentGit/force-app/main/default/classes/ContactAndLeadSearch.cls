public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String para){
        List<List<sObject>> matched = new List<List<sObject>>();
        List<Contact> l1 = [SELECT Id, Name FROM Contact WHERE FirstName=:para OR LastName=:para];
        List<Lead> l2 = [SELECT Id, Name FROM Lead WHERE FirstName=:para OR LastName=:para];
        matched.add(l1);
        matched.add(l2);
        return matched;
    }
}