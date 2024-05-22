public class DailyLeadProcessor implements Schedulable{
    
    public static void execute(SchedulableContext sc)
    {
        List<Lead> leadsList=[Select Id,LastName,LeadSource From Lead Where LeadSource='' LIMIT 200];
        List<Lead> leads=new List<Lead>();
        if(!leadsList.isEmpty()){
            for(Lead L:leadsList){
               L.leadSource='Dreamforce';
                leads.add(L);
}
            update leads;
      
        }
        
}
            
}