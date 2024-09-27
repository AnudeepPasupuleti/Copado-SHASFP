@IsTest
private class AccountHandlerTest {
    
    @IsTest
    static void testSetDefaultDescription() {
        // Create test accounts
        List<Account> testAccounts = new List<Account>{
            new Account(Name = 'Test Account 1'),
            new Account(Name = 'Test Account 2', Description = 'Existing Description')
        };
        
        Test.startTest();
        AccountHandler.setDefaultDescription(testAccounts);
        Test.stopTest();
        
        // Verify results
        System.assertEquals('Default description set by AccountHandler', testAccounts[0].Description, 'Default description should be set for account without description');
        System.assertEquals('Existing Description', testAccounts[1].Description, 'Existing description should not be changed');
    }
    
    @IsTest
    static void testUpdateAnnualRevenue() {
        // Create test accounts
        List<Account> testAccounts = new List<Account>{
            new Account(Name = 'Test Account 1', NumberOfEmployees = 100),
            new Account(Name = 'Test Account 2', NumberOfEmployees = 0),
            new Account(Name = 'Test Account 3')
        };
        
        Test.startTest();
        AccountHandler.updateAnnualRevenue(testAccounts);
        Test.stopTest();
        
        // Verify results
        System.assertEquals(1000000, testAccounts[0].AnnualRevenue, 'Annual revenue should be updated for account with employees');
        System.assertEquals(null, testAccounts[1].AnnualRevenue, 'Annual revenue should not be set for account with 0 employees');
        System.assertEquals(null, testAccounts[2].AnnualRevenue, 'Annual revenue should not be set for account with null employees');
    }
}