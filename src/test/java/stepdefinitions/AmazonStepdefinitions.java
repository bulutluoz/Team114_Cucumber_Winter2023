package stepdefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.AmazonPage;
import utilities.ConfigReader;
import utilities.Driver;

public class AmazonStepdefinitions {
    AmazonPage amazonPage= new AmazonPage();

    @Given("kullanici amazon anasayfaya gider")
    public void kullanici_amazon_anasayfaya_gider() {
        Driver.getDriver().get(ConfigReader.getProperty("amazonUrl"));
    }
    @When("arama kutusuna Nutella yazip enter'a basar")
    public void arama_kutusuna_nutella_yazip_enter_a_basar() {
    amazonPage.aramaKutusuElementi.sendKeys("Nutella" + Keys.ENTER);
    }
    @When("Arama sonuclarinin Nutella icerdigini test eder")
    public void arama_sonuclarinin_nutella_icerdigini_test_eder() {
        String expectedIcerik = "Nutella";
        String actualAramaSonucYazisi= amazonPage.aramaSonucYaziElementi.getText();
        Assert.assertTrue(actualAramaSonucYazisi.contains(expectedIcerik));
    }
    @When("Sayfayi kapatir")
    public void sayfayi_kapatir() {
        Driver.closeDriver();
    }

    @When("arama kutusuna Samsung yazip enter'a basar")
    public void arama_kutusuna_samsung_yazip_enter_a_basar() {
        amazonPage.aramaKutusuElementi.sendKeys("Samsung" + Keys.ENTER);
    }
    @When("Arama sonuclarinin Samsung icerdigini test eder")
    public void arama_sonuclarinin_samsung_icerdigini_test_eder() {
        String expectedIcerik = "Samsung";
        String actualAramaSonucYazisi= amazonPage.aramaSonucYaziElementi.getText();
        Assert.assertTrue(actualAramaSonucYazisi.contains(expectedIcerik));
    }

    @When("arama kutusuna Apple yazip enter'a basar")
    public void aramaKutusunaAppleYazipEnterABasar() {
        amazonPage.aramaKutusuElementi.sendKeys("Apple" + Keys.ENTER);
    }

    @And("Arama sonuclarinin Apple icerdigini test eder")
    public void aramaSonuclarininAppleIcerdiginiTestEder() {
        String expectedIcerik = "Apple";
        String actualAramaSonucYazisi= amazonPage.aramaSonucYaziElementi.getText();
        Assert.assertTrue(actualAramaSonucYazisi.contains(expectedIcerik));
    }

    @When("arama kutusuna {string} yazip enter'a basar")
    public void aramaKutusunaYazipEnterABasar(String aranacakKelime) {
        amazonPage.aramaKutusuElementi.sendKeys(aranacakKelime + Keys.ENTER);
    }

    @And("Arama sonuclarinin {string} icerdigini test eder")
    public void aramaSonuclarininIcerdiginiTestEder(String arananKelime) {
        String actualAramaSonucYazisi= amazonPage.aramaSonucYaziElementi.getText();
        Assert.assertTrue(actualAramaSonucYazisi.contains(arananKelime));
    }

    @And("{int} sn bekler")
    public void snBekler(int beklemeSuresiSaniye) {

        try {
            Thread.sleep(beklemeSuresiSaniye*1000);
        } catch (InterruptedException e) {

        }
    }
}
