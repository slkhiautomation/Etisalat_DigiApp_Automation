package Test.Automation.Stepdefinitions;

import Test.Automation.Utils.DriverFactory;
import Test.Automation.Utils.ExcelFileManager;
import Test.Automation.Utils.PropertyReader;
import Test.Automation.Utils.UtilityMethods;
import com.cucumber.listener.Reporter;
import cucumber.api.java.en.Given;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.ios.IOSDriver;
import io.appium.java_client.ios.IOSElement;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.RemoteWebDriver;

import java.net.MalformedURLException;
import java.net.URL;
import java.sql.SQLException;


public class StartingSteps extends DriverFactory {

    public StartingSteps() throws Exception {
    }

    @Given("^Navigate to Application$")
    public void navigate_to_Application() throws Throwable {
        UtilityMethods.deleteCookies();
        String URL = new PropertyReader().readProperty("appURL");
        driver.manage().window().maximize();
        driver.get(URL);
        UtilityMethods.waitForPageLoadAndPageReady();
        String Actualtitlte = driver.getTitle();
        String ExpectedTitle = new PropertyReader().readProperty("Title");
        System.out.println(Actualtitlte);
        System.out.println(ExpectedTitle);
        if(!Actualtitlte.equals(ExpectedTitle)){
            WebElement advanced = driver.findElement(By.id("details-button"));
            advanced.click();
            UtilityMethods.waitForPageLoadAndPageReady();
            WebElement proceed = driver.findElement(By.id("proceed-link"));
            proceed.click();
            Reporter.addStepLog("Application URL: "+URL);
        }
    }

    @Given("^User has opened an application$")
    public void user_has_opened_an_application() throws Throwable {

        try {
            driver = new IOSDriver<IOSElement>(url, cap);
        } catch (Exception e) {
            e.printStackTrace();
        }
        UtilityMethods.TakeSnapShot();
        /*try {
            driver = new AndroidDriver(new URL(new PropertyReader().readProperty("AndroidappURL")), cap);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }*/

    }

    @Given("^Navigate to Web Application$")
    public void navigate_to_web_Application() throws Throwable {
        UtilityMethods.deleteCookies();
        String URL = new PropertyReader().readProperty("appURL");
        driver.manage().window().maximize();
        driver.get(URL);
        UtilityMethods.waitForPageLoadAndPageReady();
        WebElement advanced = driver.findElement(By.id("details-button"));
        advanced.click();
        UtilityMethods.waitForPageLoadAndPageReady();
        WebElement proceed = driver.findElement(By.id("proceed-link"));
        proceed.click();
        Reporter.addStepLog("Application URL: "+URL);
    }
}
