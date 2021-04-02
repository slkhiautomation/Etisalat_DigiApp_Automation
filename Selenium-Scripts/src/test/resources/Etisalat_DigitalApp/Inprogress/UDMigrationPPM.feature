Feature: UD Migration PPM Feature File

  Background: user has opened an application and successfully logged in
    Given User has opened an application
    When user click on "skip" button on "StartingPage"
    When user click on "loginWithUsername" button on "StartingPage"
    And user enter text "MigrationUsername" in "usernameField" on "LoginPage"
    And user enter text "MigrationPassword" in "passwordField" on "LoginPage"
    When user click on "login" button on "LoginPage"

  @UDMigrationPPM1
  Scenario: Verify the UD Migration PPM
    When user click on "notNow" button on "UDMigrationPPMPage"
    When user click on "MigrationMenu" on "UDMigrationPPMPage"
    When user click on "PostpaidMenu" on "UDMigrationPPMPage"
    When user select on "PostpaidSelect" on "UDMigrationPPMPage"
    When user click on "continueButton" on "UDMigrationPPMPage"
    When user click on "choseNumber" on "UDMigrationPPMPage"
    When user click on "cn_continueButton" on "UDMigrationPPMPage"
    When user click on "YesIAcceptRadio" on "UDMigrationPPMPage"
    When user click on "YesIAcceptButton" on "UDMigrationPPMPage"
    When user click on "GoToCartButton" on "UDMigrationPPMPage"
    When user click on "CheckoutButton" on "UDMigrationPPMPage"
    When user click on "ContactDetailsContinueButton" on "UDMigrationPPMPage"
    When user click on "DeliveryContinueButton" on "UDMigrationPPMPage"
    When user click on "PlaceOrderButton" on "UDMigrationPPMPage"

#    Then Assert that "AECBCheck" appear on "UDMigrationPPMPage"