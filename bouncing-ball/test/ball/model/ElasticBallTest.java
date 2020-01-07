package ball.model;

import ball.Ball;
import org.junit.Test;

import java.util.AbstractCollection;
import java.util.ArrayList;

import static ball.BallTestHarness.*;

public class ElasticBallTest {
    @Test
    public void shouldDecreaseRadius() {
        ArrayList<Behavior> elasticBehavior = new ArrayList<>();
        elasticBehavior.add(new Elastic(Elastic.SHRINK));

        Ball elasticBall = BallFactory.elasticBall(0, 0, 20, elasticBehavior);

        elasticBall.update();

        assertRadiusIs(oneStepInwardsFrom(20), elasticBall);
    }

    @Test
    public void shouldIncreaseRadiusAfterFullyShrinking() throws Exception {
        ArrayList<Behavior> elasticBehavior = new ArrayList<>();
        elasticBehavior.add(new Elastic(Elastic.SHRINK));

        Ball elasticBall = BallFactory.elasticBall(0, 0, 0, elasticBehavior);

        elasticBall.update();

        assertRadiusIs(oneStepOutwardsFrom(0), elasticBall);
    }

    @Test
    public void shouldIncreaseInSize() {
        ArrayList<Behavior> elasticBehavior = new ArrayList<>();
        elasticBehavior.add(new Elastic(Elastic.GROW));

        Ball elasticBall = BallFactory.elasticBall(250, 100, 20, elasticBehavior);

        elasticBall.update();

        assertRadiusIs(oneStepOutwardsFrom(20), elasticBall);
    }

    @Test
    public void shouldDecreaseInSizeAfterFullyExpanding() throws Exception {
        ArrayList<Behavior> elasticBehavior = new ArrayList<>();
        elasticBehavior.add(new Elastic(Elastic.GROW));

        Ball elasticBall = BallFactory.elasticBall(0, 0, Ball.DEFAULT_RADIUS, elasticBehavior);

        elasticBall.update();

        assertRadiusIs(oneStepInwardsFrom(Ball.DEFAULT_RADIUS), elasticBall);
    }

}
