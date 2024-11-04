@isTest
public class DebugExampleTest {
    @isTest
    static void testMethodWithDebug() {
        // Setup
        DebugExample debugInstance = new DebugExample();
        
        // This debug statement violates the rule
        System.debug('Test setup complete');
        
        Test.startTest();
        
        // Call the method
        debugInstance.methodWithDebug();
        
        // This debug statement also violates the rule
        System.debug('Method execution complete');
        
        Test.stopTest();
        
        // This debug won't violate the rule due to multiple arguments
        System.debug(LoggingLevel.INFO, 'Test completed successfully');
        
        // Assertions
        // Note: We can't actually assert anything about System.debug() calls
        // as they don't return anything and don't affect the system state.
        // In a real scenario, you'd assert on the actual behavior of the method.
        System.assert(true, 'This assertion is just a placeholder');
    }
    
    @isTest
    static void testAnotherScenario() {
        // This debug violates the rule
        System.debug('Starting another test');
        
        // Some test logic would go here
        Integer x = 5;
        Integer y = 10;
        Integer expectedSum = 15;
        
        // This debug won't violate the rule due to the expression
        System.debug('Expected sum: ' + expectedSum);
        
        // Assertion
        System.assertEquals(expectedSum, x + y, 'Sum calculation is incorrect');
    }
}