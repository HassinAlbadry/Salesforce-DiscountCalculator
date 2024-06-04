public class DiscountCalculator {
    
    // Method to calculate discount
    public static Decimal calculateDiscount(Opportunity opp) {
        Decimal discount = 0;
        
        // Criteria: If the amount is greater than 10000 and stage is 'Closed Won'
        if (opp.Amount > 10000 && opp.StageName == 'Closed Won') {
            discount = opp.Amount * 0.1; // 10% discount
        } else if (opp.Amount > 5000) {
            discount = opp.Amount * 0.05; // 5% discount
        }
        
        return discount;
    }
    
    // Method to apply discount to Opportunity
    public static void applyDiscountToOpportunities(List<Opportunity> opps) {
        for (Opportunity opp : opps) {
            Decimal discount = calculateDiscount(opp);
            opp.Discount__c = discount;
        }
        update opps;
    }
}