/**
 * @description       : 
 * @author            : Anca Cristea BearingPoint GmbH
 * @group             : 
 * @last modified on  : 02-23-2023
 * @last modified by  : Anca Cristea BearingPoint GmbH
**/
public with sharing class DetermineExpiredAdoptionsScheduler implements Schedulable {
    public void execute(SchedulableContext SC) {
        Database.executeBatch(new DetermineExpiredAdoptionsBatch(), 50);
    }
}