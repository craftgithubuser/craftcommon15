package com.Challenge_3;

public class Challenge_3 {
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
						
		int[] array1 = {1,2,3,4,5,6,7,8,};
		System.out.print("The original array is: ");
		
		for(int i=0; i<array1.length; i++) {
		System.out.print(array1[i]+ "");
		}
		
		System.out.println();
		
		System.out.print("The reversed array is: ");
		
		
		reverse (array1);
		
		}
	
		public static void reverse(int[] array1) {
			
		for(int i = array1.length-1;i>=0;i--)
		System.out.print(array1[i]+"");
			
	}

}
		


