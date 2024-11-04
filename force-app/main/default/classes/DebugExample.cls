public class DebugExample {
    public void methodWithDebug() {
        // This debug statement will violate the rule
        System.debug('This is a debug message');
        
        // This is fine and won't violate the rule
        System.debug('Message with variable: ');
        
        // This is also fine
        System.debug(LoggingLevel.INFO, 'Info level message');
        
        // This will violate the rule
        System.debug('Another single argument debug');
        
        // Perform some actual operations
        Integer x = 5;
        Integer y = 10;
        Integer sum = x + y;
        
        // This debug call won't violate the rule due to multiple arguments
        System.debug('Sum is: ' + sum);
    }
}