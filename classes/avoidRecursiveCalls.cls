global class avoidRecursiveCalls 
{


  //        UpdateAPLN
      
    private static boolean alreadyRunMDFTrigger = false;  // 1 
    private static boolean alreadyRunMDFRequestTrigger = false;  // 2
    private static boolean alreadyRunOpportunityRevTrigger = false;  // 3
    private static boolean alreadyRunAccountTrigger = false;  // 4
    private static boolean alreadyRunMaintainAcctoAPLNLinksTrigger = false;  // 5
    private static boolean alreadyRunLeadTrigger = false;  // 6
    private static boolean alreadyRunMDFRequestCurTrigger = false;  // 7
    private static boolean alreadyRunSaveOppShrsTrigger = false;    // 8
    private static boolean alreadyRunCompetitionTrigger = false;    // 9
    private static boolean alreadyRunOppCurChgTrigger = false;    // 10
    private static boolean alreadyRunLeadCIstoAccountTrigger = false;    // 11
    private static boolean alreadyRunLeadLightTrigger = false;    // 12
    private static boolean alreadyRunUpdAccLinkonCITrigger = false;    // 13
    private static boolean alreadyRunOppShrReinsertTrigger = false;  // 14
    private static boolean alreadyRunOpportunityTrigger = false;    // 15
    private static boolean alreadyRunMaintainOpptoAPLNLinksTrigger = false;    // 16
   private static boolean alreadyRunoppchgtrackTrigger = false;    // 17
    private static boolean alreadyRunPlanHorizonTrigger = false;    // 18 
    private static boolean alreadyRunInitializeAPLNTrigger = false;    // 19 
    private static boolean alreadyRunUpdateAPLNTrigger = false;    // 20
        private static boolean alreadyRunCreatePContactTrigger = false;    // 21 
        private static boolean alreadyRunCIfromAcctoLeadTrigger = false;    // 22 
        private static boolean alreadyRunComparetoStdContactsTrigger = false;    // 23         
         private static boolean alreadyRunSetPCSelectTrigger = false;    // 24  
         private static boolean alreadyRunLockStageTrigger = false;    // 25  
         private static boolean alreadyRunPartnerChangeonOppTrigger = false;    // 26  
         private static boolean alreadyRunMDFResetSharesTrigger = false;    // 27 
          private static boolean alreadyRunRefreshSharesTrigger = false;    // 28         
          private static boolean alreadyRunContactTrigger = false;    // 29     
           private static boolean alreadyRunLead18CharTrigger = false;    // 30        
          private static boolean alreadyRunContact18CharTrigger = false;    // 31     
           private static boolean alreadyRunOpp18CharTrigger = false;    // 32
           private static boolean alreadyRunMDF18CharTrigger = false;    // 33
           private static boolean alreadyRunmaintenancebatchTrigger = false;    // 34
           private static boolean alreadyRunCalcExecTrigger = false;    // 35
           private static boolean alreadyRunPLMLCTrigger = false;    // 36
           private static boolean alreadyRunReLeadSHTrigger = false;    // 37
           private static boolean alreadyRunGlobalAccSHTrigger = false;    // 38
           private static boolean alreadyRuncalcnuminstallsTrigger = false;    // 39
           private static boolean alreadyRunsyncmailTrigger = false;    // 40
           private static boolean alreadyRunmdfsharestorequestsTrigger = false;    // 41
           private static boolean alreadyRunAcc18CharTrigger = false;    // 42
          private static boolean alreadyRunPartnerImpExpTrigger = false;    // 43
          private static boolean alreadyRunleadshsvTrigger = false;    // 44
          private static boolean alreadyRunNCOstatTrigger = false;    // 45          
          private static boolean alreadyRunNCOOppCloseTrigger = false;    // 46            
          private static boolean alreadyRunMDFshInsTrigger = false;    // 47           
           private static boolean alreadyRunBuildAccountSiteNameTrigger = false;    // 48             
           private static boolean alreadyRuncalcmesgroupTrigger = false;    // 49   
           private static boolean alreadyRunmdfsharestoClaimsTrigger = false;    // 50           
            private static boolean alreadyRunSetPCNumSharesTrigger = false;    // 51       
           private static boolean alreadyRunMDFSharestoOneClaimTrigger = false;    // 52  

           private static boolean alreadyRunOOCCheckTrigger = false;    // 53
          private static boolean alreadyRunSetPartnerAccountonPCTrigger = false;    // 54
          private static boolean alreadyRunFixOldCompsTrigger = false;    // 55
          private static boolean alreadyRunMaintenanceOPPTrigger = false;    // 56
          private static boolean alreadyRunUpdmesgroupTrigger = false;    // 57
          private static boolean alreadyRunSavePartnerTasksTrigger = false;    // 58
 private static boolean alreadyRunAPLNHRZTrigger = false;    // 59
  private static boolean alreadyRunInstallDivisionTrigger = false;    // 60          
  private static boolean alreadyRunCONEVALTrigger = false;    // 61 
  private static boolean alreadyRunAddRepsharetoInstallTrigger = false;    // 62 
  private static boolean alreadyRunOpportuniyTriggerforClone = false; //63
  private static boolean alredyRunupdateOnAfterEventOpportunity = false; //64
  private static boolean alradyRunOnBeforeUpdateOnAccount = false; //65
  private static boolean alreadyRunupdateFieldsOnOpportunity = false; //66
  private static boolean alreadyRunCreatePSEAccountTeamMember = false; //67
  
 
 Public static boolean hasalradyRunOnBeforeUpdateOnAccount()  {
        System.debug('hasalradyRunOnBeforeUpdateOnAccount value: ' + alradyRunOnBeforeUpdateOnAccount );
        return alradyRunOnBeforeUpdateOnAccount;
    }   
    
 Public static boolean hasalreadyRunAddRepsharetoInstalltrigger()  {
        System.debug('hasalreadyRunAddRepsharetoInstallTrigger value: ' + alreadyRunAddRepsharetoInstallTrigger );
        return alreadyRunAddRepsharetoInstallTrigger;
    }
   
Public static boolean hasalreadyRunCONEVALTrigger()  {
        System.debug('hasalreadyRunCONEVALTrigger value: ' + alreadyRunCONEVALTrigger );
        return alreadyRunCONEVALTrigger;
    }
  
 

 Public static boolean hasalreadyRunInstallDivisionTrigger()  {
        System.debug('hasalreadyRunInstallDivisionTrigger value: ' + alreadyRunInstallDivisionTrigger );
        return alreadyRunInstallDivisionTrigger;
    }
  
 
 Public static boolean hasalreadyRunAPLNHRZTrigger()  {
        System.debug('hasalreadyRunAPLNHRZTrigger value: ' + alreadyRunAPLNHRZTrigger );
        return alreadyRunAPLNHRZTrigger;
    }


  public static boolean hasalreadyRunSavePartnerTasksTrigger() 
    {
        System.debug('hasalreadyRunUpdmesgroupTrigger value: ' + alreadyRunSavePartnerTasksTrigger );
        return alreadyRunSavePartnerTasksTrigger;
    }


  public static boolean hasalreadyRunUpdmesgroupTrigger() 
    {
        System.debug('hasalreadyRunUpdmesgroupTrigger value: ' + alreadyRunUpdmesgroupTrigger );
        return alreadyRunUpdmesgroupTrigger;
    }


  public static boolean hasalreadyRunMaintenanceOPPTrigger() 
    {
        System.debug('hasalreadyRunMaintenanceOPPTrigger value: ' + alreadyRunMaintenanceOPPTrigger );
        return alreadyRunMaintenanceOPPTrigger;
    }


  public static boolean hasalreadyRunFixOldCompsTrigger() 
    {
        System.debug('hasalreadyRunFixOldCompsTrigger value: ' + alreadyRunFixOldCompsTrigger );
        return alreadyRunFixOldCompsTrigger;
    }


public static boolean hasalreadyRunSetPartnerAccountonPCTrigger() 
    {
        System.debug('hasalreadyRunSetPartnerAccountonPCTrigger value: ' + alreadyRunSetPartnerAccountonPCTrigger );
        return alreadyRunSetPartnerAccountonPCTrigger;
    }



          
public static boolean hasalreadyRunOOCCheckTrigger() 
    {
        System.debug('hasalreadyRunOOCCheckTrigger value: ' + alreadyRunOOCCheckTrigger );
        return alreadyRunOOCCheckTrigger;
    }



public static boolean hasalreadyRunMDFSharestoOneClaimTrigger() 
    {
        System.debug('hasalreadyRunMDFSharestoOneClaimTrigger value: ' + alreadyRunMDFSharestoOneClaimTrigger );
        return alreadyRunMDFSharestoOneClaimTrigger;
    }



public static boolean hasalreadyRunSetPCNumSharesTrigger() 
    {
        System.debug('hasalreadyRunSetPCNumSharesTrigger value: ' + alreadyRunSetPCNumSharesTrigger );
        return alreadyRunSetPCNumSharesTrigger;
    }






public static boolean hasalreadyRunmdfsharestoClaimsTrigger() 
    {
        System.debug('hasalreadyRunmdfsharestoClaimsTrigger value: ' + alreadyRunmdfsharestoClaimsTrigger );
        return alreadyRunmdfsharestoClaimsTrigger;
    }




public static boolean hasAlreadyRuncalcmesgroupTrigger() 
    {
        System.debug('hasAlreadyRuncalcmesgroupTrigger value: ' + alreadyRuncalcmesgroupTrigger );
        return alreadyRuncalcmesgroupTrigger;
    }


public static boolean hasAlreadyRunBuildAccountSiteNameTrigger() 
    {
        System.debug('hasAlreadyRunBuildAccountSiteNameTrigger value: ' + alreadyRunBuildAccountSiteNameTrigger );
        return alreadyRunBuildAccountSiteNameTrigger;
    }


public static boolean hasAlreadyRunMDFshInsTrigger() 
    {
        System.debug('hasAlreadyRunMDFshInsTrigger value: ' + alreadyRunMDFshInsTrigger );
        return alreadyRunMDFshInsTrigger;
    }


public static boolean hasAlreadyRunNCOOppCloseTrigger() 
    {
        System.debug('hasAlreadyRunNCOOppCloseTrigger value: ' + alreadyRunNCOOppCloseTrigger );
        return alreadyRunNCOOppCloseTrigger;
    }

public static boolean hasAlreadyRunNCOstatTrigger() 
    {
        System.debug('hasAlreadyRunNCOstatTrigger value: ' + alreadyRunNCOstatTrigger );
        return alreadyRunNCOstatTrigger;
    }

          public static boolean hasAlreadyRunleadshsvTrigger() 
    {
        System.debug('hasAlreadyRunleadshsvTrigger value: ' + alreadyRunleadshsvTrigger );
        return alreadyRunleadshsvTrigger;
    }

          
public static boolean hasAlreadyRunPartnerImpExpTrigger() 
    {
        System.debug('hasAlreadyRunPartnerImpExpTrigger value: ' + alreadyRunPartnerImpExpTrigger );
        return alreadyRunPartnerImpExpTrigger;
    }

public static boolean hasAlreadyRunAcc18CharTrigger() 
    {
        System.debug('hasAlreadyRunAcc18CharTrigger value: ' + alreadyRunAcc18CharTrigger );
        return alreadyRunAcc18CharTrigger;
    }

public static boolean hasAlreadyRunmdfsharestorequestsTrigger() 
    {
        System.debug('hasAlreadyRunmdfsharestorequestsTrigger value: ' + alreadyRunmdfsharestorequestsTrigger );
        return alreadyRunmdfsharestorequestsTrigger;
    }


public static boolean hasAlreadyRunsyncmailTrigger() 
    {
        System.debug('hasAlreadyRunsyncmailTrigger value: ' + alreadyRunsyncmailTrigger );
        return alreadyRunsyncmailTrigger;
    }
 public static boolean hasAlreadyRuncalcnuminstallsTrigger() 
    {
        System.debug('hasAlreadyRuncalcnuminstallsTrigger value: ' + alreadyRuncalcnuminstallsTrigger );
        return alreadyRuncalcnuminstallsTrigger;
    }
    

public static boolean hasAlreadyRunCalcExecTrigger() 
    {
        System.debug('hasAlreadyRunCalcExecTrigger value: ' + alreadyRunCalcExecTrigger );
        return alreadyRunCalcExecTrigger;
    }
    
    public static boolean hasAlreadyRunPLMLCTrigger() 
    {
        System.debug('hasAlreadyRunPLMLCTrigger value: ' + alreadyRunPLMLCTrigger );
        return alreadyRunPLMLCTrigger;
    }
    
    public static boolean hasAlreadyRunReLeadSHTrigger() 
    {
        System.debug('hasAlreadyRunReLeadSHTrigger value: ' + alreadyRunReLeadSHTrigger );
        return alreadyRunReLeadSHTrigger;
    }
    
    public static boolean hasAlreadyRunGlobalAccSHTrigger() 
    {
        System.debug('hasAlreadyRunGlobalAccSHTrigger value: ' + alreadyRunGlobalAccSHTrigger );
        return alreadyRunGlobalAccSHTrigger;
    }




public static boolean hasAlreadyRunmaintenancebatchTrigger() 
    {
        System.debug('hasAlreadyRunmaintenancebatchTrigger value: ' + alreadyRunmaintenancebatchTrigger );
        return alreadyRunmaintenancebatchTrigger;
    }
public static boolean hasAlreadyRunLead18CharTrigger() 
    {
        System.debug('hasAlreadyRunLead18CharTrigger value: ' + alreadyRunLead18CharTrigger );
        return alreadyRunLead18CharTrigger;
    }

public static boolean hasAlreadyRunContact18CharTrigger() 
    {
        System.debug('hasAlreadyRunContact18CharTrigger value: ' + alreadyRunContact18CharTrigger );
        return alreadyRunContact18CharTrigger;
    }

public static boolean hasAlreadyRunOpp18CharTrigger() 
    {
        System.debug('hasAlreadyRunOpp18CharTrigger value: ' + alreadyRunOpp18CharTrigger );
        return alreadyRunOpp18CharTrigger;
    }

public static boolean hasAlreadyRunMDF18CharTrigger() 
    {
        System.debug('hasAlreadyRunMDF18CharTrigger value: ' + alreadyRunMDF18CharTrigger );
        return alreadyRunMDF18CharTrigger;
    }



public static boolean hasAlreadyRunContactTrigger() 
    {
        System.debug('hasAlreadyRunContactTrigger value: ' + alreadyRunContactTrigger );
        return alreadyRunContactTrigger;
    }


   public static boolean hasAlreadyRunRefreshSharesTrigger() 
    {
        System.debug('hasAlreadyRunRefreshSharesTrigger value: ' + alreadyRunRefreshSharesTrigger );
        return alreadyRunRefreshSharesTrigger;
    }


        
public static boolean hasAlreadyRunMDFResetSharesTrigger() 
    {
        System.debug('hasAlreadyRunMDFResetSharesTrigger value: ' + alreadyRunMDFResetSharesTrigger );
        return alreadyRunMDFResetSharesTrigger;
    }


                             
public static boolean hasAlreadyRunPartnerChangeonOppTrigger() 
    {
        System.debug('hasAlreadyRunPartnerChangeonOppTrigger value: ' + alreadyRunPartnerChangeonOppTrigger );
        return alreadyRunPartnerChangeonOppTrigger;
    }


public static boolean hasAlreadyRunLockStageTrigger() 
    {
        System.debug('hasAlreadyRunLockStageTrigger value: ' + alreadyRunLockStageTrigger );
        return alreadyRunLockStageTrigger;
    }


public static boolean hasAlreadyRunSetPCSelectTrigger() 
    {
        System.debug('hasAlreadyRunSetPCSelectTrigger value: ' + alreadyRunSetPCSelectTrigger );
        return alreadyRunSetPCSelectTrigger;
    }

public static boolean hasAlreadyRunComparetoStdContactsTrigger() 
    {
        System.debug('hasAlreadyRunComparetoStdContactsTrigger value: ' + alreadyRunComparetoStdContactsTrigger );
        return alreadyRunComparetoStdContactsTrigger;
    }

public static boolean hasAlreadyRunCIfromAcctoLeadTrigger() 
    {
        System.debug('hasAlreadyRunCIfromAcctoLeadTrigger value: ' + alreadyRunCIfromAcctoLeadTrigger );
        return alreadyRunCIfromAcctoLeadTrigger;
    }

public static boolean hasAlreadyRunCreatePContactTrigger() 
    {
        System.debug('hasAlreadyRunCreatePContactTrigger value: ' + alreadyRunCreatePContactTrigger );
        return alreadyRunCreatePContactTrigger;
    }


  
public static boolean hasAlreadyRunUpdateAPLNTrigger() 
    {
        System.debug('hasAlreadyRunUpdateAPLNTrigger value: ' + alreadyRunUpdateAPLNTrigger );
        return alreadyRunUpdateAPLNTrigger;
    }

public static boolean hasAlreadyRunInitializeAPLNTrigger() 
    {
        System.debug('hasAlreadyRunInitializeAPLNTrigger value: ' + alreadyRunInitializeAPLNTrigger );
        return alreadyRunInitializeAPLNTrigger;
    }

public static boolean hasAlreadyRunPlanHorizonTrigger() 
    {
        System.debug('hasAlreadyRunPlanHorizonTrigger value: ' + alreadyRunPlanHorizonTrigger );
        return alreadyRunPlanHorizonTrigger;
    }

public static boolean hasAlreadyRunoppchgtrackTrigger() 
    {
        System.debug('hasAlreadyRunoppchgtrackTrigger value: ' + alreadyRunoppchgtrackTrigger );
        return alreadyRunoppchgtrackTrigger;
    }

public static boolean hasAlreadyRunMaintainOpptoAPLNLinksTrigger() 
    {
        System.debug('hasAlreadyRunMaintainOpptoAPLNLinksTrigger value: ' + alreadyRunMaintainOpptoAPLNLinksTrigger );
        return alreadyRunMaintainOpptoAPLNLinksTrigger;
    }



    public static boolean hasAlreadyRunMDFTrigger() 
    {
        System.debug('hasAlreadyRunMDFrigger value: ' + alreadyRunMDFTrigger );
        return alreadyRunMDFTrigger;
    }
 
    public static boolean hasAlreadyRunMaintainAcctoAPLNLinksTrigger() 
    {
        System.debug('hasAlreadyRunMaintainAcctoAPLNLinksTrigger value: ' + alreadyRunMaintainAcctoAPLNLinksTrigger );
        return alreadyRunMaintainAcctoAPLNLinksTrigger;
   }


    public static boolean hasAlreadyRunLeadTrigger() 
    {
        System.debug('hasAlreadyRunLeadTrigger value: ' + alreadyRunLeadTrigger );
        return alreadyRunLeadTrigger;
    }

    public static boolean hasAlreadyRunAccountTrigger()
    {
        System.debug('hasAlreadyRunAccountTrigger value: ' + alreadyRunAccountTrigger );
        return alreadyRunAccountTrigger;
    }

    public static boolean hasAlreadyRunMDFRequestTrigger()
    {
        System.debug('hasAlreadyRunMDFRequestTrigger value: ' + alreadyRunMDFRequestTrigger );
        return alreadyRunMDFRequestTrigger;
    }

    public static boolean hasAlreadyRunOpportunityRevTrigger()
    {
        System.debug('hasAlreadyRunTrigger value: ' + alreadyRunOpportunityRevTrigger );
        return alreadyRunOpportunityRevTrigger;
    }

    public static boolean hasAlreadyRunOpportunityTrigger()
    {
        System.debug('hasAlreadyRunOpportunityTrigger value: ' + alreadyRunOpportunityTrigger );
        return alreadyRunOpportunityTrigger;
    }

    public static boolean hasAlreadyRunOppShrReinsertTrigger()
    {
        System.debug('hasAlreadyRunOppShrReinsertTrigger value: ' + alreadyRunOppShrReinsertTrigger );
        return alreadyRunOppShrReinsertTrigger;
    }
public static boolean hasAlreadyRunMDFRequestCurTrigger()
    {
        System.debug('hasAlreadyRunMDFRequestCurTrigger value: ' + alreadyRunMDFRequestCurTrigger );
        return alreadyRunMDFRequestCurTrigger;
    }

public static boolean hasAlreadyRunLeadCIstoAccountTrigger() 
    {
        System.debug('hasAlreadyRunLeadCIstoAccountTrigger value: ' + alreadyRunLeadCIstoAccountTrigger );
        return alreadyRunLeadCIstoAccountTrigger;
    }

public static boolean hasAlreadyRunSaveOppShrsTrigger()
    {
        System.debug('hasAlreadyRunSaveOppShrsTrigger value: ' + alreadyRunSaveOppShrsTrigger );
        return alreadyRunSaveOppShrsTrigger;
    }
public static boolean hasAlreadyRunCompetitionTrigger()
    {
        System.debug('hasAlreadyRunCompetitionTrigger value: ' + alreadyRunCompetitionTrigger );
        return alreadyRunCompetitionTrigger;
    }
public static boolean hasAlreadyRunOppCurChgTrigger()
    {
        System.debug('hasAlreadyRunOppCurChgTrigger value: ' + alreadyRunOppCurChgTrigger );
        return alreadyRunOppCurChgTrigger;
    }
public static boolean hasAlreadyRunLeadLightTrigger() 
    {
        System.debug('hasAlreadyRunLeadLightTrigger value: ' + alreadyRunLeadLightTrigger );
        return alreadyRunLeadLightTrigger;
    }
public static boolean hasAlreadyRunUpdAccLinkonCITrigger() 
    {
        System.debug('hasAlreadyRunUpdAccLinkonCITrigger value: ' + alreadyRunUpdAccLinkonCITrigger );
        return alreadyRunUpdAccLinkonCITrigger;
    }



public static boolean hasAlreadyRunOpportuniyTriggerforClone()
    {
        System.debug('hasAlreadyRunOpportuniyTriggerforC value: ' +  alreadyRunOpportuniyTriggerforClone );
        return  alreadyRunOpportuniyTriggerforClone;
       
    }


public static boolean hasAlredyRunupdateOnAfterEventOpportunity()
{
       System.debug('alredyRunupdateOnAfterEventOpportunity value: ' +  alredyRunupdateOnAfterEventOpportunity );
    
    return alredyRunupdateOnAfterEventOpportunity;
}

    public static boolean hasAlreadyRunupdateFieldsOnOpportunity(){
        system.debug('AlreadyRunupdateFieldsOnOpportunity value: '+ alreadyRunupdateFieldsOnOpportunity);
        return alreadyRunupdateFieldsOnOpportunity;
    }

   public static boolean hasAlreadyRunCreatePSEAccountTeamMember(){
        system.debug('hasAlreadyRunCreatePSEAccountTeamMember value: '+ alreadyRunCreatePSEAccountTeamMember);
        return alreadyRunCreatePSEAccountTeamMember;
    }

    

// SECOND SET
public static void setalreadyRunCONEVALTrigger()
    {
        System.debug('Setting alreadyRunCONEVALTrigger prevVal: ' + alreadyRunCONEVALTrigger);
        alreadyRunCONEVALTrigger = true;
    }



public static void setalreadyRunAddRepsharetoInstallTrigger()
    {
        System.debug('Setting alreadyRunAddRepsharetoInstallTrigger prevVal: ' + alreadyRunAddRepsharetoInstallTrigger);
        alreadyRunAddRepsharetoInstallTrigger = true;
    }

public static void setalreadyRunInstallDivisionTrigger()
    {
        System.debug('Setting alreadyRunInstallDivisionTrigger prevVal: ' + alreadyRunInstallDivisionTrigger);
        alreadyRunInstallDivisionTrigger = true;
    }

public static void setalreadyRunAPLNHRZTrigger()
    {
        System.debug('Setting alreadyRunSavePartnerTasksTrigger prevVal: ' + alreadyRunAPLNHRZTrigger);
        alreadyRunAPLNHRZTrigger = true;
    }

public static void setalreadyRunSavePartnerTasksTrigger()
    {
        System.debug('Setting alreadyRunSavePartnerTasksTrigger prevVal: ' + alreadyRunSavePartnerTasksTrigger);
        alreadyRunSavePartnerTasksTrigger = true;
    }

public static void setalreadyRunUpdmesgroupTrigger()
    {
        System.debug('Setting alreadyRunUpdmesgroupTrigger prevVal: ' + alreadyRunUpdmesgroupTrigger);
        alreadyRunUpdmesgroupTrigger = true;
    }

public static void setalreadyRunMaintenanceOPPTrigger()
    {
        System.debug('Setting alreadyRunMaintenanceOPPTrigger prevVal: ' + alreadyRunMaintenanceOPPTrigger);
        alreadyRunMaintenanceOPPTrigger = true;
    }

public static void setalreadyRunFixOldCompsTrigger()
    {
        System.debug('Setting alreadyRunFixOldCompsTrigger prevVal: ' + alreadyRunFixOldCompsTrigger);
        alreadyRunFixOldCompsTrigger = true;
    }

public static void setalreadyRunSetPartnerAccountonPCTrigger()
    {
        System.debug('Setting alreadyRunSetPartnerAccountonPCTrigger prevVal: ' + alreadyRunSetPartnerAccountonPCTrigger);
        alreadyRunSetPartnerAccountonPCTrigger = true;
    }

public static void setalreadyRunOOCCheckTrigger()
    {
        System.debug('Setting alreadyRunOOCCheckTrigger prevVal: ' + alreadyRunOOCCheckTrigger);
        alreadyRunOOCCheckTrigger = true;
    }

public static void setalreadyRunMDFSharestoOneClaimTrigger()
    {
        System.debug('Setting alreadyRunMDFSharestoOneClaimTrigger prevVal: ' + alreadyRunMDFSharestoOneClaimTrigger);
        alreadyRunMDFSharestoOneClaimTrigger = true;
    }


public static void setalreadyRunSetPCNumSharesTrigger()
    {
        System.debug('Setting alreadyRunSetPCNumSharesTrigger prevVal: ' + alreadyRunSetPCNumSharesTrigger);
        alreadyRunSetPCNumSharesTrigger = true;
    }


public static void setalreadyRunmdfsharestoClaimsTrigger()
    {
        System.debug('Setting alreadyRunmdfsharestoClaimsTrigger prevVal: ' + alreadyRunmdfsharestoClaimsTrigger);
        alreadyRunmdfsharestoClaimsTrigger = true;
    }


public static void setAlreadyRuncalcmesgroupTrigger()
    {
        System.debug('Setting alreadyRuncalcmesgrouptrigger prevVal: ' + alreadyRuncalcmesgroupTrigger);
        alreadyRuncalcmesgroupTrigger = true;
    }



public static void setAlreadyRunBuildAccountSiteNameTrigger()
    {
        System.debug('Setting alreadyRunBuildAccountSiteNametrigger prevVal: ' + alreadyRunBuildAccountSiteNameTrigger);
        alreadyRunBuildAccountSiteNameTrigger = true;
    }



public static void setAlreadyRunMDFshinsTrigger()
    {
        System.debug('Setting alreadyRunNCOOppClosetrigger prevVal: ' + alreadyRunMDFshInsTrigger);
        alreadyRunMDFshInsTrigger = true;
    }



public static void setAlreadyRunNCOOppCloseTrigger()
    {
        System.debug('Setting alreadyRunNCOOppClosetrigger prevVal: ' + alreadyRunNCOOppCloseTrigger);
        alreadyRunNCOOppCloseTrigger = true;
    }


public static void setAlreadyRunNCOstatTrigger()
    {
        System.debug('Setting alreadyRunNCOstatTrigger prevVal: ' + alreadyRunNCOstatTrigger);
        alreadyRunNCOstatTrigger = true;
    }


public static void setAlreadyRunleadshsvTrigger()
    {
        System.debug('Setting alreadyRunleadshsvtrigger prevVal: ' + alreadyRunleadshsvTrigger);
        alreadyRunleadshsvTrigger = true;
    }


public static void setAlreadyRunPartnerImpExpTrigger()
    {
        System.debug('Setting alreadyRunPartnerImpExptrigger prevVal: ' + alreadyRunPartnerImpExpTrigger);
        alreadyRunPartnerImpExpTrigger = true;
    }
public static void clearAlreadyRunPartnerImpExpTrigger()
    {
        System.debug('Setting alreadyRunPartnerImpExptrigger prevVal: ' + alreadyRunPartnerImpExpTrigger);
        alreadyRunPartnerImpExpTrigger = false;
    }


public static void clearAlreadyRunCalcExecTrigger()
    {
        System.debug('Setting alreadyRunCalcExectrigger prevVal: ' + alreadyRunCalcExecTrigger);
        alreadyRunCalcExecTrigger = false;
    }






public static void setAlreadyRunAcc18CharTrigger()
    {
        System.debug('Setting alreadyRunAcc18Chartrigger prevVal: ' + alreadyRunAcc18CharTrigger);
        alreadyRunAcc18CharTrigger = true;
    }
public static void setAlreadyRunmdfsharestorequestsTrigger()
    {
        System.debug('Setting alreadyRunmdfsharestorequeststrigger prevVal: ' + alreadyRunmdfsharestorequestsTrigger);
        alreadyRunmdfsharestorequestsTrigger = true;
    }
public static void clearAlreadyRunmdfsharestorequestsTrigger()
    {
        System.debug('Setting alreadyRunmdfsharestorequeststrigger prevVal: ' + alreadyRunmdfsharestorequestsTrigger);
        alreadyRunmdfsharestorequestsTrigger = false;
    }


public static void setAlreadyRunsyncmailTrigger()
    {
        System.debug('Setting alreadyRunsyncmailtrigger prevVal: ' + alreadyRunsyncmailTrigger);
        alreadyRunsyncmailTrigger = true;
    }


public static void setAlreadyRuncalcnuminstallsTrigger()
    {
        System.debug('Setting alreadyRuncalcnuminstallstrigger prevVal: ' + alreadyRuncalcnuminstallsTrigger);
        alreadyRuncalcnuminstallsTrigger = true;
    }


public static void setAlreadyRunCalcExecTrigger()
    {
        System.debug('Setting alreadyRunCalcExectrigger prevVal: ' + alreadyRunCalcExecTrigger);
        alreadyRunCalcExecTrigger = true;
    }
public static void setAlreadyRunPLMLCTrigger()
    {
        System.debug('Setting alreadyRunPLMLCtrigger prevVal: ' + alreadyRunPLMLCTrigger);
        alreadyRunPLMLCTrigger = true;
    }
    
public static void setAlreadyRunReLeadSHTrigger()
    {
        System.debug('Setting alreadyRunReLeadSHtrigger prevVal: ' + alreadyRunReLeadSHTrigger);
        alreadyRunReLeadSHTrigger = true;
    }
    
public static void setAlreadyRunGlobalAccSHTrigger()
    {
        System.debug('Setting alreadyRunGlobalAccSHtrigger prevVal: ' + alreadyRunGlobalAccSHTrigger);
        alreadyRunGlobalAccSHTrigger = true;
    }
    
    




public static void setAlreadyRunmaintenancebatchTrigger()
    {
        System.debug('Setting alreadyRunmaintenancebatchtrigger prevVal: ' + alreadyRunmaintenancebatchTrigger);
        alreadyRunmaintenancebatchTrigger = true;
    }
public static void setAlreadyRunLead18CharTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunLead18CharTrigger);
        alreadyRunLead18CharTrigger = true;
    }

