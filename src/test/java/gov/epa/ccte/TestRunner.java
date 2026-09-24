package gov.epa.ccte;

import com.intuit.karate.Runner;
import com.intuit.karate.Results;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class TestRunner {

    @Test // Standard JUnit 5 test annotation
    void testAll() {
        var runner = Runner.path("classpath:ccte-api")
                .outputHtmlReport(true);
        var tagExpression = System.getProperty("karate.tags");
        if (tagExpression != null && !tagExpression.isBlank()) {
            runner.tags(tagExpression.split(","));
        }
        Results results = runner.parallel(5); // Adjust your thread count as needed
        
        // This ensures the summary HTML is fully written to disk 
        // BEFORE the test framework throws a failure exception
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}