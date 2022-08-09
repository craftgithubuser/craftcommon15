package com.JavaChallenges;

import java.util.Arrays;
import java.util.Scanner;

public class MinimumInteger {
	public static int findMin(int[] myArray, int count) {
		int temp;
		for (int i = 0; i < count; i++) {
			for (int j = i + 1; j < count; j++) {
				if (myArray[i] > myArray[j]) {
					temp = myArray[i];
					myArray[i] = myArray[j];
					myArray[j] = temp;
				}
			}
		}
		return myArray[0];
	}

	static Scanner scanner = new Scanner(System.in);

	public static int[] readIntegers(int count) {
		System.out.println("Please Enter the size of the array. The size is: ");
		count = scanner.nextInt();

		int[] myArray = new int[count];
		for (int i = 0; i < count; i++) {
			System.out.println("Enter the number in idex " + (i));
			myArray[i] = scanner.nextInt();
		}
		return myArray;
	}

	public static void main(String args[]) {

		int myArray[] = readIntegers(0);
		System.out.println("My Numbers in the Array: " + Arrays.toString(myArray));
		System.out.println("The Minimum Number from the array is : " + findMin(myArray, myArray.length));

	}

}