

	/*public int readIntegers(int count) {
		
		int[] array= new int[count];
		
		for(int i=0; i<array.length; i++) {
		
			System.out.println("Enter number");
		}
		return array;
	}
		
		public int findMin(int[] count) {
			int min = Integer.MAX_VALUE;
			for(int i=0; i<arr.length;i++) {
			if(value<min) {
				min= value;
			}
		}
		return min;
}

		
		
		public static void main(String[] args) {
		
		static Scanner in = new Scanner(System.in);
		
		int Count = in.nextInt();
		System.out.println("Please enter number:" + Count);
				
				
	}
		public static void main(String[]args) {

		
			
		}
		
	}*/

package com.challenge_2;

import java.util.Scanner;

public class Challenge_2 {
	
	static Scanner in = new Scanner (System.in);
	//private static Scanner in;

	public static void main(String[] args) {

		System.out.println("Enter count:");

		int count = in.nextInt();
		int[] returnedarray = readInteger(count);
		int returnMin = findMin(returnedarray);
		System.out.println("minimum value is : " + returnMin);

	}

	public static int[] readInteger(int count) {

		int[] array = new int[count];
	
		for (int i = 0; i < array.length; i++) {
			System.out.println("Enter number: ");

			int number = in.nextInt();
			array[i] = number;

		}
		return array;

	}

	public static int findMin(int[] array) {
		int min = Integer.MAX_VALUE;

		for (int i = 0; i < array.length; i++) {
			int value = array[i];
			if (value < min) {

				min = value;

			}
		}
		return min;

	}

}

