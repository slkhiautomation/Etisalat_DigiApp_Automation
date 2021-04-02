Feature: Recharge History

 Background: Login into Home Move Application Successfully
    Given User has opened an application
#    When user click on "skip" button on "StartingPage"
#    When user click on "loginWithUsername" button on "StartingPage"
#    And user enter text "homeMoveUsername" in "usernameField" on "LoginPage"
#    And user enter text "homeMovePassword" in "passwordField" on "LoginPage"
#    And user dismiss keyboard
#    When user click on "login" button on "LoginPage"

  @TC_193 @TC0022_Mobile_App_Wasel_Recharge_History_UAT_202449
  Scenario: Customer navigating through the Usage section of the mobile App clicks the "Recharge History" link and verifies the listed transactions for his/her account
  user has made recharges to this account in the current month
    And user click on "userPlan" button on "RechargeHistoryPage"
    And user scroll till text "Recharge History"
    And user click on "RechargeHistoryButton" button on "RechargeHistoryPage"
    Then Assert that "RechargeHistoryTab" appear on "RechargeHistoryPage"
    And user get the "Transaction_Date" from "RechargeHistoryPage"
    And user get the "Transaction_reference_number" from "RechargeHistoryPage"
    And user get the "Amount" from "RechargeHistoryPage"
    And user tap on "BillPayment" on "RechargeHistoryPage"
    Then Assert that "RechargeSuccess" appear on "RechargeHistoryPage"
    Then Assert that "Transaction_Reference_Number" is same as "Transaction_reference_number" on "RechargeHistoryPage"
    Then Assert that "Receipt_Amount" is same as "Amount" on "RechargeHistoryPage"
