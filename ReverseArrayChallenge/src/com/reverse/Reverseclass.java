package com.reverse;

import java.util.*;
import java.util.stream.*;

public class Reverseclass {

	public static void main(String[] args) {
		Integer[] intArray = { 12, 24, 35, 46, 57, 63, 76, 88, 97 };

	
		System.out.println("Original Array:");
		for (int i = 0; i < intArray.length; i++)
			System.out.print(intArray[i] + "  ");

		System.out.println();

		
		System.out.println("Original Array printed in reverse order:");
		for (int i = intArray.length - 1; i >= 0; i--)
			System.out.print(intArray[i] + "  ");
	}

}
