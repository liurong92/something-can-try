package com.liurong.draw;

import java.util.Scanner;

public class VerticalLine {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int number = input.nextInt();
		
		output_vertical_line(number);
	}

	private static void output_vertical_line(int number) {
		for(int i = 0; i < number; i++) {
			System.out.println("*");
		}
	}

}
