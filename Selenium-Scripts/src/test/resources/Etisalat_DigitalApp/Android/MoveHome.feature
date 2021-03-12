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
    And user click on "GetStarted" button on "HomeMovePage"
    And user click on "setFromMap" button on "HomeMovePage"
    And user enter text "addressOnMap" in "searchOnMapField" on "HomeMovePage"
    And user click on "searchedAddress" button on "HomeMovePage"
    And user click on "confirmLocation" button on "HomeMovePage"
    And user enter text "FloorApartmentVilla" in "ExactAddressNumber" on "HomeMovePage"
    And user dismiss keyboard
    And user click on "continue" button on "HomeMovePage"
    And user click on "continue" button on "HomeMovePage"
    And user click on "movingDate" button on "HomeMovePage"
    And user click on "continue" button on "HomeMovePage"
    And user click on "acceptAndContinue" button on "HomeMovePage"
#    And user click on "submitButton" button on "HomeMovePage"


