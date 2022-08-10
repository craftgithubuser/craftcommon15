package challenge1;

import java.util.Scanner;

public class Scanner_ChallengeArray {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner in = new Scanner(System.in);
		
	
		   int[]Arraynum = new int[5];
		
		for(int i= 0; i<Arraynum.length; i++) {
			System.out.println("Enter the numbers");
			
			Arraynum[i]= in.nextInt();
		}

	}

}

