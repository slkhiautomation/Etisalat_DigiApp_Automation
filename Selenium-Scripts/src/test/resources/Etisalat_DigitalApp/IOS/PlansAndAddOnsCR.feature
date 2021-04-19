Feature: PlansAndAddOnsCR

Background: user has opened an application and successfully logged in
Given User has opened an application
#When user click on "skip" button on "StartingPage"
#When user click on "loginWithUsername" button on "StartingPage"
#And user enter text "PlansAndAddonsUsername" in "usernameField" on "LoginPage"
#And user enter text "PlansAndAddonsPassword" in "passwordField" on "LoginPage"
#And user dismiss keyboard
#When user click on "login" button on "LoginPage"

  @Plans_and_Addons_Scenario_2
  Scenario:TC_227_Verify unsubscription of end of cycle addon in mid month

    And user click on "userPlan" button on "Homepage"
    And user click on "manageTab" button on "detailsPage"
    And user scroll down
    And user click on "Myaddon" button on "PlansAndAddonsPage"
    #When user tap on "SelectsubPlan" on "PlansAndAddonsPage"
    And user click on "SelectsubPlan" button on "PlansAndAddonsPage"
    Then Assert that "Viewdetails" appear on "PlansAndAddonsPage"
    Then Assert that "CancelSubscripation" appear on "PlansAndAddonsPage"
    And user click on "CancelSubscripation" button on "PlansAndAddonsPage"
   # And user click on "YesPlease" button on "PlansAndAddonsPage"





