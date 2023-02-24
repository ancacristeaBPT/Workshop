/**
 * @description       : 
 * @author            : Anca Cristea BearingPoint GmbH
 * @group             : 
 * @last modified on  : 02-23-2023
 * @last modified by  : Anca Cristea, BearingPoint GmbH
**/

@IsTest
public with sharing class AdoptionTriggerHandlerTest {
    
    @IsTest
    public static void testDoTheCheck() {


        List<Adoption__c> testExistingRecords = new List<Adoption__c>{
            new Adoption__c(Animal__c = 'a007Q00000Dk7D2QAH', Account__c = '0017Q000003XniFQAJ')
        };
        insert testExistingRecords;


        

        Test.startTest();
        List<Adoption__c> testExistingRecords = new List<Adoption__c>{
            new Adoption__c(Animal__c = 'a007Q00000Dk7D2QAH', Account__c = '0017Q000003XniFQAJ')
        };
        insert testExistingRecords;
        Test.stopTest();
        
    }


}