//Purpose: This is a handler class which has all the account trigger codes.  ***************** modified 10/24/17
//Called From:Trigger - accountTrigger
//Owner: Shikha Mishra
//Current Status:  In Test
//Test Class: accountTrigger_Test 
//Modified by : Saurabh kumar (4/11/2018)
//Modified by : Seetha Arulprakash 17th July 2018 (added new SF parent child Hierarchy DUNS update)
//Modified by : Saurabh kumar (added new method createPSEAccountTeamMember)
    public class accountTriggerHandler {
    
       //static (variables or class used to track invocations for recursion management purposes)
       //added a static variable to stop trigger to run
       public static boolean stop_accountTriggerHandlertoRun = false;
        
        public void OnBeforeInsertBeforeUpdate(List<Account> new_Accounts,Boolean isDebug){
        // Start - buildAccountSiteName
        if(!avoidRecursiveCalls.hasAlreadyRunAccountTrigger() )
        {
             //Ensure that repeated updates on the object do not loop.  Call a method in a static class.
             avoidRecursiveCalls.setAlreadyRunAccountTrigger();
         
             // Get a list of the Record Types for later use
             //List<RecordType> aTypeR = [Select id, name from RecordType];
             Map<Id, String> recTypeList = new MAP<Id, String>();
             for( RecordType rec : [Select id, name from RecordType] )
             {
                 recTypeList.put(rec.Id, rec.name);
             }
    
             //Get a place to store the budgets being worked and the funds for those budgets 
             // Loop through the Requests that triggered this TRIGGER
             for (Account act : new_Accounts) 
             {
                // This is where we will build the Site name.
                String Site = '';
            
                // Get the country and Handle nulls 
                String Country = act.Physical_Country__c;
             
                // Get the State and handle nulls (if the state is NOT set, check for County/Province and populate This for AP)
                String State = act.Physical_State_Province_US_CA_Only__c;
                String County = act.Physical_County_Province__c;
                if( State == null ) 
                { 
                    if( County == null)
                    {
                        State = '';             
                    }
                    else
                    {
                        State = County;
                    }
                }
            
                String City = act.Physical_City__c;
                if( City == null ) 
                { 
                City = ''; 
                }
    
                // Get the Record typoe of the Account, then get the Text Associated to that Record type.
                Id aTypeId = act.RecordTypeId;
                //List<RecordType> aTypeR = [Select Name from RecordType where id = :aTypeId];
                //String aType = aTypeR[0].Name;
                String aType = recTypeList.get(aTypeId);
    
                System.debug('Act read with cntry; ' + Country + ' st; ' + State + ' cty; ' + City + ' rec; ' + aType);
            
                // Build the Site name prefacing the Name with Partner if it is a Partner Account.
                if( aType == 'Partner Account' )
                {
                    Site = 'Partner-';
                }
                else
                {
                    Site = '';
                }
            
                // Now add the Location aspects of the account name
                Site = Site + Country + '-' + State + '-' + City;
            
                System.debug('Done now, the site; ' + Site );
            
                //Set the Site Name on the record prior to the actual save.
                act.Site = Site;
            
                //ALso set the ISO Code for the the country
                if( Country <> null )
                {
                    CountrytoISO__c ciso = CountrytoISO__c.getValues(Country);
                    if( ciso <> null)
                    {
                        act.Physical_Country_ISO__c = ciso.Country_ISO__c;              
                    }
                    else
                    {
                        act.Physical_Country_ISO__c = 'ZZ';
                    }
                }
             }    
         
    
			/*
			* SA: UPDATE FROM JANUARY 2018
			* The setEulaFlags has been broken down in different processes so the call to this setEulaFlagsCheck class is commented out now. 
			* The new logic below will only update the accounts in this trigger. This will take the value of the top most parent (global duns = duns). 
			* The value will be changed/set only if there is a difference in the EULA exception field between the account and the topmostparent. Also only on 
			* accounts where DnB_Glob_Duns__c is set. All the others will be ignored!
			*
			* SA: UPDATE FROM JULY 2018.
			* Added EULA Exception updates for accounts when Global DUNS is NOT set. A new custom field (Ultimate_Parent_ID__c) will supply the ultimate parent for this update.
			* Only the current account will be updated if the ultimate parent is set
            
			//set for parents and children
          	//setEulaFlagsCheck setAccount = new setEulaFlagsCheck();
          	//setAccount.SetEulaFlags(new_Accounts);
          	*/
			//>>>>>>>>>>>>>>>>>> Start <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

		    //Get Global Duns value
		    Set<String> globalDunsList = new Set<String>();
		    Set<String> parentHierList = new Set<String>(); // a list for all accounts WITHOUT DnB_Glob_Duns__c set.
		    //Get all the Global Duns Numbers from these accounts in trigger
		    for(Account acct : new_Accounts){
		        if (acct.DnB_Glob_Duns__c != null){
		            globalDunsList.add(acct.DnB_Glob_Duns__c);
		        }
		        else if (acct.Ultimate_Parent_ID__c != null && acct.Ultimate_Parent_ID__c != acct.ID) { // and it is not the top most parent itself. 
		        	parentHierList.add(acct.Ultimate_Parent_ID__c);
		        }
		    }
		    
		    Map<id, Account> parentAccountMap = new Map<id, Account>();
		    //The list will contain only top level Accounts based on the Global Duns Numbers
		    List<Account> topLevelAccountsList = [select id, name, Enterprise_Customer__c, DUNS__c, DnB_Glob_Duns__c from Account where DUNS__c in :globalDunsList];

			//Create a map of the top most parent accounts only  
		    for (Account parAcct : topLevelAccountsList){
		        for(Account acc : new_Accounts){
		        	//check if we have the top parent to the trigger account. 
		            if (parAcct.DUNS__c == acc.DnB_Glob_Duns__c){
		                //Put the account that is being updated and it's top most parent Account together in this map. 
		                parentAccountMap.put(acc.id, parAcct);
		            }
		        }
		    }
		    
		    //The list will contain only top level Accounts based on the SF Parent Hierarchy
		    List<Account> topLevelAccountsListBasedOfSFHier = [select id, name, Enterprise_Customer__c, Ultimate_Parent_ID__c  from Account where id in :parentHierList];
		
			//Create a map of the top most parent accounts only - sf parent hier
		    for (Account parAcct : topLevelAccountsListBasedOfSFHier){
		        for(Account acc : new_Accounts){
		        	//check if we have the top parent to the triggered account based on the value saved in ultimate parent field
		            if (acc.DnB_Glob_Duns__c == null && parAcct.id == acc.Ultimate_Parent_ID__c){
		                //Put the account that is being updated and it's top most parent Account together in this map. 
		                parentAccountMap.put(acc.id, parAcct);
		            }
		        }
		    }	
		    	    

		    //A list to hold all accounts that will actually have an Eula update done. We don't want to unnecessarily loop thru other accounts.
		    if (parentAccountMap.size() > 0){
		        //Now to the actual update    
		        for(Account acc : new_Accounts){
		            Account parentAcc = parentAccountMap.get(acc.id);
		            //whatever value is in the parent account will be matched to this account. Don't update the field if it is the top level account in the  hierarchy of the account that is being updated. 
		            if (parentAcc != null && parentAcc.id != acc.id && parentAcc.Enterprise_Customer__c != acc.Enterprise_Customer__c){
		                acc.Enterprise_Customer__c = parentAcc.Enterprise_Customer__c;
		            }
		        }
		    }           		        	
	        //>>>>>>>>>>>>>>>>>> End <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<              	
          	
          	
          	//CR 001436 - a workflow only for Germany, that if an Account is Out of Business the Eula Flag will be set to false and the parent account field should be emptied.
          	//Do not place this code before the EULA exception logic above.
			for (Account acc : new_Accounts){
				if (acc.DB_BEMFAB__c == 'Out Of Business' && acc.UGS_Zone_Ownership__c  == 'Germany'){
					acc.Enterprise_Customer__c = false;
					acc.ParentID = null;
				}
			} 
          	
      
        
          //Ensure that repeated updates on the object do not loop.  Call a method in a static class.
          //commenting below code as actually it making this trigger to fire in recursion , causing soql limit hit
             //avoidRecursiveCalls.clearAlreadyRunAccountTrigger();
             
            
        }
    /*    
         if (isDebug == TRUE){
                 System.debug('Site Name'+Site);
             }
    */         
        }
    
        // End - buildAccountSiteName
    
        public void OnAfterInsertAfterUpdate(List<Account> newAccounts, Boolean isDebug){
        // Start - accountSet18charId
        if( !avoidRecursiveCalls.hasAlreadyRunAcc18CharTrigger() )
        { 
        //Ensure that we don't recursively run through this routine.
        //avoidRecursiveCalls.setAlreadyRunAcc18CharTrigger();
        //system.debug('just set avoid recursion from inside trigger');
    
        List<Account> acct2Update = new List<Account>(); 
        
        
        //Loop through all the Accounts 
        system.debug('newAccounts size '+newAccounts.size());
        for (Integer i=0; i<newAccounts.size(); i++) 
        {
        system.debug('inside trigger loop');
        system.debug('the current new.account_Id18__c is '+ newAccounts[i].account_Id18__c);
        
            if(newAccounts[i].account_Id18__c == null) {
                system.debug('account_id18__c is apparently null');
                
                ID actID = newAccounts[i].Id;
                system.debug('actID = '+actID);
                
                Account actIdAgain = new Account( Id=actID );
                actIdAgain.Account_Id18__c = actID;
                actIdAgain.Account_UniqueID__c = 'S' + String.valueOf(actID ).substring(9,18);
                system.debug('the new id18 has been set to '+ actIdAgain.Account_Id18__c );
                
                acct2Update.add( actIdAgain);
                System.debug('id in: ' + newAccounts[i].Id + ' reobtain: ' + actIdAgain.Account_UniqueID__c );
            } // end if
            
        } // end for i       
        
        // Now group update the the accounts that came in.    
        system.debug('updating acct2update size '+acct2update.size());
        update( acct2Update );
        
        }  // end check on recursion
        
        }
        // End - accountSet18charId 
        
        public void OnBeforeUpdate(List<Account> oldAccounts,List<Account> updatedAccounts, Map<Id,Account> mapAccount, Boolean isDebug){
            // Start - FirstLineSupport
            //List<Account> FirstLineSupportUpdate = new List<Account>();
            //Added  a flag
            if(avoidRecursiveCalls.hasalradyRunOnBeforeUpdateOnAccount())
                return;
            
            for (integer i= 0; i< oldAccounts.size(); i++) {
                if(updatedAccounts[i].ispartner == true) {
                if(updatedAccounts[i].partner_account_status__c == 'Active') {
                if(updatedAccounts[i].partner_competency__c != null) {
                if(!updatedAccounts[i].partner_competency__c.contains('Channel Sales (VAR/Reseller)') ) {
                    if(updatedAccounts[i].first_line_support__c == null) {
                       updatedAccounts[i].first_line_support__c = 'N/A' ;
                    } // end if
                } // end if
                } // end if
                } // end if
            } // end if 
        } // end for i
        // End - FirstLineSupport
        
        // Start - UpdAccOwneronContacts 
        list<id> ownerids = new list<id>();
        list<id> accids = new list<id>();
    
        for (integer i= 0; i< updatedAccounts.size(); i++) {
            if(oldAccounts[i].ownerid <> updatedAccounts[i].ownerid) {
                accids.add(updatedAccounts[i].id) ;
                ownerids.add(updatedAccounts[i].ownerid) ;
            } // end if
        } // end for i
        
        list<contact> contoupd = new list<contact>();
        //  Get all the Contacts for this Account
        //condition to check if no value is to return 
        if(accids.isEmpty())
            return;
        
        for(contact con : [select id, accountid, Account_owner__c from contact where accountid in:accids and contact_status__c=:'Active']) {
              //  Find the matching owner for this Account
              for (integer i= 0; i< accids.size(); i++) {
                    if(con.accountid == accids[i]) {
                          con.Account_Owner__c = ownerids[i];
                    } // end if
              } // end for i
              Contoupd.add(con);
        } // end for

        if(contoupd.size() > 0) {
            //setting run this trigger to true so that it would not trap in recurssion
            avoidRecursiveCalls.setalradyRunOnBeforeUpdateOnAccount();
            if(contoupd.size() < 200){
            	update contoupd;
            }else{
         		UpdateContactOwnerBatch  db = new UpdateContactOwnerBatch(accids,ownerids);
        		database.executeBatch(db);       
            }
        }
  }  
    
  public void OnAfterUpdateBeforeUpdate(List<Account> oldAccounts,List<Account> updatedAccounts, Map<Id,Account> oldmapAccount, Boolean isDebug){
          // Start - updateContactsOnAddressChange 
          // Description -  If Contact Mailing Address equals Account Address and account address is updated, then update contact. Else do nothing. 
             
          // The map allows us to keep track of the accounts that have new addresses     
          Map<Id, Account> acctsWithNewAddresses = new Map<Id, Account>();
          // updatedAccounts is a list of the Accounts that will be updated 
          // This loop iterates over the list, and adds any that have new 
          // addresses to the acctsWithNewAddresses map. 
          for (Integer i = 0; i < updatedAccounts.size(); i++) {
              if ((oldAccounts[i].Physical_Street_1__c != updatedAccounts[i].Physical_Street_1__c)|| 
                  (oldAccounts[i].Physical_City__c != updatedAccounts[i].Physical_City__c)|| 
                  (oldAccounts[i].Physical_Country__c != updatedAccounts[i].Physical_Country__c)|| 
                  (oldAccounts[i].UGS_Zone_Ownership__c != updatedAccounts[i].UGS_Zone_Ownership__c)||
                  (oldAccounts[i].Physical_County_Province__c != updatedAccounts[i].Physical_County_Province__c))  
                {    
                    acctsWithNewAddresses.put(updatedAccounts[i].id,updatedAccounts[i]);
        
                }   
            }
        
        List<Contact> updatedContacts = new List<Contact>();
        
        //checking if any new address change than only run soql and dml
      if(!acctsWithNewAddresses.isEmpty()){
        
        for (Contact c : [SELECT Id,accountId,Mailing_Street_1__c,Mailing_City__c,Mailing_Country__c,Mailing_State_Province_US_CA_Only__c,Mailing_Zonex__c ,Account.Physical_Street_1__c,Account.Physical_City__c,
                          Account.Physical_Country__c,Account.UGS_Zone_Ownership__c,Account.Physical_State_Province_US_CA_Only__c
                          FROM contact WHERE accountId in :acctsWithNewAddresses.keySet()]) 
        {        
            Account parentAccount = acctsWithNewAddresses.get(c.accountId);
            
            // Access the "old" record by its ID in oldmapAccount
            Account oldacc = oldmapAccount.get(parentAccount.Id);
            
            if(c.Mailing_Street_1__c == oldacc.Physical_Street_1__c && c.Mailing_City__c == oldacc.Physical_City__c &&  
               c.Mailing_Country__c == oldacc.Physical_Country__c && c.Mailing_State_Province_US_CA_Only__c == oldacc.Physical_State_Province_US_CA_Only__c)
            
            {
                c.Mailing_County_Province__c = parentAccount.Physical_County_Province__c;
                c.Mailing_Street_1__c = parentAccount.Physical_Street_1__c;
                c.Mailing_Street_2__c = parentAccount.Physical_Street_2__c;
                c.Mailing_City__c = parentAccount.Physical_City__c;
                c.Mailing_Zip_Postal_Code__c = parentAccount.Physical_Zip_Postal_Code__c;
                c.Mailing_Country__c = parentAccount.Physical_Country__c;
                c.Mailing_State_Province_US_CA_Only__c = parentAccount.Physical_State_Province_US_CA_Only__c;           
                updatedContacts.add(c);
                
            }
        }
        update updatedContacts;
      }
        
        // End - updateContactsOnAddressChange 
        if (isDebug ==TRUE){
            System.debug('###updatedContacts'+updatedContacts);
        }
    
        }
    
        public void OnAfterDelete(List<Account> deletedAccount, Boolean isDebug){
            // Start - accountDeleteTrack 
             if( !avoidRecursiveCalls.hasAlreadyRunCalcExecTrigger () ) {     
            //Ensure that we don't recursively run through this routine.    
                avoidRecursiveCalls.setAlreadyRunCalcExecTrigger();            
                List<Account> acct2Update = new List<Account>();  
                List<AccountDeleteTrack__c> mergeSet = new List<AccountDeleteTrack__c>();           
            
                //Loop through all the Accounts     
                for (Integer i=0; i<deletedAccount.size(); i++)     
                    {   
                        System.debug('save shares old ownerid  = ' + deletedAccount[i]);  
                        Account old = deletedAccount[i];
                        AccountDeleteTrack__c mrg = new AccountDeleteTrack__c();
                        mrg.account_Name__c = old.name;
                        mrg.accountId__c = old.Id;
                        System.debug('name: ' + old.name + '  id: ' + old.Id );
                        mrg.Duns__c = old.Duns__c;
                        mrg.MasterRecordId__c = old.MasterRecordId;
                        mrg.Action__c = 'Delete';
                        mrg.ActionDate__c = datetime.now();
                        mrg.Zone__c = old.Ugs_Zone_Ownership__c;
                        if( old.SIC == null )
                        {
                            mrg.sic__c = 0;
                        } else {
                            mrg.sic__c = decimal.valueOf(old.Sic);
                        }
                        mrg.Type__c = old.Type;
                        mrg.Bemfab__c = old.DB_Bemfab__c;
                        System.debug('Master ' + old.MasterRecordId );
    
                        // Now get some details from the MERGED account
                        if( old.MasterRecordId <> null)
                        {
                            Account newAct = [Select id, name, LastModifiedDate, LastModifiedById, Duns__c from Account where id=:old.MasterRecordId LIMIT 1];
                            System.debug('Master Acct: ' + newAct );  
                            mrg.NewAcct_Duns__c = newAct.Duns__c;
                            mrg.NewAcct_Name__c = newAct.Name;
                            mrg.LastUpdateBy__c = ( newAct.LastModifiedById );
                            mrg.LastUpdateDate__c = newAct.LastModifiedDate;
                        }
                        
                       // Now add the value to the LIst for later insertion
                       mergeSet.add( mrg );
                    }
    
                    // Now insert the DeletedTracking records
                    insert( mergeSet ); 
                    
            if (isDebug == TRUE){
                System.debug('###mergeSet'+mergeSet);
            }  
        }
            
         avoidRecursiveCalls.clearAlreadyRunCalcExecTrigger();
        // End - accountDeleteTrack
        }
    
    
    /*
     * Method to update department owner based on account owner changes
     * added by : saurabh kumar 
     *
     */  
       
     public void updateDepartmentsOwnerBasedOnAccountOwner(list<Account> listacc , Map<Id,Account> oldmap,Boolean isDebug){
     	
     	Map<Id ,Id> mapAccountIdwithOwnerId = new Map<Id, Id>();
     	List<Department__c> listDepartments = new list<Department__c>();
     	
     	//looking for account which having owner changed and do not change department is unchecked 
     	for(Account acc : listacc){
     		
     		 if( !acc.Do_Not_Change_Department_Owner__c 
     		      && acc.OwnerId != null 
     		      && oldmap != null 
     		      && oldmap.containskey(acc.id) 
     		      && acc.OwnerId != oldmap.get(acc.id).OwnerId ){
     		      	
     		      	mapAccountIdwithOwnerId.put(acc.id , acc.ownerId);
     		      	
     		      }
        }
     	if(mapAccountIdwithOwnerId.isEmpty())
     	return;
     		      
     	//quering departments
     	for(Department__c department : [Select id , ownerId ,Account_Name__r.id from Department__c where Account_Name__c IN :mapAccountIdWithOwnerId.keySet()]){
     		
     		if( mapAccountIdwithOwnerId.containskey(department.Account_Name__r.id) && department.ownerId != mapAccountIdwithOwnerId.get(department.Account_Name__r.id) && department.ownerId == oldmap.get(department.Account_Name__r.id).OwnerId){
     		   listDepartments.add(new Department__c(id = department.Id , ownerId =mapAccountIdwithOwnerId.get(department.Account_Name__r.id) ) );
     		}
     	 }	      
     	
        if(!listDepartments.isEmpty()){
        	if(isDebug)
        	 System.debug('listDepartment '+listDepartments);
        	 
           accountTriggerHandler.stop_accountTriggerHandlertoRun = true;
           update listDepartments;
           accountTriggerHandler.stop_accountTriggerHandlertoRun = false;     
        }
           
           
     }	
     	
     
    /*
     * Method to create PSE Account Team member based on PSE field on Account
     * added by : saurabh kumar 
     *
     */  
        public void createPSEAccountTeamMember(list<Account> listacc , Map<Id,Account> oldmap,Boolean isDebug){
     	
        IF(avoidRecursiveCalls.hasAlreadyRunCreatePSEAccountTeamMember()) 
            return;
            
        avoidRecursiveCalls.setalreadyRunCreatePSEAccountTeamMember();    
     	List<Account> listAccRequiredPSE = new List<Account>();
     	List<AccountTeamMember> listAccountteamMembers = new list<AccountTeamMember>();
     	
     	//looking for account which having owner changed and do not change department is unchecked 
     	for(Account acc : listacc){
     		
     		 if( acc.Partner_Sales_Executive__c != null
     		      && oldmap != null 
     		      && oldmap.containsKey(acc.id) 
     		      && acc.Partner_Sales_Executive__c != oldmap.get(acc.id).Partner_Sales_Executive__c ){
     		      	
     		      	listAccRequiredPSE.add(acc);
     		      	
     		      }
        }
     	if(listAccRequiredPSE.isEmpty())
     	return;
     		      
     	//itrating over accont to create accountteam member 
     	for(Account  acc : listAccRequiredPSE){
     		
            listAccountteamMembers.add(new AccountTeamMember(TeamMemberRole ='Partner Sales Executive' , AccountId = acc.id ,UserId = acc.Partner_Sales_Executive__c));
     		
     	 }	      
     	
        if(!listAccountteamMembers.isEmpty()){
        	if(isDebug)
        	 System.debug('listAccountteamMembers '+listAccountteamMembers);
        	 
           insert listAccountteamMembers; 
        }
           
           
     }	

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }