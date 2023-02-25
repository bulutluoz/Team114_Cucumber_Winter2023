@negatif @smoke
Feature: US1006 gecersiz bilgilerle sayfaya girilemez

  Scenario: TC11 gecerli username ve gecersiz password ile giris yapilamaz

    Given kullanici "qdUrl" anasayfaya gider
    Then login linkine tiklar
    And username olarak "qdGecerliUsername" girer
    And password olarak "qdGecersizPassword" girer
    And login butonuna basar
    Then giris yapilamadigini test eder
    And Sayfayi kapatir

  Scenario: TC12 gecersiz username ve gecerli password ile giris yapilamaz
    Given kullanici "qdUrl" anasayfaya gider
    Then login linkine tiklar
    And username olarak "qdGecersizUsername" girer
    And password olarak "qdGecerliPassword" girer
    And login butonuna basar
    Then giris yapilamadigini test eder
    And Sayfayi kapatir

  Scenario: TC13 gecersiz username ve gecersiz password ile giris yapilamaz
    Given kullanici "qdUrl" anasayfaya gider
    Then login linkine tiklar
    And username olarak "qdGecersizUsername" girer
    And password olarak "qdGecersizPassword" girer
    And login butonuna basar
    Then giris yapilamadigini test eder
    And Sayfayi kapatir