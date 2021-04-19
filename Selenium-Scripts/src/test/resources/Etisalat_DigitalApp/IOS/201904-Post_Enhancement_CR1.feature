Feature: Post Enhancement

  Background: Login into Etisalat Digital Application Successfully
    Given User has opened an application
#    When user click on "skip" button on "StartingPage"
#    When user click on "loginWithUsername" button on "StartingPage"
#    And user enter text "homeMoveUsername" in "usernameField" on "LoginPage"
#    And user enter text "homeMovePassword" in "passwordField" on "LoginPage"
#    And user dismiss keyboard
#    When user click on "login" button on "LoginPage"

#  @TC_186
#  Scenario: Customer switch his/her account selection while on payments screen
#    And user click on "userPlan" button on "RechargeHistoryPage"
#    And user scroll down
#    And user click on "Rechargehistory" button on "RechargeHistoryPage"
#    Then Assert that "RechargeHistoryTab" appear on "RechargeHistoryPage"
#    And user click on "SwitchBtn" button on "CourseEnhancementPage"
#    Then Assert that "AlternateManaged" appear on "CourseEnhancementPage"
#    Then Assert that "TvsmobileTwo" appear on "CourseEnhancementPage"
#    And user tap on "AlternateManaged" on "CourseEnhancementPage"
#    Then Assert that "AlternateManaged" appear on "CourseEnhancementPage"
############ Switch button is not showing on ios App
#  @TC_187
#  Scenario: Customer opens "View Statement" from the Usage section and tries different filter options
#  (different billing periods): Last Month - Current Month - any other period
#    And user click on "userPlan" button on "RechargeHistoryPage"
#    And user scroll down
#    And user click on "ViewStatement" button on "PostEnhancementPage"
#    And user click on "CalendarDropdown" button on "PostEnhancementPage"
#    And user click on "CurrentMonth" button on "PostEnhancementPage"
#    Then Assert that "CalendarDropdown" appear on "PostEnhancementPage"
#    And user click on "CalendarDropdown" button on "PostEnhancementPage"
#    And user click on "LastMonthFilter" button on "PostEnhancementPage"
#    Then Assert that "LastMonth" appear on "PostEnhancementPage"
######## its done ###############
#  @TC_188
#  Scenario:Customer viewing payment history section while no payments are shown
#    And user click on "userPlan" button on "RechargeHistoryPage"
#    And user scroll till text "Recharge History"
#    And user click on "RechargeHistoryButton" button on "RechargeHistoryPage"
#    Then Assert that "RechargeHistoryTab" appear on "RechargeHistoryPage"
#    #Then Assert that "NoPaymentEn" appear on "PostEnhancement"
#   # Then Assert that "NoPaymentAr" appear on "PostEnhancement"
########### Test Data not available



  # "TC_190_Customer checks the Usage Analysis section on the App.
  ########### Test Data not available


  ##"TC_189_Customer viewing the Usage Statement page, check the Statement Summary list. Verify the order of the items in the summary list.
  ##user has made usage in all of the following categories:
########### Test Data not available
  @TC_191
  Scenario: Customer making a bill payment using a local credit card

    And user click on "Payment" button on "PostEnhancementPage"
    And user click on "PayNow" button on "PostEnhancementPage"
    And user click on "EditAmount" button on "PostEnhancementPage"
    And user click on "Amount" button on "PostEnhancementPage"
    And user enter text "NewAmount" in "Amount" on "PostEnhancementPage"
    And user click on "HideKeyboard" button on "PostEnhancementPage"
    And user click on "Update" button on "PostEnhancementPage"
    And user click on "Next" button on "PostEnhancementPage"
    And user click on "Checkbox" button on "PostEnhancementPage"
    And user click on "Next" button on "PostEnhancementPage"
    And user click on "Pay" button on "PostEnhancementPage"
    And user enter text "CardNumbers" in "CardNumber" on "PostEnhancementPage"
    And user click on "Year" button on "PostEnhancementPage"
    And user click on "Selectyear" button on "PostEnhancementPage"
   # And user click on "Cvv" button on "PostEnhancementPage"
    And user enter text "CvvNumber" in "Cvv" on "PostEnhancementPage"
    And user click on "HideKeyboard" button on "PostEnhancementPage"
    And user click on "NowPay" button on "PostEnhancementPage"
    Then Assert that "PaymentSuccess" appear on "PostEnhancementPage"
    Then Assert that "AccountNO" appear on "PostEnhancementPage"
    Then Assert that "TotalAmmount" appear on "PostEnhancementPage"
    And user click on "OK" button on "PostEnhancementPage"
##### its Done#######


#  @TC_192
#  Scenario: TC_192_Customer making a bill payment using an International credit card
#    And user click on "Payment" button on "PostEnhancementPage"
#    And user click on "PayNow" button on "PostEnhancementPage"
#    And user click on "EditAmount" button on "PostEnhancementPage"
#    And user click on "Amount" button on "PostEnhancementPage"
#    And user enter text "NewAmount" in "Amount" on "PostEnhancementPage"
#    And user click on "HideKeyboard" button on "PostEnhancementPage"
#    And user click on "Update" button on "PostEnhancementPage"
#    And user click on "Next" button on "PostEnhancementPage"
#    And user click on "Checkbox" button on "PostEnhancementPage"
#    #And user click on "Checkboxs" button on "PostEnhancementPage"
#    And user click on "Next" button on "PostEnhancementPage"
#    And user click on "Pay" button on "PostEnhancementPage"
#    #And user click on "CardNumber" button on "PostEnhancementPage"
#    And user enter text "InternationalCardNumbers" in "CardNumber" on "PostEnhancementPage"
#    And user click on "Year" button on "PostEnhancementPage"
#    And user click on "Selectyear" button on "PostEnhancementPage"
#   # And user click on "Cvv" button on "PostEnhancementPage"
#    And user enter text "CvvNumber" in "Cvv" on "PostEnhancementPage"
#    And user click on "HideKeyboard" button on "PostEnhancementPage"
#    And user click on "NowPay" button on "PostEnhancementPage"
#    Then Assert that "PaymentSuccess" appear on "PostEnhancementPage"
#    Then Assert that "AccountNO" appear on "PostEnhancementPage"
#    Then Assert that "TotalAmmount" appear on "PostEnhancementPage"
#    And user click on "OK" button on "PostEnhancementPage"


  #### its Done#########


