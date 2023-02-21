/**
 * @description       : 
 * @author            : Chour Tomas BearingPoint GmbH
 * @group             : 
 * @last modified on  : 02-20-2023
 * @last modified by  : Chour Tomas, BearingPoint GmbH
**/
trigger AdoptionTrigger on Adoption__c (before insert, before update) {
    switch on Trigger.operationType{
        when BEFORE_INSERT{
            AdoptionTriggerHandler.checkAdoptionDuplicate(Trigger.new);
        }
        when BEFORE_UPDATE{
            AdoptionTriggerHandler.checkAdoptionDuplicate(Trigger.new);
        }
    }
}