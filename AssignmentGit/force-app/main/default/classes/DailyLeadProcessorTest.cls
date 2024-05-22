@isTest
public class DailyLeadProcessorTest {
    @testSetup
    public static void data(){
        List<Lead> leadList=new List<Lead>();
        for(Integer i=0;i<200;i++){
            Lead l =new Lead(LastName='Test'+i,Company='testcompany',Status='Open - Not Contacted');
            leadList.add(l);
        }
        insert leadList;
    }
    @isTest
    public static void DailyLead_Test()
    {   String cron_exp='15 10 * * * ?';
        Test.startTest();
        String JobId=System.schedule('ScheduleApex',cron_exp,new DailyLeadProcessor());
        Test.stopTest();
     List<Lead> leads=[Select Id,LeadSource from Lead Where LeadSource='Dreamforce'];
     System.assertEquals(200,leads.size());
    }

}