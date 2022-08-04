package quizJava;

	import java.util.Arrays;
	import java.util.Scanner;

	public class quizJava1 {


		public static void main(String[] args) {
			// TODO Auto-generated method stub
			
			int[] num = new int [5];
			Scanner input = new Scanner(System.in);
			System.out.println("Enter any five numbers: ");
			int temp;
			
			for (int i=0; i<5; i++){
				int x = input.nextInt();
				num [i]= x;
			}
			{
			
			System.out.println(Arrays.toString(num));
			}
		        for(int i=0; i<num.length; i++) {
				  for(int j=i;j<num.length;j++) {
				  if (num[i] < num[j]) {
					  temp = num[i];
					  num[i]= num[j];
					  num[j]= temp;
				
			}
			
				  }
		        }
		        
		        {
		        System.out.println("This is a descending order:");
		        }
			for(int a:num) {
				
				  System.out.print("  " +a);
		

		   }

	    }
	}