public static void setAlreadyRunContact18CharTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunContact18CharTrigger);
        alreadyRunContact18CharTrigger = true;
    }

public static void setAlreadyRunOpp18CharTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunOpp18CharTrigger);
        alreadyRunOpp18CharTrigger = true;
    }

public static void setAlreadyRunMDF18CharTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunMDF18CharTrigger);
        alreadyRunMDF18CharTrigger = true;
    }





public static void setAlreadyRunContactTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunContactTrigger);
        alreadyRunContactTrigger = true;
    }


public static void setAlreadyRunRefreshSharesTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunRefreshSharesTrigger);
        alreadyRunRefreshSharesTrigger = true;
    }


public static void setAlreadyRunMDFResetSharesTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunMDFResetSharesTrigger);
        alreadyRunMDFResetSharesTrigger = true;
    }


public static void setAlreadyRunPartnerChangeonOppTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunPartnerChangeonOppTrigger);
        alreadyRunPartnerChangeonOppTrigger = true;
    }


 public static void setAlreadyRunLockStageTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunLockStageTrigger);
        alreadyRunLockStageTrigger = true;
    }


  public static void setAlreadyRunSetPCSelectTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunSetPCSelectTrigger);
        alreadyRunSetPCSelectTrigger = true;
    }
  public static void setAlreadyRunComparetoStdContactsTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunComparetoStdContactsTrigger);
        alreadyRunComparetoStdContactsTrigger = true;
    }
   public static void setAlreadyRunCIfromAcctoLeadTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunCIfromAcctoLeadTrigger);
        alreadyRunCIfromAcctoLeadTrigger = true;
    }
 
  public static void setAlreadyRunCreatePContactTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunCreatePContactTrigger);
        alreadyRunCreatePContactTrigger = true;
    }
 
  public static void setAlreadyRunUpdateAPLNTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunUpdateAPLNTrigger);
        alreadyRunUpdateAPLNTrigger = true;
    }
 
  public static void setAlreadyRunInitializeAPLNTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunInitializeAPLNTrigger);
        alreadyRunInitializeAPLNTrigger = true;
    }
 
   public static void setAlreadyRunPlanHorizonTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunPlanHorizonTrigger);
        alreadyRunPlanHorizonTrigger = true;
    }
    
   public static void setAlreadyRunoppchgtrackTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunoppchgtrackTrigger);
        alreadyRunoppchgtrackTrigger = true;
    }
    
    public static void setAlreadyRunMaintainAcctoAPLNLinksTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunMaintainAcctoAPLNLinksTrigger);
        alreadyRunMaintainAcctoAPLNLinksTrigger = true;
    }
    

