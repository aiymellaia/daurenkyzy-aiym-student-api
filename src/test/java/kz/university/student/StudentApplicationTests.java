package kz.university.student;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class StudentApplicationTests {
    @Test
    void intentionalFailure() {
        Assertions.fail("Controlled failure introduced by Daurenkyzy Aiym");
    }
}
