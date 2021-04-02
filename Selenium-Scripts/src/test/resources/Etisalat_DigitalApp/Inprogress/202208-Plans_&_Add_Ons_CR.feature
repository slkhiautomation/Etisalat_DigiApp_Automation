Feature: Login into Home Move Application and Submit a Home Move Request

  Background: Login into Home Move Application Successfully
    Given User has opened an application

  @TC_227 @TC_32
  Scenario: TC_227_Verify un-subscription of end of cycle addon in mid month
#  Validate under current addon all the active addons are listed.
#  Validate on selection of the addon further detail page is opened for the addon.
#  Validate it displayes the details of the addon with unsubscription option.
#  Validate on clicking unsubscribe, final confirmation screen appears with option to confirm or cancel.
#  Validate on confirming the unsubscription, the addon will be unsubscribed end of the cycle.
#  Validate addon is removed at end of the month.
#  Validate once unsubscribed, the addon should not appear under current addons.
#  Validate as per unsubscription the allowance is updated.
    And user click on "userPlan" button on "PlansAndAddonsPage"
    And user click on "manageTab" button on "detailsPage"
