package com.array.day6;

public class Exercise2 {
 public static void main(String[] args) {
	 
	 //declaraing and initializing array
	 //String studName[] = {"Jamie","Abel","Tesfaye","Betty"};//size=4,index=0-3
	 
	 String studName[] = new String[6];//size=6, index=0-5
	 
	 //inserting data to the array
	 studName[0] = "Jamie";
	 studName[1] = "Tesfaye";
	 studName[2] = "Abel";
	 studName[4] = "Betty";
	 
	 //accessing array element using foreach
	 for(String elt: studName) {
		 System.out.println(elt);
	 }
	 
 }
}
