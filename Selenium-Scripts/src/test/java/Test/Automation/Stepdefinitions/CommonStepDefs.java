package Test.Automation.Stepdefinitions;

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

import static Test.Automation.Utils.ExcelFileManager.readFromCell;

public class CommonStepDefs extends DriverFactory {

    private CommonPage commonPage;
    public static String DatafileName =(new PropertyReader().readProperty("excelFileName"));
    public static int count = 1;
    public static int EN_count = 1;
    public static int AR_count = 1;
    public static int DES_count = 1;

    public CommonStepDefs() throws Exception {
        commonPage = new CommonPage(driver);
    }

    @When("^user enter text \"([^\"]*)\" in \"([^\"]*)\" on \"([^\"]*)\"$")
    public void user_enter_text_in_on(String textKey,String keyName, String sheetName) throws Throwable {

        String text = readFromCell(DatafileName,sheetName,1,textKey);
        commonPage.enterText(sheetName,keyName,text);
        Reporter.addStepLog("Test data used" +text);
        UtilityMethods.TakeSnapShot();
    }

    @When("^user click on \"([^\"]*)\" button on \"([^\"]*)\"$")
    public void user_click_on_button_on(String keyName, String sheetName) throws Throwable {
        commonPage.Clickelemet(sheetName,keyName);
        Reporter.addStepLog("Click on "+keyName);
        UtilityMethods.TakeSnapShot();
    }

    @When("^user click on \"([^\"]*)\" on \"([^\"]*)\"$")
    public void user_click_on(String keyName, String sheetName) throws Throwable {
        commonPage.Clickelemet(sheetName,keyName);
        Reporter.addStepLog("Click on "+keyName);
        UtilityMethods.TakeSnapShot();
    }

    @When("^user select on \"([^\"]*)\" on \"([^\"]*)\"$")
    public void user_select_on(String keyName, String sheetName) throws Throwable {
        commonPage.Clickelemet(sheetName,keyName);
        Reporter.addStepLog("Click on "+keyName);
        UtilityMethods.TakeSnapShot();
    }

    @When("^user select \"([^\"]*)\" from \"([^\"]*)\" on \"([^\"]*)\"$")
    public void user_select_from_on(String textKey, String keyName, String sheetName) throws Throwable {
        String text = readFromCell(DatafileName,sheetName,1,textKey);
        commonPage.selectDDValue(sheetName,keyName,text);
        Reporter.addStepLog("Test data used "+text);
        Reporter.addStepLog("Selected "+text+" from "+keyName);
        UtilityMethods.TakeSnapShot();
    }

    @Then("^Assert that \"([^\"]*)\" appear on \"([^\"]*)\"$")
    public void assert_that_appear_on(String keyName, String sheetName) throws Throwable {
        commonPage.assertonPage(sheetName,keyName);
        String text = readFromCell(DatafileName,sheetName,1,keyName);
        Reporter.addStepLog("Validate Value "+text+" on "+sheetName);
        UtilityMethods.TakeSnapShot();
    }

    @Given("^user scroll to \"([^\"]*)\" on \"([^\"]*)\"$")
    public void user_scroll_to_on(String keyName, String sheetName) throws Throwable {
        commonPage.Scrollelemet(sheetName,keyName);
    }

    @And("^user scroll till text \"([^\"]*)\"$")
    public void user_scroll_till_text(String text){
        commonPage.scrollTillText(text);
    }

    @And("Assert that \"([^\"]*)\" is \"([^\"]*)\" on \"([^\"]*)\"")
    public void assertThatIsOn(String keyName, String attribute, String sheetName) throws Throwable {
        commonPage.elementAttribute(sheetName,attribute,keyName);
        String text = readFromCell(DatafileName,sheetName,1,keyName);
        Reporter.addStepLog("Validate "+text+" is "+attribute);
        UtilityMethods.TakeSnapShot();
    }

    @Then("Assert that Value \"([^\"]*)\" is appeared at \"([^\"]*)\" on \"([^\"]*)\"")
    public void assertThatValueIsAppearedAtOn(String text, String keyName, String sheetName) throws Throwable {
        text = readFromCell(DatafileName,sheetName,1,text);
        commonPage.ValidateValue(text,sheetName,keyName);
        Reporter.addStepLog("Expected Message "+text);
        UtilityMethods.TakeSnapShot();
    }

    @And("user dismiss keyboard")
    public void user_dismiss_keyboard(){
        //driver.navigate().back();
        ((AppiumDriver)driver).hideKeyboard();
    }

    @And("user wait for loading")
    public void user_wait_for_loading(){

    }

    @And("user wait for 5 second")
    public void user_wait_for_two_second() throws InterruptedException {
        Thread.sleep(30000);
    }

}
