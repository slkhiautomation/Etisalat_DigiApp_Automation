Feature: Collection Notification

  Background: Login into Home Move Application Successfully
    Given User has opened an application
#    When user click on "loginWithUsername" button on "StartingPage"
#    And user enter text "homeMoveUsername" in "usernameField" on "LoginPage"
#    And user enter text "homeMovePassword" in "passwordField" on "LoginPage"
#    When user click on "login" button on "LoginPage"


  @TC_08
  Scenario:TC_08_Customer logs into My Etisalat mobile app and verifies the payment notification on the home screen
    Customer has a new bill generated and payment date due.
    And user click on "NotificationIcon" button on "CollectionNotificationPage"
    And user get the "Transaction_reference_number" from "CollectionNotificationPage"
    And user click on "NotificationTab" button on "CollectionNotificationPage"
    Then Assert that "Transaction_reference_number" is same as "Transaction_Reference_Number" on "CollectionNotificationPage"











#  @Recharge_History_1
#  Scenario: Verify the Recharge History
#    And user click on "userPlan" button on "RechargeHistoryPage"
#    And user scroll down
#    And user click on "Rechargehistory" button on "RechargeHistoryPage"
#    And user click on "BillPayment" button on "RechargeHistoryPage"
#    Then Assert that "RechargeSuccess" appear on "RechargeHistoryPage"
#    Then Assert that "Receipt" appear on "RechargeHistoryPage"




#    Then Assert that "Rechargehistory" appear on "RechargeHistoryPage"
#    Given user scroll to "RechargeHistoryButton" on "RechargeHistoryPage"
#    And user click on "RechargeHistoryButton" button on "RechargeHistoryPage"
#    Then Assert that "RechargeHistoryTab" appear on "RechargeHistoryPage"
#    Then Assert that "Transaction" appear on "RechargeHistoryPage"
