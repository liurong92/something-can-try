package ball.model;

import ball.Ball;
import ball.ui.BallWorld;

public class Bouncing implements Behavior{
    public static final int MOVEMENT_SPEED = 12;

    static final int DOWN = 1;
    static final int UP = -1;
    int y;
    int radius;

    private int direction;

    Bouncing(int direction) {
        this.direction = direction;
    }

    @Override
    public void update(Ball ball) {
        this.y = ball.getY();
        this.radius = ball.radius();
        direction = reverseDirectionIfNecessary();
        ball.setY(move());
    }

    /***********************************************************************************
     *
     * Do not change Bouncing ALGORITHM below.
     *
     ***********************************************************************************/

    private int reverseDirectionIfNecessary() {
        if (movingTooHigh() || movingTooLow()) {
            return switchDirection();
        }

        return this.direction;
    }

    private boolean movingTooLow() {
        return y + radius >= BallWorld.BOX_HEIGHT && movingDown();
    }

    private boolean movingTooHigh() {
        return y - radius <= 0 && movingUp();
    }

    private int switchDirection() {
        return movingDown() ? UP : DOWN;
    }

    private int move() {
        return y + (MOVEMENT_SPEED * direction);
    }

    private boolean movingDown() {
        return direction == DOWN;
    }

    private boolean movingUp() {
        return direction == UP;
    }
}
