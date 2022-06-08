/**
 * @description       : 
 * @author            : navin.patil@rupeek.com
 * @group             : 
 * @last modified on  : 06-09-2022
 * @last modified by  : navin.patil@rupeek.com
**/
public with sharing class BuildingController {
    
    @AuraEnabled
    public static Building__c insertBuilding(Building__c buildingObj){
        try {
            System.debug(buildingObj);
            insert buildingObj;
            return buildingObj;
        } catch (Exception exp) {
            throw new AuraHandledException(exp.getMessage());
        }
    }
    //this is test comment
    @AuraEnabled
    public static Flat__c insertFlat(Flat__c flatObj){
        try {
            System.debug(flatObj);
            insert flatObj;
            return flatObj;
        } catch (Exception exp) {
            System.debug(exp);
            throw new AuraHandledException(exp.getMessage());
        }
    }


}