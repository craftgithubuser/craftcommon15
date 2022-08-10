package challenge1;

public class Challenge_Des {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
  int[]Arraynum = new int[]{106,26,81,5,15};

    for (int i = 0;i<Arraynum.length; i++)
{
	 for(int j=i+1;j<Arraynum.length; j++)  {
		 int tempo;
		 if(Arraynum[i]<Arraynum[j])
		 {
			 tempo= Arraynum[i];
			 Arraynum[i]=Arraynum[j];
			 Arraynum[j]= tempo;
		 }
	 }
	     System.out.println(Arraynum[i]);
}
}

}
