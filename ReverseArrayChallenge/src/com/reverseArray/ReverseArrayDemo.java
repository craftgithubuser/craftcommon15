package com.reverseArray;

public class ReverseArrayDemo {

	static void reverse(int a[], int n) {
		int[] reverse = new int[n];
		int j = n;
		for (int i = 0; i < n; i++) {
			reverse[j - 1] = a[i];
			j = j - 1;
		}

		System.out.print("Reversed array is: ");
		for (int k = 0; k < n; k++) {
			System.out.print(reverse[k] + " ");
		}
	}

	public static void main(String[] args) {
		int[] arr = { 0, 10, 20, 30, 40, 50 };
		reverse(arr, arr.length);
	}

}
