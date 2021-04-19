package Test.Automation.Pages;

import Test.Automation.Utils.DriverFactory;
import Test.Automation.Utils.PropertyReader;
import Test.Automation.Utils.UtilityMethods;
import com.cucumber.listener.Reporter;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.MobileDriver;
import io.appium.java_client.PerformsTouchActions;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.RemoteWebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

import java.io.IOException;
import java.time.Duration;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

import static Test.Automation.Utils.ExcelFileManager.readFromCell;

public class CommonPage extends DriverFactory {

    @FindBy(how = How.XPATH, using = ".//*[@id='locations']")
    public static WebElement Location;

    public static String fileName = (new PropertyReader().readProperty("excelFileName"));
    public static String ConfigfileName;
    public static WebElement element;

    static {
        try {
            ConfigfileName = readFromCell(fileName, "SetUp", 1, "fileName");
            System.out.println(ConfigfileName + " is Test Identifiers File Name");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public CommonPage(WebDriver driver) throws Exception {
        PageFactory.initElements(driver, this);
    }

    public void enterText(String Sheet, String rowMatch, String text) throws IOException, InterruptedException {
        //    UtilityMethods.waitForPageLoadAndPageReady();
        //    UtilityMethods.waitForPageLoad();
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName, Sheet, 1, rowMatch), 500);
        UtilityMethods.waitForVisibility(element);
        //   UtilityMethods.wait3Seconds();
        element.clear();
        element.sendKeys(text);
        System.out.println("Text enetered in element " + rowMatch + " " + text);
    }

    public void Clickelemet(String Sheet, String rowMatch) throws IOException, InterruptedException {
        //    UtilityMethods.waitForPageLoadAndPageReady();
        //    UtilityMethods.waitForPageLoad();
        //UtilityMethods.wait2Seconds();
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName, Sheet, 1, rowMatch), 120);
        System.out.println("Element found " + element.getText());
        //    UtilityMethods.waitForVisibility(element);
        //    UtilityMethods.scrollToWebElement(element);
        try {
            //UtilityMethods.waitForPageLoadAndPageReady();
            //UtilityMethods.waitForPageLoad();
            element.click();
            System.out.println("Clicked on Element " + rowMatch);

        } catch (Exception ex) {
            //UtilityMethods.waitForPageLoadAndPageReady();
            //UtilityMethods.waitForPageLoad();
            Actions actions = new Actions(driver);
            actions.moveToElement(element).click().perform();
            System.out.println("Clicked on Element by Action " + rowMatch);
        }
    }


    public void tapelement(String Sheet, String rowMatch) throws IOException, InterruptedException {
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName, Sheet, 1, rowMatch), 500);
        System.out.println("Tap Element found " + element.getText());
        System.out.println("Hello, World!");
        Point p = element.getLocation();
        TouchAction action = new TouchAction((MobileDriver) driver);
        action.tap(p.x, p.y).perform();

        try {
            //UtilityMethods.waitForPageLoadAndPageReady();
            //UtilityMethods.waitForPageLoad();
            element.click();
            System.out.println("Clicked on Element " + rowMatch);

        } catch (Exception ex) {
            //UtilityMethods.waitForPageLoadAndPageReady();
            //UtilityMethods.waitForPageLoad();
            Actions actions = new Actions(driver);
            actions.moveToElement(element).click().perform();
            System.out.println("Clicked on Element by Action " + rowMatch);
        }
    }

    public void Clickelemet_test(String Sheet, String rowMatch) throws IOException, InterruptedException {
//        UtilityMethods.waitForPageLoadAndPageReady();
//        UtilityMethods.waitForPageLoad();
//        UtilityMethods.wait3Seconds();
        UtilityMethods.wait3Seconds();

        String valueType = readFromCell(ConfigfileName, Sheet, 2, rowMatch);

        System.out.println("valueType: " + valueType);

        switch (valueType) {
            case "xpath":
                element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName, Sheet, 1, rowMatch));
                break;
            case "id":
                element = UtilityMethods.getElementById(readFromCell(ConfigfileName, Sheet, 1, rowMatch));
                break;
            case "name":
                element = UtilityMethods.getElementByName(readFromCell(ConfigfileName, Sheet, 1, rowMatch));
                break;
            case "classname":
                element = UtilityMethods.getElementByClassName(readFromCell(ConfigfileName, Sheet, 1, rowMatch));
                break;
            case "linktext":
                element = UtilityMethods.getElementByLinkText(readFromCell(ConfigfileName, Sheet, 1, rowMatch));
                break;
            case "Partiallinktext":
                element = UtilityMethods.getElementByPartialLinkText(readFromCell(ConfigfileName, Sheet, 1, rowMatch));
                break;
            case "AccessibilityId":
                element = UtilityMethods.getElementByAccessibilityId(readFromCell(ConfigfileName, Sheet, 1, rowMatch));
                break;
            default:
                System.out.println("INVALID ELEMENT LOCATOR");

                WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName, Sheet, 1, rowMatch));
               System.out.println("Element found " + element.getText());
                UtilityMethods.waitForVisibility(element);
        UtilityMethods.wait1Seconds();
                UtilityMethods.scrollToWebElement(element);
                try {
//                    UtilityMethods.waitForPageLoadAndPageReady();
//                    UtilityMethods.waitForPageLoad();
                    element.click();
                    System.out.println("Clicked on Element " + rowMatch);

                } catch (Exception ex) {
//                    UtilityMethods.waitForPageLoadAndPageReady();
//                    UtilityMethods.waitForPageLoad();
                    Actions actions = new Actions(driver);
                    actions.moveToElement(element).click().perform();
                    System.out.println("Clicked on Element by Action " + rowMatch);
                }
        }
    }


    public void selectDDValue(String Sheet, String rowMatch, String text) throws IOException {
        UtilityMethods.waitForPageLoadAndPageReady();
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName, Sheet, 1, rowMatch), 110);
        Select select = new Select(element);
        select.selectByVisibleText(text);
        UtilityMethods.waitForVisibility(element);
    }

    public void assertonPage(String Sheet, String rowMatch) throws IOException, InterruptedException {
        //UtilityMethods.waitForPageLoadAndPageReady();
        //UtilityMethods.wait3Seconds();
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName, Sheet, 1, rowMatch), 110);
        //UtilityMethods.waitForVisibility(element);
        System.out.println("Element found and Value is " + element.getText());
        String result = readFromCell(fileName, Sheet, 1, rowMatch);
        Pattern.compile(Pattern.quote(element.getText()), Pattern.CASE_INSENSITIVE).matcher(result).find();
        Object expected = Pattern.compile(Pattern.quote(result), Pattern.CASE_INSENSITIVE).matcher(result).find();
        Object actual = Pattern.compile(Pattern.quote(element.getText()), Pattern.CASE_INSENSITIVE).matcher(element.getText()).find();
        String expectedResult = expected.toString();
        String actualResult = actual.toString();
        if (actualResult.contains(expectedResult)) {
            Assert.assertTrue(true);
            System.out.println("Searched in List");
        } else {
            Assert.fail();
            System.out.println("Searched in List");
        }
    }

    public void ValidateValue(String text, String Sheet, String rowMatch) throws Exception {
        UtilityMethods.waitForPageLoadAndPageReady();
        UtilityMethods.wait3Seconds();
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName, Sheet, 1, rowMatch), 110);
        UtilityMethods.waitForVisibility(element);
        System.out.println("Element found and Value is " + element.getText());
