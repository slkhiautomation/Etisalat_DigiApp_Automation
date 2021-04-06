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

  @TC_187
  Scenario: Customer opens "View Statement" from the Usage section and tries different filter options
  (different billing periods): Last Month - Current Month - any other period
    And user click on "userPlan" button on "Homepage"
    And user scroll to "ViewStatement" on "PostEnhancement"
    And user tap on "ViewStatement" on "PostEnhancement"
    And user tap on "CalendarDropdown" on "PostEnhancement"
    And user tap on "ThisMonthFilter" on "PostEnhancement"
    Then Assert that "CurrentMonth" appear on "PostEnhancement"
    And user tap on "CalendarDropdown" on "PostEnhancement"
    And user tap on "LastMonthFilter" on "PostEnhancement"
    Then Assert that "LastMonth" appear on "PostEnhancement"

  @TC_188
  Scenario:Customer viewing payment history section while no payments are shown
    And user click on "userPlan" button on "RechargeHistoryPage"
    And user scroll till text "Recharge History"
    And user click on "RechargeHistoryButton" button on "RechargeHistoryPage"
    Then Assert that "RechargeHistoryTab" appear on "RechargeHistoryPage"
    #Then Assert that "NoPaymentEn" appear on "PostEnhancement"
   # Then Assert that "NoPaymentAr" appear on "PostEnhancement"

  @TC_189
  Scenario: Customer viewing the Usage Statement page, check the Statement Summary list.
    And user click on "userPlan" button on "RechargeHistoryPage"
    And user scroll till text "view statement"
    And user tap on "ViewStatement" on "PostEnhancement"
    And user tap on "CalendarDropdown" on "PostEnhancement"
    And user tap on "Lastmonth" on "PostEnhancement"
    And user tap on "RightArrow" on "PostEnhancement"
    Then Assert that "StatementSummary" appear on "PostEnhancement"
    Then Assert that "SubscriptionAndRental" appear on "PostEnhancement"
    And user click on "SubscriptionAndrental" button on "PostEnhancement"

  @TC_190
  Scenario: Customer checks Analyse my usage section on App.
    And user click on "userPlan" button on "RechargeHistoryPage"
    And user scroll till text "Analyse my usage"
    And user tap on "AnalyseUsage" on "PostEnhancement"
    #No data present in any account to assert

  @TC_191
  Scenario: Customer making a bill payment using a local credit card
    When user tap on "MenuToggle" on "HomePage"
    When user tap on "Bills&Payment" on "PostEnhancementPage"
    When user tap on "View&Pay" on "PostEnhancementPage"
    When user tap on "PayNow" on "PostEnhancementPage"
    When user tap on "EditAmount" on "PostEnhancementPage"
    When user tap on "Amount" on "PostEnhancementPage"
    And user enter text "NewAmount" in "Amount" on "PostEnhancementPage"
    And user dismiss keyboard
    When user tap on "Update" on "PostEnhancementPage"
    When user tap on "Next" on "PostEnhancementPage"
    And user tap on "Checkbox" on "PostEnhancementPage"
    When user tap on "NextBtn" on "PostEnhancementPage"
    When user tap on "Pay" on "PostEnhancementPage"

    @TC_192
    Scenario: Customer making a bill payment using an International credit card
      When user tap on "MenuToggle" on "HomePage"
      When user tap on "Bills&Payment" on "PostEnhancementPage"
      When user tap on "View&Pay" on "PostEnhancementPage"
      When user tap on "PayNow" on "PostEnhancementPage"
      When user tap on "EditAmount" on "PostEnhancementPage"
      When user tap on "Amount" on "PostEnhancementPage"
      And user enter text "NewAmount" in "Amount" on "PostEnhancementPage"
      And user dismiss keyboard
      When user tap on "Update" on "PostEnhancementPage"
      When user tap on "Next" on "PostEnhancementPage"
      When user tap on "Box" on "PostEnhancementPage"
      When user tap on "NextBtn" on "PostEnhancementPage"
      When user tap on "Pay" on "PostEnhancementPage"
      When user tap on "CardNumber" on "PostEnhancementPage"
      And user enter text "Cardnumber" in "CardNumber" on "PostEnhancementPage"
      When user tap on "Year" on "PostEnhancementPage"
      When user select "NewYear" from "Year" on "PostEnhancementPage"
      When user tap on "pay" on "PostEnhancementPage"
