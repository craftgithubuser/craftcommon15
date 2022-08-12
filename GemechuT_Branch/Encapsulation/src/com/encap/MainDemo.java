package com.encap;


	class privateDemo {  //private access modifier can't be accessed out of this class.
		
		private int value = 30;
		
	}

	public class MainDemo {

		public static void main(String[] args){
			
			privateDemo m1 = new privateDemo();
			
			DefaultDemo m2 = new DefaultDemo();
			
			PublicDemo m3 = new PublicDemo();
			m3.val = 20;
			
			m2.num = 30;
			m2.show();
		}
	}
	

