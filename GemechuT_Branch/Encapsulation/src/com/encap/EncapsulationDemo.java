package com.encap;

public class EncapsulationDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		EmployeeInfo e1 = new EmployeeInfo(); // object
		
//		e1.setEmpFirstName("Abebe");
//		e1.setEmpLastName("Abdii");
//		e1.setEmpSalary(2000);
//		
//		
		
//		System.out.println(e1.getEmpFirstName());
//		System.out.println(e1.getEmpLastName());
//		System.out.println(e1.getEmpSalary());

		
		Account acc = new Account(); //This is object
		acc.setAccountName("James");
		acc.setAccountNumber(1258525548554L);
		acc.setAccountDeposit(100);
		acc.setAccountBalance(2000);
		
		System.out.println(acc.getAccountName());
		System.out.println(acc.getAccountNumber());
		System.out.println(acc.getAccountDeposit());
		System.out.println(acc.getAccountBalance());

	}

}
