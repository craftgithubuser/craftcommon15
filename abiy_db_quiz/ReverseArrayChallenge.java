package Array;

public class ReverseArrayChallenge {

	public static void main(String[] args) {
		
		ReverseArrayChallenge revObj = new ReverseArrayChallenge();
		
		int[] testArray = {7,2,9,3};
		
		System.out.println("Given Array:");
		revObj.printArray(testArray);
		revObj.reverse(testArray);
		System.out.println("\nReversed Array:");
		revObj.printArray(testArray);
		
	}
	
	public void reverse(int[] arr) {
		
		int temp;
		int firstIndex = 0;
		int lastIndex = arr.length-1;
		
		while(firstIndex < lastIndex) {
			temp = arr[firstIndex];
			arr[firstIndex] = arr[lastIndex];
			arr[lastIndex] = temp;
			firstIndex++;
			lastIndex--;
		}
	}
	
	public void printArray(int[] a) {
		
		System.out.print("[");
		for(int i = 0; i < a.length; i++) {
			if(i != a.length-1) {
				System.out.print(a[i] + ", ");
			}else {
				System.out.print(a[i]);
			}
			
		}
		System.out.println("]");
	}

}
