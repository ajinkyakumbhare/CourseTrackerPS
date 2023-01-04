/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 01-04-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AccountSearchCls {
    public AccountSearchCls() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Account>  getAccounts(String actName){
        String keyString = '%'+actName+'%';
        return [select id,name from Account where name like:keyString];
    }
}