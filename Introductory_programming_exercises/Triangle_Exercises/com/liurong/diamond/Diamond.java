package com.liurong.diamond;

import java.util.Scanner;

public class Diamond {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int number = input.nextInt();
		
		output_isosceles_triangle(number);
		
		output_inverted_triangle(number);
	}

	private static void output_inverted_triangle(int number) {
		for(int i = number - 1; i > 0; i--) {
			output_horizontal_line_blank(number, i);
			output_horizontal_line_asterisk(i);
			System.out.println("");
		}
	}

	private static void output_isosceles_triangle(int number) {
		for(int i = 1; i <= number; i++) {
			output_horizontal_line_blank(number, i);
			output_horizontal_line_asterisk(i);
			System.out.println("");
		}
	}

	private static void output_horizontal_line_asterisk(int i) {
		for(int x = 1; x <= (i - 1) * 2 + 1; x++) {
			System.out.print("*");
		}
	}

	private static void output_horizontal_line_blank(int number, int i) {
		for(int j = 1; j <= number - i; j++) {
			System.out.print(" ");
		}
	}

}
