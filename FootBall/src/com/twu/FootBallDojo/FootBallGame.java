package com.twu.FootBallDojo;

import java.util.ArrayList;
import java.util.List;

public class FootBallGame {
    private List<Spectator> spectatorList = new ArrayList<>();

    public void teamAGoals() {
        informAllTheSpectators();
    }

    private void informAllTheSpectators() {
        for(Spectator spectator: spectatorList) {
            spectator.reactToGoal();
        }
    }

    public void addSpectator(Spectator spectator) {
        spectatorList.add(spectator);
    }
}
