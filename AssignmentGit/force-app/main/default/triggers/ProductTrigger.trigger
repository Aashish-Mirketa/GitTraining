trigger ProductTrigger on Product2 (before insert) {
          List<New_Product_Entry__e> npeList=new List<New_Product_Entry__e>();

    for(Product2 prod:Trigger.new ){
        New_Product_Entry__e npe=New New_Product_Entry__e();
        npe.Name_Of_The_Product__c=prod.Name;
        npe.Product_Id__c=prod.Id;
        npe.Product_Price__c=prod.Product_Price__c;
        npe.Product_Category__c=prod.Family;
     //   insert npe;
        npeList.add(npe);
    }
    System.debug('npeList'+npeList);
    List<Database.saveResult> results=EventBus.publish(npeList);
    
}