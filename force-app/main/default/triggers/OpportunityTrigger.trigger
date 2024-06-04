trigger OpportunityTrigger on Opportunity (before insert, before update) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            DiscountCalculator.applyDiscountToOpportunities(Trigger.new);
        }
    }
}