public class AccountAutomations {
    public static Account setDefaultDescription(Account a) {
        if (a.Description == null) {
            a.Description = 'Default description';
        }
        return a;
    }
    //test
    public static Account setDefaultPhone(Account a) {
        if (a.Phone == null) {
            a.Phone = '(123) 456-7890';
        }
        return a;
    }
}