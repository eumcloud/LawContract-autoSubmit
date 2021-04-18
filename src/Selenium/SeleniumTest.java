package Selenium;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
public class SeleniumTest {
 
    public static void main(String[] args) {
        SeleniumTest selTest = new SeleniumTest();
        
    }
 
    
    //WebDriver
    private WebDriver driver;
    
    private WebElement webElement;
    //Properties
    public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
    public static final String WEB_DRIVER_PATH = "C:/Users/user/Desktop/chrom/chromedriver.exe";
    //ũ�Ѹ� �� URL
    private String base_url;
    
    public SeleniumTest() {
        super();
 
        //System Property SetUp
        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
        
                
        //Driver SetUp
         ChromeOptions options = new ChromeOptions();
         options.addArguments("--start=maximized"); //��üȭ�� ����
         options.addArguments("--disable-popup-blocking"); //�˾� ����
         options.addArguments("--disable-default-apps"); //������ ũ������ ����
         driver = new ChromeDriver(options);
        //��� url
        base_url = "https://ecfs.scourt.go.kr/ecf/ecf300/ECF302.jsp#_";
        //ũ������ �ش� �ּ� ����
        driver.get(base_url);
        Util.sleep(3000);
        
        webElement = driver.findElement(By.cssSelector("[id=\"aTab_JisinChung\"]"));
        webElement.click();
		/*
		 * //5�� ��� Util.sleep(5000); //��ü ���� üũ�ڽ� id������ ��ġã�� webElement =
		 * driver.findElement(By.cssSelector("[id=\"checkAgreeAll\"]"));
		 * System.out.println(webElement); //��ü���� üũ�ڽ� Ŭ�� webElement.click(); //��û ��й�ȣ
		 * id������ ��ġã�� webElement =
		 * driver.findElement(By.cssSelector("[id=\"guest_orderpw\"]")); //0.5�� ���
		 * Util.sleep(500); //��û ��й�ȣ �Է��ϱ� webElement.sendKeys("123");
		 */
        
    }
 
 
 
}