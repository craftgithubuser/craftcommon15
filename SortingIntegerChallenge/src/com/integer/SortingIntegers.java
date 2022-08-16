package com.integer;

import java.util.Scanner;
import java.util.Arrays;

public class SortingIntegers {

		public static void main(String[] args) {
			System.out.println("Get integers");
			int intArray []= getIntegers(5);

			System.out.println("Sort integers");
			int sortedArray [] = sortIntegers(intArray);

			System.out.println("Print array");
			printArray(sortedArray);
		}

		public static int[] getIntegers(int number) {
			Scanner scanner = new Scanner(System.in);

			int[] values = new int[number];
			for(int i = 0; i < values.length; i++) {
				System.out.println("Enter the value of elt " + i);
				values[i] = scanner.nextInt();
			}
			scanner.close();
			return values;
		}

public static void printArray(int[] array) {
	for(int i = 0; i < array.length; i++) {
		System.out.println("The value of elt " + i + " is " + array[i]);
	}
}

public static int[] sortIntegers(int array[]) {
	int sortedArray[] = new int[array.length];
	for(int i = 0; i < array.length; i++) {
		sortedArray[i] = array[i];
	}

	int temp;
	boolean sorted = false;
	while(sorted == false) {
		sorted = true;
		for(int i = 0; i < sortedArray.length - 1; i++) {
			if(sortedArray[i] < sortedArray[i+1]) {
				temp = sortedArray[i];
				sortedArray[i] = sortedArray[i+1];
				sortedArray[i+1] = temp;

				sorted = false;
			}
		}
	}
	return sortedArray;
 }
}

/*
public class SortingIntegers
{
    public static void main(String[] args)
    {
        Scanner sc=new Scanner(System.in);
        int n;    //Array Size Declaration
        System.out.println("Enter the number of elements :");
        n=sc.nextInt();    //Array Size Initialization
        
        Integer arr[]=new Integer[n];    //Array Declaration
        System.out.println("Enter the elements of the array :");
        for(int i=0; i<5; i++)     //Array Initialization
        {
            arr[i]=sc.nextInt();
        }
        
        int temp = 0;    //Temporary variable to store the element
        
         for (int i = 0; i < arr.length; i++)   //Holds each Array element
         {     
            for (int j = i+1; j < arr.length; j++)    //compares with remaining Array elements
            {     
               if(arr[i] < arr[j]) //Compare and swap
               {    
                   temp = arr[i];    
                   arr[i] = arr[j];    
                   arr[j] = temp;    
               }     
            }     
        }    
          
        System.out.println();    
            
        //Displaying elements of array after sorting    
        System.out.println("Elements of array sorted in descending order: ");    
        for (int i = 0; i < arr.length; i++) 
        {     
            System.out.print(arr[i] + " ");    
        }    
    }
}
*/

