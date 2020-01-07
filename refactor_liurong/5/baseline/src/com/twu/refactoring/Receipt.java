package com.twu.refactoring;

public class Receipt {
    private final Taxi taxi;
    private final double TAXTEN = 1.1;

    public Receipt(Taxi taxi) {
        this.taxi = taxi;
    }

    public double totalCost() {
        double totalCost = 50;

        int totalKms = taxi.getTotalKms();

        totalCost += taxi.taxTotal(totalKms);

        return totalCost * TAXTEN;
    }
}
