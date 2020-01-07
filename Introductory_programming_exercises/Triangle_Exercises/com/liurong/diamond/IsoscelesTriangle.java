package com.liurong.diamond;

import java.util.Scanner;

public class IsoscelesTriangle {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int number = input.nextInt();
		output_isosceles_triangle(number);
	}

	private static void output_isosceles_triangle(int number) {
		for(int i = 0; i <= number; i++) {
			output_horizontal_line(number, i);
			System.out.println("");
		}
	}

	private static void output_horizontal_line(int number, int i) {
		for(int x = 0; x < number - i; x++){
			System.out.print(" ");
		}
		for(int j = 0; j < (i - 1) * 2 + 1; j++){
			System.out.print("*");
		}
	}
}
