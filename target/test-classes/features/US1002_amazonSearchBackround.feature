Feature: US1002 Amazonda arama icin Backgroun kullanimi

  Background:
    Given kullanici amazon anasayfaya gider

  Scenario: TC04 Kullanici amazonda Nutella aratir


    When arama kutusuna Nutella yazip enter'a basar
    And Arama sonuclarinin Nutella icerdigini test eder
    Then Sayfayi kapatir


  Scenario: TC05 Kullanici amazonda Samsung aratir

    When arama kutusuna Samsung yazip enter'a basar
    And Arama sonuclarinin Samsung icerdigini test eder
    Then Sayfayi kapatir


  Scenario: TC06 Kullanici amazonda Apple aratir

    When arama kutusuna Apple yazip enter'a basar
    And Arama sonuclarinin Apple icerdigini test eder
    Then Sayfayi kapatir