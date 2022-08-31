package SortDescending;

public class SortDesc {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int arr[] = new int[] { 106, 26, 81, 5, 15 };
		int temp = 0;

		System.out.print("Elements of original array: ");
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i] + " ");
		}
		System.out.println();

		for (int i = 0; i < arr.length; i++) {
			for (int j = i + 1; j < arr.length; j++) {
				if (arr[i] < arr[j]) {
					temp = arr[i];
					arr[i] = arr[j];
					arr[j] = temp;
				}
			}
		}
		System.out.println();
		System.out.print("Elements of sorted array in descending order: ");
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i] + " ");
		}
	}
}
