Feature: Recharge History

  Background: Login into Home Move Application Successfully
    Given User has opened an application
    When user click on "skip" button on "StartingPage"
    When user click on "loginWithUsername" button on "StartingPage"
    And user enter text "homeMoveUsername" in "usernameField" on "LoginPage"
    And user enter text "homeMovePassword" in "passwordField" on "LoginPage"
    And user dismiss keyboard
    When user click on "login" button on "LoginPage"

  @Recharge_History_1
  Scenario: Verify the Recharge History
    When user click on "notNow" button on "RechargeHistoryPage"
    And user click on "userPlan" button on "RechargeHistoryPage"
    Given user scroll to "RechargeHistoryButton" on "RechargeHistoryPage"
    And user click on "RechargeHistoryButton" button on "RechargeHistoryPage"
    Then Assert that "Transaction" appear on "RechargeHistoryPage"
