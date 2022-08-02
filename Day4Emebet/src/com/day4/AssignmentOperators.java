package com.day4;

public class AssignmentOperators {

	public static void main(String as []) {
	int a = 30;
    int b = 10;
    int c = 0;


      c = a + b;
System.out.println("c = a + b = " + c );
      c += a ;//c=c+a
System.out.println("c += a  = " + c );
      c -= a ;//c=c-a
System.out.println("c -= a = " + c );
      c *= a ;//c=c*a +c==0
System.out.println("c *= a = " + c );
a = 20;
c = 25;
c %= a ;
System.out.println("c %= a  = " + c );


}
}