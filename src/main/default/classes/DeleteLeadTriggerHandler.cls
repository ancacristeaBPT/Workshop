/**
 * @description       : 
 * @author            : Anca Cristea BearingPoint GmbH
 * @group             : 
 * @last modified on  : 02-21-2023
 * @last modified by  : Anca Cristea, BearingPoint GmbH
**/
public with sharing class DeleteLeadTriggerHandler {
    
    public static void checkStatusAndLost(List<Lead> leads) {
     //   List<Adoption__c> existingAdoptions = [SELECT Account__c, Animal__c FROM Adoption__c WHERE Status__c = 'Active' AND
     //   (Account__c IN :relevantAccountIds OR Animal__c IN :relevantAnimalIds) AND Id NOT IN :adoptionsFromTriggerIds];
     
        for(Lead deleteLead : leads) {
            if(!deleteLead.Status.equals('Closed - Not Converted')) {
                deleteLead.addError('This lead is not closed!!!');
            }
            else if(deleteLead.Lost__c == false){
                deleteLead.addError('This lead is not lost!!!');
            }
        }
    }

}