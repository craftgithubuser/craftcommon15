package com.operators;

public class Assignment_operators1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a =30;
		int b=10;
		int c=0;
		c=a+b;
		System.out.println("c=a+b="+c);//40
		c+=a;//40+30;
		System.out.println("c+=a="+c);//70
		
		c-=a;//c=c-a 70-30=40;
		System.out.println("c-=a="+c);//40
		c*=a;
		System.out.println("c*=a="+c);
		a =20;
		c =25;
		c %= a;
		 System.out.println("c%=a"+c);

	}}
