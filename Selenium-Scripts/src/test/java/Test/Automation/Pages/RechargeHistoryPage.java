package Test.Automation.Pages;

import Test.Automation.Utils.DriverFactory;
import Test.Automation.Utils.PropertyReader;
import Test.Automation.Utils.UtilityMethods;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;

import java.io.IOException;
import java.util.regex.Pattern;

import static Test.Automation.Utils.ExcelFileManager.readFromCell;

public class RechargeHistoryPage extends DriverFactory {

    public static String fileName =(new PropertyReader().readProperty("excelFileName"));
    public static String ConfigfileName;

    static {
        try {
            ConfigfileName = readFromCell(fileName,"SetUp",1,"fileName");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public RechargeHistoryPage(WebDriver driver) throws Exception {
        PageFactory.initElements(driver,this);
    }

    public static String GetElement(String Sheet, String rowMatch) throws IOException, InterruptedException {
        String elementText = "";
        WebElement element = UtilityMethods.getElementByXpathWithoutWait(readFromCell(ConfigfileName,Sheet,1,rowMatch));
        elementText = element.getText();
        return elementText;
    }

    public void assertonPage(String Sheet, String expValue, String rowMatch) throws IOException, InterruptedException {
        String actualValueXpath = readFromCell(ConfigfileName,Sheet,1,rowMatch);
        System.out.println("Old XPath is "+actualValueXpath);
        System.out.println("Replacer is "+expValue);
        actualValueXpath = actualValueXpath.replace("Variable",expValue);
        System.out.println("New XPath is "+actualValueXpath);
        WebElement element = UtilityMethods.getElementByXpath(actualValueXpath,200);
//        WebElement element = UtilityMethods.getElementByXpath(readFromCell(ConfigfileName,Sheet,1,rowMatch),200);
        System.out.println("Element found and Value is "+element.getText());
        String result = expValue;
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
}
