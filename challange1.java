package Array;

import java.util.Arrays;
import java.util.Scanner;

public class challange1 {

	private static Scanner in = new Scanner(System.in);

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("pls enter the sizze of an array:");
		int size = in.nextInt();
		int[] myIntegers = getIntegers(size);
		int[] sorted = sortIntegers(myIntegers);
		printArray(sorted);
	}

	public static void printArray(int[] sorted) {
		// TODO Auto-generated method stub
//		for(int k =0; k< sorted.length; k++) {
//			System.out.println("Element " + k + " contents " + sorted[k]);
//		}
		
		for(int elt: sorted) {
			System.out.print(elt + " ");
		}
		
	}

	public static int[] sortIntegers(int[] myIntegers) {
		// TODO Auto-generated method stub
		int[] sortedArray = Arrays.copyOf(myIntegers, myIntegers.length);
		boolean flag = true;
		int temp;
		while(flag) {
			flag = false;
			for( int i =0; i<sortedArray.length-1; i++) {	
				if(sortedArray[i] < sortedArray[i+1]) {
					temp = sortedArray[i];
					sortedArray[i] = sortedArray[i+1];
					sortedArray[i+1] = temp;
					flag = true;
				}
			}
		}
		return sortedArray;
		
	}

	public static int[] getIntegers(int size) {
		// TODO Auto-generated method stub
		int[] myArray = new int[size];
		for(int i=0; i<myArray.length; i++) {
			System.out.print("pls enter the elemnt of an array at index: " + i + " ");
			myArray[i] = in.nextInt();
			System.out.println();
		}
		return myArray;
	}
}
