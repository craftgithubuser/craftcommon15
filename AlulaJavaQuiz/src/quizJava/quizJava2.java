package quizJava;

import java.util.Arrays;
import java.util.Scanner;

public class quizJava2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		int[] num = new int [4];
		Scanner input = new Scanner(System.in);
    	System.out.println("Enter four number: ");
        
		
		for (int i=0; i<4; i++){
			int x = input.nextInt();
			num [i] = x;
		}
		{
		
		System.out.println(Arrays.toString(num));
		}
		
		
		int min = num[0];
        for(int i=1; i< num.length; i++ ){
        	if(num[i]< min)
        	
        	{
            min =num[i];
        	}
        
        }
        {
    	System.out.print("This is the minimum value: " + min);
    	
        
             }
       
          }
       }
	


