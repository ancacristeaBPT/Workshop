/**
 * @description       : 
 * @author            : Anca Cristea BearingPoint GmbH
 * @group             : 
 * @last modified on  : 02-21-2023
 * @last modified by  : Anca Cristea, BearingPoint GmbH
**/

trigger DeleteLeadTrigger on Lead (before delete) {
    DeleteLeadTriggerHandler.checkStatusAndLost(Trigger.old);
}