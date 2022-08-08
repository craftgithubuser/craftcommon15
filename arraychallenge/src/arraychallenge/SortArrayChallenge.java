package arraychallenge;

import java.util.Arrays;
import java.util.Scanner;

public class SortArrayChallenge {

	public static void main(String[] args) {
	 	
				int Arr[] = getInteger(0);
				System.out.println("The original array created:" + Arrays.toString(Arr));

				System.out.println("Array sorted in decending order: " + Arrays.toString(sortInteger(Arr, Arr.length)));

			}

			static Scanner scan = new Scanner(System.in);

			public static int[] getInteger(int count) {
				System.out.println("Enter the size of the Array: ");
				count = scan.nextInt();

				int[] Arr = new int[count];
				for (int i = 0; i < count; i++) {
					System.out.println("the element of the Array: " + i);
					Arr[i] = scan.nextInt();
				}
				return Arr;
			}

			

			 public static int[] sortInteger(int[] Arr, int count) {
				int temp;

				for (int i = 0; i < Arr.length; i++) {
					for (int j = i + 1; j < Arr.length; j++) {

						if (Arr[i] < Arr[j]) {
							temp = Arr[i];
							Arr[i] = Arr[j];
							Arr[j] = temp;

						}
					}
				}
				return Arr;
			}
}

