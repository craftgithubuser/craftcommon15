package com.day4;

import java.math.BigDecimal;

public class ArthimeticOperators {
	public static void main(String[] args) {
		
		float a, b, c;
        a=10;
        b=2;
        c=a+b;
       /* System.out.println("Addtion: "+c); //12
        c=a-b;
        System.out.println("Substraction: "+c); //8
        c=a*b;
      System.out.println("Multiplication: "+c); //20
      c=a/b;
      System.out.println("Division: "+c); //5
      b=3;
      c=a%b;
      System.out.println("Remainder: "+c); //0
      a++;
      b--;
      a=++a;
      c=a++; //C=10 a=11*/
      b=a++;
      System.out.println("Increment Operator: "+b); //11
      a=--a;
      a=--a; //10
    //  int d= a--; //d=11,a=10
      System.out.println("decrement Operator: "+a);   //10

	}
	

}
