package com.pack1;

public class Box {

	double width;
	double height;
	double depth;
	
//	public Box(double w, double h, double d ) { //Constructor with parameter
//		width=w;
//		height=h;
//		depth=d;
//	}
	
	public Box() { //constructor w/out parameter(empty constructor)
		width=10;
		height=10;
		depth=10;
	}

	public double volume() {
		// TODO Auto-generated method stub
		return width*height*depth;
	}
}
