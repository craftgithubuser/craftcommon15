package com_conditionstmtsDay5;

public class NestedIfDemo1 {

	public static void main(String[] args) 
	{
		// TODO Auto-generated method stub
		int age=15;
		int weight=40;
		
		if(age>=18)
		{
			if(weight>50) {
				System.out.println("you are elegible");
		      }
			else{
				System.out.println("you are not eligible");
			}
		}
		else {
			System.out.println("you are not eligible2");
		}
 }
}
