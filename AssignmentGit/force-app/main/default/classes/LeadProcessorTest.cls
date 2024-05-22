@isTest
public class LeadProcessorTest {
@testSetup
    static void setup(){
        List<Lead> leads=new List<Lead>();
        for(Integer i=0;i<200;i++){
            Lead l=new Lead(LastName='Test'+i,Company='Test Company');
            leads.add(l);
        }
insert leads;        
        
    }
    
    static testMethod void Process_Test(){
        Test.startTest();
        LeadProcessor lp=new LeadProcessor();
        Id batchId=Database.executeBatch(lp,200);
        Test.stopTest();
        List<Lead> leads=[Select Id,LeadSource From Lead Where LeadSource='Dreamforce'];
        System.assertEquals(200,leads.size());
        
}
}