$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src/test/resources/Etisalat_DigitalApp/Android/HomeMove.feature");
formatter.feature({
  "line": 1,
  "name": "Login into Home Move Application and Submit a Home Move Request",
  "description": "",
  "id": "login-into-home-move-application-and-submit-a-home-move-request",
  "keyword": "Feature"
});
formatter.before({
  "duration": 21709328000,
  "status": "passed"
});
formatter.background({
  "line": 3,
  "name": "Login into Home Move Application Successfully",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 4,
  "name": "User has opened an application",
  "keyword": "Given "
});
formatter.match({
  "location": "CommonStepDefs.user_has_opened_an_application()"
});
formatter.result({
  "duration": 23707870300,
  "status": "passed"
});
formatter.scenario({
  "comments": [
    {
      "line": 5,
      "value": "#    When user click on \"skip\" button on \"StartingPage\""
    },
    {
      "line": 6,
      "value": "#    When user click on \"loginWithUsername\" button on \"StartingPage\""
    },
    {
      "line": 7,
      "value": "#    And user enter text \"homeMoveUsername\" in \"usernameField\" on \"LoginPage\""
    },
    {
      "line": 8,
      "value": "#    And user enter text \"homeMovePassword\" in \"passwordField\" on \"LoginPage\""
    },
    {
      "line": 9,
      "value": "#    And user wait for 5 second"
    },
    {
      "line": 10,
      "value": "#    When user click on \"login\" button on \"LoginPage\""
    },
    {
      "line": 11,
      "value": "#    And user wait for 5 second"
    },
    {
      "line": 12,
      "value": "#    When user click on \"notNow\" button on \"HomePage\""
    }
  ],
  "line": 15,
  "name": "Home Move External Shift Within Emirate without number change",
  "description": "",
  "id": "login-into-home-move-application-and-submit-a-home-move-request;home-move-external-shift-within-emirate-without-number-change",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 14,
      "name": "@Home_Move_with_Emirates"
    }
  ]
});
formatter.step({
  "line": 16,
  "name": "user click on \"userPlan\" button on \"Homepage\"",
  "keyword": "And "
});
formatter.step({
  "line": 17,
  "name": "user click on \"manageTab\" button on \"detailsPage\"",
  "keyword": "And "
});
formatter.step({
  "line": 18,
  "name": "user click on \"Plan\" button on \"detailsPage\"",
  "keyword": "And "
});
formatter.step({
  "line": 19,
  "name": "user click on \"HomeMove\" button on \"detailsPage\"",
  "keyword": "And "
});
formatter.step({
  "line": 20,
  "name": "Assert that \"ApplyInFewSteps\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 21,
  "name": "user click on \"GetStarted\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 22,
  "name": "user click on \"setFromMap\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 23,
  "name": "user click on \"searchOnMapField\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 24,
  "name": "user enter text \"addressOnMap\" in \"EnterTextField\" on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 25,
  "name": "user click on \"searchedAddress\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 26,
  "name": "user click on \"confirmLocation\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 27,
  "name": "user click on \"ExactAddressNumber\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 28,
  "name": "user enter text \"FloorApartmentVilla\" in \"ExactAddressNumber\" on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 29,
  "name": "user dismiss keyboard",
  "keyword": "And "
});
formatter.step({
  "line": 30,
  "name": "user click on \"continue\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "comments": [
    {
      "line": 31,
      "value": "#    And user click on \"changeNumber\" button on \"HomeMovePage\""
    },
    {
      "line": 32,
      "value": "#    And user select on \"NumberToBeChanged\" on \"HomeMovePage\""
    },
    {
      "line": 33,
      "value": "#    And user click on \"continue\" button on \"HomeMovePage\""
    }
  ],
  "line": 34,
  "name": "user click on \"movingDate\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 35,
  "name": "user click on \"continue\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "comments": [
    {
      "line": 36,
      "value": "#    And user click on \"selectDate\" button on \"HomeMovePage\""
    },
    {
      "line": 37,
      "value": "#    And user click on \"selectTime\" button on \"HomeMovePage\""
    },
    {
      "line": 38,
      "value": "#    And user click on \"continue\" button on \"HomeMovePage\""
    },
    {
      "line": 39,
      "value": "#    Then Assert that \"TelephoneNumber\" appear on \"HomeMovePage\""
    }
  ],
  "line": 40,
  "name": "user click on \"acceptAndContinue\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 41,
  "name": "Assert that \"PaymentSummaryTitle\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 42,
  "name": "Assert that \"PaymentSummaryMethod\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 43,
  "name": "Assert that \"PaymentSummaryDescription\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 44,
  "name": "Assert that \"StandardInstallationTitle\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 45,
  "name": "Assert that \"OneTimeCharge\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 46,
  "name": "Assert that \"OneTimeChargeValue\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 47,
  "name": "Assert that \"VATTitle\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 48,
  "name": "Assert that \"VATDescription\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 49,
  "name": "Assert that \"VATValue\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 50,
  "name": "Assert that \"HomeMoveRequestTitle\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 51,
  "name": "Assert that \"TotalAmount\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 52,
  "name": "Assert that \"AccountNumber\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 53,
  "name": "Assert that \"InstallationAdress\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 54,
  "name": "Assert that \"Moveoutdate\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 55,
  "name": "Assert that \"Yourcontactdetails\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "comments": [
    {
      "line": 56,
      "value": "#    Then Assert that \"Installationdate\" appear on \"HomeMovePage\""
    }
  ],
  "line": 57,
  "name": "Assert that \"Packagename\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.match({
  "arguments": [
    {
      "val": "userPlan",
      "offset": 15
    },
    {
      "val": "Homepage",
      "offset": 36
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 11210197200,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "manageTab",
      "offset": 15
    },
    {
      "val": "detailsPage",
      "offset": 37
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1847120100,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Plan",
      "offset": 15
    },
    {
      "val": "detailsPage",
      "offset": 32
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 6354270900,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "HomeMove",
      "offset": 15
    },
    {
      "val": "detailsPage",
      "offset": 36
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1135716300,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "ApplyInFewSteps",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 41
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1811822800,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "GetStarted",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 38
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1148241200,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "setFromMap",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 38
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1098380900,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "searchOnMapField",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 44
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 2973140500,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "addressOnMap",
      "offset": 17
    },
    {
      "val": "EnterTextField",
      "offset": 35
    },
    {
      "val": "HomeMovePage",
      "offset": 55
    }
  ],
  "location": "CommonStepDefs.user_enter_text_in_on(String,String,String)"
});
formatter.result({
  "duration": 3220719200,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "searchedAddress",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 43
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 2470568300,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "confirmLocation",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 43
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 3445825800,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "ExactAddressNumber",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 46
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 29678663600,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "FloorApartmentVilla",
      "offset": 17
    },
    {
      "val": "ExactAddressNumber",
      "offset": 42
    },
    {
      "val": "HomeMovePage",
      "offset": 66
    }
  ],
  "location": "CommonStepDefs.user_enter_text_in_on(String,String,String)"
});
formatter.result({
  "duration": 2593649200,
  "status": "passed"
});
formatter.match({
  "location": "CommonStepDefs.user_dismiss_keyboard()"
});
formatter.result({
  "duration": 1978366000,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "continue",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 36
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 940037000,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "movingDate",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 38
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 2024161200,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "continue",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 36
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 889475000,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "acceptAndContinue",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 45
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1184913100,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "PaymentSummaryTitle",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 45
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1547885800,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "PaymentSummaryMethod",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 46
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1077348000,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "PaymentSummaryDescription",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 51
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1073549200,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "StandardInstallationTitle",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 51
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1028221400,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "OneTimeCharge",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 39
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1132993800,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "OneTimeChargeValue",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 44
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1560903900,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "VATTitle",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 34
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1458856500,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "VATDescription",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 40
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1047054500,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "VATValue",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 34
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1067404100,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "HomeMoveRequestTitle",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 46
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1018058100,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "TotalAmount",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 37
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1007948800,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "AccountNumber",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 39
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1041152700,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "InstallationAdress",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 44
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1566294300,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Moveoutdate",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 37
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1056103200,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Yourcontactdetails",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 44
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1058604500,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Packagename",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 37
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 948715700,
  "status": "passed"
});
formatter.after({
  "duration": 153500,
  "status": "passed"
});
formatter.after({
  "duration": 26700,
  "status": "passed"
});
formatter.before({
  "duration": 148300,
  "status": "passed"
});
formatter.background({
  "line": 3,
  "name": "Login into Home Move Application Successfully",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 4,
  "name": "User has opened an application",
  "keyword": "Given "
});
formatter.match({
  "location": "CommonStepDefs.user_has_opened_an_application()"
});
formatter.result({
  "duration": 16990757800,
  "status": "passed"
});
formatter.scenario({
  "comments": [
    {
      "line": 58,
      "value": "#    And user click on \"SubmmitRequest\" button on \"HomeMovePage\""
    }
  ],
  "line": 61,
  "name": "External Shit outside Emirate, with number change",
  "description": "",
  "id": "login-into-home-move-application-and-submit-a-home-move-request;external-shit-outside-emirate,-with-number-change",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 60,
      "name": "@Home_Move_out_of_Emirates"
    }
  ]
});
formatter.step({
  "line": 62,
  "name": "user click on \"userPlan\" button on \"Homepage\"",
  "keyword": "And "
});
formatter.step({
  "line": 63,
  "name": "user click on \"manageTab\" button on \"detailsPage\"",
  "keyword": "And "
});
formatter.step({
  "line": 64,
  "name": "user click on \"Plan\" button on \"detailsPage\"",
  "keyword": "And "
});
formatter.step({
  "line": 65,
  "name": "user click on \"HomeMove\" button on \"detailsPage\"",
  "keyword": "And "
});
formatter.step({
  "line": 66,
  "name": "Assert that \"ApplyInFewSteps\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 67,
  "name": "user click on \"GetStarted\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 68,
  "name": "user click on \"setFromMap\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 69,
  "name": "user click on \"searchOnMapField\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 70,
  "name": "user enter text \"addressOutsideEmirates\" in \"EnterTextField\" on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 71,
  "name": "user click on \"searchedAddress\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 72,
  "name": "user click on \"confirmLocation\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 73,
  "name": "user click on \"ExactAddressNumber\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 74,
  "name": "user enter text \"FloorApartmentVilla\" in \"ExactAddressNumber\" on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 75,
  "name": "user dismiss keyboard",
  "keyword": "And "
});
formatter.step({
  "line": 76,
  "name": "user click on \"continue\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "comments": [
    {
      "line": 77,
      "value": "#  Validate on clicking continue, the GPON check is triggered, in this case select GPON location."
    },
    {
      "line": 78,
      "value": "#  Validate message is displayed informing customer that number will be changed since moving to different emirates."
    }
  ],
  "line": 79,
  "name": "user click on \"ChangeNumber\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 80,
  "name": "user select on \"SelectNumber\" on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 81,
  "name": "user click on \"continue\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 82,
  "name": "user click on \"continue\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 84,
  "name": "user click on \"movingDate\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 85,
  "name": "user click on \"continue\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "comments": [
    {
      "line": 86,
      "value": "#  Validate customer gets the option to choose date on which it wishes the installation on new address."
    },
    {
      "line": 87,
      "value": "#    And user click on \"selectDate\" button on \"HomeMovePage\""
    },
    {
      "line": 88,
      "value": "#    And user click on \"selectTime\" button on \"HomeMovePage\""
    },
    {
      "line": 89,
      "value": "#    And user click on \"continue\" button on \"HomeMovePage\""
    },
    {
      "line": 90,
      "value": "#    Then Assert that \"TelephoneNumber\" appear on \"HomeMovePage"
    },
    {
      "line": 91,
      "value": "#  Validate dates are listed with dates and next date with \"Express\" tag, which triggers the express flow."
    },
    {
      "line": 92,
      "value": "#  Validate on selecting standard installation, it displays standard charges, VAT and total charges with continue option."
    }
  ],
  "line": 94,
  "name": "user click on \"acceptAndContinue\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 95,
  "name": "Assert that \"PaymentSummaryTitle\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 96,
  "name": "Assert that \"PaymentSummaryMethod\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 97,
  "name": "Assert that \"PaymentSummaryDescription\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 98,
  "name": "Assert that \"StandardInstallationTitle\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 99,
  "name": "Assert that \"OneTimeCharge\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 100,
  "name": "Assert that \"OneTimeChargeValue\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 101,
  "name": "Assert that \"VATTitle\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 102,
  "name": "Assert that \"VATDescription\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 103,
  "name": "Assert that \"VATValue\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 104,
  "name": "Assert that \"HomeMoveRequestTitle\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 105,
  "name": "Assert that \"TotalAmount\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 106,
  "name": "Assert that \"AccountNumber\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 107,
  "name": "Assert that \"InstallationAdress\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 108,
  "name": "Assert that \"Moveoutdate\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 109,
  "name": "Assert that \"Yourcontactdetails\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "comments": [
    {
      "line": 110,
      "value": "#    Then Assert that \"Installationdate\" appear on \"HomeMovePage\""
    }
  ],
  "line": 111,
  "name": "Assert that \"Packagename\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.match({
  "arguments": [
    {
      "val": "userPlan",
      "offset": 15
    },
    {
      "val": "Homepage",
      "offset": 36
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 11382831900,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "manageTab",
      "offset": 15
    },
    {
      "val": "detailsPage",
      "offset": 37
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 3886033500,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Plan",
      "offset": 15
    },
    {
      "val": "detailsPage",
      "offset": 32
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 2926677700,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "HomeMove",
      "offset": 15
    },
    {
      "val": "detailsPage",
      "offset": 36
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1094907700,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "ApplyInFewSteps",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 41
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1863097600,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "GetStarted",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 38
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1944549900,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "setFromMap",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 38
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 851795000,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "searchOnMapField",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 44
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 2944196500,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "addressOutsideEmirates",
      "offset": 17
    },
    {
      "val": "EnterTextField",
      "offset": 45
    },
    {
      "val": "HomeMovePage",
      "offset": 65
    }
  ],
  "location": "CommonStepDefs.user_enter_text_in_on(String,String,String)"
});
formatter.result({
  "duration": 3456686400,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "searchedAddress",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 43
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 3205458400,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "confirmLocation",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 43
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1125347400,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "ExactAddressNumber",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 46
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 3572431600,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "FloorApartmentVilla",
      "offset": 17
    },
    {
      "val": "ExactAddressNumber",
      "offset": 42
    },
    {
      "val": "HomeMovePage",
      "offset": 66
    }
  ],
  "location": "CommonStepDefs.user_enter_text_in_on(String,String,String)"
});
formatter.result({
  "duration": 3025283300,
  "status": "passed"
});
formatter.match({
  "location": "CommonStepDefs.user_dismiss_keyboard()"
});
formatter.result({
  "duration": 1866411500,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "continue",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 36
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 891013900,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "ChangeNumber",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 40
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 4236782000,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "SelectNumber",
      "offset": 16
    },
    {
      "val": "HomeMovePage",
      "offset": 34
    }
  ],
  "location": "CommonStepDefs.user_select_on(String,String)"
});
formatter.result({
  "duration": 1624489700,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "continue",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 36
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 939682300,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "continue",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 36
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 2402700200,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "movingDate",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 38
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1372399400,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "continue",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 36
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 865306700,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "acceptAndContinue",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 45
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1252145100,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "PaymentSummaryTitle",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 45
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1332976300,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "PaymentSummaryMethod",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 46
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 997918700,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "PaymentSummaryDescription",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 51
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 985188300,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "StandardInstallationTitle",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 51
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 990644300,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "OneTimeCharge",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 39
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 949752000,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "OneTimeChargeValue",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 44
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1053169100,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "VATTitle",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 34
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1027961300,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "VATDescription",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 40
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1031829800,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "VATValue",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 34
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 993044800,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "HomeMoveRequestTitle",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 46
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 927120900,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "TotalAmount",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 37
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1054989500,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "AccountNumber",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 39
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1007116700,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "InstallationAdress",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 44
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 965013700,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Moveoutdate",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 37
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 965386200,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Yourcontactdetails",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 44
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 983683500,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Packagename",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 37
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 988363100,
  "status": "passed"
});
formatter.after({
  "duration": 49300,
  "status": "passed"
});
formatter.after({
  "duration": 23800,
  "status": "passed"
});
formatter.before({
  "duration": 147100,
  "status": "passed"
});
formatter.background({
  "line": 3,
  "name": "Login into Home Move Application Successfully",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 4,
  "name": "User has opened an application",
  "keyword": "Given "
});
formatter.match({
  "location": "CommonStepDefs.user_has_opened_an_application()"
});
formatter.result({
  "duration": 16146649500,
  "status": "passed"
});
formatter.scenario({
  "comments": [
    {
      "line": 112,
      "value": "#        And user click on \"SubmmitRequest\" button on \"HomeMovePage\""
    }
  ],
  "line": 116,
  "name": "Verify system allow External shift flow by Manage Card\u003e Home Move",
  "description": "",
  "id": "login-into-home-move-application-and-submit-a-home-move-request;verify-system-allow-external-shift-flow-by-manage-card\u003e-home-move",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 115,
      "name": "@Home_Move_Manage_Card"
    }
  ]
});
formatter.step({
  "line": 117,
  "name": "user click on \"userPlan\" button on \"Homepage\"",
  "keyword": "And "
});
formatter.step({
  "line": 118,
  "name": "user click on \"manageTab\" button on \"detailsPage\"",
  "keyword": "And "
});
formatter.step({
  "line": 119,
  "name": "user scroll till text \"Home Move\"",
  "keyword": "And "
});
formatter.step({
  "line": 120,
  "name": "Assert that \"HomeMoveTitle\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "comments": [
    {
      "line": 121,
      "value": "#    And user click on \"HomeMoveOption\" button on \"detailsPage\""
    }
  ],
  "line": 122,
  "name": "user click on \"HomeMoveoption\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.step({
  "line": 123,
  "name": "Assert that \"HomeMoveHeading\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "comments": [
    {
      "line": 124,
      "value": "# Then Assert that \"HomeMoveImage\" appear on \"HomeMovePage\" this step should be done with isdisplay property"
    }
  ],
  "line": 125,
  "name": "Assert that \"ApplyInFewSteps\" appear on \"HomeMovePage\"",
  "keyword": "Then "
});
formatter.step({
  "line": 126,
  "name": "user click on \"GetStarted\" button on \"HomeMovePage\"",
  "keyword": "And "
});
formatter.match({
  "arguments": [
    {
      "val": "userPlan",
      "offset": 15
    },
    {
      "val": "Homepage",
      "offset": 36
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 11478585100,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "manageTab",
      "offset": 15
    },
    {
      "val": "detailsPage",
      "offset": 37
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1546110600,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Home Move",
      "offset": 23
    }
  ],
  "location": "CommonStepDefs.user_scroll_till_text(String)"
});
formatter.result({
  "duration": 4176363300,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "HomeMoveTitle",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 39
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 3185134500,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "HomeMoveoption",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 42
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1144628900,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "HomeMoveHeading",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 41
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1603491300,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "ApplyInFewSteps",
      "offset": 13
    },
    {
      "val": "HomeMovePage",
      "offset": 41
    }
  ],
  "location": "CommonStepDefs.assert_that_appear_on(String,String)"
});
formatter.result({
  "duration": 1429028800,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "GetStarted",
      "offset": 15
    },
    {
      "val": "HomeMovePage",
      "offset": 38
    }
  ],
  "location": "CommonStepDefs.user_click_on_button_on(String,String)"
});
formatter.result({
  "duration": 1035909300,
  "status": "passed"
});
formatter.after({
  "duration": 68100,
  "status": "passed"
});
formatter.after({
  "duration": 28400,
  "status": "passed"
});
});