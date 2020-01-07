package com.liurong.draw;

import java.util.Scanner;

public class RightTriangle {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int number = input.nextInt();
		output_right_triangle(number);
	}

	private static void output_right_triangle(int number) {
		for(int i = 0; i < number; i++) {
			output_horizontal_line(i);
			System.out.println();
		}
	}

	private static void output_horizontal_line(int i) {
		for(int x = 0; x <= i; x++){
			System.out.print("*");
		}
	}
}
