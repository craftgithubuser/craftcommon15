package arraychallenge;

import java.util.Arrays;
import java.util.Scanner;

public class MinValueChallenge {

	public static void main(String[] args) {
		int Arr1 [] = readInteger(0);
		 System.out.println("the element of the Array: " + Arrays.toString(Arr1));
		 System.out.println();
	    System.out.println("The minimum int in the Array is: " + findMin(Arr1,Arr1.length));

	}

	static Scanner sc= new Scanner(System.in);
	  public static int[] readInteger(int count) {
	        count=0;
	        System.out.println("please enter the size of the Array: ");
	        count= sc.nextInt();
	        int [] Arr1= new int[count];
	        for(int i=0; i<count;i++) {
	        	System.out.println("the element at index " + i +  " is");
	        	Arr1 [i]=sc.nextInt();
	        	 }
	        return Arr1;
} 
	  public static int findMin(int[]Arr1, int count ) {
	    	 int temp;  
			    for (int i = 0; i < count; i++)   
			            {  
			                for (int j = i + 1; j < count; j++)   
			                {  
			                    if (Arr1[i] > Arr1[j])   
			                    {  
			                       temp = Arr1[i];  
			                        Arr1[i] = Arr1[j];  
			                       Arr1[j] = temp;  
			                    }  
			                }  
			            }  
			             
		 return Arr1[0];
		 
}

}

