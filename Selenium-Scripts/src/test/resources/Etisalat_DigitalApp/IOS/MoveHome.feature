Feature: Login into Home Move Application and Submit a Home Move Request

  Background: Login into Home Move Application Successfully
    Given User has opened an application
#    When user click on "loginWithUsername" button on "StartingPage"
#    And user enter text "homeMoveUsername" in "usernameField" on "LoginPage"
#    And user enter text "homeMovePassword" in "passwordField" on "LoginPage"
#    When user click on "login" button on "LoginPage"

  @HomeMove2
  Scenario:Verify system allow External shift flow by Manage Card> Home Move
    And user click on "userPlan" button on "HomePage"
    And user click on "manageTab" button on "detailsPage"
    And user scroll down
    Then Assert that "HomeMoveTitle" appear on "HomePage"
#    And user click on "HomeMoveOption" button on "detailsPage"
    And user click on "HomeMoveoption" button on "HomePage"
    Then Assert that "HomeMoveHeading" appear on "HomePage"
   # Then Assert that "HomeMoveImage" appear on "HomeMovePage" this step should be done with isdisplay property
    Then Assert that "ApplyInFewSteps" appear on "HomePage"
    And user click on "GetStarted" button on "HomeMovePage"









#  Scenario: Home Move External Shift Within Emirate without number change
#
#    And user click on "userPlan" button on "Homepage"
#    And user click on "manageTab" button on "detailsPage"
#    And user click on "Plan" button on "detailsPage"
#    And user click on "HomeMove" button on "detailsPage"
#    And user click on "GetStarted" button on "HomeMovePage"
#    And User click on setMap button
#    #And user click on "setFromMap" button on "HomeMovePage"
#    And user click on "searchOnMapField" button on "HomeMovePage"
#    And user enter text "addressOnMap" in "searchOnMapField" on "HomeMovePage"
#    #And User click on searchedAddress button
#    And user click on "searchedAddress" button on "HomeMovePage"
#    And user click on "confirmLocation" button on "HomeMovePage"
#    And user click on "ExactAddressNumber" button on "HomeMovePage"
#    And user enter text "FloorApartmentVilla" in "ExactAddressNumber" on "HomeMovePage"
#    And user click on "continuee" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#    And user click on "movingDate" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#    And user click on "selectDate" button on "HomeMovePage"
#    And user click on "selectTime" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#   # Then Assert that "TelephoneNumber" appear on "HomeMovePage"
#    And user click on "acceptAndContinue" button on "HomeMovePage"
#    And user scroll down
#    Then Assert that "TotalAmount" appear on "HomeMovePage"
#
##    Then Assert that "AccountNumber" appear on "HomeMovePage"
##    Then Assert that "InstallationAdress" appear on "HomeMovePage"
##    Then Assert that "Moveoutdate" appear on "HomeMovePage"
##
##    Then Assert that "Yourcontactdetails" appear on "HomeMovePage"
##    Then Assert that "Installationdate" appear on "HomeMovePage"
##    Then Assert that "Packagename" appear on "HomeMovePage"
#
#    And user click on "SUBMITREQUEST" button on "HomeMovePage"
#
#
#


