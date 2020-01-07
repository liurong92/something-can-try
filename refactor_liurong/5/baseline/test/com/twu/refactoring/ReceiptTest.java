package com.twu.refactoring;

import org.junit.Test;

import static org.hamcrest.Matchers.closeTo;
import static org.junit.Assert.assertThat;

public class ReceiptTest {
    @Test
    public void shouldCalculateChargesForACTaxiFor20Kms() {
        // ((20 * 10 + 17 * 20) + 50 ) * 1.1 = 649.0
        double cost = new Receipt(new Taxi(true, 30, false)).totalCost();
        assertThat(cost, closeTo(649D, 0.01D));
    }

    @Test
    public void shouldCalculateChargesForNonACTaxiFor20Kms() {
        // ((15 * 10 + 12 * 20) + 50 ) * 1.1 = 374.0
        double cost = new Receipt(new Taxi(false, 30, false)).totalCost();
        assertThat(cost, closeTo(484D, 0.01D));
    }

    @Test
    public void shouldCalculateForACChargesFor20KmsPeakTime() {
        // ((20 * 10 + 17 * 20) * 1.2 + 50 ) * 1.1 = 767.8
        double cost = new Receipt(new Taxi(true, 30, true)).totalCost();
        assertThat(cost, closeTo(767.8D, 0.01D));

    }

    @Test
    public void shouldCalculateChargesForNonACTaxiFor20KmsPeakTime() {
        // ((15 * 10 + 12 * 20) * 1.2 + 50 ) * 1.1 = 569.8
        double cost = new Receipt(new Taxi(false, 30, true)).totalCost();
        assertThat(cost, closeTo(569.8D, 0.01D));
    }
}
