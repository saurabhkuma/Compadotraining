public with sharing class AccountTeamMemberController {
   
    public String recordId{get; set;}
    

    public AccountTeamMemberController(ApexPages.StandardController controller) {
         recordId = controller.getRecord().id;
    }
    
    
    public PageReference updatePSEFieldsOnAccount(){
    
    DateTime oneMinutePastCurrentTime = System.Now();
    oneMinutePastCurrentTime  = oneMinutePastCurrentTime.addMinutes(-1);
    
    PageReference returnAccountpage = null;
    List<AccountTeamMember> listAmember = [Select id , TeamMemberRole,User.Name ,createdDate, UserId from AccountTeamMember where AccountId = :recordId and TeamMemberRole ='Partner Sales Executive' Order By CreatedDate DESC];
    
    try{
        Account acc = [Select Id ,Partner_Sales_Executive__c from Account where Id =:recordId];
        //when no PSE in AccountTeam but no PSE on Account is present
        If((listAmember == Null || listAmember.isEmpty() ) && acc.Partner_Sales_Executive__c == null){
              return null;
        }
        
        //when no PSE in AccountTeam but PSE on Account is present
        else If( (listAmember == Null || listAmember.isEmpty() ) && acc.Partner_Sales_Executive__c != null){
                acc.Partner_Sales_Executive__c = null;
            	
                accountTriggerHandler.stop_accountTriggerHandlertoRun = true;
           		update acc;
           		accountTriggerHandler.stop_accountTriggerHandlertoRun = false;
                
               returnAccountpage =  new PageReference('/'+recordId);
        
        }
      
        //when new PSE in AccountTeam 
        else if( listAmember != null && listAmember[0].createdDate >= oneMinutePastCurrentTime && listAmember[0].UserId != acc.Partner_Sales_Executive__c ){
            
                acc.Partner_Sales_Executive__c = listAmember[0].UserId;
                accountTriggerHandler.stop_accountTriggerHandlertoRun = true;
           		update acc;
           		accountTriggerHandler.stop_accountTriggerHandlertoRun = false;
                returnAccountpage =  new PageReference('/'+recordId);
        }
    
    }
    catch(Exception e){
    
     System.debug('exception' +e.getMessage());
    }
    
    
    return returnAccountpage ;
    }

}