package com.switchStatement;

public class TestDemo {

	public static void main(String[] args) {
		int[] ar = { 35, 35, 61, 73, 12, 75, 12, 79, 8 };
		int temp;
		for (int i = 0; i < ar.length; i++) {
			for (int j = i; j < ar.length; j++) {
				if (ar[i] < ar[j]) {
					temp = ar[i];
					ar[i] = ar[j];
					ar[j] = temp;

				}
			}
		}
		for (int c : ar) {
			System.out.print(c+" ");
		}

	}

}
