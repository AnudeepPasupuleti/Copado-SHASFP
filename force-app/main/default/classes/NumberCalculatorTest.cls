@IsTest
private class NumberCalculatorTest {
    
    @isTest static void testCalculateSquare() {
        // Test positive number
        Integer result1 = NumberCalculator.calculateSquare(5);
        System.assertEquals(25, result1, 'Square of 5 should be 25');
        
        // Test negative number
        Integer result2 = NumberCalculator.calculateSquare(-4);
        System.assertEquals(16, result2, 'Square of -4 should be 16');
        
        // Test zero
        Integer result3 = NumberCalculator.calculateSquare(0);
        System.assertEquals(0, result3, 'Square of 0 should be 0');
        
        // Test null value
        Integer result4 = NumberCalculator.calculateSquare(null);
        System.assertEquals(0, result4, 'Square of null should return 0');
    }
}