package ball.model;

import ball.Ball;

import java.util.ArrayList;

public class BallFactory {

    public static Ball[] all() {
        ArrayList<Behavior> bouncingBehavior = new ArrayList<>();
        bouncingBehavior.add(new Bouncing(Bouncing.DOWN));

        ArrayList<Behavior> elasticBehavior = new ArrayList<>();
        elasticBehavior.add(new Elastic(Elastic.GROW));

        ArrayList<Behavior> elasticBouncingBehavior = new ArrayList<>();
        elasticBouncingBehavior.add(new Bouncing(Bouncing.DOWN));
        elasticBouncingBehavior.add(new Elastic(Elastic.GROW));

        return new Ball[]{
                bouncingBall(75, 50, bouncingBehavior),
                elasticBall(250, 100, Ball.DEFAULT_RADIUS, elasticBehavior),
                elasticBouncingBall(400, 200, Ball.DEFAULT_RADIUS, elasticBouncingBehavior)
        };
    }

    public static Ball bouncingBall(int centerX, int centerY, ArrayList<Behavior> behaviors) {
        return new BallImpl(centerX, centerY, behaviors);
    }

    public static Ball elasticBall(int centerX, int centerY, int radius, ArrayList<Behavior> behaviors) {
        return new BallImpl(centerX, centerY, radius, behaviors);
    }

    public static Ball elasticBouncingBall(int centerX, int centerY, int radius, ArrayList<Behavior> behaviors) {
        return new BallImpl(centerX, centerY, radius, behaviors);
    }
}
