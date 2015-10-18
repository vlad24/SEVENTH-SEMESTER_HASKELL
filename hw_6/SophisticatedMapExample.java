package mapExample;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class SophisticatedMapExample {
	
	public static int getNDigit(int x, int n){
		//not smart, but interesting to try
		return getNDigitRec(x, n, 1);
	}
	
	public static int getNDigitRec(int x, int n, int step){
		if (x == 0){
			return 0;
		}else if (step == n){
			return x % 10;
		}else{
			return getNDigitRec(x / 10, n, ++step);
		}
	}
	
	public static List<Integer> getDigitsByNumber(List<Integer> list, int n){
		return list.stream()
				.map(x -> getNDigit(Math.abs(x), n))
				.collect(Collectors.toCollection(ArrayList::new));
	}
	
	public static void main(String... args){
		int n = 3;
		List<Integer> list = new ArrayList<>(Arrays.asList(563, 5243, 76796));
		List<Integer> nLasts = getDigitsByNumber(list, n);
		System.out.println(nLasts);
	}
}
