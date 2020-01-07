package com.twu.refactoring;

public class Taxi {
    private boolean airConditioned;
    private final int totalKms;
    private final boolean peakTime;
    private final int MIN_NUMBER_TEN = 10;
    private final int MAX_NUMBER_ZEO = 0;

    public Taxi(boolean airConditioned, int totalKms, boolean peakTime) {
        this.airConditioned = airConditioned;
        this.totalKms = totalKms;
        this.peakTime = peakTime;
    }

    public boolean isAirConditioned() {
        return airConditioned;
    }

    public int getTotalKms() {
        return totalKms;
    }

    public boolean isPeakTime() {
        return peakTime;
    }

    public double taxTotal(int totalKms) {
        double taxTotal = 0;
        double peakTimeMultiple = getPeakTime();

        if(isAirConditioned()) {
            taxTotal += Math.min(MIN_NUMBER_TEN, totalKms) * 20 * peakTimeMultiple +
                    Math.max(MAX_NUMBER_ZEO, totalKms - MIN_NUMBER_TEN) * 17 * peakTimeMultiple;
        } else {
            taxTotal += Math.min(MIN_NUMBER_TEN, totalKms) * 15 * peakTimeMultiple +
                    Math.max(MAX_NUMBER_ZEO, totalKms - MIN_NUMBER_TEN) * 12 * peakTimeMultiple;
        }

        return taxTotal;

    }

    private double getPeakTime() {
        return isPeakTime() ? 1.2 : 1.0;
    }
}
