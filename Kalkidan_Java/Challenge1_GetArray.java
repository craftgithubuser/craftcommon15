package com.challenge_1;

import java.util.Scanner;

public class Challenge1_GetArray {

public static void main(String[] args) {
		//TODO Auto-generated method stub
		Scanner in= new Scanner(System.in);
		
		int [] Array= new int[5];
		
        for (int i=0; i<Array.length; i++) {
       	 System.out.println("Please enter number");
       	Array[i]= in.nextInt();
       }

}
}
	