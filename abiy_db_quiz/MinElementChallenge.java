package Array;

import java.util.Scanner;

public class MinElementChallenge {
	
	static Scanner in = new Scanner(System.in);

	public static void main(String[] args) {
		
		int count;
		while(true) {
			System.out.println("How many integers?");
			count = in.nextInt();
			if(count <1) {
				System.out.println("Please inter a valid number");
			}else {
				break;
			}
		}

		
		MinElementChallenge minObj = new MinElementChallenge();
		//call readInteger
		int[] arr = minObj.readIntegers(count);
		
		int minValue = minObj.findMin(arr);
		
		System.out.println("The minimum integer in the array is " + minValue);
	}
	
	public int[] readIntegers(int count) {
		
		int[] inputArray = new int[count];
		
		for(int i = 0; i<count; i++) {
			
			if(i==0) {
				System.out.println("Please inter yout first number");
			} else if(i == count-1) {
				System.out.println("Please inter yout last number");
			} else {
				System.out.println("Please inter yout next number");
			}
			
			inputArray[i] = in.nextInt();
		}
		
		return inputArray;
		
	}
	
	public int findMin(int[] arr) {
		
		
		
		int min = arr[0];
		
		for (int i=0; i<arr.length; i++) {
			if(arr[i] < min) {
				min = arr[i];
			}
		}
		
		return min;
	}
	
	

}
