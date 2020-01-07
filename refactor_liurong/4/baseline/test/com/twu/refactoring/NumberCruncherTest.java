package com.twu.refactoring;

import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class NumberCruncherTest {
    int[] EVEN_AND_ODD = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
    int[] POSITIVE_AND_NEGATIVE = {-5, -4, -3, -2, -1, 0, 1, 2, 3, 4};

    @Test
    public void shouldCountEvenNumbers() {
        int evens = NumberCruncher.countEven(EVEN_AND_ODD);
        assertThat(evens, is(5));
    }

    @Test
    public void shouldCountOddNumbers() {
        int odds = NumberCruncher.countOdd(EVEN_AND_ODD);
        assertThat(odds, is(6));
    }

    @Test
    public void shouldCountPositiveNumbers() {
        int positives = NumberCruncher.countPositive(POSITIVE_AND_NEGATIVE);
        assertThat(positives, is(5));
    }

    @Test
    public void shouldCountNegativeNumbers() {
        int negatives = NumberCruncher.countNegative(POSITIVE_AND_NEGATIVE);
        assertThat(negatives, is(5));
    }
}
