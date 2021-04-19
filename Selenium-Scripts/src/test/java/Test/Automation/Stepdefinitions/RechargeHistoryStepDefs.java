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
    public static String DatafileName = (new PropertyReader().readProperty("excelFileName"));
    public static String Transaction_reference_number = "";
    public static String TransactionDate = "";
    public static String Amount = "";
    public static String TransactionName = "";
    public static String CardNumber = "";

    public RechargeHistoryStepDefs() throws Exception {
        rechargehistory = new RechargeHistoryPage(driver);
    }

    @Given("^user get the \"([^\"]*)\" from \"([^\"]*)\"$")
    public void user_get_the_from(String keyName, String sheetName) throws Throwable {
        String rptText = "";
        if (keyName.equals("Transaction_reference_number")) {
            Transaction_reference_number = rechargehistory.GetElement(sheetName, keyName);
            rptText = Transaction_reference_number;
        } else if (keyName.equals("Amount")) {
            String strAmount = rechargehistory.GetElement(sheetName, keyName);
            Amount = strAmount.substring(0, strAmount.length() - 1);
            rptText = Amount;
        } else if (keyName.equals("Transaction_Name")) {
           String strTransaction = rechargehistory.GetElement(sheetName, keyName);
           TransactionName=strTransaction.replace(".","");
            rptText = TransactionName;
            //rptText =

        } else if (keyName.equals("Card_No")) {
//            String strTransaction_Name = rechargehistory.GetElement(sheetName,keyName);
            CardNumber = rechargehistory.GetElement(sheetName, keyName);
            rptText = CardNumber;
        }
        else if (keyName.equals("Transaction_Date")) {
            String strDAte = rechargehistory.GetElement(sheetName, keyName);
            TransactionDate = strDAte.substring(0,strDAte.length()-10);
            rptText = TransactionDate;
        }
        Reporter.addStepLog("Value of " + keyName + " is " + rptText + " as per the CIM and/or IN");
        UtilityMethods.TakeSnapShot();
    }

    @Then("^Assert that \"([^\"]*)\" is same as \"([^\"]*)\" on \"([^\"]*)\"$")
    public void assert_that_is_same_as(String keyName, String expectedValue, String sheetName) throws Throwable {
        if (keyName.equals("Transaction_Reference_Number")) {
            expectedValue = Transaction_reference_number;
        } else if (keyName.equals("Receipt_Amount")) {
            expectedValue = Amount;
        } else if (keyName.equals("transaction_name")) {
            expectedValue = TransactionName;
        } else if (keyName.equals("card_no")) {
            expectedValue = CardNumber;
        }else if (keyName.equals("transaction_date")) {
            expectedValue = TransactionDate;
        }
            rechargehistory.assertonPage(sheetName, expectedValue, keyName);
            String text = expectedValue;
            Reporter.addStepLog("Verified Value " + keyName + " is same " + keyName + " on " + sheetName + " Receipt");
            UtilityMethods.TakeSnapShot();

    }
}
