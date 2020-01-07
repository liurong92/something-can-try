import com.twu.FootBallDojo.Reporter;
import org.junit.Test;

import static junit.framework.TestCase.assertEquals;

public class ReporterTest {
    @Test
    public void shouldCallTheReporterOfReactToGoal() {
        Reporter reporter = new Reporter();

        assertEquals(reporter.reactToGoal(), "Reporter: Team A made a goal!!");
    }
}
