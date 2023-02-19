Feature: US1003 Kullanici parametre ile arama yapabilir


  Background:
    Given kullanici amazon anasayfaya gider

  Scenario: TC07 Kullanici amazonda Java aratir


    When arama kutusuna "Java" yazip enter'a basar
    And Arama sonuclarinin "Java" icerdigini test eder
    And 4 sn bekler
    Then Sayfayi kapatir


  Scenario:  TC08 Kullanici amazonda Nutella aratir

    When arama kutusuna "Nutella" yazip enter'a basar
    And Arama sonuclarinin "Nutella" icerdigini test eder
    Then Sayfayi kapatir