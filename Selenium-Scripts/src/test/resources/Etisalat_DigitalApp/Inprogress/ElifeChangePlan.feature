Feature: Elife Change Plan

  Background: user has opened an application and successfully logged in
    Given User has opened an application
    When user click on "login" button on "StartingPage"
    And user enter text "username" in "usernameField" on "LoginPage"
    And user enter text "password" in "passwordField" on "LoginPage"
    When user click on "login" button on "LoginPage"
    When user click on "notNow" button on "StartingPage"
#shanza Started from here
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

    Then Assert that "currentPlan" appear on "elifeChangePlanPage"
    Then Assert that "newPlan" appear on "elifeChangePlanPage"
    Then Assert that "general" appear on "elifeChangePlanPage"
    Then Assert that "termsAndConditions" appear on "elifeChangePlanPage"
    #When user click on "termsAndConditions" button on "elifeChangePlanPage"
#multiLevel assertion
    Then Assert that "alreadyexist" appear on "elifeChangePlanPage"
    Then Assert that "newlyCaptured" appear on "elifeChangePlanPage"
#capture newly created??
    Then Assert that "freedelievry" appear on "elifeChangePlanPage"

    And user select on "installationDate" on "elifeChangePlanPage"
    Then Assert that "reviewDetail" appear on "elifeChangePlanPage"
    And user click on "confirmRequest" on "elifeChangePlanPage"
    Then Assert that "SuccessMsg" appear on "elifeChangePlanPage"
      #ifelse
    Then Assert that "woCreation" appear on "elifeChangePlanPage"
    Then Assert that "newPackage" appear on "elifeChangePlanPage"
#email and Sms assertion
    Then Assert that "montlyCharges" appear on "elifeChangePlanPage"
    Then Assert that "proratedCharges" appear on "elifeChangePlanPage"
    Then Assert that "monthlyRentalCharges" appear on "elifeChangePlanPage"
#monthly addon
    Then Assert that "ExistCharges" appear on "elifeChangePlanPage"
 #exist charges flow
