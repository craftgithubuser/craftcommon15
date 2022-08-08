package craftsampleproj1;

import java.util.Arrays;
import java.util.Scanner;

public class Array3 {

	public static void main(String[] args) {
		
	
	
	       int[] Arr1=  getInteger(0);
	       System.out.println("the array you enered is: " + Arrays.toString(Arr1));
//	       PrintArray();
		    }
	
	 static Scanner scan= new Scanner(System.in);
	   static int[] getInteger(int numbers ) {
		    System.out.println("please enter the size of the Array:");
		    int number= scan.nextInt();
		    
		    int[] Arr1= new int[number];
		 for(int i= 0; i<number; i++ ) {
		 System.out.println("Enter the element of the Array; " + i );
		    Arr1[i]= scan.nextInt();
}
	    return Arr1;  
	   }

	  
		


