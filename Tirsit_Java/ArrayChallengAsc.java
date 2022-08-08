package ArrayChalleng;

public class ArrayChallengAss {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

					
			int[] gread=new int[]{106,26,81,5,15};
			for (int i=0; i<gread.length;i++)
			{
				for(int j=i+1; j<gread.length; j++)
				{
					int tempo=0;
					if (gread[i]<gread[j]) // it be ascending if we use >
					{
					
				tempo=gread[i];
				gread[i]=gread[j];
				gread[j]=tempo;
					}
				
				}
				System.out.print(gread[i]+", ");
				
	}
		
		}

	}


