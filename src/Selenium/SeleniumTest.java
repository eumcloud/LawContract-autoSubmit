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
    //크롤링 할 URL
    private String base_url;
    
    public SeleniumTest() {
        super();
 
        //System Property SetUp
        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
        
                
        //Driver SetUp
         ChromeOptions options = new ChromeOptions();
         options.addArguments("--start=maximized"); //전체화면 실행
         options.addArguments("--disable-popup-blocking"); //팝업 무시
         options.addArguments("--disable-default-apps"); //무조건 크롬으로 실행
         driver = new ChromeDriver(options);
        //띄울 url
        base_url = "https://ecfs.scourt.go.kr/ecf/ecf300/ECF302.jsp#_";
        //크롬으로 해당 주소 접속
        driver.get(base_url);
        Util.sleep(3000);
        
        webElement = driver.findElement(By.cssSelector("[id=\"aTab_JisinChung\"]"));
        webElement.click();
		/*
		 * //5초 대기 Util.sleep(5000); //전체 동의 체크박스 id값으로 위치찾기 webElement =
		 * driver.findElement(By.cssSelector("[id=\"checkAgreeAll\"]"));
		 * System.out.println(webElement); //전체동의 체크박스 클릭 webElement.click(); //신청 비밀번호
		 * id값으로 위치찾기 webElement =
		 * driver.findElement(By.cssSelector("[id=\"guest_orderpw\"]")); //0.5초 대기
		 * Util.sleep(500); //신청 비밀번호 입력하기 webElement.sendKeys("123");
		 */
        
    }
 
 
 
}