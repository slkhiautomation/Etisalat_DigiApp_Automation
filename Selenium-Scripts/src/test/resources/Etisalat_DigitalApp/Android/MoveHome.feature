Feature: Login into Home Move Application and Submit a Home Move Request

  Background: Login into Home Move Application Successfully
    Given User has opened an application
    When user click on "skip" button on "StartingPage"
    When user click on "loginWithUsername" button on "StartingPage"
    And user enter text "homeMoveUsername" in "usernameField" on "LoginPage"
    And user enter text "homeMovePassword" in "passwordField" on "LoginPage"
    And user dismiss keyboard
    When user click on "login" button on "LoginPage"

  @HomeMove1
  Scenario: Verify the Home Move
    When user click on "notNow" button on "HomePage"
    And user click on "userPlan" button on "HomePage"
    And user click on "manageTab" button on "detailsPage"
    And user click on "Plan" button on "detailsPage"
    And user click on "HomeMove" button on "detailsPage"
#    Then Assert that "ShortDescription" appear on "HomeMovePage"
#    Then Assert that "Step1" appear on "HomeMovePage"
#    Then Assert that "Step2" appear on "HomeMovePage"
#    Then Assert that "Step3" appear on "HomeMovePage"
    And user click on "GetStarted" button on "HomeMovePage"
    And user click on "setFromMap" button on "HomeMovePage"
    And user enter text "addressOnMap" in "searchOnMapField" on "HomeMovePage"
    And user click on "searchedAddress" button on "HomeMovePage"
    And user click on "confirmLocation" button on "HomeMovePage"
    And user enter text "FloorApartmentVilla" in "ExactAddressNumber" on "HomeMovePage"
    And user dismiss keyboard
    And user click on "continue" button on "HomeMovePage"
    And user click on "movingDate" button on "HomeMovePage"
    And user click on "continue" button on "HomeMovePage"
#    Then Assert that "TelephoneTitle" appear on "HomeMovePage"
#    Then Assert that "TelephoneShortDescription" appear on "HomeMovePage"
#    Then Assert that "TelephoneNumber" appear on "HomeMovePage"
#    Then Assert that "EtisalatDeviceTitle" appear on "HomeMovePage"
#    Then Assert that "EtisalatDeviceDescription" appear on "HomeMovePage"
#    Then Assert that "ContactTitle" appear on "HomeMovePage"
#    Then Assert that "ContactDescription" appear on "HomeMovePage"
#    Then Assert that "ContactNumber" appear on "HomeMovePage"
    And user click on "acceptAndContinue" button on "HomeMovePage"
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


