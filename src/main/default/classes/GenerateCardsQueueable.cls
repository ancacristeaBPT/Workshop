/**
 * @description       : 
 * @author            : Chour Tomas BearingPoint GmbH
 * @group             : 
 * @last modified on  : 02-22-2023
 * @last modified by  : Chour Tomas BearingPoint GmbH
**/
public with sharing class GenerateCardsQueueable implements Queueable, Database.AllowsCallouts {
    private String qrCodeData;
    public GenerateCardsQueueable (String qrCodeData) {
        this.qrCodeData = qrCodeData;
    }

    public void execute(QueueableContext context) {
        System.debug('TTTTT GenerateCardsQueueable call');
        // TODO to the external server
    }
}