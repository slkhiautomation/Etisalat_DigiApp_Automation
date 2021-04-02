Feature: Plans and Add ons feature file

  Background: user has opened an application and successfully logged in
    Given User has opened an application
#    When user click on "skip" button on "StartingPage"
#    When user click on "loginWithUsername" button on "StartingPage"
#    And user enter text "PlansAndAddonsUsername" in "usernameField" on "LoginPage"
#    And user enter text "PlansAndAddonsPassword" in "passwordField" on "LoginPage"
#    And user dismiss keyboard
#    When user click on "login" button on "LoginPage"
#    When user click on "notNow" button on "PlansAndAddonsPage"

#    When user click on "EtisalatShopMenu2" on "PlansAndAddonsPage"
    #When user click on "AddOns" on "PlansAndAddonsPage"
    #When user click on "AddOnsTab" on "PlansAndAddonsPage"
    #When user click on "AddOnsDrop" on "PlansAndAddonsPage"
    #When user click on "AddOnsSelect" on "PlansAndAddonsPage"
    #When user click on "Subcribe" on "PlansAndAddonsPage"





  @Plans_and_Addons_Scenario_1
  Scenario: Verify manage and addon accordion for addon which is having multiple instances.
    When user click on "EtisalatShop" on "PlansAndAddonsPage"
    #And user scroll to "postPaidPlan" on "PlansAndAddonsPage"
    And user scroll till text "1200"
    When user select on "givenPlan" on "PlansAndAddonsPage"

    Then Assert that "planName" appear on "PlansAndAddonsPage"
    #Then Assert that "monthlyTarrif" appear on "PlansAndAddonsPage"
    Then Assert that "localData" appear on "PlansAndAddonsPage"
    Then Assert that "flexiMinutes" appear on "PlansAndAddonsPage"
    Then Assert that "wifiHours" appear on "PlansAndAddonsPage"
    Then Assert that "contract" appear on "PlansAndAddonsPage"
    Then Assert that "tarrifAndrental" appear on "PlansAndAddonsPage"

    #ExpandingOptions
    Then Assert that "AddOncurrentNumber" appear on "PlansAndAddonsPage"
    Then Assert that "ExpandIcon" appear on "PlansAndAddonsPage"
    When user click on "ExpandIcon" on "PlansAndAddonsPage"
    Then Assert that "CurrentAddOn" appear on "PlansAndAddonsPage"
    Then Assert that "details" appear on "PlansAndAddonsPage"

 #Validate On the “manage” page for “add-on” accordion, customer will have the capability to see

    When user click on "EtisalatShop" on "PlansAndAddonsPage"
    And user click on "currentUsage" on "PlansAndAddonsPage"
    And user click on "manageTab" on "PlansAndAddonsPage"
    When user click on "myaddOns" on "PlansAndAddonsPage"
    Then Assert that "addOnName" appear on "PlansAndAddonsPage"
    Then Assert that "addOnQuanity" appear on "PlansAndAddonsPage"
    Then Assert that "quanityPrice" appear on "PlansAndAddonsPage"
    Then Assert that "frequency" appear on "PlansAndAddonsPage"
    When user click on "addOn" button on "PlansAndAddonsPage"
    Then Assert that "manageSubscription" appear on "PlansAndAddonsPage"
    Then Assert that "CancelSubscription" appear on "PlansAndAddonsPage"



  @Plans_and_Addons_Scenario_2
  Scenario:Verify subscription of same addon 2 quantity additionally from Addon accordion for addon which is having multiple instances.
    When user click on "EtisalatShop" on "PlansAndAddonsPage"
    And user select on "givenPlan" on "PlansAndAddonsPage"
    Then Assert that "planName" appear on "PlansAndAddonsPage"
    Then Assert that "AddOncurrentNumber" appear on "PlansAndAddonsPage"
    Then Assert that "ExpandIcon" appear on "PlansAndAddonsPage"
    When user click on "ExpandIcon" on "PlansAndAddonsPage"
    Then Assert that "CurrentAddOn" appear on "PlansAndAddonsPage"
    Then Assert that "details" appear on "PlansAndAddonsPage"
    #what details?? put the elements here
  #Subscribe

  #Validate On the “manage” page for “add-on” accordion
    When user click on "EtisalatShop" on "PlansAndAddonsPage"
    And user click on "currentUsage" on "PlansAndAddonsPage"
    And user click on "manageTab" on "PlansAndAddonsPage"
    When user click on "myaddOns" on "PlansAndAddonsPage"
    Then Assert that "addOnName" appear on "PlansAndAddonsPage"
    Then Assert that "addOnQuanity" appear on "PlansAndAddonsPage"
    Then Assert that "quanityPrice" appear on "PlansAndAddonsPage"
    Then Assert that "frequency" appear on "PlansAndAddonsPage"
    When user click on "addOn" button on "PlansAndAddonsPage"
    Then Assert that "manageSubscription" appear on "PlansAndAddonsPage"
    When user click on "manageSubscription" button on "PlansAndAddonsPage"
    Then Assert that "QuanityOnManage" appear on "PlansAndAddonsPage"
    Then Assert that "IncreaseOption" appear on "PlansAndAddonsPage"
    Then Assert that "DecreaseOption" appear on "PlansAndAddonsPage"
    Then Assert that "NewButton" appear on "PlansAndAddonsPage"
    When user click on "NewButton" button on "PlansAndAddonsPage"
    Then Assert that "NewSheet" appear on "PlansAndAddonsPage"
    Then Assert that "NumberOfInstance" appear on "PlansAndAddonsPage"
    Then Assert that "PriceOfInstance" appear on "PlansAndAddonsPage"
    When user click on "Subscribe" button on "PlansAndAddonsPage"
    Then Assert that "TotalInstance" appear on "PlansAndAddonsPage"
    Then Assert that "SuccessMSG" appear on "PlansAndAddonsPage"
    Then Assert that "OrderSuccessfullScreen" appear on "PlansAndAddonsPage"
    Then Assert that "OrderNumber" appear on "PlansAndAddonsPage"
    Then Assert that "TotalAmount" appear on "PlansAndAddonsPage"
  #Validate no Smiles Points and rewards to be displayed.
 # Validate no “View Details” link to be displayed
    When user click on "Done" button on "PlansAndAddonsPage"
    Then Assert that "MangeScreen" appear on "PlansAndAddonsPage"
    Then Assert that "planNameOnManage" appear on "PlansAndAddonsPage"
    Then Assert that "planPriceOnMange" appear on "PlansAndAddonsPage"
    Then Assert that "planNumberOnMange" appear on "PlansAndAddonsPage"
    When user click on "Detail" button on "PlansAndAddonsPage"
    #verify details
  #Validate in all the rellevant systems additional Add ons are subscribed successfully.


  @Plans_and_Addons_Scenario_3
  Scenario:Verify Unsubscription of same addon 2 quantity additionally from Addon accordion for addon which is having multiple instances.
    When user click on "EtisalatShop" on "PlansAndAddonsPage"
    And user select on "givenPlan" on "PlansAndAddonsPage"
    Then Assert that "planName" appear on "PlansAndAddonsPage"
    Then Assert that "AddOncurrentNumber" appear on "PlansAndAddonsPage"
    Then Assert that "ExpandIcon" appear on "PlansAndAddonsPage"
    When user click on "ExpandIcon" on "PlansAndAddonsPage"
    Then Assert that "CurrentAddOn" appear on "PlansAndAddonsPage"
    Then Assert that "details" appear on "PlansAndAddonsPage"
    #what details?? put the elements here


 #Validate On the “manage” page for “add-on” accordion
    When user click on "EtisalatShop" on "PlansAndAddonsPage"
    And user click on "currentUsage" on "PlansAndAddonsPage"
    And user click on "manageTab" on "PlansAndAddonsPage"
    When user click on "myaddOns" on "PlansAndAddonsPage"
    Then Assert that "addOnName" appear on "PlansAndAddonsPage"
    Then Assert that "addOnQuanity" appear on "PlansAndAddonsPage"
    Then Assert that "quanityPrice" appear on "PlansAndAddonsPage"
    Then Assert that "frequency" appear on "PlansAndAddonsPage"
    When user click on "addOn" button on "PlansAndAddonsPage"
    Then Assert that "manageSubscription" appear on "PlansAndAddonsPage"
    When user click on "manageSubscription" button on "PlansAndAddonsPage"
    Then Assert that "QuanityOnManage" appear on "PlansAndAddonsPage"
    Then Assert that "IncreaseOption" appear on "PlansAndAddonsPage"
    When user click on "IncreaseOption" button on "PlansAndAddonsPage"
    Then Assert that "NewButton" appear on "PlansAndAddonsPage"
    When user click on "NewButton" button on "PlansAndAddonsPage"
    Then Assert that "NewSheet" appear on "PlansAndAddonsPage"
    Then Assert that "NumberOfInstance" appear on "PlansAndAddonsPage"
    Then Assert that "PriceOfInstance" appear on "PlansAndAddonsPage"
    When user click on "Unsubscribe" button on "PlansAndAddonsPage"
    Then Assert that "TotalInstance" appear on "PlansAndAddonsPage"
    Then Assert that "SuccessMSG" appear on "PlansAndAddonsPage"
    Then Assert that "OrderSuccessfullScreen" appear on "PlansAndAddonsPage"
    Then Assert that "OrderNumber" appear on "PlansAndAddonsPage"
    Then Assert that "TotalAmount" appear on "PlansAndAddonsPage"
  #Validate no Smiles Points and rewards to be displayed.
 # Validate no “View Details” link to be displayed
    When user click on "Done" button on "PlansAndAddonsPage"
    Then Assert that "MangeScreen" appear on "PlansAndAddonsPage"
    Then Assert that "planNameOnManage" appear on "PlansAndAddonsPage"
    Then Assert that "planPriceOnMange" appear on "PlansAndAddonsPage"
    Then Assert that "planNumberOnMange" appear on "PlansAndAddonsPage"
    When user click on "Detail" button on "PlansAndAddonsPage"
    #verify details
  #Validate in all the rellevant systems additional Add ons are subscribed successfully.

  @Plans_and_Addons_Scenario_4
  Scenario:Verify Unsubscription of same addon 2 quantity decreasing from Addon accordion for addon which is having multiple instances.
    When user click on "EtisalatShop" on "PlansAndAddonsPage"
    And user select on "givenPlan" on "PlansAndAddonsPage"
    Then Assert that "planName" appear on "PlansAndAddonsPage"
    Then Assert that "AddOncurrentNumber" appear on "PlansAndAddonsPage"
    Then Assert that "ExpandIcon" appear on "PlansAndAddonsPage"
    When user click on "ExpandIcon" on "PlansAndAddonsPage"
    Then Assert that "CurrentAddOn" appear on "PlansAndAddonsPage"
    Then Assert that "details" appear on "PlansAndAddonsPage"
    #what details?? put the elements here

