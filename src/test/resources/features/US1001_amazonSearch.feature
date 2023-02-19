Feature: US1001 Amazon Search

  Scenario: TC01 Kullanici amazonda Nutella aratir

    Given kullanici amazon anasayfaya gider
    When arama kutusuna Nutella yazip enter'a basar
    And Arama sonuclarinin Nutella icerdigini test eder
    Then Sayfayi kapatir