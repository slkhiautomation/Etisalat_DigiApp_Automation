Feature: Migration Feature File

  Background: user has opened an application and successfully logged in
    Given User has opened an application
    When user click on "skip" button on "StartingPage"
    When user click on "loginWithUsername" button on "StartingPage"
    And user enter text "MigrationUsername" in "usernameField" on "LoginPage"
    And user enter text "MigrationPassword" in "passwordField" on "LoginPage"
    When user click on "login" button on "LoginPage"

  @Migration
  Scenario: Verify the Migration
    When user click on "notNow" button on "MigrationPage"
    When user click on "MigrationMenu" on "MigrationPage"
    When user click on "PostpaidMenu" on "MigrationPage"
    When user select on "PostpaidSelect" on "MigrationPage"
    When user click on "continueButton" on "MigrationPage"
    When user click on "choseNumber" on "MigrationPage"
    When user click on "cn_continueButton" on "MigrationPage"
    When user click on "YesIAcceptRadio" on "MigrationPage"
    When user click on "YesIAcceptButton" on "MigrationPage"
    When user click on "GoToCartButton" on "MigrationPage"
    When user click on "CheckoutButton" on "MigrationPage"
    When user click on "ContactDetailsContinueButton" on "MigrationPage"
    When user click on "DeliveryContinueButton" on "MigrationPage"
    When user click on "PlaceOrderButton" on "MigrationPage"