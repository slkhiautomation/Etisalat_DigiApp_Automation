Feature: Plans and Add ons feature file

  Background: user has opened an application and successfully logged in
    Given User has opened an application
#    When user click on "skip" button on "StartingPage"
#    When user click on "loginWithUsername" button on "StartingPage"
#    And user enter text "PlansAndAddonsUsername" in "usernameField" on "LoginPage"
#    And user enter text "PlansAndAddonsPassword" in "passwordField" on "LoginPage"
#    And user dismiss keyboard
#    When user click on "login" button on "LoginPage"

  @Plans_and_Addons_Scenario_1
  Scenario: Verify the plans and addons
#    When user click on "notNow" button on "PlansAndAddonsPage"
    When user click on "EtisalatShopMenu2" on "PlansAndAddonsPage"
    When user click on "AddOns" on "PlansAndAddonsPage"
    When user click on "AddOnsTab" on "PlansAndAddonsPage"
    When user click on "AddOnsDrop" on "PlansAndAddonsPage"