/**
 * @description       : 
 * @author            : Anca Cristea BearingPoint GmbH
 * @group             : 
 * @last modified on  : 02-23-2023
 * @last modified by  : Anca Cristea, BearingPoint GmbH
**/

trigger DeleteLeadTrigger on Lead (before delete) {
    switch on Trigger.operationType{
        when BEFORE_DELETE{
            LeadTriggerHandler.checkStatusAndLost(Trigger.old);
        }
    }
}