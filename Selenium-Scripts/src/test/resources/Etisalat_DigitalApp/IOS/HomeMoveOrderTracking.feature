Feature: Home Move Order Tracking

  Background: Login into Home Move Application Successfully
    Given User has opened an application
    When user click on "skip" button on "StartingPage"
    When user click on "loginWithUsername" button on "StartingPage"
    And user enter text "homeMoveUsername" in "usernameField" on "LoginPage"
    And user enter text "homeMovePassword" in "passwordField" on "LoginPage"
    And user dismiss keyboard
    When user click on "login" button on "LoginPage"

  @HomeMoveOrderTracking1
  Scenario: Verify the Home Move Order Tracking
    When user click on "notNow" button on "HomeMoveOrderTrackingPage"
    When user click on "SupportMenu" button on "HomeMoveOrderTrackingPage"
    Then Assert that "HomeMoveRequestStatus" appear on "HomeMoveOrderTrackingPage"

    Then Assert that "RequestNumber" appear on "HomeMoveOrderTrackingPage"
    Then Assert that "OrderBar" appear on "HomeMoveOrderTrackingPage"
    Then Assert that "OrderStatus" appear on "HomeMoveOrderTrackingPage"
    Then Assert that "StatusStartDate" appear on "HomeMoveOrderTrackingPage"
    Then Assert that "OrderSubStatus" appear on "HomeMoveOrderTrackingPage"

    Then Assert that "DateOrderWasPlaced" appear on "HomeMoveOrderTrackingPage"
    Then Assert that "NameOfTheRequest" appear on "HomeMoveOrderTrackingPage"
    Then Assert that "RequestNumber" appear on "HomeMoveOrderTrackingPage"
    Then Assert that "AccountNumber" appear on "HomeMoveOrderTrackingPage"
    Then Assert that "ProgressBar" appear on "HomeMoveOrderTrackingPage"
    Then Assert that "StatusAndSubStatus" appear on "HomeMoveOrderTrackingPage"