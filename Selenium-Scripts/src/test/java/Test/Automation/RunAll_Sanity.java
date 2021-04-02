package Test.Automation;

import Test.Automation.DataProvider.TestData;
import Test.Automation.Utils.SendEmailSetup.SendEmail;
import TestSuite.AfterSuite;
import TestSuite.BeforeSuite;
import TestSuite.ExtendedCucumberRunner;
import com.cucumber.listener.Reporter;
import cucumber.api.CucumberOptions;
import io.qameta.allure.Epic;
import org.junit.runner.RunWith;

import java.io.IOException;
import java.sql.SQLException;

import static Test.Automation.Utils.DriverFactory.quitDriver;

//import com.cucumber.listener.Reporter;

@Epic("Regression Test")
@RunWith(ExtendedCucumberRunner.class)
@CucumberOptions(


        //Execution//
//        tags = {"@Plans_and_Addons_Scenario_1"},
//                "@Group-Popup-Case_1,@Group-Popup-Case_2," +
//                        "@Group-Popup-Case_3,@Group-Popup-Case_5"},
        features = {"src/test/resources/Etisalat_DigitalApp/Android/177605-Home_Move.feature"},

        plugin = {"pretty", "html:target/cucumber-html-report-Sanity",
                "json:target/cucumber-json-report-Sanity.json",
                "rerun:target/rerun-Sanity.txt",
                "com.cucumber.listener.ExtentCucumberFormatter:target/cucumber-reports/report.html",
                "io.qameta.allure.cucumberjvm.AllureCucumberJvm",
        })

public class RunAll_Sanity  {

    public RunAll_Sanity() throws IOException, SQLException, ClassNotFoundException {


    }

    @BeforeSuite
    public static void setUp() {

    }

    @AfterSuite
    public static void tearDown() throws Exception {

        System.out.println("Test Suit Execution Completed.");
        System.out.println("Test Suit Execution Completed.");
        Reporter.setSystemInfo("User Name", System.getProperty("user.name"));
        Reporter.setSystemInfo("Time Zone", System.getProperty("user.timezone"));
        Reporter.setSystemInfo("Machine", System.getProperty("os.name"));
        Reporter.setSystemInfo("Selenium", "3.7.0");
        Reporter.setSystemInfo("Maven", "3.5.2");
        Reporter.setSystemInfo("Java Version", System.getProperty("java.version"));
        SendEmail.sendEmailBody(TestData.Email.EMAIL_RESULT_SUBJECT, "cucumber-json-report-Sanity");
        quitDriver();
    }
}