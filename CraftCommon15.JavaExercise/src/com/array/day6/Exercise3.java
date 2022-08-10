package com.array.day6;

public class Exercise3 {

	public static void main(String[]args) {
		
	double[]studMark = {67.5,78,80,95.9,55,77};
	
	System.out.println("accessing array using for loop");

      //accessing array using for loop

   // for(int i=0; i<6; i++) {
	for(int i=0; i<studMark.length; i++) {
    	System.out.print(studMark[i]+ " ");
    }
    
	System.out.println();
	
    //accessing array using foreach
	System.out.println("accessing array using foreach");
    for(double elt: studMark) {
    	System.out.print(elt + " ");
    	
    	System.out.println();
    }
    //accessing array in reverse order
    System.out.println("accessing array in reverse order");
    for(int i=studMark.length-1; i>=0; i--) {
    	System.out.print(studMark[i]);
    }
	}
	
}