public static void setAlreadyRunMaintainOpptoAPLNLinksTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunMaintainOpptoAPLNLinksTrigger);
        alreadyRunMaintainOpptoAPLNLinksTrigger = true;
    }
    

    public static void setAlreadyRunMDFTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunMDFTrigger);
        alreadyRunMDFTrigger = true;
    }
    
    public static void setAlreadyRunLeadTrigger() 
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunLeadTrigger);
        alreadyRunLeadTrigger = true;
    }
    
    public static void setAlreadyRunMDFRequestTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunMDFRequestTrigger);
        alreadyRunMDFRequestTrigger = true;
    }
    
    public static void setAlreadyRunOpportunityRevTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunOpportunityRevTrigger);
        alreadyRunOpportunityRevTrigger = true;
    }

    public static void setAlreadyRunOpportunityTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunOpportunityTrigger);
        alreadyRunOpportunityTrigger = true;
    }
    public static void clearAlreadyRunOpportunityTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunOpportunityTrigger);
        alreadyRunOpportunityTrigger = false;
    }
   public static void setAlreadyRunOppShrReinsertTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunOppShrReinsertTrigger);
        alreadyRunOppShrReinsertTrigger = true;
    }

    public static void setAlreadyRunAccountTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunAccountTrigger);
        alreadyRunAccountTrigger = true;
    }

    public static void clearAlreadyRunAccountTrigger()
    {
        System.debug('Clearing alreadyRun trigger prevVal: ' + alreadyRunAccountTrigger);
        alreadyRunAccountTrigger = false;
    }

   public static void setAlreadyRunMDFRequestCurTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunMDFRequestCurTrigger);
        alreadyRunMDFRequestCurTrigger = true;
    }
 

