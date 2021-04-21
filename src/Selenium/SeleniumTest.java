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
    //ũ�Ѹ� �� URL
    private String base_url;
    
    public SeleniumTest() {
        super();
        System.out.println("123123");
        //System Property SetUp
        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
        
                
        //Driver SetUp
         ChromeOptions options = new ChromeOptions();
         options.addArguments("--start-fullscreen");
         options.addArguments("--disable-default-apps"); //������ ũ������ ����
         driver = new ChromeDriver(options);
        //��� url
        base_url = "https://ecfs.scourt.go.kr/ecf/ecf300/ECF302.jsp#_";
        //ũ������ �ش� �ּ� ����
        driver.get(base_url);
        //���ݸ�� ��û Ŭ��
        webElement = driver.findElement(By.cssSelector("[id=\"aTab_JisinChung\"]"));
        webElement.click();
        //���޸�� ��û�� Ŭ��
      webElement = driver.findElement(By.cssSelector(".doc302_02_08 .favorite_icolist_wrap"));
      webElement.click();
      //alertâ Ȯ��
      driver.switchTo().alert().accept();
      //4�ʴ��
      Util.sleep(4000);
      //���̵� Ŭ��
      webElement = driver.findElement(By.id("userId"));
      webElement.click();
      //0.5�� ���
      Util.sleep(500);
      //�α��� id �Է�
      webElement.sendKeys("gihong0703");
      //��й�ȣ Ŭ��
      webElement = driver.findElement(By.id("pw"));
      webElement.click();
      //0.5�� ���
      Util.sleep(500);
      //��й�ȣ �Է�
      webElement.sendKeys("467913ssak!!");
      //�α��ι�ư Ŭ��
      webElement = driver.findElement(By.cssSelector("#btnLogin > img"));
      webElement.click();
      //�α����� �������������� ���޸�� Ŭ��
      webElement = driver.findElement(By.cssSelector("#btnDocWDC > img"));
      webElement.click();
      //alertâ Ȯ�� Ŭ��
      driver.switchTo().alert().accept();
      //���������� ��й�ȣ Ŭ��
      webElement = driver.findElement(By.id("xwup_certselect_tek_input1"));
      webElement.click();
      Util.sleep(500);
      //���������� ��й�ȣ �Է�
      webElement.sendKeys("467913ssak!!");
      //Ȯ�� ��ư Ŭ��
      webElement = driver.findElement(By.id("xwup_OkButton"));
      webElement.click();
    //���޸�� ��û�� Ŭ��
      Util.sleep(1500);
      webElement = driver.findElement(By.cssSelector("#tabJisinChung > div > div.favorite_icolist_wrap.doc302_02_08 > ul > li:nth-child(1) > a > img"));
      webElement.click();
      //üũ�ڽ� Ŭ��
      webElement = driver.findElement(By.id("chkAgrElcSo"));
      webElement.click();
      //����� �ۼ� ��ư Ŭ��
      webElement = driver.findElement(By.id("btnDsSo"));
      webElement.click();
      //�޺��ڽ� �뿩�� ����
      Util.sleep(1500);
      Select comboBox = new Select(driver.findElement(By.id("saNmCd")));
      comboBox.selectByValue("014");
      //�Ұ� 500���� �Է�
      webElement = driver.findElement(By.id("soSogaAmt"));
      webElement.click();
      webElement.sendKeys("5000000");
      //�Է��� �ݾ������� �ƹ��� Ŭ��
      webElement = driver.findElement(By.cssSelector("#contents_area > div:nth-child(11) > h4"));
      webElement.click();
      //������� �޺��ڽ� ����
      Select comboBox2 = new Select(driver.findElement(By.id("cmbBubCd")));
      comboBox2.selectByIndex(3);
      //������ �������� ��ư Ŭ��
      webElement = driver.findElement(By.cssSelector("#btnMyInfo > span"));
      //û������ �Է� 
      webElement = driver.findElement(By.id("cgmeanDesc"));
      webElement.click();
      webElement.sendKeys("û������ �Է�");
      //û������ �Է�
      webElement = driver.findElement(By.id("chungWoninDesc"));
      webElement.click();
      webElement.sendKeys("û������ �Է�");
      //����ڹ�ư Ŭ��
      webElement = driver.findElement(By.cssSelector("#btnDsInsert > span"));
      webElement.click();
      Util.sleep(1000);
      //������ ��������
      webElement = driver.findElement(By.cssSelector("#btnMyInfo > span"));
      webElement.click();
      
      //�ӽ����� ��ư Ŭ��
      webElement = driver.findElement(By.cssSelector("#btnImsiSave > span"));
      webElement.click();
    //alertâ Ȯ��
      //driver.switchTo().alert().accept();
      
      //�ڽ�â���� �����Ӹ��߱�
      //String parentWindowHandle = driver.getWindowHandle();
      //Set<String> Pop = driver.getWindowHandles();
      //Iterator<String> il = Pop.iterator();
      //while(il.hasNext()) {
       //  String ChildWindow=il.next();
         //if(!parentWindowHandle.equalsIgnoreCase(ChildWindow)) {
          //  driver.switchTo().window(ChildWindow);
           // Util.sleep(1500);
          //����Ǽ� Ŭ��
            // webElement = driver.findElement(By.id("cateStandard"));
            // webElement.click();
             //�������� ���׼��� ��ư Ŭ�� 
             //webElement = driver.findElement(By.cssSelector("#msg_1_�� > span"));
             //webElement.click();
             //�ݾ� 500���� �Է�
             //webElement = driver.findElement(By.id("sogaAmt"));
             //webElement.sendKeys("5000000");
             //�Ұ� ���� ��ư Ŭ�� 
             //webElement = driver.findElement(By.id("spanSetSoga"));
             //webElement.click();
             //driver.switchTo().alert().accept();
         //}
      //}
      //driver.switchTo().window(parentWindowHandle);
      
      

      
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