//        String result = readFromCell(fileName,Sheet,1,rowMatch);
//        Pattern.compile(Pattern.quote(element.getText()), Pattern.CASE_INSENSITIVE).matcher(result).find();
        //Object expected = Pattern.compile(Pattern.quote(result), Pattern.CASE_INSENSITIVE).matcher(result).find();
        String actualResult = element.getText();
        //actual = Pattern.compile(Pattern.quote(element.getText()), Pattern.CASE_INSENSITIVE).matcher(element.getText()).find();
        String expectedResult = text;
        System.out.println("Expected Message is " + expectedResult);
        //String actualResult = actual.toString();
        if (actualResult.contains(expectedResult)) {
            Assert.assertTrue(true);
            System.out.println("Searched in List");
            Reporter.addStepLog("Message Appeared on Screen " + actualResult);
        } else {
            Assert.fail();
            System.out.println("Searched in List");
        }
    }

    public void Scrollelemet(String Sheet, String rowMatch) throws IOException, InterruptedException {
        //UtilityMethods.waitForPageLoadAndPageReady();
        //UtilityMethods.waitForPageLoad();
        //UtilityMethods.wait2Seconds();
        WebElement element = UtilityMethods.getElementByXpathWithoutWait(readFromCell(ConfigfileName, Sheet, 1, rowMatch));
        System.out.println("Element found " + element.getText());
        //UtilityMethods.waitForVisibility(element);
        UtilityMethods.scrollToAndroidElement(element);
    }

    public void elementAttribute(String Sheet, String attribute, String rowMatch) throws Exception {
        UtilityMethods.waitForPageLoadAndPageReady();
        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName, Sheet, 1, rowMatch), 110);
        UtilityMethods.waitForVisibility(element);
        String attr_value = element.getAttribute(attribute);
        if (attr_value != null) {
            Assert.assertTrue(true);
            System.out.println(attribute + " available");
        } else {
            Assert.fail();
            System.out.println(attribute + " is not available");
        }
    }

//    public void waitForLoading() throws IOException {
////
////        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName,"LoginPage",1,"loader"),10);
////    }

    public void scrollTillText(String Text) {

        try {
            UtilityMethods.wait3Seconds();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        TouchAction action = new TouchAction((AndroidDriver) driver);
        action.press(0, 500)
                .waitAction(400)
                .moveTo(0, 200)
                .release()
                .perform();
        System.out.println("Scrolled");
//        ((AndroidDriver)driver).scrollTo(Text);


    }




    public void scrollDown() throws InterruptedException {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        HashMap<String, String> scrollObject = new HashMap<String, String>();
        UtilityMethods.wait3Seconds();
        scrollObject.put("direction", "down");
        js.executeScript("mobile: scroll", scrollObject);
    }

    public void scroll() throws InterruptedException {

        try {
            UtilityMethods.wait3Seconds();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        TouchAction action = new TouchAction((AppiumDriver) driver);
        UtilityMethods.wait12Seconds();
        action.press(0, 500)
                .waitAction(500)
                .moveTo(0, 200)
                .release()
                .perform();
        System.out.println("Scrolled");
//        ((AndroidDriver)driver).scrollTo(Text);


    }




}


