package com.icraftjava;

public class LOCALVARIABLE{
	void methodOne() {
		int j=25; //<...........local variable
		System.out.println("Value of j:" +j); //25
	}
	public void methodTwo() {
		int k=30; //<...........local variable
		System.out.println("Value of k:"+k); //30
	//	System.out.println("Value of J:"+J);              //<....error
	}

	public static void main(String[] args) {
		
		// TODO Auto-generated method stub
		LOCALVARIABLE m1=new LOCALVARIABLE();//creating an object
        m1.methodOne();
        m1.methodTwo();
	}

}
