Feature: UD Migration CR2 Feature File

  Background: user has opened an application and successfully logged in
    Given User has opened an application
    When user click on "skip" button on "StartingPage"
    When user click on "loginWithUsername" button on "StartingPage"
    And user enter text "MigrationUsername" in "usernameField" on "LoginPage"
    And user enter text "MigrationPassword" in "passwordField" on "LoginPage"
    When user click on "login" button on "LoginPage"

  @UDMigrationCR21
  Scenario: Verify the UD Migration CR2
    #    When user click on "notNow" button on "UDMigrationPPMPage"
    When user click on "etisalatShop" button on "UDMigrationPPMPage"
    #And user scroll till texts "Freedom Plan 1200"
    And user scroll down
    And user click on "freedomPlan" button on "UDMigrationPPMPage"
    And user click on "selectPlan" button on "UDMigrationPPMPage"
    And user click on "continue" button on "HomeMovePage"
    And user click on "chooseNumber" button on "UDMigrationPPMPage"
    And user click on "continue" button on "HomeMovePage"
    And user click on "yesIAccepcheckbox" button on "UDMigrationPPMPage"
    And user click on "YesIAcceptButton" button on "UDMigrationPPMPage"












    When user click on "notNow" button on "UDMigrationCR2Page"
    When user click on "MigrationMenu" on "UDMigrationCR2Page"
    When user click on "PostpaidMenu" on "UDMigrationCR2Page"
    When user select on "PostpaidSelect" on "UDMigrationCR2Page"
    When user click on "continueButton" on "UDMigrationCR2Page"
    When user click on "choseNumber" on "UDMigrationCR2Page"
    When user click on "cn_continueButton" on "UDMigrationCR2Page"
    When user click on "YesIAcceptRadio" on "UDMigrationCR2Page"
    When user click on "YesIAcceptButton" on "UDMigrationCR2Page"
    When user click on "GoToCartButton" on "UDMigrationCR2Page"
    When user click on "CheckoutButton" on "UDMigrationCR2Page"
    When user click on "ContactDetailsContinueButton" on "UDMigrationCR2Page"
    When user click on "DeliveryContinueButton" on "UDMigrationCR2Page"
    When user click on "PlaceOrderButton" on "UDMigrationCR2Page"

    When user click on "BillSummaryPage" on "UDMigrationCR2Page"
    Then Assert that "ExitCharges" appear on "UDMigrationCR2Page"
    When user click on "ConfirmButton" on "UDMigrationCR2Page"
    Then Assert that "RequestForChangePlan" appear on "UDMigrationCR2Page"
