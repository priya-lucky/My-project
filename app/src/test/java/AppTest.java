import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class AppTest {
    @Test
    void testGreet() {
        String result = App.greet("Pushpa");
        assertEquals("Hello, Pushpa!", result);
    }
}
