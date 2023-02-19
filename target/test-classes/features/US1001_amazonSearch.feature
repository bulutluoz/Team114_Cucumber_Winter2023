Feature: US1001 Amazon Search

  Scenario: TC01 Kullanici amazonda Nutella aratir

    Given kullanici amazon anasayfaya gider
    When arama kutusuna Nutella yazip enter'a basar
    And Arama sonuclarinin Nutella icerdigini test eder
    Then Sayfayi kapatir


  Scenario: TC02 Kullanici amazonda Samsung aratir
    Given kullanici amazon anasayfaya gider
    When arama kutusuna Samsung yazip enter'a basar
    And Arama sonuclarinin Samsung icerdigini test eder
    Then Sayfayi kapatir


  Scenario: TC03 Kullanici amazonda Apple aratir
    Given kullanici amazon anasayfaya gider
    When arama kutusuna Apple yazip enter'a basar
    And Arama sonuclarinin Apple icerdigini test eder
    Then Sayfayi kapatir