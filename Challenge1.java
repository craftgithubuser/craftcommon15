package com.day1;

import java.util.Scanner;

public class Challenge1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	int n, i, j, sorter;
	int sortArray[] = new int[50];	
	Scanner scan = new Scanner(System.in);
	
	System.out.print("Enter number for the array elements :");
	n= scan.nextInt();
	
	System.out.println("Enter "+n +" Numbers : ");
	for (i=0; i<n; i++) {
		sortArray[i]=scan.nextInt();
	}
		System.out.println("Sorting array :\n");
		
		for(i=0; i<(n-1); i++){
			for(j=0; j<(n-i-1);j++) {
				if (sortArray[j] >sortArray[j +1]){
					sorter =sortArray[j];
					sortArray[j]=sortArray[j+1];
					sortArray[j+1]=sorter;
	
				
			}
				
		}
	
		
	}
		
		
		System.out.print("Array sorted successfully!!\n");
		
		System.out.print("Sorted listed in Ascending order :\n");
		for (i=0; i<n;i++) {
			
			System.out.println(sortArray[i] + " ");
			
		}
		                   
		    
	
	}
	
						
}
	
 
	


	
	
	
	
