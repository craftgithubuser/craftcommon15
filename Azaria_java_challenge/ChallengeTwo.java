package arraychallenge;

import java.util.Scanner;

public class ChallengeTwo {

	static Scanner in = new Scanner(System.in);

	public static void main(String[] args) {

		System.out.println("Enter number of values");
		int count = in.nextInt();
		int[] arr = readIntegers(count);
		System.out.print("min value is :" + " ");
		System.out.println(findMin(arr));
	}

	public static int[] readIntegers(int count) {
		int[] numbers = new int[count];
		System.out.printf("Enter %d numbers:\n", count);

		for (int i = 0; i < count; i++) {
			numbers[i] = in.nextInt();
		}

		return numbers;
	}

	public static int findMin(int[] arr) {
		int min = Integer.MAX_VALUE;

		for (int i = 0; i < arr.length; i++) {
			if (arr[i] < min) {
				min = arr[i];
			}

		}

		return min;
	}

}
