Feature: US1007 Scenario Outline ile coklu test
  @so
  Scenario Outline: TC14 Amazon coklu arama testi

    Given kullanici "amazonUrl" anasayfaya gider
    Then arama kutusuna "<arananKelime>" yazip enter'a basar
    Then Arama sonuclarinin "<expectedIcerik>" icerdigini test eder


    Examples:
    |arananKelime|expectedIcerik|
    |Nutella     |Nutella       |
    |Samsung     |Samsung       |
    |Apple       |Apple         |
    |Java        |Java          |