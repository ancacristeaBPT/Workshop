/**
 * @description       : Batch for handeled unchange leads
 * @author            : Anca Cristea BearingPoint GmbH
 * @group             :
 * @last modified on  : 02-24-2023
 * @last modified by  : Anca Cristea, BearingPoint GmbH
**/
public with sharing class DeterminateLeadUnhandeledBatch implements Database.Batchable<sObject> {
    /**
     * @description Determines if a lead is unmodified for more than a week
     * @author Anca Cristea, BearingPoint
     * @date 2022-02-24
    **/
    public Database.QueryLocator start(Database.BatchableContext bc) {
        Date lastWeek = Date.today().addDays(-7);
        return Database.getQueryLocator([SELECT Id FROM Lead
                WHERE LastModifiedDate <: lastWeek]);
    }

    /**
     * @description Create a task for the owner of the lead
     * @author Anca Cristea, BearingPoint
     * @date 2022-02-24
    **/
    public void execute(Database.BatchableContext bc, List<Lead> leads){
        List<Task> addActivity = new List<Task>();
        for (Lead l : leads) {
            Task updateTask = new Task(Subject = 'Contact the lead for more information',
                                    WhoId = l.Id,
                                    OwnerId = l.OwnerId,
                                    Status = 'Not Started');
            addActivity.add(updateTask);
        }

        insert addActivity;
    }

    public void finish(Database.BatchableContext bc){

    }
}