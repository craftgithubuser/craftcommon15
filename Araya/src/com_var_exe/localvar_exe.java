package com_var_exe;

public class localvar_exe {
	//method 
	//1 return type method
	//2 non return type method ==> void method
	
	//	void print() {
	//int printage () {
		int age=34;
		String name="Robel";
		Double salary=232.0;
		System.out.println(age);
		System.out.println(name);
		System.out.println(salary);
				
		return 0;
		
	}
	void printall() {
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String empName;
		int empage;
		double empsalary;
		
		void empdetail=(){
			
			System.out.println(empage);
		}
		
		//void print name only() {
			//System.out.println(empName);
			//void print all data();
			//System.out.println(empage);
			//System.out.println(empage);
			//System.out.println(empage);
	
		
		//	void pit (){
		//int age=27;
		//String name="Robel";
		//Double salary=200.0;
		//System.out.println("age is " +""+age);
		//System.out.println("name is " +""+name);
		//System.out.println("salary is "+""+salary);
	

instance variable ? inside the class out side the method 
		public static void main(String[] args) {
			varexe.obj= new varexe();
			obj.empage=20;
			obj.empName="Robel";
			obj.printalldata();
			
		varexe.obj2= new varexe();
		obj2.empage=30;
		obj2.empName="Robel";
		obj2.empsalary=50.0;
		obj2.printalldata();
		
		
		
		
		varexe.obj3= new varexe();
		obj3.empage=60;
		obj3.empName="Name3";
		obj3.empsalary=500.0;
		obj3.printalldata();
		
		
	}

}
