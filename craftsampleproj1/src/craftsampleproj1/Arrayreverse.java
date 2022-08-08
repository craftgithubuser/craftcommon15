package craftsampleproj1;

public class Arrayreverse {
 
	  static void reverse_array(char char_array[], int n) 
	    { 
	       char[] dest_array = new char[n]; 
	       int j = n; 
	       for (int i = 0; i < n; i++) { 
	            dest_array[j - 1] = char_array[i]; 
	            j = j - 1; 
	        } 
	 
	        System.out.println("Reversed array: "); 
	        for (int k = 0; k < n; k++) { 
	           System.out.print(dest_array[k] + " "); 
	        } 
	    } 
	 
	    public static void main(String[] args) 
	    { 
	        char [] char_array = {'H','E','L','L','O'}; 
	           System.out.println("Original array: "); 
	        for (int k = 0; k <char_array.length; k++) { 
	             System.out.print(char_array[k] + " "); 
	        }
	    System.out.println();
	    reverse_array(char_array, char_array.length); 
	    } 
}
