package com.challenge_1;

public class challenge1_SortArray_Descending {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] Array= new int[]{106, 26, 81, 5, 15};
		
        for (int i=0; i<Array.length; i++) 
        {
        for (int j=i+1; j<Array.length; j++) {
       	
        int tempo=0;
        if (Array[i]< Array[j]) 
        {
        	tempo=Array[i];
        	Array[i]=Array[j];
        	Array[j]=tempo;
        	
        }
        }
        System.out.print(Array[i]+ " , ");
        }
	}
}
        	
        	
        	
        
	



	

