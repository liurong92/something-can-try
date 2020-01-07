package ball.model;

import ball.Ball;
import ball.ui.BallWorld;
import org.junit.Test;

import java.util.ArrayList;

import static ball.BallTestHarness.assertCenterYCoordinateIs;
import static ball.BallTestHarness.oneStepDownFrom;
import static ball.BallTestHarness.oneStepUpFrom;


public class BouncingTest {
    @Test
    public void shouldGoDown() throws Exception {
        ArrayList<Behavior> bouncingBehavior = new ArrayList<>();
        bouncingBehavior.add(new Bouncing(Bouncing.DOWN));
        Ball bouncing = BallFactory.bouncingBall(0, 100, bouncingBehavior);

        bouncing.update();

        assertCenterYCoordinateIs(oneStepDownFrom(100), bouncing);
    }



    @Test
    public void shouldGoUpAfterHittingTheBottom() throws Exception {
        int theBottomEdge = BallWorld.BOX_HEIGHT - Ball.DEFAULT_RADIUS;
        ArrayList<Behavior> bouncingBehavior = new ArrayList<>();
        bouncingBehavior.add(new Bouncing(Bouncing.DOWN));

        Ball bouncingBall = BallFactory.bouncingBall(0, theBottomEdge, bouncingBehavior);

        bouncingBall.update();

        assertCenterYCoordinateIs(oneStepUpFrom(theBottomEdge), bouncingBall);
    }

    @Test
    public void shouldGoUp() throws Exception {
        ArrayList<Behavior> bouncingBehavior = new ArrayList<>();
        bouncingBehavior.add(new Bouncing(Bouncing.UP));

        Ball bouncingBall = BallFactory.bouncingBall(0, 100, bouncingBehavior);

        bouncingBall.update();

        assertCenterYCoordinateIs(oneStepUpFrom(100), bouncingBall);
    }

    @Test
    public void shouldGoDownAfterHittingTheTop() throws Exception {
        int theTopEdge = Ball.DEFAULT_RADIUS;
        ArrayList<Behavior> bouncingBehavior = new ArrayList<>();
        bouncingBehavior.add(new Bouncing(Bouncing.UP));

        Ball bouncingBall = BallFactory.bouncingBall(0, theTopEdge, bouncingBehavior);

        bouncingBall.update();

        assertCenterYCoordinateIs(oneStepDownFrom(theTopEdge), bouncingBall);
    }
}
