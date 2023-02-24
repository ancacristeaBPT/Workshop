/**
 * @description       : Run teste Batch daily at 7:30
 * @author            : Anca Cristea BearingPoint GmbH
 * @group             : 
 * @last modified on  : 02-24-2023
 * @last modified by  : Anca Cristea, BearingPoint GmbH
**/
public with sharing class DeterminateLeadUnhandeledSchedule implements Schedulable{
    /*
    DeterminateLeadUnhandeledSchedule schedulerJob = new DeterminateLeadUnhandeledSchedule();
    String sch = '0 30 7 * * ? *';
    String jobId = System.schedule('Reminder old leads', sch, schedulerJob);
    */
    public void execute(SchedulableContext sc) {
        Database.executeBatch(new DeterminateLeadUnhandeledBatch(), 50);
    }
    
}