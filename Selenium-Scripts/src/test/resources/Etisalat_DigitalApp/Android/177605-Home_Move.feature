Feature: Login into Home Move Application and Submit a Home Move Request

  Background: Login into Home Move Application Successfully
    Given User has opened an application
#    When user click on "skip" button on "StartingPage"
#    When user click on "loginWithUsername" button on "StartingPage"
#    And user enter text "homeMoveUsername" in "usernameField" on "LoginPage"
#    And user enter text "homeMovePassword" in "passwordField" on "LoginPage"
#    And user wait for 5 second
#    When user click on "login" button on "LoginPage"
#    And user wait for 5 second
#    When user click on "notNow" button on "HomePage"

  @TC_180 @TC0001_UAT_177605_eLife_2P_External_Shift_Mobile_App
  Scenario: Home Move External Shift Within Emirate without number change
    And user click on "userPlan" button on "Homepage"
    And user click on "manageTab" button on "detailsPage"
    And user click on "Plan" button on "detailsPage"
    And user click on "HomeMove" button on "detailsPage"
    Then Assert that "ApplyInFewSteps" appear on "HomeMovePage"
    And user click on "GetStarted" button on "HomeMovePage"
    And user click on "setFromMap" button on "HomeMovePage"
    And user click on "searchOnMapField" button on "HomeMovePage"
    And user enter text "addressOnMap" in "EnterTextField" on "HomeMovePage"
    And user click on "searchedAddress" button on "HomeMovePage"
    And user click on "confirmLocation" button on "HomeMovePage"
    And user click on "ExactAddressNumber" button on "HomeMovePage"
    And user enter text "FloorApartmentVilla" in "ExactAddressNumber" on "HomeMovePage"
    And user dismiss keyboard
    And user click on "continue" button on "HomeMovePage"
#    And user click on "changeNumber" button on "HomeMovePage"
#    And user select on "NumberToBeChanged" on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
    And user click on "movingDate" button on "HomeMovePage"
    And user click on "continue" button on "HomeMovePage"
#    And user click on "selectDate" button on "HomeMovePage"
#    And user click on "selectTime" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#    Then Assert that "TelephoneNumber" appear on "HomeMovePage"
    And user click on "acceptAndContinue" button on "HomeMovePage"
    Then Assert that "PaymentSummaryTitle" appear on "HomeMovePage"
    Then Assert that "PaymentSummaryMethod" appear on "HomeMovePage"
    Then Assert that "PaymentSummaryDescription" appear on "HomeMovePage"
    Then Assert that "StandardInstallationTitle" appear on "HomeMovePage"
    Then Assert that "OneTimeCharge" appear on "HomeMovePage"
    Then Assert that "OneTimeChargeValue" appear on "HomeMovePage"
    Then Assert that "VATTitle" appear on "HomeMovePage"
    Then Assert that "VATDescription" appear on "HomeMovePage"
    Then Assert that "VATValue" appear on "HomeMovePage"
    Then Assert that "HomeMoveRequestTitle" appear on "HomeMovePage"
    Then Assert that "TotalAmount" appear on "HomeMovePage"
    Then Assert that "AccountNumber" appear on "HomeMovePage"
    Then Assert that "InstallationAdress" appear on "HomeMovePage"
    Then Assert that "Moveoutdate" appear on "HomeMovePage"
    Then Assert that "Yourcontactdetails" appear on "HomeMovePage"
#    Then Assert that "Installationdate" appear on "HomeMovePage"
    Then Assert that "Packagename" appear on "HomeMovePage"
