Feature: FAQs Feature File

  Background:
    Given Launch the Mobile Application
    And User navigate to login page
    And User enter username and password
    When Click on login button
    Then User should be logged into the application
    And User navigate to FAQs Page

  @FaqTest1
  Scenario: Find FAQs From Topics and Give Feedback as Yes

    And User select Faq Topic
    And User select Faq Sub Topic
    And User select the Particular Faq Question
    Then User should see Feedback page and click yes