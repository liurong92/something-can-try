import com.twu.FootBallDojo.FanA;
import org.junit.Test;

import static junit.framework.Assert.assertEquals;

public class FanATest {

    @Test
    public void shouldCallTheFanAOfReactToGoal() {
        FanA fanA = new FanA();
        assertEquals(fanA.reactToGoal(),"FanA: Hurrah! Team A made a Goal!!");
    }

}
