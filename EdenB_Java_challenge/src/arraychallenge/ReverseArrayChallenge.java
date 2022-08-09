package arraychallenge;

 public class ReverseArrayChallenge {

	    public static void main(String[] args) {
	
		 int[] arr1 = {20,40,60,80,100};
		  Reverse(arr1);
	}
	    
	    public static void Reverse(int[] arr1) {
		 
		 System.out.println("Original Array:");
		    for(int i=0;i<arr1.length;i++)
		         System.out.print(arr1[i] + "  ");
		       
		   System.out.println();
		     
		    
		    System.out.println("Array in reverse order:");
		         for(int i=arr1.length-1;i>=0;i--)
		         System.out.print(arr1[i] + "  ");
		         
		    }

}
		