package com_packageDay11;

public class ExceptionHandlingDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
     try {
    	 int num =Integer.parseInt("abc");	
    	 
    	 String name =null;
    	 name.length();
    	 int[]arr = new int[5];//length=5,0-4
    	 arr[5]=10;
    	 int a =20/0;
    	 
     }
     catch(Exception e) {
	}
     finally {
    	  System.out.println(After exception in the finally block);
     }
        System.out.println("after exeption");
        
}
	public static void validate(int age) {
		if(age<18) {
			throw new ArithmeticException("not valid");
		}
	}
}
