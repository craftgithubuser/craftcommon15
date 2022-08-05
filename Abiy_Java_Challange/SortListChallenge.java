package Array;

import java.util.Scanner;



/*
	Create a program using arrays that sorts a list of integers in descending order.
	Descending order is highest value to lowest.
	In other words if the array had the values in it 106, 26, 81, 5, 15 your program
	should ultimately have an array with 106,81,26, 15, 5 in it.
	Set up the program so that the numbers to sort are read in from the keyboard.
	Implement the following methods
 		-getIntegers, printArray, and sortIntegers
		-> getIntegers returns an array of entered integers from keyboard
		-> printArray prints out the contents of the array
		-> sortIntegers should sort the array and return a new array containing the sorted
		   numbers
 */


public class SortListChallenge {

	public static void main(String[] args) {
		
		SortListChallenge getInt = new SortListChallenge();
		
		int[] inputArray = getInt.getInteger();
		
		getInt.printArray(inputArray);
		int[] sorted = getInt.sortInteger(inputArray);
		System.out.println("Your sorted array is");
		getInt.printArray(sorted);
		
	}
	
	public int[] getInteger() {
		
		Scanner in = new Scanner(System.in);
		
		System.out.println("How many numbers do you have?");
		
		int arrayLength = in.nextInt();
		int[] inputArray = new int[arrayLength];
		
		for(int i = 0; i<arrayLength; i++) {
			
			if(i==0) {
				System.out.println("Please inter yout first number");
			} else if(i == arrayLength-1) {
				System.out.println("Please inter yout last number");
			} else {
				System.out.println("Please inter yout next number");
			}
			
			inputArray[i] = in.nextInt();
		}
		
		in.close();
		
		return inputArray;
	}	
	

	
	

	public void printArray(int[] newArray) {
		
		int arrayLength = newArray.length;
		
		System.out.print("This is your array \n [");
		for(int i = 0; i < arrayLength; i++) {
			if(i != arrayLength-1) {
				System.out.print(newArray[i] + ", ");
			}else {
				System.out.print(newArray[i]);
			}
			
		}
		System.out.println("]");
	}
	
	public int[] sortInteger(int[] oldArray) {
		
		int arrayLength = oldArray.length;
		int[] newArray = oldArray;
		
		
		for(int i=0; i<arrayLength; i++) {
			int maxIndex=i;
			int maxValue = newArray[i];
			
			for(int j = i; j< newArray.length; j++) {
				
				if(newArray[j] > maxValue) {
					maxIndex = j;
					maxValue = newArray[j];
				}
			}
			
			if(maxIndex != i) {
				int temp = newArray[i];
				newArray[i] = newArray[maxIndex];
				newArray[maxIndex] = temp;
			}
			
		}
		
		
		return newArray;
	}

}
