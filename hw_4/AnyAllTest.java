import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Predicate;

public class AnyAllTest {

	public static void main(String[] args) {
		Predicate<Integer> isEven = (number -> number % 2 == 0);
		Predicate<List<Integer>> containsEven = list -> (list.stream().anyMatch(isEven));
		Predicate<List<List<Integer>>> eachContainsEven = matrix -> matrix.stream().allMatch(containsEven);
		//examples
		List<List<Integer>> list1 = new ArrayList<>();
		list1.add(Arrays.asList(1, 3, 5, 7, 9, 24));
		list1.add(Arrays.asList(3, 5, 7, 9, 606));
		list1.add(Arrays.asList(24, 606));
		
		List<List<Integer>> list2 = new ArrayList<>();
		list2.add(Arrays.asList(1, 3, 5, 7, 9, 24, 606));
		list2.add(Arrays.asList(3, 5, 7, 9)); //no even here!
		list2.add(Arrays.asList(24, 606));
		
		System.out.println(eachContainsEven.test(list1) + " / " + eachContainsEven.test(list2));
		
	}

}
