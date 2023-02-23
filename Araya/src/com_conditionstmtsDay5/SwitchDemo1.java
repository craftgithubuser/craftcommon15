package com_conditionstmtsDay5;

import java.util.Scanner;

public class SwitchDemo1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner is=new Scanner(System.in);
		System.out.println("pls enter week day in number");
		int day= is.nextInt();
		
		String dayName;
		
		switch(day) {
		case 1:
			dayName="Today is Monday";
		break;
		case 2:
			dayName="Today is Tuesday";
		break;
		case 3:
			dayName="Today is Wednesday";
		break;
		case 4:
			dayName="Today is Tursuday";
			break;
		case 5:
			dayName="Today is Friday";
		break;
		case 6:
			dayName="Today is Saturday";
		break;
		case 7:
			dayName="Today is Sunday";
		break;
		default:
			dayName="Invalid day";
			break;
		}
		System.out.println(dayName);
				

	}

}
