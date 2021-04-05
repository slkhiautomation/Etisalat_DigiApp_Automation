Feature: Post Enhancement

  Background: Login into Etisalat Digital Application Successfully
    Given User has opened an application
#    When user click on "skip" button on "StartingPage"
#    When user click on "loginWithUsername" button on "StartingPage"
#    And user enter text "homeMoveUsername" in "usernameField" on "LoginPage"
#    And user enter text "homeMovePassword" in "passwordField" on "LoginPage"
#    And user dismiss keyboard
#    When user click on "login" button on "LoginPage"

  @TC_186
  Scenario: Customer switch his/her account selection while on payments screen
    And user click on "userPlan" button on "Homepage"
    And user scroll till text "Recharge History"
    And user click on "RechargeHistoryButton" button on "RechargeHistoryPage"
    Then Assert that "RechargeHistoryTab" appear on "RechargeHistoryPage"
    And user click on "SwitchBtn" button on "CourseEnhancementPage"
    Then Assert that "AlternateManaged" appear on "CourseEnhancementPage"
    Then Assert that "TvsmobileTwo" appear on "CourseEnhancementPage"
    And user tap on "AlternateManaged" on "CourseEnhancementPage"
    Then Assert that "AlternateManaged" appear on "CourseEnhancementPage"

  @TC_188
  Scenario:Customer viewing payment history section while no payments are shown
    And user click on "userPlan" button on "RechargeHistoryPage"
    And user scroll till text "Recharge History"
    And user click on "RechargeHistoryButton" button on "RechargeHistoryPage"
    Then Assert that "RechargeHistoryTab" appear on "RechargeHistoryPage"
    #Then Assert that "NoPaymentEn" appear on "PostEnhancement"
   # Then Assert that "NoPaymentAr" appear on "PostEnhancement"