#  @HomeMove3
#  Scenario: External Shit outside Emirate, with number change
#
#    And user click on "userPlan" button on "Homepage"
#    And user click on "manageTab" button on "detailsPage"
#    And user click on "Plan" button on "detailsPage"
#    And user click on "HomeMove" button on "detailsPage"
#    And user click on "GetStarted" button on "HomeMovePage"
#    And User click on setMap button
#    #And user click on "setFromMap" button on "HomeMovePage"
#    And user click on "searchOnMapField" button on "HomeMovePage"
#    And user enter text "addressOutside" in "searchOnMapField" on "HomeMovePage"
#    #And User click on searchedAddress button
#    And user click on "searchedAddress" button on "HomeMovePage"
#    And user click on "confirmLocation" button on "HomeMovePage"
#    And user click on "ExactAddressNumber" button on "HomeMovePage"
#    And user enter text "FloorApartmentVilla" in "ExactAddressNumber" on "HomeMovePage"
#    And user click on "continuee" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#    And user click on "movingDate" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#    And user click on "selectDate" button on "HomeMovePage"
#    And user click on "selectTime" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#   # Then Assert that "TelephoneNumber" appear on "HomeMovePage"
#    And user click on "acceptAndContinue" button on "HomeMovePage"
#    And user scroll down
#    Then Assert that "TotalAmount" appear on "HomeMovePage"
#
#    Then Assert that "AccountNumber" appear on "HomeMovePage"
#    Then Assert that "InstallationAdress" appear on "HomeMovePage"
#    Then Assert that "Moveoutdate" appear on "HomeMovePage"
#
#    Then Assert that "Yourcontactdetails" appear on "HomeMovePage"
#    Then Assert that "Installationdate" appear on "HomeMovePage"
#    Then Assert that "Packagename" appear on "HomeMovePage"





























#  @HomeMove1
#  Scenario: Home Move
#    # When user click on "notNow" button on "Homepage"
#    And user click on "userPlan" button on "Homepage"
#    And user click on "manageTab" button on "detailsPage"
#    And user click on "Plan" button on "detailsPage"
#    And user click on "HomeMove" button on "detailsPage"
#    And user click on "GetStarted" button on "HomeMovePage"
#    And User click on setMap button
#   # And user click on "setFromMap" button on "HomeMovePage"
#    And user click on "searchOnMapField" button on "HomeMovePage"
#    And user enter text "addressOnMap" in "searchOnMapField" on "HomeMovePage"
#    #And User click on searchedAddress button
#    And user click on "searchedAddress" button on "HomeMovePage"
#    And user click on "confirmLocation" button on "HomeMovePage"
#    And user click on "ExactAddressNumber" button on "HomeMovePage"
#    And user enter text "FloorApartmentVilla" in "ExactAddressNumber" on "HomeMovePage"
#    And user click on "continuee" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#    And user click on "movingDate" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"
#    And user click on "selectDate" button on "HomeMovePage"
#    And user click on "selectTime" button on "HomeMovePage"
#    And user click on "continue" button on "HomeMovePage"

#    Then Assert that "TelephoneTitle" appear on "HomeMovePage"
#    Then Assert that "TelephoneShortDescription" appear on "HomeMovePage"
#     Then Assert that "TelephoneNumber" appear on "HomeMovePage"
#    Then Assert that "EtisalatDeviceTitle" appear on "HomeMovePage"
#    Then Assert that "EtisalatDeviceDescription" appear on "HomeMovePage"
#    Then Assert that "ContactTitle" appear on "HomeMovePage"
#    Then Assert that "ContactDescription" appear on "HomeMovePage"
#    Then Assert that "ContactNumber" appear on "HomeMovePage"
#    And user click on "acceptAndContinue" button on "HomeMovePage"
#    Then Assert that "PaymentSummaryTitle" appear on "HomeMovePage"
#    Then Assert that "PaymentSummaryMethod" appear on "HomeMovePage"
#    Then Assert that "PaymentSummaryDescription" appear on "HomeMovePage"
#    Then Assert that "StandardInstallationTitle" appear on "HomeMovePage"
#    Then Assert that "OneTimeCharge" appear on "HomeMovePage"
#    Then Assert that "OneTimeChargeValue" appear on "HomeMovePage"
#    Then Assert that "VATTitle" appear on "HomeMovePage"
#    Then Assert that "VATDescription" appear on "HomeMovePage"
#    Then Assert that "VATValue" appear on "HomeMovePage"
#    Then Assert that "HomeMoveRequestTitle" appear on "HomeMovePage"
#    Then Assert that "HomeMoveRequestDetails" appear on "HomeMovePage"

#    And user click on "submitButton" button on "HomeMovePage"