#Validate On the “manage” page for “add-on” accordion
    When user click on "EtisalatShop" on "PlansAndAddonsPage"
    And user click on "currentUsage" on "PlansAndAddonsPage"
    And user click on "manageTab" on "PlansAndAddonsPage"
    When user click on "myaddOns" on "PlansAndAddonsPage"
    Then Assert that "addOnName" appear on "PlansAndAddonsPage"
    Then Assert that "addOnQuanity" appear on "PlansAndAddonsPage"
    Then Assert that "quanityPrice" appear on "PlansAndAddonsPage"
    Then Assert that "frequency" appear on "PlansAndAddonsPage"
    When user click on "addOn" button on "PlansAndAddonsPage"
    Then Assert that "manageSubscription" appear on "PlansAndAddonsPage"
    When user click on "manageSubscription" button on "PlansAndAddonsPage"
    Then Assert that "QuanityOnManage" appear on "PlansAndAddonsPage"
    Then Assert that "DecreaseOption" appear on "PlansAndAddonsPage"
    When user click on "DecreaseOption" button on "PlansAndAddonsPage"
    Then Assert that "NewButton" appear on "PlansAndAddonsPage"
    When user click on "NewButton" button on "PlansAndAddonsPage"
    Then Assert that "NewSheet" appear on "PlansAndAddonsPage"
    Then Assert that "NumberOfInstance" appear on "PlansAndAddonsPage"
    Then Assert that "PriceOfInstance" appear on "PlansAndAddonsPage"
    When user click on "UnSubscribe" button on "PlansAndAddonsPage"
    Then Assert that "WarningMSG" appear on "PlansAndAddonsPage"
    When user click on "Yes" button on "PlansAndAddonsPage"
    Then Assert that "ConfirmUnsubMSG" appear on "PlansAndAddonsPage"
    Then Assert that "TotalInstanceafterDepltion" appear on "PlansAndAddonsPage"
    Then Assert that "UnsubMSGonManagePage" appear on "PlansAndAddonsPage"
    Then Assert that "MangeScreen" appear on "PlansAndAddonsPage"
    Then Assert that "planNameOnManage" appear on "PlansAndAddonsPage"
    Then Assert that "planPriceOnMange" appear on "PlansAndAddonsPage"
    Then Assert that "planNumberOnMange" appear on "PlansAndAddonsPage"
    When user click on "Detail" button on "PlansAndAddonsPage"
  #Validate in all the rellevant systems additional Add ons are subscribed successfully.

  @Plans_and_Addons_Scenario_5
  Scenario:Verify Unsubscription Failure message for unsubscription of addon
    When user click on "EtisalatShop" on "PlansAndAddonsPage"
    And user select on "givenPlan" on "PlansAndAddonsPage"
    Then Assert that "planName" appear on "PlansAndAddonsPage"
    Then Assert that "AddOncurrentNumber" appear on "PlansAndAddonsPage"
    Then Assert that "ExpandIcon" appear on "PlansAndAddonsPage"
    When user click on "ExpandIcon" on "PlansAndAddonsPage"
    Then Assert that "CurrentAddOn" appear on "PlansAndAddonsPage"
    Then Assert that "details" appear on "PlansAndAddonsPage"

    #Validate On the “manage” page for “add-on” accordion
    When user click on "EtisalatShop" on "PlansAndAddonsPage"
    And user click on "currentUsage" on "PlansAndAddonsPage"
    And user click on "manageTab" on "PlansAndAddonsPage"
    When user click on "myaddOns" on "PlansAndAddonsPage"
    When user click on "myaddOns" on "PlansAndAddonsPage"
    Then Assert that "addOnName" appear on "PlansAndAddonsPage"
    Then Assert that "addOnQuanity" appear on "PlansAndAddonsPage"
    Then Assert that "quanityPrice" appear on "PlansAndAddonsPage"
    Then Assert that "frequency" appear on "PlansAndAddonsPage"
    When user click on "addOn" button on "PlansAndAddonsPage"
    Then Assert that "manageSubscription" appear on "PlansAndAddonsPage"
    Then Assert that "CancelSubscription" appear on "PlansAndAddonsPage"
    When user click on "CancelSubscription" button on "PlansAndAddonsPage"
    Then Assert that "WarningMSG" appear on "PlansAndAddonsPage"
    Then Assert that "YesButton" appear on "PlansAndAddonsPage"
    Then Assert that "NoButton" appear on "PlansAndAddonsPage"
    When user click on "Yes" button on "PlansAndAddonsPage"
    Then Assert that "ConfirmUnsubMSG" appear on "PlansAndAddonsPage"

