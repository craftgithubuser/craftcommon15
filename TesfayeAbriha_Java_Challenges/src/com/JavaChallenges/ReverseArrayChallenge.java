package com.JavaChallenges;

import java.util.Arrays;

public class ReverseArrayChallenge {

	public static void main(String[] args) {
//		int[] array = { 1, 2, 3, 4, 5 }; // if we need to insert array values
//		reverse(array);
		int myArray[] = MinimumInteger.readIntegers(0);//if we want to get the values of the array to dynamically be inserted
		reverse(myArray);
	}

	public static void reverse(int[] array) {

		int[] reverseArray = new int[array.length];

		int j = 0;

		for (int i = array.length - 1; i >= 0; i--) {
			reverseArray[i] = array[j];

			j++;
		}

		System.out.println("The original array was: " + Arrays.toString(array));

		System.out.println("The reversed array is: " + Arrays.toString(reverseArray));

	}
}
