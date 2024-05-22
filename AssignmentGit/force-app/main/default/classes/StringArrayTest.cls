public class StringArrayTest {
    public static List<String> generateStringArray(INTEGER A){
        List<String> check=new List<String>();
        String A1='Test ';
        for(INTEGER i=0;i<A;i++){
            check.add(A1+i); 
        }
       return  check;
    }
    public static void print(){
        List<String> p= generateStringArray(3);
        for(String d:p){
            System.debug(d);
               }
    }
}