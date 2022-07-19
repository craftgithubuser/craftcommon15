package iCraft_muleSoft_projct1;

import java.util.Scanner;

public class IfElseIfPractice {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		Double mark = in.nextDouble();
		System.out.println("Your mark is:");
		String Grade;
		if (mark >= 95 && mark <= 100) {
			Grade = "A+";
		} else if (mark >= 90 && mark < 95) {
			Grade = "A";
		} else if (mark >= 85 && mark < 90) {
			Grade = "B+";
		} else if (mark >= 80 && mark < 85) {
			Grade = "B";
		} else if (mark >= 75 && mark < 80) {
			Grade = "C";
		} else if (mark >= 70 && mark < 75) {
			Grade = "D";
		} else if (mark >= 65 && mark < 70) {
			Grade = "D-";
		} else {
			Grade = "F";
		}
		System.out.println("Grade :" + Grade);
	}

}
