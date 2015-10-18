package mapExample;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class SophisticatedMapExample {
	
	public static int getNDigit(int x, int n){
		//not smart, but interesting to try
		return getNDigitRec(Integer.toString(x), n, 1);
	}
	
	public static int getNDigitRec(String x, int n, int k){
		if (x.isEmpty()){
			return 0;
		}else if (k == n){
			return Character.getNumericValue(x.charAt(0));
		}else{
			return getNDigitRec(x.substring(1), n, k + 1);
		}
	}
	
	public static List<Integer> getDigitsByNumber(List<Integer> list, int n){
		return list.stream()
				.map(x -> getNDigit(Math.abs(x), n))
				.collect(Collectors.toCollection(ArrayList::new));
	}
	
	public static void main(String... args){
		int n = 3;
		List<Integer> list = new ArrayList<>(Arrays.asList(0, 12, 24, 606, 26, 40, -36));
		List<Integer> nLasts = getDigitsByNumber(list, n);
		System.out.println(nLasts);
	}
}
