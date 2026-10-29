package kz.university.student;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

class StudentApplicationTests {
    @Test
    void unitTestExecution() {
        String student = "Daurenkyzy Aiym";
        Assertions.assertNotNull(student);
        Assertions.assertEquals("Daurenkyzy Aiym", student);
    }
}
