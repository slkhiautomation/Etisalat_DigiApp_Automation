package Test.Automation.Utils;

import io.appium.java_client.android.AndroidDriver;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.LocalFileDetector;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.events.EventFiringWebDriver;

import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverFactory {

	private static final String remoteHub = new PropertyReader().readProperty("remoteHub");
	protected static WebDriver driver;
	protected static String webIndicator;
	public static String ResponseID;
	public Connection conn;
	public static String Connection_url = (new PropertyReader().readProperty("DBConnection"));
	public static String DBName = (new PropertyReader().readProperty("DB_Name"));
	protected static DesiredCapabilities cap;
	public static String JDBC_URL = "jdbc:oracle:thin:@//"+Connection_url;


	public DriverFactory() throws Exception {
		initialize();
//		initializeSQL();
//		initializeLogging();
	}

	public void initialize()  throws Exception{
		if (driver == null)
			if(new PropertyReader().readProperty("runAt").equals("local"))
			{
				createNewLocalDriverInstance();
				
			}
			else if(new PropertyReader().readProperty("runAt").equals("remote"))
			{
				createNewRemoteDriverInstance();
				
			}
			else if(new PropertyReader().readProperty("runAt").equals("android"))
			{
				createAndroidDriverInstance();
			}
	}

	public void initializeSQL() throws SQLException {
	conn = DriverManager.getConnection("jdbc:oracle:thin:@"+Connection_url, DBName, DBName);
		if (conn != null) {
			System.out.println("Connected to the database!");
		} else {
			System.out.println("Failed to make connection!");
		}
//		try (conn = DriverManager.getConnection(
//				"jdbc:oracle:thin:@"+Connection_url, DBName, DBName)) {
//
//			if (conn != null) {
//				System.out.println("Connected to the database!");
//			} else {
//				System.out.println("Failed to make connection!");
//			}
//
//		} catch (SQLException e) {
//			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
//		}
//		try{
////			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			System.out.println(JDBC_URL);
////			conn = DriverManager.getConnection(JDBC_URL);
//			conn = DriverManager.getConnection(JDBC_URL,DBName,DBName);
//			System.out.println("Successfully Connect");
//		}
//		catch(Exception e){
//			System.out.println(e);
//		}
	}

	private void createNewLocalDriverInstance()   {
		String browser = new PropertyReader().readProperty("browser");
		if (browser.equalsIgnoreCase("chrome")) {
 
			//System.setProperty("webdriver.chrome.driver", "C:\\chrome_driver\\chromedriver.exe");
			
			
			
			ChromeOptions options = new ChromeOptions();
			options.setExperimentalOption("useAutomationExtension", false);
			options.addArguments("--incognito");

			String browserExePath = new PropertyReader().readProperty("browserExePath");
			String driverExePath = new PropertyReader().readProperty("driverExePath");
			
			options.setBinary(browserExePath); 
			System.setProperty("webdriver.chrome.driver", driverExePath); 
			driver = new ChromeDriver(options);
		}  else if (browser.equalsIgnoreCase("firefox")) {
			System.setProperty("webdriver.gecko.driver","geckodriver.exe");
            driver =  new FirefoxDriver();
            /*DesiredCapabilities dc = DesiredCapabilities.firefox();
            dc.setCapability("marionette", true);
            driver =  new FirefoxDriver(dc);*/

		} else if (browser.equalsIgnoreCase("ie")) {
			System.setProperty("webdriver.ie.driver", "IEDriverServer.exe");
			/*DesiredCapabilities capabilities = DesiredCapabilities.internetExplorer();
			capabilities.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS, true);
			capabilities.setCapability("requireWindowFocus", true);*/
			driver = new InternetExplorerDriver();
		} else {
			throw new IllegalArgumentException("The Browser Type is Undefined");
		}
	}


	private void createNewRemoteDriverInstance()  {
		String browser = new PropertyReader().readProperty("browser");
		if (browser.equalsIgnoreCase("chrome")) {
			System.setProperty("webdriver.chrome.driver", "chromedriver.exe");

			DesiredCapabilities capabilities = DesiredCapabilities.chrome();

			try {
				driver = new RemoteWebDriver(
						new URL(remoteHub), capabilities);
				((RemoteWebDriver) driver).setFileDetector(new LocalFileDetector());
			} catch (MalformedURLException e) {
				e.printStackTrace();
			}
		} /*else if (browser.equalsIgnoreCase("firefox")) {
            driver = new FirefoxDriver();
        } else if (browser.equalsIgnoreCase("ie")) {
            System.setProperty("webdriver.ie.driver", "IEDriverServer.exe");
            DesiredCapabilities capabilities = DesiredCapabilities.internetExplorer();
            capabilities.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS, true);
            capabilities.setCapability("requireWindowFocus", true);
            driver = new InternetExplorerDriver();
        } */else {
        	throw new IllegalArgumentException("The Browser Type is Undefined");
        }
	}

	public String getReportConfigPath(){
		String report = new PropertyReader().readProperty("reportConfigPath");
		if(report != null) return report;
		else throw new RuntimeException("Extent Report Path is not specified in the Config.properties file");
	}

	private void initializeLogging() {
		driver = new EventFiringWebDriver(driver).register(new WebDriverListeners());
	}

	public static WebDriver getDriver() {
		return driver;
	}

	public static void quitDriver() {
		driver.quit();
		driver = null;
	}

	private void createAndroidDriverInstance() throws Exception {

		// Created object of DesiredCapabilities class.
		cap = new DesiredCapabilities();

		cap.setCapability("deviceName","VIVO S1");
		cap.setCapability("platformName", "android");
		cap.setCapability("appPackage", "com.Etisalat.ETIDA");
		cap.setCapability("appActivity", "com.etisalat.etida.home.activities.SplashActivity");
		//cap.setCapability("unicodeKeyboard", true);
		//cap.setCapability("resetKeyboard", true);
		cap.setCapability("autoGrantPermissions", true);
		driver = new AndroidDriver(new URL("http://127.0.0.1:4723/wd/hub"), cap);
	}


}
