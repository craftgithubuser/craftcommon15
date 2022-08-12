package com.pack1;

public class BoxClass {

	//Creating Multiple objects from the same class

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*	
		Box mybox = new Box(); //object 1
		mybox.width = 10;
		mybox.height = 20;
		mybox.depth = 30;
		
		double volume = mybox.width * mybox.height * mybox.depth;
		System.out.println("Volume of box is: " + volume);
		
		Box mybox2 = new Box(); //object 2
		mybox2.width = 5;
		mybox2.height  = 8;
		mybox2.depth  = 10; 
		
		double vol = mybox2.width * mybox2.height * mybox2.depth;
		System.out.println("Volume of box2 is: " + vol);
		
	}
*/

		Box mybox = new Box();
		mybox.depth = 20; //...we can/can't use this value 
		
		System.out.println("Volume of the the box" + " = " + mybox.volume());
		}
}

      //Method call
//double  returnVal= mybox.calcVolume();
//▪The right hand side is the method you call.
//▪The left hand side is the value returned by the method.