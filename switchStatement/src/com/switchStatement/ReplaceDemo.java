package com.switchStatement;

public class ReplaceDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 String s;
		 int a=42;
   StringBuffer bs =new StringBuffer("This is a test .");
   bs.replace(0,16, "The test which we took last week was very hard to get good result!");
   System.out.println(bs);
   System.out.println("Appending to concatenates the called data types! ");
   System.out.println();
   StringBuffer sb =new StringBuffer(40);
   s=sb.append("a = ").append(a).append("!").toString();
   System.out.println(sb);
   String b ="This is a test!";
  String upper =b.toUpperCase();
  String lower =b.toLowerCase();
  System.out.println("" + b+ ""+"" );
   System.out.println("UpperCase:" + upper);
   System.out.println("LowerCase:" + lower);
   b.replace(b, bs);
   b.trim();
	}

}
