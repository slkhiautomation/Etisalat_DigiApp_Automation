package Test.Automation.Stepdefinitions;

//public class CommonStepDefsiOS {
//}
import Test.Automation.Pages.CommonPage;
import Test.Automation.Utils.DriverFactory;
import Test.Automation.Utils.PropertyReader;
import Test.Automation.Utils.UtilityMethods;
import com.cucumber.listener.Reporter;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.MobileElement;

import java.util.List;

import static Test.Automation.Utils.ExcelFileManager.readFromCell;

public class CommonStepDefsiOS extends DriverFactory {

    private CommonPage commonPage;
    public static String DatafileName = (new PropertyReader().readProperty("excelFileName"));
    public static int count = 1;
    public static int EN_count = 1;
    public static int AR_count = 1;
    public static int DES_count = 1;

    public CommonStepDefsiOS() throws Exception {
        commonPage = new CommonPage(driver);
    }

    @And("^User click on setMap button$")
    public void hardcoded_click() throws Throwable{

            MobileElement el2 = (MobileElement) ((AppiumDriver)driver).findElementByAccessibilityId("SET FROM MAP");
            el2.click();
    }

    @And("^User click on Addonlist button$")
    public void Addonlist_click() throws Throwable{

        UtilityMethods.wait6Seconds();

        MobileElement el9 = (MobileElement) ((AppiumDriver)driver).findElementsByXPath("//XCUIElementTypeStaticText[@value=\"49.00 AED\"]");
        el9.click();
    }

    @And("^User click on Viewdetails button$")
    public void Viewdetails_click() throws Throwable{


        MobileElement el4 = (MobileElement) ((AppiumDriver)driver).findElementsByXPath("//XCUIElementTypeStaticText[@label=\"View details\"]");
        el4.click();
    }


    @And("^User click on Cancelsubscription button$")
    public void Cancelsubscription_click() throws Throwable{


        MobileElement el6 = (MobileElement) ((AppiumDriver)driver).findElementsByXPath("//XCUIElementTypeStaticText[@label=\"Cancel subscription\"]");
        el6.click();
    }




    @And("^User click on searchedAddress button$")
    public void hardcodedss_click() throws Throwable{
    wait(5000);
        MobileElement el5 = (MobileElement) ((AppiumDriver)driver).findElementByXPath("(//XCUIElementTypeStaticText[@Value='Lato-Bold'])[2]");
        el5.click();


    }














//    @When("^user enter text \"([^\"]*)\" in \"([^\"]*)\" on \"([^\"]*)\"$")
//    public void user_enter_text_in_on(String textKey, String keyName, String sheetName) throws Throwable {
//
//        String text = readFromCell(DatafileName, sheetName, 1, textKey);
//        commonPage.enterText(sheetName, keyName, text);
//        Reporter.addStepLog("Test Data " + text);
//        Reporter.addStepLog("Entered " + text + " in " + keyName);
//        Reporter.addStepLog("Action Performed on " + sheetName);
//        UtilityMethods.TakeSnapShot();
//    }

//    @When("^user click on \"([^\"]*)\" button on \"([^\"]*)\"$")
//    public void user_click_on_button_on(String keyName, String sheetName) throws Throwable {
//
//        commonPage.Clickelemet(sheetName, keyName);
//        Reporter.addStepLog("Click on " + keyName);
//        Reporter.addStepLog("Action Performed on " + sheetName);
//        UtilityMethods.TakeSnapShot();
//    }
//
//    @When("^user select \"([^\"]*)\" from \"([^\"]*)\" on \"([^\"]*)\"$")
//    public void user_select_from_on(String textKey, String keyName, String sheetName) throws Throwable {
//        String text = readFromCell(DatafileName, sheetName, 1, textKey);
//        commonPage.selectDDValue(sheetName, keyName, text);
//        Reporter.addStepLog("Test Data Used " + text);
//        Reporter.addStepLog("Selected " + text + " from " + keyName);
//        Reporter.addStepLog("Action Performed on " + sheetName);
//        UtilityMethods.TakeSnapShot();
//    }
//
//    @Then("^Assert that \"([^\"]*)\" appear on \"([^\"]*)\"$")
//    public void assert_that_appear_on(String keyName, String sheetName) throws Throwable {
//        commonPage.assertonPage(sheetName, keyName);
//        String text = readFromCell(DatafileName, sheetName, 1, keyName);
//        Reporter.addStepLog("Validate Value " + text + " on " + sheetName);
//        UtilityMethods.TakeSnapShot();
//    }
//
//    @Given("^user scroll to \"([^\"]*)\" on \"([^\"]*)\"$")
//    public void user_scroll_to_on(String keyName, String sheetName) throws Throwable {
//        commonPage.Scrollelemet(sheetName, keyName);
//        Reporter.addStepLog("Click on " + keyName);
//        Reporter.addStepLog("Action Performed on " + sheetName);
//        UtilityMethods.TakeSnapShot();
//    }
//
//    @And("^user scroll till text \"([^\"]*)\"$")
//    public void user_scroll_till_text(String text) {
//        commonPage.scrollTillText(text);
//    }
//
//    @And("Assert that \"([^\"]*)\" is \"([^\"]*)\" on \"([^\"]*)\"")
//    public void assertThatIsOn(String keyName, String attribute, String sheetName) throws Throwable {
//        commonPage.elementAttribute(sheetName, attribute, keyName);
//        String text = readFromCell(DatafileName, sheetName, 1, keyName);
//        Reporter.addStepLog("Validate " + text + " is " + attribute);
//        UtilityMethods.TakeSnapShot();
//    }
//
//    @Then("Assert that Value \"([^\"]*)\" is appeared at \"([^\"]*)\" on \"([^\"]*)\"")
//    public void assertThatValueIsAppearedAtOn(String text, String keyName, String sheetName) throws Throwable {
//        text = readFromCell(DatafileName, sheetName, 1, text);
//        commonPage.ValidateValue(text, sheetName, keyName);
//        Reporter.addStepLog("Expected Message " + text);
//        UtilityMethods.TakeSnapShot();
//    }
//
//    @And("user dismiss keyboard")
//    public void user_dismiss_keyboard() {
//        //driver.navigate().back();
//        ((AppiumDriver) driver).hideKeyboard();
//    }
//
//    @And("user wait for loading")
//    public void user_wait_for_loading() {
//
//    }
//
//
//    @And("^user scroll till texts \"([^\"]*)\"$")
//    public void user_scroll_till_texts(String text) throws InterruptedException {
//        commonPage.scrollDown();
//    }
//
//
//    @And("^user scroll down")
//    public void user_scroll_till_texts() throws InterruptedException {
//        commonPage.scroll();
//    }



}
