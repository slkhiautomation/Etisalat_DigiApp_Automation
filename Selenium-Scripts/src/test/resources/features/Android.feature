Feature: Open Help and Support and Search for any FAQ

  Background: user has opened an application and successfully logged in
    Given User has opened an application
    When user click on "login" button on "StartingPage"
    And user enter text "username" in "usernameField" on "LoginPage"
    And user enter text "password" in "passwordField" on "LoginPage"
    And user dismiss keyboard
    When user click on "login" button on "LoginPage"

  @FaqTest
  Scenario: Search in help and support and verify FAQ results are fetched
    When user click on "notNow" button on "Homepage"
    And user click on "topRightMenu" button on "HomePage"
    And user scroll till text "Help & Support"
    And user click on "helpAndSupport" button on "Menu"
    And user scroll till text "Self Support"
    And user click on "selfSupport" button on "Menu"
    And user enter text "searchQuery" in "searchField" on "HelpAndSupport"
    Then Assert that "FaqSection" appear on "HelpAndSupport"