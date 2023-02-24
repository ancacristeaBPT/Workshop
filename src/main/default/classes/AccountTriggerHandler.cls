/**
 * @description       : 
 * @author            : Anca Cristea BearingPoint GmbH
 * @group             : 
 * @last modified on  : 02-23-2023
 * @last modified by  : Anca Cristea BearingPoint GmbH
**/

public with sharing class AccountTriggerHandler {
    
    public static void generateCards(List<Account> newAccounts) {
        for (Account acc : newAccounts) {
            System.enqueueJob(new GenerateQrCodeQueueable(acc));
        }
    }
}