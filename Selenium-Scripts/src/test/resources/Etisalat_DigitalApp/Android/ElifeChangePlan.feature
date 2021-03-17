Feature: Elife Change Plan

  Background: user has opened an application and successfully logged in
    Given User has opened an application
    When user click on "login" button on "StartingPage"
    And user enter text "username" in "usernameField" on "LoginPage"
    And user enter text "password" in "passwordField" on "LoginPage"
    When user click on "login" button on "LoginPage"
    When user click on "notNow" button on "StartingPage"

  @ElifeChangePlan
  Scenario: Verify the Elife Change plan & Migration
    When user click on "shop" button on "elifeChangePlanPage"
    And user click on "home" button on "elifeChangePlanPage"
    When user select on "changePlan" on "elifeChangePlanPage"
#verify list
    Then Assert that "elife4" appear on "elifeChangePlanPage"
    Then Assert that "unlimitedpkg" appear on "elifeChangePlanPage"

    When user select on "TargetPackage" on "elifeChangePlanPage"
    Then Assert that "speed" appear on "elifeChangePlanPage"
    Then Assert that "rental" appear on "elifngePlanPage"
    And user click on "commitment" on "elifeChangePlanPage"
    And user click on "noCommitment" on "elifeChangePlanPage"
# new screen for device
    And user click on "continue" on "elifeChangePlanPage"
#SSS Mini packs
    Then Assert that "miniPack" appear on "elifeChangePlanPage"
    Then Assert that "telephone" appear on "elifeChangePlanPage"
    Then Assert that "stb" appear on "elifeChangePlanPage"
    Then Assert that "router" appear on "elifeChangePlanPage"

    Then Assert that "optionAddons" appear on "elifeChangePlanPage"

    Then Assert that "currentPlan" appear on "elifngePlanPage"
    Then Assert that "newPlan" appear on "elifngePlanPage"
    Then Assert that "general" appear on "elifngePlanPage"
    Then Assert that "termsAndConditions" appear on "elifngePlanPage"
    #When user click on "termsAndConditions" button on "elifeChangePlanPage"
#multiLevel assertion
    Then Assert that "alreadyexist" appear on "elifngePlanPage"
    Then Assert that "newlyCaptured" appear on "elifngePlanPage"
#capture newly created??
    Then Assert that Value "freedelievry" is appeared at "freedelievry" on "elifngePlanPage"

    And user select on "installationDate" on "elifeCeChangePlanPage"
    Then Assert that Value "reviewDetail" is appeared at "reviewDetail" on "elifngePlanPage"
    And user click on "confirmRequest" on "elifeChangePlanPage"

    Then Assert that Value "SuccessMsg" is appeared at "successMsg" on "elifngePlanPage"
      #ifelse
    Then Assert that "woCreation" appear on "elifngePlanPage"
    Then Assert that "newPackage" appear on "elifngePlanPage"
#email and Sms assertion
    Then Assert that "montlyCharges" appear on "elifngePlanPage"
    Then Assert that "proratedCharges" appear on "elifngePlanPage"
    Then Assert that Value "monthlyRentalCharges" is appeared at " monthlyRentalCharges " on "elifngePlanPage"

#monthly addon
    Then Assert that "ExistCharges" appear on "elifngePlanPage"
 #exist charges flow
