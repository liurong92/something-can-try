package com.liurong.draw;

import java.util.Scanner;

public class HorizontalLine {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int number = input.nextInt();
		output_horizontal_line(number);
	}

	private static void output_horizontal_line(int number) {
		for (int i = 0; i < number; i++) {
			System.out.print("*");
		}
	}
	
}
