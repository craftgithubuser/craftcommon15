package com.switchStatement;

public class StudentInfo {
	String First_Name="Ayana";
	String Last_Name="Belew";
	int age=34;
	String building="A21";
	int room =21;
	String EnrollmentDate="02/12/22";
	void showMethod() {
		System.out.println("Student full_Name:" + " "+First_Name + " "+ Last_Name);
		System.out.println("age:" + " "+age);
		System.out.println("Building:" + " "+ building);
		System.out.println("Room:" + " "+room);
		System.out.println("StartDate:" + " "+EnrollmentDate);
	}

	public static void main(String[] args) {
		
new StudentInfo().showMethod();
	}

}
