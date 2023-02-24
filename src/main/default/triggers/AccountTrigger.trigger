/**
 * @description       : 
 * @author            : Chour Tomas BearingPoint GmbH
 * @group             : 
 * @last modified on  : 02-22-2023
 * @last modified by  : Chour Tomas, BearingPoint GmbH
**/
trigger AccountTrigger on Account (after insert) {

    switch on Trigger.operationType{
        when AFTER_INSERT{
            AccountTriggerHandler.generateCards(Trigger.new);
        }
    }
}