package com.array.day6;

public class Exercise4 {
	
	public static void main(String[] args) {
		double[] studMark = {67.5,78,80,95.9,55,77,100,81,67,83};		
		double avg;
		double total = 0;
		
//		for(double elt: studMark) {
//			total += elt; // total = total + elt 
//		}
		
		for(int i=0; i<studMark.length; i++) {
			
			total += studMark[i]; // total = total+ studMark[i]
		}
		
		avg = total/studMark.length;
		
		System.out.println("The total  sum of student mark is: " + total);
		System.out.println("The average mark of the student: " + avg);	
		
		
	}

}
