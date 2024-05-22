public class Demo {
    public static void printData(){
       List<String> nameList=new List<String>();
    
       // Map
       nameList.add('Aashish');
       nameList.add('Abhilash');
       nameList.add('Akash');
        System.debug(nameList);
        
       Set<String> nameList2 =new Set<String>();
       nameList2.add('Aashish');
       nameList2.add('Abhilash');
       nameList2.add('Akash');
       nameList2.add('Abhilash');
       nameList2.add('aashish');
       System.debug(nameList2);
        Map<Integer,String> Check=new Map<Integer,String>();
        check.put(0,'Akash');
        check.put(1,'aashish');
        System.debug(Check);
        if(Check.containsKey(1)){
            Check.put(1,'mirketa');
}
        System.debug(Check);
        
        
    }

}