#    And user click on "SubmmitRequest" button on "HomeMovePage"

  @TC_181 @TC0010_UAT_177605_eLife_4.0_External_Shift_with_number_change_Mobile_App
  Scenario: External Shit outside Emirate, with number change
    And user click on "userPlan" button on "Homepage"
    And user click on "manageTab" button on "detailsPage"
    And user click on "Plan" button on "detailsPage"
    And user click on "HomeMove" button on "detailsPage"
    Then Assert that "ApplyInFewSteps" appear on "HomeMovePage"
    And user click on "GetStarted" button on "HomeMovePage"
    And user click on "setFromMap" button on "HomeMovePage"
    And user click on "searchOnMapField" button on "HomeMovePage"
    And user enter text "addressOutsideEmirates" in "EnterTextField" on "HomeMovePage"
    And user click on "searchedAddress" button on "HomeMovePage"
    And user click on "confirmLocation" button on "HomeMovePage"
    And user click on "ExactAddressNumber" button on "HomeMovePage"
    And user enter text "FloorApartmentVilla" in "ExactAddressNumber" on "HomeMovePage"
    And user dismiss keyboard
    And user click on "continue" button on "HomeMovePage"
#  Validate on clicking continue, the GPON check is triggered, in this case select GPON location.
#  Validate message is displayed informing customer that number will be changed since moving to different emirates.
    And user click on "ChangeNumber" button on "HomeMovePage"
    And user select on "SelectNumber" on "HomeMovePage"
    And user click on "continue" button on "HomeMovePage"
    And user click on "continue" button on "HomeMovePage"

    And user click on "movingDate" button on "HomeMovePage"
    And user click on "continue" button on "HomeMovePage"
#  Validate customer gets the option to choose date on which it wishes the installation on new address.
#    And user click on "selectDate" button on "HomeMovePage"
#    And user click on "selectTime" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#    Then Assert that "TelephoneNumber" appear on "HomeMovePage
#  Validate dates are listed with dates and next date with "Express" tag, which triggers the express flow.
#  Validate on selecting standard installation, it displays standard charges, VAT and total charges with continue option.

    And user click on "acceptAndContinue" button on "HomeMovePage"
    Then Assert that "PaymentSummaryTitle" appear on "HomeMovePage"
    Then Assert that "PaymentSummaryMethod" appear on "HomeMovePage"
    Then Assert that "PaymentSummaryDescription" appear on "HomeMovePage"
    Then Assert that "StandardInstallationTitle" appear on "HomeMovePage"
    Then Assert that "OneTimeCharge" appear on "HomeMovePage"
    Then Assert that "OneTimeChargeValue" appear on "HomeMovePage"
    Then Assert that "VATTitle" appear on "HomeMovePage"
    Then Assert that "VATDescription" appear on "HomeMovePage"
    Then Assert that "VATValue" appear on "HomeMovePage"
    Then Assert that "HomeMoveRequestTitle" appear on "HomeMovePage"
    Then Assert that "TotalAmount" appear on "HomeMovePage"
    Then Assert that "AccountNumber" appear on "HomeMovePage"
    Then Assert that "InstallationAdress" appear on "HomeMovePage"
    Then Assert that "Moveoutdate" appear on "HomeMovePage"
    Then Assert that "Yourcontactdetails" appear on "HomeMovePage"
#    Then Assert that "Installationdate" appear on "HomeMovePage"
    Then Assert that "Packagename" appear on "HomeMovePage"
#        And user click on "SubmmitRequest" button on "HomeMovePage"


  @TC_182 @TC0030_UAT_177605_Fixed_Trigger_Point_Mobile_App
  Scenario:Verify system allow External shift flow by Manage Card> Home Move
    And user click on "userPlan" button on "Homepage"
    And user click on "manageTab" button on "detailsPage"
    And user scroll till text "Home Move"
    Then Assert that "HomeMoveTitle" appear on "HomeMovePage"
#    And user click on "HomeMoveOption" button on "detailsPage"
    And user click on "HomeMoveoption" button on "HomeMovePage"
    Then Assert that "HomeMoveHeading" appear on "HomeMovePage"
   # Then Assert that "HomeMoveImage" appear on "HomeMovePage" this step should be done with isdisplay property
    Then Assert that "ApplyInFewSteps" appear on "HomeMovePage"
    And user click on "GetStarted" button on "HomeMovePage"
