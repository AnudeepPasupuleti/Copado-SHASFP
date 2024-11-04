@IsTest
private class AccountAutomationsTest {
    @IsTest 
    static void testSetDefaultDescription() {
        Account acc = new Account(Name = 'Test Account');
        acc = AccountAutomations.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description, 'Description should be set to default when null');
        
        acc.Description = 'Custom description';
        acc = AccountAutomations.setDefaultDescription(acc);
        System.assertEquals('Custom description', acc.Description, 'Existing description should not be overwritten');
    }
    
    @IsTest 
    static void testSetDefaultPhone() {
        Account acc = new Account(Name = 'Test Account');
        acc = AccountAutomations.setDefaultPhone(acc);
        System.assertEquals('(123) 456-7890', acc.Phone, 'Phone should be set to default when null');
        
        acc.Phone = '(987) 654-3210';
        acc = AccountAutomations.setDefaultPhone(acc);
        System.assertEquals('(987) 654-3210', acc.Phone, 'Existing phone number should not be overwritten');
    }
}