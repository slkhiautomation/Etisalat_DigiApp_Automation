package Test.Automation.Pages;

import Test.Automation.Utils.DriverFactory;
import Test.Automation.Utils.PropertyReader;
import Test.Automation.Utils.UtilityMethods;
import com.cucumber.listener.Reporter;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

import java.io.IOException;
import java.util.regex.Pattern;

import static Test.Automation.Utils.ExcelFileManager.readFromCell;

public class CommonPage extends DriverFactory {

    @FindBy(how= How.XPATH,using=".//*[@id='locations']")
    public static WebElement Location;

    public static String fileName =(new PropertyReader().readProperty("appConfigFile"));
    public static String ConfigfileName;

    static {
        try {
            ConfigfileName = readFromCell(fileName,"SetUp",1,"fileName");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public CommonPage(WebDriver driver) throws Exception {
        PageFactory.initElements(driver,this);
    }

    public void enterText(String Sheet, String rowMatch, String text) throws IOException, InterruptedException {
//       UtilityMethods.waitForPageLoadAndPageReady();
//        UtilityMethods.waitForPageLoad();
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName,Sheet,1,rowMatch),500);
        UtilityMethods.waitForVisibility(element);
        element.clear();
        element.sendKeys(text);
        System.out.println("Text enetered in element "+rowMatch+" "+ text);
    }

    public void Clickelemet(String Sheet, String rowMatch) throws IOException, InterruptedException {
//        UtilityMethods.waitForPageLoadAndPageReady();
//        UtilityMethods.waitForPageLoad();
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName,Sheet,1,rowMatch),500);
        System.out.println("Element found "+element.getText());
//        UtilityMethods.waitForVisibility(element);
//        UtilityMethods.scrollToWebElement(element);
        try{
//            UtilityMethods.waitForPageLoadAndPageReady();
//            UtilityMethods.waitForPageLoad();
            element.click();
            System.out.println("Clicked on Element "+rowMatch);

        }catch (Exception ex){
//            UtilityMethods.waitForPageLoadAndPageReady();
//            UtilityMethods.waitForPageLoad();
            Actions actions = new Actions(driver);
            actions.moveToElement(element).click().perform();
            System.out.println("Clicked on Element by Action "+rowMatch);
        }
    }

    public void selectDDValue(String Sheet, String rowMatch, String text) throws IOException {
        UtilityMethods.waitForPageLoadAndPageReady();
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName,Sheet,1,rowMatch),110);
        Select select = new Select(element);
        select.selectByVisibleText(text);
        UtilityMethods.waitForVisibility(element);
    }

    public void assertonPage(String Sheet, String rowMatch) throws IOException, InterruptedException {
//        UtilityMethods.waitForPageLoadAndPageReady();
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName,Sheet,1,rowMatch),110);
//        UtilityMethods.waitForVisibility(element);
        System.out.println("Element found and Value is "+element.getText());
        String result = readFromCell(fileName,Sheet,1,rowMatch);
        Pattern.compile(Pattern.quote(element.getText()), Pattern.CASE_INSENSITIVE).matcher(result).find();
        Object expected = Pattern.compile(Pattern.quote(result), Pattern.CASE_INSENSITIVE).matcher(result).find();
        Object actual = Pattern.compile(Pattern.quote(element.getText()), Pattern.CASE_INSENSITIVE).matcher(element.getText()).find();
        String expectedResult = expected.toString();
        String actualResult = actual.toString();
        if(actualResult.contains(expectedResult)){
            Assert.assertTrue(true);
            System.out.println("Searched in List");
        }else{
            Assert.fail();
            System.out.println("Searched in List");
        }
    }

    public void ValidateValue(String text,String Sheet, String rowMatch) throws Exception{
        UtilityMethods.waitForPageLoadAndPageReady();
        UtilityMethods.wait3Seconds();
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName,Sheet,1,rowMatch),110);
        UtilityMethods.waitForVisibility(element);
        System.out.println("Element found and Value is "+element.getText());
//        String result = readFromCell(fileName,Sheet,1,rowMatch);
//        Pattern.compile(Pattern.quote(element.getText()), Pattern.CASE_INSENSITIVE).matcher(result).find();
//        Object expected = Pattern.compile(Pattern.quote(result), Pattern.CASE_INSENSITIVE).matcher(result).find();
        String actualResult = element.getText();
//        actual = Pattern.compile(Pattern.quote(element.getText()), Pattern.CASE_INSENSITIVE).matcher(element.getText()).find();
        String expectedResult = text;
        System.out.println("Expected Message is "+expectedResult);
//        String actualResult = actual.toString();
        if(actualResult.contains(expectedResult)){
            Assert.assertTrue(true);
            System.out.println("Searched in List");
            Reporter.addStepLog("Message Appeared on Screen "+actualResult);
        }else{
            Assert.fail();
            System.out.println("Searched in List");
        }
    }

    public void Scrollelemet(String Sheet, String rowMatch) throws IOException, InterruptedException {
//        UtilityMethods.waitForPageLoadAndPageReady();
//        UtilityMethods.waitForPageLoad();
        WebElement element = UtilityMethods.getElementByXpathWithoutWait(readFromCell(ConfigfileName,Sheet,1,rowMatch));
        System.out.println("Element found "+element.getText());
//        UtilityMethods.waitForVisibility(element);
        UtilityMethods.scrollToAndroidElement(element);
    }

    public void elementAttribute(String Sheet, String attribute, String rowMatch) throws Exception {
        UtilityMethods.waitForPageLoadAndPageReady();
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName,Sheet,1,rowMatch),110);
        UtilityMethods.waitForVisibility(element);
        String attr_value = element.getAttribute(attribute);
        if(attr_value != null){
            Assert.assertTrue(true);
            System.out.println(attribute+" available");
        }else{
            Assert.fail();
            System.out.println(attribute+" is not available");
        }
    }

    public void scrollTillText(String Text){

        try {
            UtilityMethods.wait3Seconds();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        TouchAction action = new TouchAction((AndroidDriver)driver);
        action.press(0, 500)
                .waitAction(200)
                .moveTo(0, 200)
                .release()
                .perform();
        System.out.println("Scrolled");
    }

}
