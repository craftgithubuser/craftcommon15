	package ArrayChalleng;
	
	public class challenge_3 {
	
		public static void main(String[] args) {
			// TODO Auto-generated method stub
			
	int[] array1 =new int[] {1,2,3,4,5,6,7,8};
	System.out.print("The original array is: ");
		
	for(int i=0; i<array1.length; i++) {
		System.out.print(array1[i]+ "");
		}
	System.out.println();
	System.out.print("The reversed array is: ");
		
	for(int i = array1.length-1;i>=0;i--)
	System.out.print(array1[i]+"");
	}
	}	
	
	