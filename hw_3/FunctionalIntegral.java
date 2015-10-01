import java.util.function.DoubleFunction;

public class FunctionalIntegral {
	public static double Integral(DoubleFunction<Double> f, double a, double b){
		//left rectangles formula
		double sum = 0;
		double position = a;
		double step = (b - a) / 100;
		while (position < b){
			sum += step * f.apply(position);
			position += step;
		}
		return sum;
	}
	
	public static void main(String[] args){
		System.out.println("Sin from -pi to pi: " + Integral((x)-> Math.sin(x), -Math.PI, Math.PI));
		System.out.println("Ln from 0 to 24: " + Integral((x)-> Math.log(x), 1, 24));
		System.out.println("Tanh from 0 to 1: " + Integral((x)-> Math.tanh(x), 0, 1));

	}

}