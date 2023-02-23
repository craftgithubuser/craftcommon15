package com.icraftjava;

public class instanceVariableDemo {
	int age=25; 
	//<........InstanceVariable Declareed outside methods
		void methodOne() {
			int i=10; //local variable
			System.out.println("Value of i:" +i); //10
			System.out.println("Value of age :"+age); //27
		}
		public void methodTwo() {
			int k=30; // local variable
			System.out.println("Value of k:"+k); //3
		//	System.out.println("Value of age:"+age); //2     
		}

		public static void main(String[] args) {
			
			// TODO Auto-generated method stub
			instanceVariableDemo var=new instanceVariableDemo();//
	        var.methodOne();
	        var.methodTwo();
	        
	        instanceVariableDemo m2= new instanceVariableDemo();
	        instanceVariableDemo m3= new instanceVariableDemo();
	        instanceVariableDemo m4=new instanceVariableDemo();
	        
	}

}
