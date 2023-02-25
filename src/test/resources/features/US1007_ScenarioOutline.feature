Feature: US1007 Scenario Outline ile coklu test

  Scenario Outline: TC14 Amazon coklu arama testi

    Given kullanici "amazonUrl" anasayfaya gider
    Then arama kutusuna "<arananKelime>" yazip enter'a basar
    Then Arama sonuclarinin "<arananKelime>" icerdigini test eder
    And Sayfayi kapatir

    Examples:
    |arananKelime|
    |Nutella     |
    |Samsung     |
    |Apple       |
    |Java        |