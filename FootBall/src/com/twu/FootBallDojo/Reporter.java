package com.twu.FootBallDojo;

public class Reporter implements Spectator {
    @Override
    public String reactToGoal() {
        return "Reporter: Team A made a goal!!";
    }
}
