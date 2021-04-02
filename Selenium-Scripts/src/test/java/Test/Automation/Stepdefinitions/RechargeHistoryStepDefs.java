package Test.Automation.Stepdefinitions;

import Test.Automation.Pages.RechargeHistoryPage;
import Test.Automation.Utils.DriverFactory;
import Test.Automation.Utils.PropertyReader;
import Test.Automation.Utils.UtilityMethods;
import com.cucumber.listener.Reporter;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class RechargeHistoryStepDefs extends DriverFactory {

    private RechargeHistoryPage rechargehistory;
    public static String DatafileName =(new PropertyReader().readProperty("excelFileName"));
    public static String Transaction_reference_number = "";
    public static String Amount = "";

    public RechargeHistoryStepDefs() throws Exception {
        rechargehistory = new RechargeHistoryPage(driver);
    }

    @Given("^user get the \"([^\"]*)\" from \"([^\"]*)\"$")
    public void user_get_the_from(String keyName, String sheetName) throws Throwable {
        String rptText = "";
        if(keyName.equals("Transaction_reference_number")){
            Transaction_reference_number = rechargehistory.GetElement(sheetName,keyName);
            rptText = Transaction_reference_number;
        } else if(keyName.equals("Amount")){
            String strAmount = rechargehistory.GetElement(sheetName,keyName);
            Amount = strAmount.substring(0,strAmount.length()-1);
            rptText = Amount;
        }
        Reporter.addStepLog("Value of "+keyName+" is "+ rptText+" as per the CIM and/or IN");
        UtilityMethods.TakeSnapShot();
    }

    @Then("^Assert that \"([^\"]*)\" is same as \"([^\"]*)\" on \"([^\"]*)\"$")
    public void assert_that_is_same_as(String keyName, String expectedValue, String sheetName) throws Throwable {
        if(keyName.equals("Transaction_Reference_Number")){
            expectedValue = Transaction_reference_number;
        }else if(keyName.equals("Receipt_Amount")){
            expectedValue = Amount;
        }
        rechargehistory.assertonPage(sheetName,expectedValue,keyName);
        String text = expectedValue;
        Reporter.addStepLog("Verified Value "+keyName+" is same "+keyName+" on "+sheetName+" Receipt");
        UtilityMethods.TakeSnapShot();
    }
}
