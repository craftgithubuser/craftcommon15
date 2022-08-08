package ArreyChallenges;

public class ForLoopExercise {

	private static final int k = 0;

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] ageofStud = new int[6];
		
		   ageofStud[0] = 28;
	       ageofStud[1] = 30;
	       ageofStud[2] = 31;
	       ageofStud[3] = 25;
	       ageofStud[4] = 26;
	       ageofStud[5] = 36;
	       
	       System.out.println("element usingForloop ");
	       for (int k= 0; k < 6; k++)
	       {
	  System.out.print(ageofStud[k] +" ");
		
	 }
	       System.out.println();
	       
	       
	       System.out.println(" element using Foreach");
	       
	       
	       
	       for(int elt: ageofStud) {
	       	
	       	System.out.print(elt + " ");
	       	
}
}}
