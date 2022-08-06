package Statements;
import java.util.Scanner;
public class IfElseIf {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		System.out.println("your mark");
		double mark = in.nextDouble();
		String grade;
		if(mark >=90) {
			grade = "A+";
		}
		else if(mark>=80 && mark<90) {
			grade = "A";
		}
		else if(mark>=70 && mark<80) {
			grade = "B";
	}
		else if(mark>=60 && mark<70) {
			grade = "C";		
}
		else if(mark>=50 && mark<60) {
			grade = "D";
}
		else {
			grade = "F";
		}
		System.out.println("grade: " + grade);

}

}
	