public static void setAlreadyRunLeadCIstoAccountTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunLeadCIstoAccountTrigger);
        alreadyRunLeadCIstoAccountTrigger = true;
    }
 
public static void setAlreadyRunSaveOppShrsTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunSaveOppShrsTrigger);
        alreadyRunSaveOppShrsTrigger = true;
    }
public static void setAlreadyRunCompetitionTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunCompetitionTrigger);
        alreadyRunCompetitionTrigger = true;
    }
public static void setAlreadyRunOppCurChgTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunOppCurChgTrigger);
        alreadyRunOppCurChgTrigger = true;
    }
public static void clearAlreadyRunOppCurChgTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunOppCurChgTrigger);
        alreadyRunOppCurChgTrigger = false;
    }
public static void setAlreadyRunLeadLightTrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunLeadLightTrigger);
        alreadyRunLeadLightTrigger = true;
    }

public static void setAlreadyRunUpdAccLinkonCITrigger()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' + alreadyRunUpdAccLinkonCITrigger);
        alreadyRunUpdAccLinkonCITrigger = true;
    }

 
public static void setAlreadyRunOpportuniyTriggerforClone()
    {
        System.debug('Setting alreadyRun trigger prevVal: ' +  alreadyRunOpportuniyTriggerforClone );
         alreadyRunOpportuniyTriggerforClone = true;
       
    }
    
    
    

 public static void clearAlreadyRunOpportuniyTriggerforClone()
    {
        System.debug('Clear alreadyRun trigger prevVal: ' +  alreadyRunOpportuniyTriggerforClone );
         alreadyRunOpportuniyTriggerforClone = false;
       
    }
 
 public static void setAlredyRunupdateOnAfterEventOpportunity()
 {
      System.debug('alredyRunupdateOnAfterEventOpportunity: ' +  alredyRunupdateOnAfterEventOpportunity );
     alredyRunupdateOnAfterEventOpportunity = true;
 }
    
    
 Public static void setalradyRunOnBeforeUpdateOnAccount()  {
        System.debug('hasalradyRunOnBeforeUpdateOnAccount value: ' + alradyRunOnBeforeUpdateOnAccount );
         alradyRunOnBeforeUpdateOnAccount = true;
    }
    
    public static void setalreadyRunupdateFieldsOnOpportunity(){
        system.debug('alreadyRunupdateFieldsOnOpportunity value:'+alreadyRunupdateFieldsOnOpportunity);
        alreadyRunupdateFieldsOnOpportunity = true;
    }
    
    public static void setalreadyRunCreatePSEAccountTeamMember(){
        system.debug('alreadyRunCreatePSEAccountTeamMember value:'+alreadyRunCreatePSEAccountTeamMember);
        alreadyRunCreatePSEAccountTeamMember = true;
    }
    
    
    
    public static testMethod void testAvoidMethods()
    {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDFTrigger();
        boolean hasRun2 = avoidRecursiveCalls.hasAlreadyRunMDFRequestTrigger();
        boolean hasRun3 = avoidRecursiveCalls.hasAlreadyRunOpportunityRevTrigger();
        boolean hasRun4 = avoidRecursiveCalls.hasAlreadyRunAccountTrigger();
        boolean hasRun5 = avoidRecursiveCalls.hasAlreadyRunMaintainAcctoAPLNLinksTrigger();
        boolean hasRun6 = avoidRecursiveCalls.hasAlreadyRunLeadTrigger();
        boolean hasRun7 = avoidRecursiveCalls.hasAlreadyRunMDFRequestCurTrigger();
//  8 is defined in test method below and is Oppshrs
        boolean hasRun9 = avoidRecursiveCalls.hasAlreadyRunCompetitionTrigger();
        boolean hasRun10 = avoidRecursiveCalls.hasAlreadyRunOppCurChgTrigger();
        boolean hasRun11 = avoidRecursiveCalls.hasAlreadyRunLeadCIstoAccountTrigger();
        boolean hasRun12 = avoidRecursiveCalls.hasAlreadyRunLeadLightTrigger();
        boolean hasRun13 = avoidRecursiveCalls.hasAlreadyRunUpdAccLinkonCITrigger();
//  14 is defined in test method below and is OppShrsreinsert
        boolean hasRun15 = avoidRecursiveCalls.hasAlreadyRunOpportunityTrigger();
        boolean hasRun16 = avoidRecursiveCalls.hasAlreadyRunMaintainOpptoAPLNLinksTrigger();
         boolean hasRun17 = avoidRecursiveCalls.hasAlreadyRunoppchgtrackTrigger();
         boolean hasRun18 = avoidRecursiveCalls.hasAlreadyRunPlanHorizonTrigger();     
         boolean hasRun19 = avoidRecursiveCalls.hasAlreadyRunInitializeAPLNTrigger();
         boolean hasRun20 = avoidRecursiveCalls.hasAlreadyRunUpdateAPLNTrigger();         
         boolean hasRun21 = avoidRecursiveCalls.hasAlreadyRunCreatePContactTrigger();                  
         boolean hasRun22 = avoidRecursiveCalls.hasAlreadyRunCIfromAcctoLeadTrigger();  
         boolean hasRun23 = avoidRecursiveCalls.hasAlreadyRunComparetoStdContactsTrigger();  
         boolean hasRun24 = avoidRecursiveCalls.hasAlreadyRunSetPCSelectTrigger();          
         boolean hasRun25 = avoidRecursiveCalls.hasAlreadyRunLockStageTrigger();          
         boolean hasRun26 = avoidRecursiveCalls.hasAlreadyRunPartnerChangeonOppTrigger();
         boolean hasRun27 = avoidRecursiveCalls.hasAlreadyRunMDFResetSharesTrigger();            
         boolean hasRun28 = avoidRecursiveCalls.hasAlreadyRunRefreshSharesTrigger(); 
         boolean hasRun29 = avoidRecursiveCalls.hasAlreadyRunContactTrigger();          
         boolean hasRun30 = avoidRecursiveCalls.hasAlreadyRunLead18CharTrigger();          
         boolean hasRun31 = avoidRecursiveCalls.hasAlreadyRunContact18CharTrigger();         
         boolean hasRun32 = avoidRecursiveCalls.hasAlreadyRunOpp18CharTrigger();
         boolean hasRun33 = avoidRecursiveCalls.hasAlreadyRunMDF18CharTrigger();  
         boolean hasRun34 = avoidRecursiveCalls.hasAlreadyRunmaintenancebatchTrigger();           
         boolean hasRun35 = avoidRecursiveCalls.hasAlreadyRunCalcExecTrigger();           
         boolean hasRun36 = avoidRecursiveCalls.hasAlreadyRunPLMLCTrigger();           
         boolean hasRun37 = avoidRecursiveCalls.hasAlreadyRunReLeadSHTrigger();           
         boolean hasRun38 = avoidRecursiveCalls.hasAlreadyRunGlobalAccSHTrigger();           
         boolean hasRun39 = avoidRecursiveCalls.hasAlreadyRuncalcnuminstallsTrigger();           
         boolean hasRun40 = avoidRecursiveCalls.hasAlreadyRunsyncmailTrigger();
         boolean hasRun41 = avoidRecursiveCalls.hasAlreadyRunmdfsharestorequestsTrigger();
         boolean hasRun42 = avoidRecursiveCalls.hasAlreadyRunAcc18CharTrigger();                   
         boolean hasRun43 = avoidRecursiveCalls.hasAlreadyRunPartnerImpExpTrigger(); 
         boolean hasRun44 = avoidRecursiveCalls.hasAlreadyRunleadshsvTrigger(); 
         boolean hasRun45 = avoidRecursiveCalls.hasAlreadyRunNCOstatTrigger(); 
         boolean hasRun46 = avoidRecursiveCalls.hasAlreadyRunNCOOppCloseTrigger();         
          boolean hasRun47 = avoidRecursiveCalls.hasAlreadyRunMDFshinsTrigger(); 
          boolean hasRun48 = avoidRecursiveCalls.hasAlreadyRunBuildAccountSiteNameTrigger(); 
           boolean hasRun49 = avoidRecursiveCalls.hasAlreadyRuncalcmesgroupTrigger(); 
           boolean hasRun50 = avoidRecursiveCalls.hasalreadyRunmdfsharestoClaimsTrigger();         
            boolean hasRun51 = avoidRecursiveCalls.hasalreadyRunSetPCNumSharesTrigger();         
             boolean hasRun52 = avoidRecursiveCalls.hasalreadyRunMDFSharestoOneClaimTrigger();                                               
             boolean hasRun53 = avoidRecursiveCalls.hasalreadyRunOOCCheckTrigger();         
              boolean hasRun54 = avoidRecursiveCalls.hasalreadyRunSetPartnerAccountonPCTrigger();         
              boolean hasRun55 = avoidRecursiveCalls.hasalreadyRunFixOldCompsTrigger();         
              boolean hasRun56 = avoidRecursiveCalls.hasalreadyRunMaintenanceOPPTrigger();        
              boolean hasRun57 = avoidRecursiveCalls.hasalreadyRunUpdmesgroupTrigger();        
              boolean hasRun58 = avoidRecursiveCalls.hasalreadyRunSavePartnerTasksTrigger();        
                boolean hasRun59 = avoidRecursiveCalls.hasalreadyRunAPLNHRZTrigger();        
                boolean hasRun60 = avoidRecursiveCalls.hasalreadyRunInstallDivisionTrigger(); 
                boolean hasRun61 = avoidRecursiveCalls.hasalreadyRunCONEVALTrigger(); 
                 boolean hasRun62 = avoidRecursiveCalls.hasalreadyRunAddRepsharetoInstallTrigger();               
                 boolean hasrun64 =  avoidRecursiveCalls.hasalredyRunupdateOnAfterEventOpportunity();
                 boolean hasrun65 = avoidRecursiveCalls.hasalradyRunOnBeforeUpdateOnAccount();
        boolean hasrun66 = avoidRecursiveCalls.hasalreadyRunupdateFieldsOnOpportunity();
        boolean hasrun67 = avoidRecursiveCalls.hasalreadyRunCreatePSEAccountTeamMember();
                      
        System.assert( !hasRun1 );
        System.assert( !hasRun2 );
        System.assert( !hasRun3 );
        System.assert( !hasRun4 );
      //  System.assert( !hasRun5 );
        System.assert( !hasRun6 );
        System.assert( !hasRun7 );
        System.assert( !hasRun9 );
        System.assert( !hasRun10 );
        System.assert( !hasRun11 );
        System.assert( !hasRun12 );
        System.assert( !hasRun13 );
        System.assert( !hasRun15 );
        System.assert( !hasRun16 );
        System.assert( !hasRun17 );
        System.assert( !hasRun18);
        System.assert( !hasRun19);
        System.assert( !hasRun20);        // Now set and recover
        System.assert( !hasRun21);
        System.assert( !hasRun22);
        System.assert( !hasRun23);        
        System.assert( !hasRun24);                  
        System.assert( !hasRun25); 
        System.assert( !hasRun26); 
        System.assert( !hasRun27);       
        System.assert( !hasRun28);         
        System.assert( !hasRun29);         
        System.assert( !hasRun30);         
         System.assert( !hasRun31);         
         System.assert( !hasRun32);         
         System.assert( !hasRun33);         
         System.assert( !hasRun34);     
         System.assert( !hasRun35);     
                  System.assert( !hasRun36);     
                  System.assert( !hasRun37);     
                  System.assert( !hasRun38);     
                  System.assert( !hasRun39);     
                  System.assert( !hasRun40);                     
                   System.assert( !hasRun41); 
                  System.assert( !hasRun42);   
                 System.assert( !hasRun43);   
                 System.assert( !hasRun44);                   
                 System.assert( !hasRun45);  
                  System.assert( !hasRun46);                 
                  System.assert( !hasRun47);     
                  System.assert( !hasRun48);                    
                  System.assert( !hasRun49);                    
                   System.assert( !hasRun50);    
                    System.assert( !hasRun51);    
                     System.assert( !hasRun52);                  
                      System.assert( !hasRun53);                  
                       System.assert( !hasRun54);    
                       System.assert( !hasRun55); 
                       System.assert( !hasRun56); 
                       System.assert( !hasRun57); 
                       System.assert( !hasRun58); 
                    System.assert( !hasRun59);
                    System.assert( !hasRun60);
                    System.assert( !hasRun61); 
                    System.assert( !hasRun62);
                    System.assert(!hasRun64);
                    System.assert(!hasrun65);
        system.assert(!hasrun66);
        system.assert(!hasrun67);


avoidRecursiveCalls.setAlreadyRunSavePartnerTasksTrigger();
                                                                                                                   
avoidRecursiveCalls.setAlreadyRunMDFTrigger();
avoidRecursiveCalls.setAlreadyRunMDFRequestTrigger();
avoidRecursiveCalls.setAlreadyRunOpportunityRevTrigger();
avoidRecursiveCalls.setAlreadyRunOpportunityTrigger();
avoidRecursiveCalls.setAlreadyRunAccountTrigger();
avoidRecursiveCalls.setAlreadyRunLeadTrigger();
avoidRecursiveCalls.setAlreadyRunMDFRequestCurTrigger();
avoidRecursiveCalls.setAlreadyRunCompetitionTrigger();
avoidRecursiveCalls.setAlreadyRunOppCurChgTrigger();
avoidRecursiveCalls.setAlreadyRunLeadCIstoAccountTrigger();
avoidRecursiveCalls.setAlreadyRunLeadLightTrigger();
avoidRecursiveCalls.setAlreadyRunUpdAccLinkonCITrigger();
avoidRecursiveCalls.setAlreadyRunMaintainOpptoAPLNLinksTrigger();
  avoidRecursiveCalls.setAlreadyRunMaintainAcctoAPLNLinksTrigger();
avoidRecursiveCalls.setAlreadyRunoppchgtrackTrigger();
avoidRecursiveCalls.setAlreadyRunPlanHorizonTrigger();
avoidRecursiveCalls.setAlreadyRunInitializeAPLNTrigger();
avoidRecursiveCalls.setAlreadyRunUpdateAPLNTrigger();
avoidRecursiveCalls.setAlreadyRuncreatePContactTrigger();
avoidRecursiveCalls.setAlreadyRunCIfromAcctoLeadTrigger();
avoidRecursiveCalls.setAlreadyRunComparetoStdContactsTrigger();
avoidRecursiveCalls.setAlreadyRunSetPCSelectTrigger();
avoidRecursiveCalls.setAlreadyRunLockStageTrigger();
avoidRecursiveCalls.setAlreadyRunPartnerChangeonOppTrigger();
avoidRecursiveCalls.setAlreadyRunMDFResetSharesTrigger(); 
avoidRecursiveCalls.setAlreadyRunRefreshSharesTrigger(); 
avoidRecursiveCalls.setAlreadyRunContactTrigger(); 
avoidRecursiveCalls.setAlreadyRunLead18CharTrigger(); 
avoidRecursiveCalls.setAlreadyRunContact18CharTrigger(); 
avoidRecursiveCalls.setAlreadyRunOpp18CharTrigger(); 
avoidRecursiveCalls.setAlreadyRunMDF18CharTrigger(); 
avoidRecursiveCalls.setAlreadyRunmaintenancebatchTrigger(); 
avoidRecursiveCalls.setAlreadyRunCalcExecTrigger(); 
avoidRecursiveCalls.setAlreadyRunPLMLCTrigger(); 
avoidRecursiveCalls.setAlreadyRunReLeadSHTrigger(); 
avoidRecursiveCalls.setAlreadyRunGlobalAccSHTrigger(); 
avoidRecursiveCalls.setAlreadyRuncalcnuminstallsTrigger(); 
avoidRecursiveCalls.setAlreadyRunsyncmailTrigger(); 
avoidRecursiveCalls.setAlreadyRunmdfsharestorequestsTrigger(); 
avoidRecursiveCalls.setAlreadyRunAcc18CharTrigger(); 
avoidRecursiveCalls.setAlreadyRunPartnerImpExpTrigger(); 
avoidRecursiveCalls.setAlreadyRunleadshsvTrigger(); 
avoidRecursiveCalls.setAlreadyRunNCOstatTrigger(); 
avoidRecursiveCalls.setAlreadyRunNCOOppCloseTrigger(); 
avoidRecursiveCalls.setAlreadyRunMDFshinsTrigger(); 
avoidRecursiveCalls.setAlreadyRunBuildAccountSiteNameTrigger(); 
avoidRecursiveCalls.setAlreadyRuncalcmesgroupTrigger(); 
avoidRecursiveCalls.setalreadyRunmdfsharestoClaimsTrigger(); 
avoidRecursiveCalls.setalreadyRunSetPCNumSharesTrigger(); 
avoidRecursiveCalls.setalreadyRunMDFSharestoOneClaimTrigger(); 
avoidRecursiveCalls.setalreadyRunOOCCheckTrigger();
avoidRecursiveCalls.setalreadyRunSetPartnerAccountonPCTrigger();
avoidRecursiveCalls.setalreadyRunFixOldCompsTrigger();
avoidRecursiveCalls.setalreadyRunMaintenanceOPPTrigger();
avoidRecursiveCalls.setalreadyRunUpdmesgroupTrigger();
avoidRecursiveCalls.setalreadyRunSavePartnerTasksTrigger();
avoidRecursiveCalls.setalreadyRunAPLNHRZTrigger();
avoidRecursiveCalls.setalreadyRunInstallDivisionTrigger();
avoidRecursiveCalls.setalreadyRunCONEVALTrigger();
avoidRecursiveCalls.setalreadyRunAddRepsharetoInstallTrigger();

avoidRecursiveCalls.setAlredyRunupdateOnAfterEventOpportunity();
avoidRecursiveCalls.setalradyRunOnBeforeUpdateOnAccount();
avoidRecursiveCalls.setalreadyRunupdateFieldsOnOpportunity();
avoidRecursiveCalls.setalreadyRunCreatePSEAccountTeamMember();

hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDFTrigger();
hasRun2 = avoidRecursiveCalls.hasAlreadyRunMDFRequestTrigger();
hasRun3 = avoidRecursiveCalls.hasAlreadyRunOpportunityRevTrigger();
hasRun4 = avoidRecursiveCalls.hasAlreadyRunAccountTrigger();
hasRun5 = avoidRecursiveCalls.hasAlreadyRunMaintainAcctoAPLNLinksTrigger();
hasRun6 = avoidRecursiveCalls.hasAlreadyRunLeadTrigger();
hasRun7 = avoidRecursiveCalls.hasAlreadyRunMDFRequestCurTrigger();
hasRun9 = avoidRecursiveCalls.hasAlreadyRunCompetitionTrigger();
hasRun10 = avoidRecursiveCalls.hasAlreadyRunOppCurChgTrigger();
hasRun11 = avoidRecursiveCalls.hasAlreadyRunLeadCIstoAccountTrigger();
hasRun12 = avoidRecursiveCalls.hasAlreadyRunLeadLightTrigger();
hasRun13 = avoidRecursiveCalls.hasAlreadyRunUpdAccLinkonCITrigger();
hasRun15 = avoidRecursiveCalls.hasAlreadyRunOpportunityTrigger();
hasRun16 = avoidRecursiveCalls.hasAlreadyRunMaintainOpptoAPLNLinksTrigger();
hasRun17 = avoidRecursiveCalls.hasAlreadyRunoppchgtrackTrigger();
hasRun18 = avoidRecursiveCalls.hasAlreadyRunPlanHorizonTrigger();
hasRun19 = avoidRecursiveCalls.hasAlreadyRunInitializeAPLNTrigger();
hasRun20 = avoidRecursiveCalls.hasAlreadyRunUpdateAPLNTrigger();
hasRun21 = avoidRecursiveCalls.hasAlreadyRunCreatePContactTrigger();
hasRun22 = avoidRecursiveCalls.hasAlreadyRunCIfromAcctoLeadTrigger();
hasRun23 = avoidRecursiveCalls.hasAlreadyRunComparetoStdContactsTrigger();
hasRun24 = avoidRecursiveCalls.hasAlreadyRunSetPCSelectTrigger();
hasRun25 = avoidRecursiveCalls.hasAlreadyRunLockStageTrigger();
hasRun26 = avoidRecursiveCalls.hasAlreadyRunPartnerChangeonOppTrigger();
hasRun27 = avoidRecursiveCalls.hasAlreadyRunMDFResetSharesTrigger();
hasRun28 = avoidRecursiveCalls.hasAlreadyRunRefreshSharesTrigger();
hasRun29 = avoidRecursiveCalls.hasAlreadyRunContactTrigger();
hasRun30 = avoidRecursiveCalls.hasAlreadyRunLead18CharTrigger();
hasRun31 = avoidRecursiveCalls.hasAlreadyRunContact18CharTrigger();
hasRun32 = avoidRecursiveCalls.hasAlreadyRunOpp18CharTrigger();
hasRun33 = avoidRecursiveCalls.hasAlreadyRunMDF18CharTrigger();
hasRun34 = avoidRecursiveCalls.hasAlreadyRunmaintenancebatchTrigger();
hasRun35 = avoidRecursiveCalls.hasAlreadyRunCalcExecTrigger();
hasRun36 = avoidRecursiveCalls.hasAlreadyRunPLMLCTrigger();
hasRun37 = avoidRecursiveCalls.hasAlreadyRunReLeadSHTrigger();
hasRun38 = avoidRecursiveCalls.hasAlreadyRunGlobalAccSHTrigger();
hasRun39 = avoidRecursiveCalls.hasAlreadyRuncalcnuminstallsTrigger();
hasRun40 = avoidRecursiveCalls.hasAlreadyRunsyncmailTrigger();
hasRun41 = avoidRecursiveCalls.hasAlreadyRunmdfsharestorequestsTrigger();
hasRun42 = avoidRecursiveCalls.hasAlreadyRunAcc18CharTrigger();
hasRun43 = avoidRecursiveCalls.hasAlreadyRunPartnerImpExpTrigger();
hasRun44 = avoidRecursiveCalls.hasAlreadyRunleadshsvTrigger();
hasRun45 = avoidRecursiveCalls.hasAlreadyRunNCOstatTrigger();
hasRun46 = avoidRecursiveCalls.hasAlreadyRunNCOOppCLoseTrigger();
hasRun47 = avoidRecursiveCalls.hasAlreadyRunMDFshinsTrigger();
hasRun48 = avoidRecursiveCalls.hasAlreadyRunBuildAccountSiteNameTrigger();
hasRun49 = avoidRecursiveCalls.hasAlreadyRuncalcmesgroupTrigger();
hasRun50 = avoidRecursiveCalls.hasalreadyRunmdfsharestoClaimsTrigger();
hasRun51 = avoidRecursiveCalls.hasalreadyRunSetPCNumSharesTrigger();
hasRun52 = avoidRecursiveCalls.hasalreadyRunMDFSharestoOneClaimTrigger();
hasRun53 = avoidRecursiveCalls.hasalreadyRunOOCCheckTrigger();
hasRun54 = avoidRecursiveCalls.hasalreadyRunSetPartnerAccountonPCTrigger();
hasRun55 = avoidRecursiveCalls.hasalreadyRunFixOldCOmpsTrigger();
hasRun56 = avoidRecursiveCalls.hasalreadyRunMaintenanceOPPTrigger();
hasRun57 = avoidRecursiveCalls.hasalreadyRunUpdmesgroupTrigger();
hasRun58 = avoidRecursiveCalls.hasalreadyRunSavePartnerTasksTrigger();
hasRun59 = avoidRecursiveCalls.hasalreadyRunAPLNHRZTrigger();
hasRun60 = avoidRecursiveCalls.hasalreadyRunInstallDivisionTrigger();
hasRun61 = avoidRecursiveCalls.hasalreadyRunCONEVALTrigger();
hasRun62 = avoidRecursiveCalls.hasalreadyRunAddRepsharetoInstallTrigger();
hasrun64 =  avoidRecursiveCalls.hasalredyRunupdateOnAfterEventOpportunity();
hasrun65 = avoidRecursiveCalls.hasalradyRunOnBeforeUpdateOnAccount();
hasrun66 = avoidRecursiveCalls.hasalreadyRunupdateFieldsOnOpportunity();
hasrun67 = avoidRecursiveCalls.hasalreadyRunCreatePSEAccountTeamMember();
        
        System.assert( hasRun1 );
        System.assert( hasRun2 );
        System.assert( hasRun3 );
        System.assert( hasRun4 );
        System.assert( hasRun5 );
        System.assert( hasRun6 );
        System.assert( hasRun7 );

System.assert( hasRun9 );
System.assert( hasRun10 );
System.assert( hasRun11 );
System.assert( hasRun12 );
System.assert( hasRun13 );
System.assert( hasRun15 );
System.assert( hasRun16 );
System.assert( hasRun17 );
System.assert( hasRun18 );
System.assert( hasRun19 );
System.assert( hasRun20 );    
System.assert( hasRun21 ); 
System.assert( hasRun22 ); 
System.assert( hasRun23 ); 
System.assert( hasRun24 ); 
System.assert( hasRun25 ); 
System.assert( hasRun26 ); 
System.assert( hasRun27 ); 
System.assert( hasRun28 ); 
System.assert( hasRun29 );
System.assert( hasRun30 );
System.assert( hasRun31 );
System.assert( hasRun32 );
System.assert( hasRun33 );
System.assert( hasRun34 );
System.assert( hasRun35 );
System.assert( hasRun36 );
System.assert( hasRun37 );
System.assert( hasRun38 );
System.assert( hasRun39 );
System.assert( hasRun40 );
System.assert( hasRun41 );
System.assert( hasRun42 );
System.assert( hasRun43 );
System.assert( hasRun44 );
System.assert( hasRun45 );
System.assert( hasRun46 );
System.assert( hasRun47 );
System.assert( hasRun48 );
System.assert( hasRun49 );
System.assert( hasRun50 );
System.assert( hasRun51 );
System.assert( hasRun52 );

System.assert( hasRun53 );
System.assert( hasRun54 );
System.assert( hasRun55 );
System.assert( hasRun56 );
System.assert( hasRun57 );
System.assert( hasRun58 );
System.assert( hasRun59 );
System.assert( hasRun60 );
System.assert( hasRun61 );
System.assert( hasRun62 );
System.assert( hasRun64 );
System.assert( hasRun65 );
system.assert(hasrun66);
system.assert(hasrun67);
} 
    

     public static testMethod void avoidRecShareTest()
    {
        boolean hasRun8 = avoidRecursiveCalls.hasAlreadyRunSaveOppShrsTrigger();
        boolean hasRun14 = avoidRecursiveCalls.hasAlreadyRunOppShrReinsertTrigger();
        
        hasRun8 = avoidRecursiveCalls.hasAlreadyRunSaveOppShrsTrigger();
        hasRun14 = avoidRecursiveCalls.hasAlreadyRunOppShrReinsertTrigger();
        System.assert( !hasRun8 );
        System.assert( !hasRun14 );
        
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunSaveOppShrsTrigger();   
        avoidRecursiveCalls.setAlreadyRunOppShrReinsertTrigger();
        hasRun8 = avoidRecursiveCalls.hasAlreadyRunSaveOppShrsTrigger();
        hasRun14 = avoidRecursiveCalls.hasAlreadyRunOppShrReinsertTrigger();

        System.assert( hasRun8 );
        System.assert( hasRun14 );
    }
    
    public static testMethod void accountTriggerTest()
    {
        Account act = new Account();
        act.Name = 'Jeff Account Trigger Test';
        act.RecordTypeId = '012300000000sQH';
        act.Physical_City__c = 'Arlington';
        act.Physical_State_Province_US_CA_Only__c = 'MO';
        act.Physical_Country__c = 'USA';
        insert act;
        
        act = [Select Site from Account where Name = 'Jeff Account Trigger Test'];
        System.assert( act.Site == 'USA-MO-Arlington' );
    } // end of accounttriggertest 

 public static testMethod void avoidcase1() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDFTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDFTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunMDFTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDFTrigger();
        System.assert( hasRun1 );
    } // end of test method
        


