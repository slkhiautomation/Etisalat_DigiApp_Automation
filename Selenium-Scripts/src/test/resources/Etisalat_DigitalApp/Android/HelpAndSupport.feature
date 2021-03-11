Feature: Help and Support Feature File

  Background: user has opened an application and successfully logged in
    Given User has opened an application
    When user click on "login" button on "StartingPage"
    And user enter text "username" in "usernameField" on "LoginPage"
    And user enter text "password" in "passwordField" on "LoginPage"
    When user click on "login" button on "LoginPage"

  @Scenario1
  Scenario: Verify the Similar Results FAQ
#    When user click on "logoutButton" button on "HelpAndSupportPage"
    When user click on "notNow" button on "HelpAndSupportPage"
    When user click on "supportMenu" button on "HelpAndSupportPage"
    When user click on "supportField" button on "HelpAndSupportPage"
    And user enter text "search" in "searchField" on "HelpAndSupportPage"
    When user click on "faq" button on "HelpAndSupportPage"
    Then Assert that "faqText" appear on "HelpAndSupportPage"
    When user click on "yesButton" button on "HelpAndSupportPage"
    Then Assert that "ThanksText" appear on "HelpAndSupportPage"
    When user click on "faq" button on "HelpAndSupportPage"
    Then Assert that "faqText" appear on "HelpAndSupportPage"
    When user click on "noButton" button on "HelpAndSupportPage"
    And user enter text "feedBackText" in "feedBackField" on "FeedBackPage"
    When user click on "feedBackButton" button on "FeedBackPage"
    Then Assert that "ThanksText" appear on "HelpAndSupportPage"