import com.twu.FootBallDojo.FanB;
import org.junit.Test;

import static junit.framework.TestCase.assertEquals;

public class FanBTest {
    @Test
    public void shouldCallTheFanBOfReactToGoal() {
        FanB fanB = new FanB();

        assertEquals(fanB.reactToGoal(), "FanB: Ohh!! Sad.. Team A made a goal.");
    }
}
