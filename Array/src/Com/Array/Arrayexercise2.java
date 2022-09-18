package Com.Array;

public class Arrayexercise2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		double[] studMarks= {70,82.5,99.9,100};
		
		System.out.println("Accessing the elements using for loop:");
for (int i=0;i<4; i++) {//
	
	System.out.println(studMarks[i]);
}
	System.out.println();
	
	System.out.println("Accessing the elements using for each loop:");
	
	for(double kal: studMarks) {//
		
		System.out.print(kal + "  ");
	}
	
		System.out.println();
		
		System.out.println("Accessing array using reverse order:");
		
		for(int k= studMarks.length-1; k>=0; k--) {//
			
		System.out.println(studMarks[k]);	
}
}

	}




