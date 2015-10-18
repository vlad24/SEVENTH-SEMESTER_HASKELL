package testFilterMap;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class MapFilterExample {
	
	public static void main(String... args){
		List<Integer> list = new ArrayList<>(Arrays.asList(0, 12, 24, 606, 26, 40, -36));
		List<Integer> lasts = list.stream()
				.filter(x -> (10 <= Math.abs(x)) && (Math.abs(x) <= 99))
				.map(x -> Math.abs(x) % 10)
				.collect(Collectors.toCollection(ArrayList::new));
		System.out.println(lasts);
		
	}
}
