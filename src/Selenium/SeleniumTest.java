package Selenium;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.Select;




public class SeleniumTest {
 

        
    
    //WebDriver
    private WebDriver driver;
    
    private WebElement webElement;
    //Properties
    public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
    public static final String WEB_DRIVER_PATH = "C:/Users/1-27/Desktop/chrom/chromedriver.exe";
    //크롤링 할 URL
    private String base_url;
    
    public SeleniumTest() {
        super();
        System.out.println("123123");
        //System Property SetUp
        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
        
                
        //Driver SetUp
         ChromeOptions options = new ChromeOptions();
         options.addArguments("--start-fullscreen");
         options.addArguments("--disable-default-apps"); //무조건 크롬으로 실행
         driver = new ChromeDriver(options);
        //띄울 url
        base_url = "https://ecfs.scourt.go.kr/ecf/ecf300/ECF302.jsp#_";
        //크롬으로 해당 주소 접속
        driver.get(base_url);
        //지금명령 신청 클릭
        webElement = driver.findElement(By.cssSelector("[id=\"aTab_JisinChung\"]"));
        webElement.click();
        //지급명령 신청서 클릭
      webElement = driver.findElement(By.cssSelector(".doc302_02_08 .favorite_icolist_wrap"));
      webElement.click();
      //alert창 확인
      driver.switchTo().alert().accept();
      //4초대기
      Util.sleep(4000);
      //아이디 클릭
      webElement = driver.findElement(By.id("userId"));
      webElement.click();
      //0.5초 대기
      Util.sleep(500);
      //로그인 id 입력
      webElement.sendKeys("gihong0703");
      //비밀번호 클릭
      webElement = driver.findElement(By.id("pw"));
      webElement.click();
      //0.5초 대기
      Util.sleep(500);
      //비밀번호 입력
      webElement.sendKeys("467913ssak!!");
      //로그인버튼 클릭
      webElement = driver.findElement(By.cssSelector("#btnLogin > img"));
      webElement.click();
      //로그인후 메인페이지에서 지급명령 클릭
      webElement = driver.findElement(By.cssSelector("#btnDocWDC > img"));
      webElement.click();
      //alert창 확인 클릭
      driver.switchTo().alert().accept();
      //공인인증서 비밀번호 클릭
      webElement = driver.findElement(By.id("xwup_certselect_tek_input1"));
      webElement.click();
      Util.sleep(500);
      //공인인증서 비밀번호 입력
      webElement.sendKeys("467913ssak!!");
      //확인 버튼 클릭
      webElement = driver.findElement(By.id("xwup_OkButton"));
      webElement.click();
    //지급명령 신청서 클릭
      Util.sleep(1500);
      webElement = driver.findElement(By.cssSelector("#tabJisinChung > div > div.favorite_icolist_wrap.doc302_02_08 > ul > li:nth-child(1) > a > img"));
      webElement.click();
      //체크박스 클릭
      webElement = driver.findElement(By.id("chkAgrElcSo"));
      webElement.click();
      //당사자 작성 버튼 클릭
      webElement = driver.findElement(By.id("btnDsSo"));
      webElement.click();
      //콤보박스 대여금 선택
      Util.sleep(1500);
      Select comboBox = new Select(driver.findElement(By.id("saNmCd")));
      comboBox.selectByValue("014");
      //소가 500만원 입력
      webElement = driver.findElement(By.id("soSogaAmt"));
      webElement.click();
      webElement.sendKeys("5000000");
      //입력한 금액을위해 아무곳 클릭
      webElement = driver.findElement(By.cssSelector("#contents_area > div:nth-child(11) > h4"));
      webElement.click();
      //제출법원 콤보박스 선택
      Select comboBox2 = new Select(driver.findElement(By.id("cmbBubCd")));
      comboBox2.selectByIndex(3);
      //내정보 가져오기 버튼 클릭
      webElement = driver.findElement(By.cssSelector("#btnMyInfo > span"));
      //청구취지 입력 
      webElement = driver.findElement(By.id("cgmeanDesc"));
      webElement.click();
      webElement.sendKeys("청구취지 입력");
      //청구원인 입력
      webElement = driver.findElement(By.id("chungWoninDesc"));
      webElement.click();
      webElement.sendKeys("청구원인 입력");
      //당사자버튼 클릭
      webElement = driver.findElement(By.cssSelector("#btnDsInsert > span"));
      webElement.click();
      Util.sleep(1000);
      //내정보 가져오기
      webElement = driver.findElement(By.cssSelector("#btnMyInfo > span"));
      webElement.click();
      
      //임시저장 버튼 클릭
      webElement = driver.findElement(By.cssSelector("#btnImsiSave > span"));
      webElement.click();
    //alert창 확인
      //driver.switchTo().alert().accept();
      
      //자식창으로 프레임맞추기
      //String parentWindowHandle = driver.getWindowHandle();
      //Set<String> Pop = driver.getWindowHandles();
      //Iterator<String> il = Pop.iterator();
      //while(il.hasNext()) {
       //  String ChildWindow=il.next();
         //if(!parentWindowHandle.equalsIgnoreCase(ChildWindow)) {
          //  driver.switchTo().window(ChildWindow);
           // Util.sleep(1500);
          //통상의소 클릭
            // webElement = driver.findElement(By.id("cateStandard"));
            // webElement.click();
             //소유권의 가액선택 버튼 클릭 
             //webElement = driver.findElement(By.cssSelector("#msg_1_다 > span"));
             //webElement.click();
             //금액 500만원 입력
             //webElement = driver.findElement(By.id("sogaAmt"));
             //webElement.sendKeys("5000000");
             //소가 적용 버튼 클릭 
             //webElement = driver.findElement(By.id("spanSetSoga"));
             //webElement.click();
             //driver.switchTo().alert().accept();
         //}
      //}
      //driver.switchTo().window(parentWindowHandle);
      
      

      
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