public static testMethod void avoidcase2() {
        boolean hasRun2 = avoidRecursiveCalls.hasAlreadyRunOpportunityRevTrigger();
        hasRun2 = avoidRecursiveCalls.hasAlreadyRunOpportunityRevTrigger();
        System.assert( !hasRun2 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunOpportunityRevTrigger();   
        hasRun2 = avoidRecursiveCalls.hasAlreadyRunOpportunityRevTrigger();
        System.assert( hasRun2 );
    } // end of test method
 

 
 public static testMethod void avoidcase3() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyrunAccountTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyrunAccountTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyrunAccountTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyrunAccountTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase4() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyrunMaintainAcctoAPLNLinksTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyrunMaintainAcctoAPLNLinksTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyrunMaintainAcctoAPLNLinksTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyrunMaintainAcctoAPLNLinksTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase5() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyrunLeadTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyrunLeadTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyrunLeadTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyrunLeadTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase6() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyrunMDFRequestCurTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyrunMDFRequestCurTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyrunMDFRequestCurTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyrunMDFRequestCurTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase7() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunSaveOppShrsTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunSaveOppShrsTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunSaveOppShrsTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunSaveOppShrsTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase8() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunCompetitionTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunCompetitionTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunCompetitionTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunCompetitionTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase9() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunOppCurChgTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunOppCurChgTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunOppCurChgTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunOppCurChgTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase10() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunLeadCIstoAccountTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunLeadCIstoAccountTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunLeadCIstoAccountTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunLeadCIstoAccountTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase11() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunLeadLightTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunLeadLightTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunLeadLightTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunLeadLightTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase12() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunUpdAccLinkonCITrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunUpdAccLinkonCITrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunUpdAccLinkonCITrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunUpdAccLinkonCITrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase13() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunOppShrReinsertTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunOppShrReinsertTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunOppShrReinsertTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunOppShrReinsertTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase14() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunOpportunityTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunOpportunityTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunOpportunityTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunOpportunityTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase15() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunMaintainOpptoAPLNLinksTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunMaintainOpptoAPLNLinksTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunMaintainOpptoAPLNLinksTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunMaintainOpptoAPLNLinksTrigger();
        System.assert( hasRun1 );
    } // end of test method


 
     public static testMethod void avoidcase16() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunoppchgtrackTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunoppchgtrackTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunoppchgtrackTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunoppchgtrackTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase17() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunPlanHorizonTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunPlanHorizonTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunPlanHorizonTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunPlanHorizonTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase18() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunInitializeAPLNTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunInitializeAPLNTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunInitializeAPLNTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunInitializeAPLNTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase19() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunUpdateAPLNTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunUpdateAPLNTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunUpdateAPLNTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunUpdateAPLNTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase20() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunCreatePContactTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunCreatePContactTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunCreatePContactTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunCreatePContactTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase21() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunCIfromAcctoLeadTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunCIfromAcctoLeadTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunCIfromAcctoLeadTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunCIfromAcctoLeadTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase22() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunComparetoStdContactsTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunComparetoStdContactsTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunComparetoStdContactsTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunComparetoStdContactsTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase23() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunSetPCSelectTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunSetPCSelectTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunSetPCSelectTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunSetPCSelectTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase24() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunLockStageTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunLockStageTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunLockStageTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunLockStageTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase25() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunPartnerChangeonOppTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunPartnerChangeonOppTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunPartnerChangeonOppTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunPartnerChangeonOppTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase26() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDFResetSharesTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDFResetSharesTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunMDFResetSharesTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDFResetSharesTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase27() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunRefreshSharesTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunRefreshSharesTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunRefreshSharesTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunRefreshSharesTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase28() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunContactTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunContactTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunContactTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunContactTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase29() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunLead18CharTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunLead18CharTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunLead18CharTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunLead18CharTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase30() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunContact18CharTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunContact18CharTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunContact18CharTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunContact18CharTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase31() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunOpp18CharTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunOpp18CharTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunOpp18CharTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunOpp18CharTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase32() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDF18CharTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDF18CharTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunMDF18CharTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDF18CharTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase33() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunmaintenancebatchTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunmaintenancebatchTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunmaintenancebatchTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunmaintenancebatchTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase341() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunCalcExecTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunCalcExecTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunCalcExecTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunCalcExecTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase35() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunPLMLCTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunPLMLCTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunPLMLCTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunPLMLCTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase36() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunReLeadSHTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunReLeadSHTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunReLeadSHTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunReLeadSHTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase37() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunGlobalAccSHTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunGlobalAccSHTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunGlobalAccSHTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunGlobalAccSHTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase38() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRuncalcnuminstallsTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRuncalcnuminstallsTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRuncalcnuminstallsTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRuncalcnuminstallsTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase39() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunsyncmailTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunsyncmailTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunsyncmailTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunsyncmailTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase40() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunmdfsharestorequestsTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunmdfsharestorequestsTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunmdfsharestorequestsTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunmdfsharestorequestsTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase41() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunNCOOppCloseTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunNCOOppCloseTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunNCOOppCloseTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunNCOOppCloseTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase42() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunNCOstatTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunNCOstatTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunNCOstatTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunNCOstatTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase43() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunleadshsvTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunleadshsvTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunleadshsvTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunleadshsvTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase44() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunPartnerImpExpTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunPartnerImpExpTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunPartnerImpExpTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunPartnerImpExpTrigger();
        System.assert( hasRun1 );
    } // end of test method
     public static testMethod void avoidcase45() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunAcc18CharTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunAcc18CharTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunAcc18CharTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunAcc18CharTrigger();
        System.assert( hasRun1 );
    } // end of test method
     
   public static testMethod void avoidcase48() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunBuildAccountSiteNameTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunBuildAccountSiteNameTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunBuildAccountSiteNameTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunBuildAccountSiteNameTrigger();
        System.assert( hasRun1 );
    } // end of test method
     
   public static testMethod void avoidcase49() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRuncalcmesgroupTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRuncalcmesgroupTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRuncalcmesgroupTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRuncalcmesgroupTrigger();
        System.assert( hasRun1 );
    } // end of test method
     
   public static testMethod void avoidcase50() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunmdfsharestoclaimsTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunmdfsharestoclaimsTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunmdfsharestoclaimsTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunmdfsharestoclaimsTrigger();
        System.assert( hasRun1 );
    } // end of test method
   
   public static testMethod void avoidcase51() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunSetPCNumSharesTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunSetPCNumSharesTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunSetPCNumSharesTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunSetPCNumSharesTrigger();
        System.assert( hasRun1 );
    } // end of test   
    
  public static testMethod void avoidcase52() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDFSharestoOneClaimTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDFSharestoOneClaimTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunMDFSharestoOneClaimTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunMDFSharestoOneClaimTrigger();
        System.assert( hasRun1 );
    } // end of test method
 
  public static testMethod void avoidcase53() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunOOCCheckTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunOOCCheckTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunOOCCheckTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunOOCCheckTrigger();
        System.assert( hasRun1 );
    } // end of test method

  public static testMethod void avoidcase54() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunSetPartnerAccountonPCTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunSetPartnerAccountonPCTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunSetPartnerAccountonPCTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunSetPartnerAccountonPCTrigger();
        System.assert( hasRun1 );
    } // end of test method

    
 public static testMethod void avoidcase55() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunFixOldCompsTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunFixOldCompsTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunFixOldCompsTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunFixOldCompsTrigger();
        System.assert( hasRun1 );
    } // end of test method

    
 public static testMethod void avoidcase56() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunMaintenanceOPPTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunMaintenanceOPPTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunMaintenanceOPPTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunMaintenanceOPPTrigger();
        System.assert( hasRun1 );
    } // end of test method

      
  public static testMethod void avoidcase57() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunUpdmesgroupTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunUpdmesgroupTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunUpdmesgroupTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunUpdmesgroupTrigger();
        System.assert( hasRun1 );
    } // end of test method

  public static testMethod void avoidcase58() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunSavePartnerTasksTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunSavePartnerTasksTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunSavePartnerTasksTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunSavePartnerTasksTrigger();
        System.assert( hasRun1 );
    } // end of test method

public static testMethod void avoidcase59() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunAPLNHRZTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunAPLNHRZTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunAPLNHRZTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunAPLNHRZTrigger();
        System.assert( hasRun1 );
    } // end of test method

public static testMethod void avoidcase60() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunInstallDivisionTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunInstallDivisionTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunInstallDivisionTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunInstallDivisionTrigger();
        System.assert( hasRun1 );
    } // end of test method

 
public static testMethod void avoidcase61() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunCONEVALTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunCONEVALTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunCONEVALTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunCONEVALTrigger();
        System.assert( hasRun1 );
    } // end of test method

    
 public static testMethod void avoidcase62() {
        boolean hasRun1 = avoidRecursiveCalls.hasAlreadyRunAddRepsharetoInstallTrigger();
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunAddRepsharetoInstallTrigger();
        System.assert( !hasRun1 );
        // Now set the Indicator and check it.
        avoidRecursiveCalls.setAlreadyRunAddRepsharetoInstallTrigger();   
        hasRun1 = avoidRecursiveCalls.hasAlreadyRunAddRepsharetoInstallTrigger();
        System.assert( hasRun1 );
    } // end of test method

       
    
         
} // end of class