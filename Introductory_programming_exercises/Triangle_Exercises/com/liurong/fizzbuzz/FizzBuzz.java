package com.liurong.fizzbuzz;

public class FizzBuzz {
	public static void main(String[] args) {
		for(int i = 1; i <= 100; i++) {
			output_fizz_or_buzz(i);
		}
	}

	private static void output_fizz_or_buzz(int i) {
		if(i % 3 == 0 && i % 5 == 0){
			System.out.println("FizzBuzz");
		} else if (i % 3 == 0) {
			System.out.println("Fizz");
		} else if (i % 5 == 0) {
			System.out.println("Buzz");
		} else {
			System.out.println(i);
		}
	}
}
