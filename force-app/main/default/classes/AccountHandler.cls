public class AccountHandler {
    
    // Method to set a default description for Accounts without one
    public static void setDefaultDescription(List<Account> accounts) {
        for (Account acc : accounts) {
            if (String.isBlank(acc.Description)) {
                acc.Description = 'Default description set by AccountHandler';
            }
        }
    }
    
    // Method to update annual revenue based on number of employees
    public static void updateAnnualRevenue(List<Account> accounts) {
        for (Account acc : accounts) {
            if (acc.NumberOfEmployees != null && acc.NumberOfEmployees > 0) {
                acc.AnnualRevenue = acc.NumberOfEmployees * 10000; // Assuming $10,000 per employee
            }
        }
    }
}