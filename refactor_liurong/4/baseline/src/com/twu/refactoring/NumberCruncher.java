package com.twu.refactoring;

public class NumberCruncher {
    private static int ISTWO = 2;

    public NumberCruncher() {
    }

    public static int countEven(int... numbers) {
        int count = 0;
        for (int number : numbers) {
            if (isEvenNumber(number)) count++;
        }
        return count;
    }

    public static int countOdd(int... numbers) {
        int count = 0;
        for (int number : numbers) {
            if (!isEvenNumber(number)) count++;
        }
        return count;
    }

    public static int countPositive(int... numbers) {
        int count = 0;
        for (int number : numbers) {
            if (isPositiveNumber(number)) count++;
        }
        return count;
    }

    public static int countNegative(int... numbers) {
        int count = 0;
        for (int number : numbers) {
            if (!isPositiveNumber(number)) count++;
        }
        return count;
    }

    private static boolean isEvenNumber(int number) {
        return number % ISTWO == 0;
    }

    private static boolean isPositiveNumber(int number) {
        return number >= 0;
    }
}
