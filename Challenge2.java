package com.day1;

import java.util.Arrays;
import java.util.Scanner;

public class Challenge2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	//array size
		Scanner scan = new Scanner(System.in);
		System.out.println("How many number do you have?");
		
		int[] minArray = new int[scan.nextInt()];
		int min =Integer.MAX_VALUE;
		int max =Integer.MIN_VALUE;
	
	//enter elements	
		System.out.println("Enter your numbers: ");
	
	//find min number
		for(int i=0; i<minArray.length;i++) {
			minArray[i] = scan.nextInt();
			min= Math.min(min, minArray[i]);
						
		}
	
		System.out.println("------------------------------");
		System.out.println("Your minimum number is "+min);
		System.out.println("------------------------------");
	
	
	}

}
