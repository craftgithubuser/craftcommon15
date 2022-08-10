package com.array.day6;

public class Exercise1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[] studAge = new int [5]; //0-4
		studAge[0]=23;
		studAge[1]=33;
		studAge[2]=43;
		studAge[3]=25;
		studAge[4]=30;
		
	//	System.out.println(studAge[0]);
	//	System.out.println(studAge[1]);
	//	System.out.println(studAge[2]);
	//	System.out.println(studAge[3]);
	//	System.out.println(studAge[4]);
		
		System.out.println("accessing array element using for loop");
		
		for(int i=0; i<5; i++) {
			
			System.out.print(studAge[i] + " ");
		}
			System.out.println(); 
			System.out.println("accessing array element using foreach");
			for(int elt: studAge) {
				System.out.print(elt + " ");
		}

	}

}
