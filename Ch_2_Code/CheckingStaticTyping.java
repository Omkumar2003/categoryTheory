// basically humein ye dekhna hai ki kese java static typed language hoke bhi ...kai saare approach lgati hai dynamic bnne ke liye 

import java.util.ArrayList;
import java.util.List;


class CheckingStaticTyping {
    public static void main(String[] args) {
        //by using var which was introduced in java 10
        var om =10;
        var om1 = 20;
        var om3 ="i love her";
        System.out.println(om+om1+om3);
        
        
        main1(10);
        main1("i dont know");
        
        
        
        List<Integer> intList = new ArrayList<>();
        intList.add(1);
        intList.add(2);
        printList(intList);
    }
    //by using generic
     public static<T> T main1(T t) {
        
        System.out.println(t);
        return t;
    }
    //by using wild card ?
      public static void printList(List<?> list) {
        for (Object element : list) {
            System.out.println(element);
        }
    }
}