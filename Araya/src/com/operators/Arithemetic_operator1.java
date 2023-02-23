package com.operators;

public class Arithemetic_operator1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
     int a,b,c;
     a=10;
     b=2;
     c=a+b;
     System.out.println("Addition:"+c);
     c=a-b;
     System.out.println("Substraction:"+c);
     c=a*b;
     System.out.println("Multiplication:"+c);
     c=a/b;
     System.out.println("Division:"+c);
     b=3;
     c=a%b;
     System.out.println("Remainder:"+c);
     a=++a;
     System.out.println("Increamentoperator:"+a);
     a=--a;
     System.out.println("decreamentoperator:"+a);
	}

}
