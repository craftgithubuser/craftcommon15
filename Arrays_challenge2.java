package com.icraftjava;
import java.util.Scanner;
public class Arrays_challenge2 {

		private static Scanner scanner = new Scanner(System.in);

	    public static void main(String[] args) {
	        System.out.println("Enter number of values:");
	        int count = scanner.nextInt();
	        int[] arr = readIntegers(count);
	        System.out.println(findMin(arr));
	    }

	    public static int[] readIntegers(int count) {
	        int[] numbers = new int[count];
	        System.out.printf("Enter %d numbers:\n", count);

	        for (int i = 0; i < count; i++) {
	           numbers[i] = scanner.nextInt();
	        }

	        return numbers;
	    }

	    public static int findMin(int[] arr) {
	       int min = Integer.MAX_VALUE;

	        for (int i = 0; i < arr.length; i++) {
	            if(arr[i] < min) {
	               min = arr[i];
	            }
	        }

	        return min;
	    
	}

}
