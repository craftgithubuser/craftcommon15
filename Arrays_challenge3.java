package com.icraftjava;
import java.util.Arrays;
public class Arrays_challenge3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] array = {1, 5, 6, 7, 9, 23, 4};
        System.out.println("Array = " + Arrays.toString(array));

        reverse(array);
        System.out.println("Reverse array = " + Arrays.toString(array));
    }

    private static void reverse(int[] array) {
        int maxIndex = array.length - 1;
        int halfLength = array.length / 2;
        for (int i = 0; i < halfLength; i++) {
            int temp = array[i];
            array[i] = array[maxIndex - i];
            array[maxIndex - i] = temp;
        }
    }
	}


